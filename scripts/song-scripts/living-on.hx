import funkin.play.song.Song;

class CL_LivingOn extends Song {
    function new() {
        super("living-on");
    }

    var handler;
    var commentaryTexts;

    override function onBeatHit(e) {
        super.onBeatHit(e);
        handler = ModuleHandler.getModule("cl_handler");
        commentaryTexts = handler?.scriptGet("commentaryTexts");
        switch (e.beat) {
            case 178: handler?.scriptCall("showComment", [0]);
            case 280: handler?.scriptCall("showComment", [1]);
            case 324: handler?.scriptCall("showComment", [2]);
            case 340: handler?.scriptCall("showComment", [3]);
        }
    }
}