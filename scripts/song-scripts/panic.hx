import funkin.play.song.Song;

class CL_Panic extends Song {
    function new() {
        super("panic");
    }

    var handler;
    var commentaryTexts;

    override function onBeatHit(e) {
        super.onBeatHit(e);
        handler = ModuleHandler.getModule("cl_handler");
        commentaryTexts = handler?.scriptGet("commentaryTexts");
        switch (e.beat) {
            case 36: handler?.scriptCall("showComment", [0]);
            case 60: handler?.scriptCall("showComment", [1]);
            case 95: handler?.scriptCall("showComment", [2]);
            case 125: handler?.scriptCall("showComment", [3]);
        }
    }
}