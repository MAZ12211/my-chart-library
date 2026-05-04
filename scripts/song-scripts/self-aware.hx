import funkin.play.song.Song;

class CL_SelfAware extends Song {
    function new() {
        super("self-aware");
    }

    var handler;
    var commentaryTexts;

    override function onBeatHit(e) {
        super.onBeatHit(e);
        handler = ModuleHandler.getModule("cl_handler");
        commentaryTexts = handler?.scriptGet("commentaryTexts");
        switch (e.beat) {
            case 21: handler?.scriptCall("showComment", [0]);
            case 32: handler?.scriptCall("showComment", [1]);
            case 77: handler?.scriptCall("showComment", [2]);
            case 87: handler?.scriptCall("showComment", [3]);

            case 125: handler?.scriptCall("showComment", [4]);
            case 164: if (PlayState.instance.currentChart?.difficulty == "hard" || PlayState.instance.currentChart?.difficulty == "easy") handler?.scriptCall("showComment", [5]);
            case 198: if (PlayState.instance.currentChart?.difficulty == "normal") handler?.scriptCall("showComment", [6]);
        }
    }
}