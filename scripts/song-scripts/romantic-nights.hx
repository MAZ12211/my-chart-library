import funkin.play.song.Song;

class CL_RomanticNights extends Song {
    function new() {
        super("romantic-nights");
    }

    var handler;
    var commentaryTexts;

    override function onBeatHit(e) {
        super.onBeatHit(e);
        // commentaryTexts = CL_Handler?.commentaryTexts; // Might just be me not getting what static variables are but they just don't work like how I want them bro
        handler = ModuleHandler.getModule("cl_handler");
        commentaryTexts = handler?.scriptGet("commentaryTexts");
        switch (e.beat) {
            case 4:
                handler?.scriptCall("showComment", [0]);
            case 10:
                handler?.scriptCall("showComment", [1]);
        }
    }
}