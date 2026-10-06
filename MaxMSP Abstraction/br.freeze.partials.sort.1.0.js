// br.freeze.partials.sort.1.0.js
// Sits between sigmund~ (tracks output) and the br.freeze.partials poly~ voices.
// Stores the latest "index freq amp flag" for each track. On bang (Freeze):
//   - tracks quieter than the threshold count as empty, so no voice turns on for them
//   - sounding tracks are sorted low -> high and packed into voices 1..N
//   - remaining voices get "off"
// Outlet 0: "on <voice> <freq> <amp> <flag>" or "off <voice>"  (voice = 1..16, poly~ numbering)
// Outlet 1: bang AFTER all 16 voices are addressed (sets poly~ back to target 0)
// Messages: threshold <dB> (default -60), clear (forget all tracks, e.g. when switched off)

inlets = 1;
outlets = 2;

var N = 16; // matches sigmund~ @npeak 16 and poly~ ... 16
var tracks = [];
var thresholdDb = -60.;
var thresholdLin = Math.pow(10., thresholdDb / 20.);

function clear() {
	tracks = [];
	for (var i = 0; i < N; i++) {
		tracks.push([0., 0., -1]);
	}
}
clear();

function threshold(db) {
	thresholdDb = db;
	thresholdLin = Math.pow(10., db / 20.);
}

// sigmund~ tracks: index freq amp flag (amp is linear)
function list() {
	var a = arrayfromargs(arguments);
	if (a.length < 4) return;
	var idx = Math.round(a[0]);
	if (idx < 0 || idx >= N) return;
	tracks[idx] = [a[1], a[2], a[3]];
}

function bang() {
	var sounding = [];
	for (var i = 0; i < N; i++) {
		var t = tracks[i];
		if (t[2] != -1 && t[1] >= thresholdLin) {
			sounding.push(t);
		}
	}
	sounding.sort(function (x, y) { return x[0] - y[0]; });


	for (var v = 0; v < N; v++) {
		if (v < sounding.length) {
			outlet(0, ["on", v + 1, sounding[v][0], sounding[v][1], sounding[v][2]]);
		} else {
			outlet(0, ["off", v + 1]);
		}
	}
	outlet(1, "bang");
}
