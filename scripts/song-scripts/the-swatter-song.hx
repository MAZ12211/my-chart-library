import funkin.play.song.Song;

class CL_SwatterSong extends Song {
    function new() {
        super("the-swatter-song");
    }

    var handler;
    var commentaryTexts;

    override function onBeatHit(e) {
        super.onBeatHit(e);
        handler = ModuleHandler.getModule("cl_handler");
        commentaryTexts = handler?.scriptGet("commentaryTexts");
        switch (e.beat) {
            case 123: handler?.scriptCall("showComment", [0]);
        }
    }
}