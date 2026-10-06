// br.freeze.partials.sort.1.1.js
// Sits between sigmund~ (tracks output) and the br.freeze.partials poly~ voices (32 = two banks of 16).
// Stores the latest "index freq amp flag" for each track. On bang (Freeze):
//   - tracks quieter than the threshold count as empty, so no voice turns on for them
//   - sounding tracks are sorted low -> high and packed into voices 1..N of a bank
//   - crossfade 0: the current bank glides to the new partials (20 ms fades), as in 1.0
//   - crossfade > 0: the OTHER bank fades in over the crossfade time while the current bank fades out
// Outlet 0: "on <voice> <freq> <amp> <flag> <fadems>" or "off <voice> <fadems>"  (voice = 1..32, poly~ numbering)
// Outlet 1: bang AFTER all voices are addressed (sets poly~ back to target 0)
// Messages: threshold <dB> (default -60), xfade <ms> (default 0), clear (forget all tracks, e.g. when switched off)

inlets = 1;
outlets = 2;

var N = 16; // matches sigmund~ @npeak 16; voices per bank
var SHORT = 20; // ms: voice fade when not crossfading
var tracks = [];
var thresholdDb = -60.;
var thresholdLin = Math.pow(10., thresholdDb / 20.);
var xfadeMs = 0.;
var bank = 0; // bank sounding now: 0 = voices 1-16, 1 = voices 17-32

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

function xfade(ms) {
	xfadeMs = Math.max(0., ms);
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

	var crossfade = xfadeMs > SHORT;
	var newBank = crossfade ? 1 - bank : bank;
	var fade = crossfade ? xfadeMs : SHORT;

	for (var v = 0; v < N; v++) {
		var voice = newBank * N + v + 1;
		if (v < sounding.length) {
			outlet(0, ["on", voice, sounding[v][0], sounding[v][1], sounding[v][2], fade]);
		} else {
			outlet(0, ["off", voice, fade]);
		}
	}
	if (crossfade) {
		for (var w = 0; w < N; w++) {
			outlet(0, ["off", bank * N + w + 1, fade]);
		}
	}
	bank = newBank;
	outlet(1, "bang");
}
