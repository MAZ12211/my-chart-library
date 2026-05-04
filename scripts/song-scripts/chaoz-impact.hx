import funkin.play.song.Song;

class CL_ChaozImpact extends Song {
    function new() {
        super("chaoz-impact");
    }

    var handler;
    var commentaryTexts;

    override function onBeatHit(e) {
        super.onBeatHit(e);
        handler = ModuleHandler.getModule("cl_handler");
        commentaryTexts = handler?.scriptGet("commentaryTexts");
        switch (e.beat) {
            case 12: handler?.scriptCall("showComment", [0]);
            case 30: handler?.scriptCall("showComment", [1]);
            case 55: handler?.scriptCall("showComment", [2]);
            case 304: handler?.scriptCall("showComment", [3]);
            case 312: handler?.scriptCall("showComment", [4]);
        }
    }
}