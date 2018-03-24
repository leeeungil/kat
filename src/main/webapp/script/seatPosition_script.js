"use strict";
var redipsInit;

redipsInit = function() {
	var rd = REDIPS.drag, msg;
	rd.init();
	rd.hover.colorTd = '#FFCFAE';
	rd.hover.colorTr = '#9BB3DA';
	rd.hover.borderTd = '2px solid #32568E';
	rd.hover.borderTr = '2px solid #32568E';
	rd.rowDropMode = 'after';
	rd.event.rowClicked = function() {
		var el = rd.obj;
		el = rd.findParent('TABLE', el);
		msg = el.getElementsByTagName('span')[0];
		msg.innerHTML = 'Clicked';
	};
	rd.event.rowMoved = function() {
		rd.rowOpacity(rd.obj, 85);
		rd.rowOpacity(rd.objOld, 20, 'White');
		msg.innerHTML = 'Moved';
	};
	rd.event.rowNotMoved = function() {
		msg.innerHTML = 'Not moved';
	};
	rd.event.rowDropped = function() {
		msg.innerHTML = 'Dropped';
	};
	rd.event.rowDroppedSource = function() {
		rd.rowOpacity(rd.objOld, 100);
		msg.innerHTML = 'Dropped to the source';
	};
	rd.event.rowChanged = function() {
		var pos = rd.getPosition();
		msg.innerHTML = 'Changed: ' + pos[0] + ' ' + pos[1];
	};
};

if (window.addEventListener) {
	window.addEventListener('load', redipsInit, false);
} else if (window.attachEvent) {
	window.attachEvent('onload', redipsInit);
}
