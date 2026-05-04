import funkin.play.song.Song;

class CL_LostSilver extends Song {
    function new() {
        super("lf-lost-silver");
    }

    var handler;
    var commentaryTexts;

    override function onBeatHit(e) {
        super.onBeatHit(e);
        handler = ModuleHandler.getModule("cl_handler");
        commentaryTexts = handler?.scriptGet("commentaryTexts");
        switch (e.beat) {
            case 7: handler?.scriptCall("showComment", [0]);
            case 14: handler?.scriptCall("showComment", [1]);
            case 47: handler?.scriptCall("showComment", [2]);
            case 60: handler?.scriptCall("showComment", [3]);
            case 90: handler?.scriptCall("showComment", [4]);
            case 105: handler?.scriptCall("showComment", [5]);
        }
    }
}