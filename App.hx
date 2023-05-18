class App extends hxd.App {

  override function init() {
		var bitmap = new h2d.Bitmap(h2d.Tile.fromColor(0xffffffff, 200, 200));
		this.s2d.addChild(bitmap);
		var interactive = new h2d.Interactive(200, 200);
		this.s2d.addChild(interactive);
		interactive.onKeyDown = (e) -> {
			trace('keydown', e, e.relX, e.relY);
		};
		interactive.onKeyUp = (e) -> {
			trace('keyup', e, e.relX, e.relY);
		};
		interactive.onTextInput = (e) -> {
			trace('textinput', e, e.relX, e.relY);
		};

		this.s2d.scaleMode = LetterBox(200, 200, true, Center, Center);
  }

  static function main() {
    new App();
  }
}
