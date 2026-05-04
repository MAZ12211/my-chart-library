import funkin.play.song.Song;

class CL_Graveyard extends Song {
    function new() {
        super("graveyard");
    }

    var handler;
    var commentaryTexts;

    override function onBeatHit(e) {
        super.onBeatHit(e);
        handler = ModuleHandler.getModule("cl_handler");
        commentaryTexts = handler?.scriptGet("commentaryTexts");
        switch (e.beat) {
            case 12: handler?.scriptCall("showComment", [0]);
        }
    }
}