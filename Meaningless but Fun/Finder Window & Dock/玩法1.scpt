JsOsaDAS1.001.00bplist00�Vscript_�var app = Application.currentApplication();
app.includeStandardAdditions = true;

var answer = app.displayDialog('How many windows do you want to open?', {
	defaultAnswer: '35'
});

var windowCount = Number(answer.textReturned);

var Finder = Application('Finder');
Finder.activate();

delay(1);

for (var i = 0; i < windowCount; i++) {
	var newWindow = Finder.FinderWindow();
	Finder.windows.push(newWindow);
}

delay(1)

var SystemEvents = Application('System Events');
SystemEvents.keystroke('m', {
	using: ['command down', 'option down']
});

delay(0.8 + 0.058 * windowCount)

SystemEvents.keystroke('w', {
	using: ['command down', 'option down']
});                              �jscr  ��ޭ