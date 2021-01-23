declare author "Paul Walker";
declare license "GPLv3";
declare name "just-a-sin";
import("stdfaust.lib");

process(extFMSignal) = os.osc(freq+(extFMSignal * extFMDep))<:(_,_);

freq      = hslider ("[0]freq", 440, 27.5, 3520, 0.1) :si.smoo;
extFMDep  = hslider ("[1]fmdepth", 0.0, 0.0, 1.0, 0.1 ) :si.smoo;
