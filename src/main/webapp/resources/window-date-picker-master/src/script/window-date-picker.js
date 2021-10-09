'use strict';

Object.defineProperty(exports, '__esModule', {
    value: true
});

var _slicedToArray = (function () { function sliceIterator(arr, i) { var _arr = []; var _n = true; var _d = false; var _e = undefined; try { for (var _i = arr[Symbol.iterator](), _s; !(_n = (_s = _i.next()).done); _n = true) { _arr.push(_s.value); if (i && _arr.length === i) break; } } catch (err) { _d = true; _e = err; } finally { try { if (!_n && _i['return']) _i['return'](); } finally { if (_d) throw _e; } } return _arr; } return function (arr, i) { if (Array.isArray(arr)) { return arr; } else if (Symbol.iterator in Object(arr)) { return sliceIterator(arr, i); } else { throw new TypeError('Invalid attempt to destructure non-iterable instance'); } }; })();

var _extends = Object.assign || function (target) { for (var i = 1; i < arguments.length; i++) { var source = arguments[i]; for (var key in source) { if (Object.prototype.hasOwnProperty.call(source, key)) { target[key] = source[key]; } } } return target; };

var _createClass = (function () { function defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ('value' in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } } return function (Constructor, protoProps, staticProps) { if (protoProps) defineProperties(Constructor.prototype, protoProps); if (staticProps) defineProperties(Constructor, staticProps); return Constructor; }; })();

function _interopRequireWildcard(obj) { if (obj && obj.__esModule) { return obj; } else { var newObj = {}; if (obj != null) { for (var key in obj) { if (Object.prototype.hasOwnProperty.call(obj, key)) newObj[key] = obj[key]; } } newObj['default'] = obj; return newObj; } }

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { 'default': obj }; }

function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError('Cannot call a class as a function'); } }

var _util = require('./util');

var _util2 = _interopRequireDefault(_util);

var _types = require('./types');

var T = _interopRequireWildcard(_types);

var _defaultOptions = require('./default-options');

var _defaultOptions2 = _interopRequireDefault(_defaultOptions);

var _lang = require('./lang');

var _lang2 = _interopRequireDefault(_lang);

var _events = require('./events');

var EVENTS = _interopRequireWildcard(_events);

var WindowDatePicker = (function () {
    /**
     * @constructor
     * @param {Object} opt
     */

    function WindowDatePicker(opt) {
        var _this = this;

        _classCallCheck(this, WindowDatePicker);

        var o = this.extractAttributes(opt);

        if (!(this.el = _util2['default'].getElement(o.el))) {
            throw new Error('Element could not be found');
        } else if (o.inputEl && (!(this.inputEl = _util2['default'].getElement(o.inputEl)) || this.inputEl.nodeName != 'INPUT')) {
            throw new Error('Input element could not be found');
        } else if (o.toggleEl && !(this.toggleEl = _util2['default'].getElement(o.toggleEl))) {
            throw new Error('Toggle element could not be found');
        }

        this.LANG = WindowDatePicker.LANG[o.lang];
        if (_util2['default'].isMobile()) {
            this.el.classList.add('wdp-mobile');
        }
        this.parentEl = this.el.parentNode;

        this.type = T.TYPE.indexOf(o.type) !== -1 ? o.type : _defaultOptions2['default'].type;
        this.dateType = T.DATETYPE.indexOf(o.dateType) !== -1 ? o.dateType : _defaultOptions2['default'].dateType;
        this.hourType = T.HOURTYPE.indexOf(o.hourType) !== -1 ? o.hourType : _defaultOptions2['default'].hourType;
        this.allowEmpty = o.allowEmpty;
        this.showArrowButtons = o.showArrowButtons;
        this.orientation = o.showArrowButtons ? true : o.orientation;

        if ((o.value == null || o.value == '') && o.allowEmpty) {
            this.setEmptyValue();
        } else {
            this.value = this.setValue(o.value || new Date());

            if (typeof this.value.day !== 'undefined' && isNaN(this.value.day) || typeof this.value.hour !== 'undefined' && isNaN(this.value.hour)) {
                this.setInvalidValue();
            }
        }
        this.initialValue = _extends({}, this.value);

        this.els = {};
        this.el.classList.add('wdp');
        this.el.innerHTML = '\n            <div class="wdp-container">\n                <div class="wdp-header">\n                    <span></span>\n                    <div>\n                        <div></div>\n                        <div>\n                            <svg width="16" height="16" viewBox="0 0 1792 1792" xmlns="http://www.w3.org/2000/svg"><path d="M1490 1322q0 40-28 68l-136 136q-28 28-68 28t-68-28l-294-294-294 294q-28 28-68 28t-68-28l-136-136q-28-28-28-68t28-68l294-294-294-294q-28-28-28-68t28-68l136-136q28-28 68-28t68 28l294 294 294-294q28-28 68-28t68 28l136 136q28 28 28 68t-28 68l-294 294 294 294q28 28 28 68z"></path></svg>\n                        </div>\n                    </div>\n                </div>\n                <div class="wdp-body"></div>\n            </div>\n        ';

        this.els.container = this.el.querySelector('.wdp-container');
        this.els.span = this.el.querySelector('.wdp-header span');
        this.setSpanText();
        this.els.cross = this.el.querySelector('.wdp-header > div > div:last-child svg');
        this.els.body = this.el.querySelector('.wdp-body');

        if (this.type != T.HOUR) {
            this.page = T.DATE;
            this.datePage = T.MONTH;
            if (this.value.month > 0) {
                this.tmpValue = {
                    month: this.value.month,
                    year: this.value.year
                };
            } else {
                var d = new Date();
                this.tmpValue = {
                    month: d.getMonth() + 1,
                    year: d.getFullYear()
                };
            }

            this.tmpYearValue = {};
            this.tmpYearRangeValue = {};

            this.els.body.innerHTML = '\n                <div class="wdp-date-container">\n                    <div class="wdp-date-header">\n                        <span></span>\n                        <div>\n                            <div>\n                                ' + this.renderUpIcon() + '\n                            </div>\n                            <div>\n                                ' + this.renderDownIcon() + '\n                            </div>\n                        </div>\n                    </div>\n                    <div class="wdp-date-body">\n                        <div class="wdp-week-container">\n                            <div class="wdp-week-header">\n                                <ul class="wdp-week">\n                                    <li>' + this.LANG.DAYS_ABBR[1].substring(0, 2) + '</li>\n                                    <li>' + this.LANG.DAYS_ABBR[2].substring(0, 2) + '</li>\n                                    <li>' + this.LANG.DAYS_ABBR[3].substring(0, 2) + '</li>\n                                    <li>' + this.LANG.DAYS_ABBR[4].substring(0, 2) + '</li>\n                                    <li>' + this.LANG.DAYS_ABBR[5].substring(0, 2) + '</li>\n                                    <li>' + this.LANG.DAYS_ABBR[6].substring(0, 2) + '</li>\n                                    <li>' + this.LANG.DAYS_ABBR[7].substring(0, 2) + '</li>\n                                </ul>\n                            </div>\n                            <div class="wdp-week-body"></div>\n                        </div>\n                        <div class="wdp-list-container"></div>\n                        <div class="wdp-list-container"></div>\n                    </div>\n                </div>\n            ';

            this.els.dateContainer = this.el.querySelector('.wdp-date-container');
            this.els.weekContainer = this.el.querySelector('.wdp-week-container');
            this.els.dateSpan = this.el.querySelector('.wdp-date-container .wdp-date-header span');
            this.setDateSpanText();

            _util2['default'].addEventListener(this.els.dateSpan, [_util2['default'].MOUSE_DOWN], function (e) {
                e.preventDefault();
                if (_this.datePage == T.MONTH) {
                    _this.changeDatePage(T.YEAR);
                } else if (_this.datePage == T.YEAR) {
                    _this.changeDatePage(T.YEAR_RANGE);
                }
            });

            this.increaseDateValue = this.increaseDateValue.bind(this);
            this.decreaseDateValue = this.decreaseDateValue.bind(this);

            _util2['default'].addEventListener(this.els.body.querySelector('.wdp-date-header > div > div:first-child > svg'), [_util2['default'].MOUSE_DOWN], this.orientation ? this.increaseDateValue : this.decreaseDateValue);

            _util2['default'].addEventListener(this.els.body.querySelector('.wdp-date-header > div > div:last-child svg'), [_util2['default'].MOUSE_DOWN], !this.orientation ? this.increaseDateValue : this.decreaseDateValue);

            this.els.weekBody = this.el.querySelector('.wdp-date-container .wdp-date-body .wdp-week-body');
            this.renderMonth();
            this.setActiveDayClass();

            this.els.yearContainer = this.el.querySelector('.wdp-date-body .wdp-week-container + .wdp-list-container');
            this.els.yearRangeContainer = this.el.querySelector('.wdp-date-body .wdp-list-container:last-child');
        }if (this.type != T.DATE) {
            this.els.hourContainer = document.createElement('div');
            this.els.hourContainer.classList.add('wdp-hour-container');
            this.els.hourContainer.innerHTML = '\n                <div class="wdp-hour-arrow-container">\n                    <div>\n                        ' + this.renderUpIcon() + '\n                    </div>\n                    <div>\n                        ' + this.renderUpIcon() + '\n                    </div>\n                    ' + (this.hourType == T.$12 ? '<div>' + this.renderUpIcon() + '</div>' : '') + '\n                </div>\n                <div class="wdp-hour-el-container">\n                    <input type="text" spellcheck="false" class="wdp-hour-el">\n                    <input type="text" spellcheck="false" class="wdp-hour-el">\n                    ' + (this.hourType == T.$12 ? '<input type="text" spellcheck="false" class="wdp-hour-el">' : '') + '\n                </div>\n                <div class="wdp-hour-arrow-container">\n                    <div>\n                        ' + this.renderDownIcon() + '\n                    </div>\n                    <div>\n                        ' + this.renderDownIcon() + '\n                    </div>\n                    ' + (this.hourType == T.$12 ? '<div>' + this.renderDownIcon() + '</div>' : '') + '\n                </div>\n            ';
            this.els.body.appendChild(this.els.hourContainer);

            this.els.hourInput = this.els.hourContainer.querySelector('.wdp-hour-el-container > input:nth-child(1)');
            this.els.hourInput.value = _util2['default'].renderNumber(this.value.hour || 0);
            _util2['default'].addEventListener(this.els.hourInput, ['change'], this.changeHourInput.bind(this));
            _util2['default'].addEventListener(this.els.hourInput, ['focus'], this.focusHoursInput.bind(this));
            _util2['default'].addEventListener(this.els.hourInput, ['blur'], this.leaveHoursInput.bind(this));
            _util2['default'].addEventListener(this.els.hourContainer.querySelector('.wdp-hour-arrow-container > div:nth-child(1) > svg'), [_util2['default'].MOUSE_DOWN], function (e) {
                e.preventDefault();
                if (_this.orientation) _this.setHour(_this.value.hour + 1);else _this.setHour(_this.value.hour - 1);
            });
            _util2['default'].addEventListener(this.els.hourContainer.querySelector('.wdp-hour-el-container + .wdp-hour-arrow-container > div:nth-child(1) > svg'), [_util2['default'].MOUSE_DOWN], function (e) {
                e.preventDefault();
                if (!_this.orientation) _this.setHour(_this.value.hour + 1);else _this.setHour(_this.value.hour - 1);
            });

            this.els.minuteInput = this.els.hourContainer.querySelector('.wdp-hour-el-container > input:nth-child(2)');
            this.els.minuteInput.value = _util2['default'].renderNumber(this.value.minute || 0);
            _util2['default'].addEventListener(this.els.minuteInput, ['change'], this.changeMinuteInput.bind(this));
            _util2['default'].addEventListener(this.els.minuteInput, ['focus'], this.focusHoursInput.bind(this));
            _util2['default'].addEventListener(this.els.minuteInput, ['blur'], this.leaveHoursInput.bind(this));
            _util2['default'].addEventListener(this.els.hourContainer.querySelector('.wdp-hour-arrow-container > div:nth-child(2) > svg'), [_util2['default'].MOUSE_DOWN], function (e) {
                e.preventDefault();
                if (_this.orientation) _this.setMinute(_this.value.minute + 1);else _this.setMinute(_this.value.minute - 1);
            });
            _util2['default'].addEventListener(this.els.hourContainer.querySelector('.wdp-hour-el-container + .wdp-hour-arrow-container > div:nth-child(2) > svg'), [_util2['default'].MOUSE_DOWN], function (e) {
                e.preventDefault();
                if (!_this.orientation) _this.setMinute(_this.value.minute + 1);else _this.setMinute(_this.value.minute - 1);
            });

            if (this.hourType == T.$12) {
                this.els.amInput = this.els.hourContainer.querySelector('.wdp-hour-el-container > input:nth-child(3)');
                this.els.amInput.value = this.value.am ? this.LANG.AM_PM[0] : this.LANG.AM_PM[1];
                _util2['default'].addEventListener(this.els.amInput, ['change'], this.changeAMInput.bind(this));
                _util2['default'].addEventListener(this.els.amInput, ['focus'], this.focusHoursInput.bind(this));
                _util2['default'].addEventListener(this.els.amInput, ['blur'], this.leaveHoursInput.bind(this));
                _util2['default'].addEventListener(this.els.hourContainer.querySelector('.wdp-hour-arrow-container > div:nth-child(3) > svg'), [_util2['default'].MOUSE_DOWN], function (e) {
                    e.preventDefault();
                    _this.setAM(!_this.value.am);
                });
                _util2['default'].addEventListener(this.els.hourContainer.querySelector('.wdp-hour-el-container + .wdp-hour-arrow-container > div:nth-child(3) > svg'), [_util2['default'].MOUSE_DOWN], function (e) {
                    e.preventDefault();
                    _this.setAM(!_this.value.am);
                });
            }

            if (this.type == T.HOUR) {
                this.page = T.HOUR;
            } else {
                this.els.hourContainer.classList.add('wdp-d-none');
                this.els.pageToggle = this.el.querySelector('.wdp-header > div > div:first-child');
                this.els.pageToggle.innerHTML = '\n                    <svg width="16" height="16" viewBox="0 0 1792 1792" class="wdp-non-opaque"><path d="M192 1664h1408v-1024h-1408v1024zm384-1216v-288q0-14-9-23t-23-9h-64q-14 0-23 9t-9 23v288q0 14 9 23t23 9h64q14 0 23-9t9-23zm768 0v-288q0-14-9-23t-23-9h-64q-14 0-23 9t-9 23v288q0 14 9 23t23 9h64q14 0 23-9t9-23zm384-64v1280q0 52-38 90t-90 38h-1408q-52 0-90-38t-38-90v-1280q0-52 38-90t90-38h128v-96q0-66 47-113t113-47h64q66 0 113 47t47 113v96h384v-96q0-66 47-113t113-47h64q66 0 113 47t47 113v96h128q52 0 90 38t38 90z"></path></svg>                    \n                    <svg width="16" height="16" viewBox="0 0 1792 1792"><path d="M1024 544v448q0 14-9 23t-23 9h-320q-14 0-23-9t-9-23v-64q0-14 9-23t23-9h224v-352q0-14 9-23t23-9h64q14 0 23 9t9 23zm416 352q0-148-73-273t-198-198-273-73-273 73-198 198-73 273 73 273 198 198 273 73 273-73 198-198 73-273zm224 0q0 209-103 385.5t-279.5 279.5-385.5 103-385.5-103-279.5-279.5-103-385.5 103-385.5 279.5-279.5 385.5-103 385.5 103 279.5 279.5 103 385.5z"></path></svg>       \n                ';
                var icons = this.els.pageToggle.querySelectorAll('svg');
                for (var i = 0; i < icons.length; i++) {
                    _util2['default'].addEventListener(icons[i], [_util2['default'].MOUSE_DOWN], this.changePage.bind(this));
                }
            }
        }

        this.changeInput = this.changeInput.bind(this);
        this.wheelHourInput = this.wheelHourInput.bind(this);
        this.wheelMinuteInput = this.wheelMinuteInput.bind(this);
        this.wheelAMInput = this.wheelAMInput.bind(this);
        this.setPosition = this.setPosition.bind(this);
        this.clickWindow = this.clickWindow.bind(this);
        this.open = this.open.bind(this);
        this.toggle = this.toggle.bind(this);

        this.pickerOpen = false;
        this.inputToggle = o.inputToggle;
        if (this.inputEl) {
            _util2['default'].addEventListener(this.inputEl, ['change'], this.changeInput);

            if (o.inputToggle) {
                _util2['default'].addEventListener(this.inputEl, [_util2['default'].MOUSE_DOWN], this.open);
            }
        }
        this.setInputText();

        _util2['default'].addEventListener(this.els.cross, [_util2['default'].MOUSE_DOWN], this.clickCross.bind(this));

        this.showButtons = o.showButtons;
        if (o.showButtons) {
            var buttonsCont = document.createElement('div');
            buttonsCont.classList.add('wdp-buttons');
            buttonsCont.innerHTML = '\n                <a href="javascript:void(0)" tabindex="-1">' + this.LANG.BUTTONS[0] + '</a>\n                <a href="javascript:void(0)" tabindex="-1">' + this.LANG.BUTTONS[1] + '</a>\n            ';
            _util2['default'].addEventListener(buttonsCont.querySelector('a:last-child'), [_util2['default'].MOUSE_UP], this.save.bind(this));
            _util2['default'].addEventListener(buttonsCont.querySelector('a:first-child'), [_util2['default'].MOUSE_UP], this.cancel.bind(this));
            this.els.container.appendChild(buttonsCont);
        }

        if (this.toggleEl) {
            _util2['default'].addEventListener(this.toggleEl, [_util2['default'].MOUSE_DOWN], this.toggle);
        }
    }

    /**
     * Extracts attributes from default options.
     * 
     * @param {Object} opt
     * @returns {Object}
     */

    _createClass(WindowDatePicker, [{
        key: 'extractAttributes',
        value: function extractAttributes(opt) {
            var o = {};

            for (var i in _defaultOptions2['default']) {
                if (typeof opt[i] !== 'undefined') {
                    o[i] = opt[i];
                } else {
                    o[i] = _defaultOptions2['default'][i];
                }
            }

            return o;
        }

        /**
         * Renders a month and attach event listeners.
         */
    }, {
        key: 'renderMonth',
        value: function renderMonth() {
            this.els.weekBody.innerHTML = '';

            var cur = this.tmpValue.month,
                curYear = this.tmpValue.year,
                prv = cur - 1,
                prvYear = curYear,
                nxt = cur + 1,
                nxtYear = curYear;

            if (prv == 0) {
                prv = 12;
                prvYear -= 1;
            } else if (nxt == 13) {
                nxt = 1;
                nxtYear += 1;
            }

            var fd = this.getWeekDay(new Date(curYear, cur - 1, 1)),
                pdc = _util2['default'].getDayCount(prv, prvYear),
                pd = 1,
                pwd = fd - 1,
                dc = _util2['default'].getDayCount(cur, curYear),
                d = 1,
                w = 0,
                wd = pwd,
                nd = 1,
                ul = this.createDayCont(),
                li;

            this.els.weekBody.appendChild(ul);
            while (pd <= pwd) {
                li = this.createDayEl(pdc + (pd - pwd), prv, prvYear, true);
                ul.appendChild(li);
                pd += 1;
            }

            while (d <= dc) {
                li = this.createDayEl(d, cur, curYear, false);
                ul.appendChild(li);
                d += 1;
                wd += 1;
                if (wd == 7) {
                    ul = this.createDayCont();
                    this.els.weekBody.appendChild(ul);
                    wd = 0;
                    w += 1;
                }
            }

            while (w < 6) {
                li = this.createDayEl(nd, nxt, nxtYear, true);
                ul.appendChild(li);
                nd += 1;
                wd += 1;
                if (wd == 7) {
                    if (w < 5) {
                        ul = this.createDayCont();
                        this.els.weekBody.appendChild(ul);
                    }
                    wd = 0;
                    w += 1;
                }
            }
        }

        /**
         * Renders a year and attach event listeners.
         */
    }, {
        key: 'renderYear',
        value: function renderYear() {
            var _this2 = this;

            this.els.yearContainer.innerHTML = '';

            var cur = this.tmpYearValue.year,
                nxt = cur + 1,
                i = 1,
                ul,
                li;

            var _loop = function () {
                var n = i,
                    y = cur,
                    txt = _this2.LANG.MONTHS_ABBR[i];

                if ((i - 1) % 4 == 0) {
                    ul = document.createElement('ul');
                    ul.classList.add('wdp-list');
                    _this2.els.yearContainer.appendChild(ul);
                }

                li = document.createElement('li');
                if (i > 12) {
                    n = i - 12;
                    y = nxt;
                    txt = _this2.LANG.MONTHS_ABBR[i - 12];
                    li.classList.add('wdp-muted');
                }
                li.setAttribute('date', n + '-' + y);
                li.innerHTML = txt;
                _util2['default'].addEventListener(li, [_util2['default'].MOUSE_DOWN], function () {
                    _this2.tmpValue = {
                        month: n,
                        year: y
                    };
                    _this2.changeDatePage(T.MONTH);
                });
                ul.appendChild(li);

                i += 1;
            };

            while (i <= 16) {
                _loop();
            }
        }

        /**
         * Renders year range.
         */
    }, {
        key: 'renderYearRange',
        value: function renderYearRange() {
            var _this3 = this;

            this.els.yearRangeContainer.innerHTML = '';

            var _tmpYearRangeValue = this.tmpYearRangeValue;
            var year = _tmpYearRangeValue.year;
            var start = _tmpYearRangeValue.start;
            var end = _tmpYearRangeValue.end;
            var i = 0;
            var ul;
            var li;
            var _loop2 = function () {
                var y = start + i;

                if (i % 4 == 0) {
                    ul = document.createElement('ul');
                    ul.classList.add('wdp-list');
                    _this3.els.yearRangeContainer.appendChild(ul);
                }

                li = document.createElement('li');
                li.innerHTML = y;
                if (y >= end) {
                    li.classList.add('wdp-muted');
                }
                li.setAttribute('date', y);
                _util2['default'].addEventListener(li, [_util2['default'].MOUSE_DOWN], function () {
                    _this3.tmpYearValue = {
                        year: y,
                        month: 0
                    };
                    _this3.changeDatePage(T.YEAR);
                });
                ul.appendChild(li);

                i += 1;
            };

            while (i < 16) {
                _loop2();
            }
        }

        /**
         * Renders up icon.
         * 
         * @returns {String}
         */
    }, {
        key: 'renderUpIcon',
        value: function renderUpIcon() {
            if (this.showArrowButtons) return '<svg width="1792" height="1792" viewBox="0 0 1792 1792" xmlns="http://www.w3.org/2000/svg"><path d="M1600 736v192q0 40-28 68t-68 28h-416v416q0 40-28 68t-68 28h-192q-40 0-68-28t-28-68v-416h-416q-40 0-68-28t-28-68v-192q0-40 28-68t68-28h416v-416q0-40 28-68t68-28h192q40 0 68 28t28 68v416h416q40 0 68 28t28 68z"/></svg>';else return '<svg viewBox="0 0 1792 1792" xmlns="http://www.w3.org/2000/svg"><path d="M1395 1184q0 13-10 23l-50 50q-10 10-23 10t-23-10l-393-393-393 393q-10 10-23 10t-23-10l-50-50q-10-10-10-23t10-23l466-466q10-10 23-10t23 10l466 466q10 10 10 23z"></path></svg>';
        }

        /**
         * Renders down icon.
         * 
         * @returns {String}
         */
    }, {
        key: 'renderDownIcon',
        value: function renderDownIcon() {
            if (this.showArrowButtons) return '<svg width="1792" height="1792" viewBox="0 0 1792 1792" xmlns="http://www.w3.org/2000/svg"><path d="M1600 736v192q0 40-28 68t-68 28h-1216q-40 0-68-28t-28-68v-192q0-40 28-68t68-28h1216q40 0 68 28t28 68z"/></svg>';else return '<svg viewBox="0 0 1792 1792" xmlns="http://www.w3.org/2000/svg"><path d="M1395 736q0 13-10 23l-466 466q-10 10-23 10t-23-10l-466-466q-10-10-10-23t10-23l50-50q10-10 23-10t23 10l393 393 393-393q10-10 23-10t23 10l50 50q10 10 10 23z"></path></svg>';
        }

        /**
         * Sets value according to input text.
         */
    }, {
        key: 'changeInput',
        value: function changeInput() {
            var val,
                oval = this.value;
            try {
                if (!this.inputEl.value.trim() && this.allowEmpty) {
                    this.setEmptyValue();
                } else {
                    val = this.setValue(this.inputEl.value);
                    if (typeof val.day !== 'undefined' && isNaN(val.day) || typeof val.hour !== 'undefined' && isNaN(val.hour)) {
                        throw null;
                    }
                    this.value = val;
                }

                this.initialValue = _extends({}, this.value);
                this.resetDatePage();
            } catch (ignored) {
                this.setInvalidValue();
                this.initialValue = _extends({}, this.value);
                this.setActiveDayClass();
                this.setInputText();
            } finally {
                this.resetHourPage();
                this.setSpanText();

                if (this.value.value != oval.value) {
                    this.el.dispatchEvent(EVENTS.CHANGE);
                }
            }
        }

        /**
         * Changes hour according to input value.
         */
    }, {
        key: 'changeHourInput',
        value: function changeHourInput() {
            var val = parseInt(this.els.hourInput.value);
            if (isNaN(val)) {
                this.els.hourInput.value = _util2['default'].renderNumber(this.value.hour);
            } else {
                if (val != this.value.hour) {
                    this.setHour(val, false);
                }
            }
        }

        /**
         * Changes minute according to input value.
         */
    }, {
        key: 'changeMinuteInput',
        value: function changeMinuteInput() {
            var val = parseInt(this.els.minuteInput.value);
            if (isNaN(val)) {
                this.els.minuteInput.value = _util2['default'].renderNumber(this.value.minute);
            } else {
                if (val != this.value.minute) {
                    this.setMinute(val, false);
                }
            }
        }

        /**
         * Changes am/pm according to input value.
         */
    }, {
        key: 'changeAMInput',
        value: function changeAMInput() {
            var val = (this.els.amInput.value || '').toUpperCase();
            if (val == this.LANG.AM_PM[1] && this.value.am) {
                this.setAM(false);
            } else if (val == this.LANG.AM_PM[0] && !this.value.am) {
                this.setAM(true);
            } else {
                this.els.amInput.value = this.value.am ? this.LANG.AM_PM[0] : this.LANG.AM_PM[1];
            }
        }

        /**
         * Changes page.
         */
    }, {
        key: 'changePage',
        value: function changePage() {
            if (this.page == T.DATE) {
                this.page = T.HOUR;
                _util2['default'].removeClass(this.els.pageToggle.querySelector('svg:first-child'), 'wdp-non-opaque');
                _util2['default'].addClass(this.els.pageToggle.querySelector('svg:last-child'), 'wdp-non-opaque');
                this.setPageAnimation(this.els.dateContainer, this.els.hourContainer, 'in', 'out');
            } else {
                this.page = T.DATE;
                _util2['default'].addClass(this.els.pageToggle.querySelector('svg:first-child'), 'wdp-non-opaque');
                _util2['default'].removeClass(this.els.pageToggle.querySelector('svg:last-child'), 'wdp-non-opaque');
                this.setPageAnimation(this.els.hourContainer, this.els.dateContainer, 'out-rev', 'in-rev');
            }
        }

        /**
         * Changes date page.
         * 
         * @param {String} val 
         */
    }, {
        key: 'changeDatePage',
        value: function changeDatePage(val) {
            var _this4 = this;

            var v = this.datePage,
                o,
                n,
                a,
                b;

            if (v == T.MONTH) {
                o = this.els.weekContainer;
            } else if (v == T.YEAR) {
                o = this.els.yearContainer;
            } else {
                o = this.els.yearRangeContainer;
            }

            this.datePage = val;
            setTimeout(function () {
                _this4.setDateSpanText();
            }, 125);

            if (val == T.MONTH) {
                n = this.els.weekContainer;
                this.renderMonth();
                this.setActiveDayClass();
            } else if (val == T.YEAR) {
                n = this.els.yearContainer;
                if (v == T.MONTH) {
                    this.tmpYearValue = {
                        year: this.tmpValue.year,
                        month: this.tmpValue.month
                    };
                }
                this.renderYear();
                this.setActiveMonthClass();
            } else {
                n = this.els.yearRangeContainer;
                if (v == T.YEAR) {
                    this.tmpYearRangeValue = _extends({
                        year: this.tmpYearValue.year
                    }, _util2['default'].getStartEndYear(this.tmpYearValue.year));
                }
                this.renderYearRange();
                this.setActiveYearClass();
            }

            if (v == T.MONTH && val == T.YEAR || v == T.YEAR && val == T.YEAR_RANGE) {
                a = 'in';
                b = 'out';
            } else if (v == T.YEAR && val == T.MONTH || v == T.YEAR_RANGE && val == T.YEAR) {
                a = 'out-rev';
                b = 'in-rev';
            }

            this.setPageAnimation(o, n, a, b);
        }

        /**
         * Attach wheel event listeners to document.
         * 
         * @param {Event} e 
         */
    }, {
        key: 'focusHoursInput',
        value: function focusHoursInput(e) {
            if (e.target == this.els.hourInput) {
                _util2['default'].addEventListener(document, _util2['default'].WHEEL_EVENTS, this.wheelHourInput);
            } else if (e.target == this.els.minuteInput) {
                _util2['default'].addEventListener(document, _util2['default'].WHEEL_EVENTS, this.wheelMinuteInput);
            } else if (e.target == this.els.amInput) {
                _util2['default'].addEventListener(document, _util2['default'].WHEEL_EVENTS, this.wheelAMInput);
            }
        }

        /**
         * Removes wheel event listeners to document.
         * 
         * @param {Event} e 
         */
    }, {
        key: 'leaveHoursInput',
        value: function leaveHoursInput(e) {
            if (e.target == this.els.hourInput) {
                _util2['default'].removeEventListener(document, _util2['default'].WHEEL_EVENTS, this.wheelHourInput);
            } else if (e.target == this.els.minuteInput) {
                _util2['default'].removeEventListener(document, _util2['default'].WHEEL_EVENTS, this.wheelMinuteInput);
            } else if (e.target == this.els.amInput) {
                _util2['default'].removeEventListener(document, _util2['default'].WHEEL_EVENTS, this.wheelAMInput);
            }
        }

        /**
         * Resets date if value is null.
         */
    }, {
        key: 'resetDate',
        value: function resetDate() {
            if (this.type != T.HOUR && this.value.day == -1) {
                var d = new Date();
                this.setDay(d.getDate(), d.getMonth() + 1, d.getFullYear(), false);
            }
        }

        /**
         * Resets date page.
         */
    }, {
        key: 'resetDatePage',
        value: function resetDatePage() {
            if (this.type != T.HOUR) {
                this.datePage = T.MONTH;
                if (this.value.day > 0) {
                    this.tmpValue = {
                        month: this.value.month,
                        year: this.value.year
                    };
                } else {
                    var d = new Date();
                    this.tmpValue = {
                        month: d.getMonth() + 1,
                        year: d.getFullYear()
                    };
                }
                this.renderMonth();
                this.setActiveDayClass();
                this.setDateSpanText();
                this.els.weekContainer.classList.remove('wdp-d-none');
                this.els.yearContainer.classList.add('wdp-d-none');
                this.els.yearContainer.innerHTML = '';
                this.els.yearRangeContainer.classList.add('wdp-d-none');
                this.els.yearRangeContainer.innerHTML = '';
            }
        }

        /**
         * Resets hour page.
         */
    }, {
        key: 'resetHourPage',
        value: function resetHourPage() {
            if (this.type != T.DATE) {
                this.els.hourInput.value = _util2['default'].renderNumber(this.value.hour || '');
                this.els.minuteInput.value = _util2['default'].renderNumber(this.value.minute || '');
                if (this.hourType == T.$12) {
                    this.els.amInput.value = this.value.am ? this.LANG.AM_PM[0] : this.LANG.AM_PM[1];
                }
            }
        }

        /**
         * Sets hour input according to wheel.
         * 
         * @param {Event} e 
         */
    }, {
        key: 'wheelHourInput',
        value: function wheelHourInput(e) {
            var delta = (e.deltaY || -e.wheelDelta || e.detail) >> 10 || 1;

            if (this.orientation) {
                delta = ~delta;
            }

            if (delta < 0) {
                this.setHour(this.value.hour - 1);
            } else {
                this.setHour(this.value.hour + 1);
            }
        }

        /**
         * Sets minute input according to wheel.
         * 
         * @param {Event} e 
         */
    }, {
        key: 'wheelMinuteInput',
        value: function wheelMinuteInput(e) {
            var delta = (e.deltaY || -e.wheelDelta || e.detail) >> 10 || 1;

            if (this.orientation) {
                delta = ~delta;
            }

            if (delta < 0) {
                this.setMinute(this.value.minute - 1);
            } else {
                this.setMinute(this.value.minute + 1);
            }
        }

        /**
         * Sets am/pm input according to wheel.
         */
    }, {
        key: 'wheelAMInput',
        value: function wheelAMInput() {
            this.setAM(!this.value.am);
        }

        /**
         * Returns the value.
         * 
         * @returns {Object}
         */
    }, {
        key: 'get',
        value: function get() {
            return this.value;
        }

        /**
         * Gets value text.
         *
         * @param {Object} value
         * @returns {String}
         */
    }, {
        key: 'getValueText',
        value: function getValueText(value) {
            var txt = '';

            if (this.type != T.HOUR) {
                if (this.dateType == T.DMY) {
                    txt = _util2['default'].renderNumber(value.day) + '/' + _util2['default'].renderNumber(value.month) + '/' + value.year;
                } else {
                    txt = _util2['default'].renderNumber(value.month) + '/' + _util2['default'].renderNumber(value.day) + '/' + value.year;
                }
            }

            if (this.type != T.DATE) {
                var am = '';
                if (this.hourType == T.$12) {
                    am = value.am ? ' ' + this.LANG.AM_PM[0] : ' ' + this.LANG.AM_PM[1];
                }

                if (this.type == T.DATEHOUR) {
                    txt += ' ';
                } else {
                    txt = '';
                }

                txt += _util2['default'].renderNumber(value.hour) + ':' + _util2['default'].renderNumber(value.minute) + am;
            }

            return txt;
        }

        /**
         * Gets week day of an date.
         * 
         * @param {Date} d
         * @returns {Number}
         */
    }, {
        key: 'getWeekDay',
        value: function getWeekDay(d) {
            var weekDay = d.getDay();
            if (weekDay == 0) {
                return 7;
            }

            return weekDay;
        }

        /**
         * Sets value.
         * 
         * @param {String|Number|Date} v
         */
    }, {
        key: 'set',
        value: function set(v) {
            if ((v == null || v == '') && this.allowEmpty) {
                this.setEmptyValue();
            } else {
                this.value = this.setValue(v);
            }

            this.initialValue = _extends({}, this.value);
            this.resetDatePage();
            this.resetHourPage();
            this.setSpanText();
            this.setInputText();
        }

        /**
         * Sets value from the given value type.
         * 
         * @param {String|Number|Date} v 
         * @returns {Object}
         */
    }, {
        key: 'setValue',
        value: function setValue(v) {
            var date,
                value = {};

            if (typeof v === 'string') {
                var d = '1970-01-01',
                    h = '00:00';

                if (this.type != T.HOUR) {
                    var s = v.replace(/\//g, '-').split('-');
                    s[2] = s[2].split(' ')[0];
                    if (this.dateType == T.DMY) {
                        s = [s[2], s[1], s[0]];
                    } else {
                        s = [s[2], s[0], s[1]];
                    }

                    d = _util2['default'].renderNumber(s[0], 4) + '-' + _util2['default'].renderNumber(s[1]) + '-' + _util2['default'].renderNumber(s[2]);
                }

                if (this.type != T.DATE) {
                    var s = v.split(' ');
                    if (this.type == T.DATEHOUR) {
                        s.shift();
                    }

                    var _s$0$split = s[0].split(':');

                    var _s$0$split2 = _slicedToArray(_s$0$split, 2);

                    var hour = _s$0$split2[0];
                    var minute = _s$0$split2[1];

                    if (this.hourType == T.$12) {
                        if (s[1] == this.LANG.AM_PM[1] && hour != '12') {
                            hour = (parseInt(hour) + 12).toString();
                        } else if (s[1] == this.LANG.AM_PM[0] && hour == '12') {
                            hour = '0';
                        }
                    }

                    h = _util2['default'].renderNumber(hour) + ':' + _util2['default'].renderNumber(minute);
                }

                date = new Date(d);
                var hDate = new Date('1970-01-01T' + h + 'Z');
                hDate.setMinutes(hDate.getTimezoneOffset() + hDate.getMinutes());
                date.setHours(hDate.getHours());
                date.setMinutes(hDate.getMinutes());
            } else if (typeof v === 'number') {
                date = new Date(v);
            } else {
                date = v;
            }

            if (this.type != T.HOUR) {
                var weekDay = this.getWeekDay(date);

                value = {
                    day: date.getDate(),
                    weekDay: weekDay,
                    month: date.getMonth() + 1,
                    year: date.getFullYear()
                };
            }

            if (this.type != T.DATE) {
                value = _extends({}, value, {
                    hour: date.getHours(),
                    minute: date.getMinutes()
                });

                if (this.hourType == T.$12) {
                    if (value.hour > 11) {
                        value.hour = value.hour != 12 ? value.hour - 12 : 12;
                        value.am = false;
                    } else {
                        value.hour = value.hour == 0 ? 12 : value.hour;
                        value.am = true;
                    }
                }
            }

            value.value = this.getValueText(value);
            return value;
        }

        /**
         * Sets value as empty.
         */
    }, {
        key: 'setEmptyValue',
        value: function setEmptyValue() {
            this.value = {
                value: '',
                day: 0,
                month: 0,
                year: 0
            };
        }

        /**
         * Sets value as invalid.
         */
    }, {
        key: 'setInvalidValue',
        value: function setInvalidValue() {
            this.value = {
                value: this.LANG.INVALID_DATE,
                day: -1,
                month: -1,
                year: -1
            };
        }

        /**
         * Sets the selected day.
         * 
         * @param {Number} day
         * @param {Number} month
         * @param {Number} year
         * @param {Boolean} txt
         */
    }, {
        key: 'setDay',
        value: function setDay(day, month, year) {
            var txt = arguments.length <= 3 || arguments[3] === undefined ? true : arguments[3];

            if (this.type != T.DATE && txt) {
                if (!this.value.hour) {
                    this.setHour(NaN, true, false);
                }
            }

            var weekDay = this.getWeekDay(new Date(year, month - 1, day));
            this.value = _extends({}, this.value, {
                day: day,
                weekDay: weekDay,
                month: month,
                year: year
            });

            this.setActiveDayClass();

            if (txt) {
                this.value.value = this.getValueText(this.value);
                this.setSpanText();
                this.setInputText();
                this.el.dispatchEvent(EVENTS.CHANGE);
            }
        }

        /**
         * Sets active day class.
         */
    }, {
        key: 'setActiveDayClass',
        value: function setActiveDayClass() {
            if (this.type != T.HOUR) {
                var inact = this.els.weekBody.querySelector('.wdp-week > li.wdp-active'),
                    act = this.els.weekBody.querySelector('.wdp-week > li[date="' + this.value.day + '-' + this.value.month + '-' + this.value.year + '"]');
                if (inact) {
                    inact.classList.remove('wdp-active');
                }
                if (act) {
                    act.classList.add('wdp-active');
                }
            }
        }

        /**
         * Sets temporary month.
         * 
         * @param {Number} month
         * @param {Number} year
         */
    }, {
        key: 'setTmpMonth',
        value: function setTmpMonth(month, year) {
            this.tmpValue = {
                month: month,
                year: year
            };
            this.renderMonth();
            this.setDateSpanText();
            this.setActiveDayClass();
        }

        /**
         * Sets temporary year.
         * 
         * @param {Number} year 
         */
    }, {
        key: 'setTmpYear',
        value: function setTmpYear(year) {
            this.tmpYearValue.year = year;
            this.renderYear();
            this.setDateSpanText();
            this.setActiveMonthClass();
        }

        /**
         * Sets active month class.
         */
    }, {
        key: 'setActiveMonthClass',
        value: function setActiveMonthClass() {
            var inact = this.els.yearContainer.querySelector('.wdp-list > li.wdp-active'),
                act = this.els.yearContainer.querySelector('.wdp-list > li[date="' + this.tmpValue.month + '-' + this.tmpValue.year + '"]');
            if (inact) {
                inact.classList.remove('wdp-active');
            }
            if (act) {
                act.classList.add('wdp-active');
            }
        }

        /**
         * Sets temporary year range.
         * 
         * @param {Number} start
         */
    }, {
        key: 'setTmpYearRange',
        value: function setTmpYearRange(start) {
            this.tmpYearRangeValue.start = start;
            this.tmpYearRangeValue.end = start + 10;
            this.renderYearRange();
            this.setDateSpanText();
            this.setActiveYearClass();
        }

        /**
         * Sets active year class.
         */
    }, {
        key: 'setActiveYearClass',
        value: function setActiveYearClass() {
            var inact = this.els.yearRangeContainer.querySelector('.wdp-list > li.wdp-active'),
                act = this.els.yearRangeContainer.querySelector('.wdp-list > li[date="' + this.tmpYearValue.year + '"]');
            if (inact) {
                inact.classList.remove('wdp-active');
            }
            if (act) {
                act.classList.add('wdp-active');
            }
        }

        /**
         * Sets hour.
         * 
         * @param {Number} hour 
         * @param {Boolean} input 
         * @param {Boolean} txt
         */
    }, {
        key: 'setHour',
        value: function setHour(hour) {
            var input = arguments.length <= 1 || arguments[1] === undefined ? true : arguments[1];
            var txt = arguments.length <= 2 || arguments[2] === undefined ? true : arguments[2];

            this.resetDate();

            if (isNaN(hour)) {
                hour = 12;
                this.setMinute(0, true, false);
                if (this.hourType == T.$12) {
                    this.setAM(true, true, false);
                }
            }

            var _hour = hour;
            if (this.hourType == T.$12) {
                if (hour <= 0) {
                    hour = 12;
                    this.setAM(!this.value.am, true, false);
                } else if (hour >= 13) {
                    hour = 1;
                    this.setAM(!this.value.am, true, false);
                }
            } else {
                if (hour <= -1) {
                    hour = 23;
                } else if (hour >= 24) {
                    hour = 0;
                }
            }

            this.value.hour = hour;
            if (input || !input && _hour != this.value.hour) {
                this.els.hourInput.value = _util2['default'].renderNumber(hour);
            }
            if (txt) {
                this.value.value = this.getValueText(this.value);
                this.setSpanText();
                this.setInputText();
                this.el.dispatchEvent(EVENTS.CHANGE);
            }
        }

        /**
         * Sets minute.
         * 
         * @param {Number} minute 
         * @param {Boolean} input 
         * @param {Boolean} txt 
         */
    }, {
        key: 'setMinute',
        value: function setMinute(minute) {
            var input = arguments.length <= 1 || arguments[1] === undefined ? true : arguments[1];
            var txt = arguments.length <= 2 || arguments[2] === undefined ? true : arguments[2];

            this.resetDate();

            if (isNaN(minute)) {
                minute = 0;
                this.setHour(0, true, false);
                if (this.hourType == T.$12) {
                    this.setAM(true, true, false);
                }
            }

            var _minute = minute;
            if (minute <= -1) {
                minute = 59;
                this.setHour(this.value.hour - 1, true, false);
            } else if (minute >= 60) {
                minute = 0;
                this.setHour(this.value.hour + 1, true, false);
            }

            this.value.minute = minute;
            if (input || !input && _minute != this.value.minute) {
                this.els.minuteInput.value = _util2['default'].renderNumber(minute);
            }
            if (txt) {
                this.value.value = this.getValueText(this.value);
                this.setSpanText();
                this.setInputText();
                this.el.dispatchEvent(EVENTS.CHANGE);
            }
        }

        /**
         * Sets am/pm.
         * 
         * @param {Boolean} am 
         * @param {Boolean} input 
         * @param {Boolean} txt 
         */
    }, {
        key: 'setAM',
        value: function setAM(am) {
            var input = arguments.length <= 1 || arguments[1] === undefined ? true : arguments[1];
            var txt = arguments.length <= 2 || arguments[2] === undefined ? true : arguments[2];

            this.resetDate();

            if (!this.value.hour) {
                this.setHour(12, true, false);
                this.setMinute(0, true, false);
            }

            this.value.am = am;
            if (input) {
                this.els.amInput.value = this.value.am ? this.LANG.AM_PM[0] : this.LANG.AM_PM[1];
            }
            if (txt) {
                this.value.value = this.getValueText(this.value);
                this.setSpanText();
                this.setInputText();
                this.el.dispatchEvent(EVENTS.CHANGE);
            }
        }

        /**
         * Sets input text.
         */
    }, {
        key: 'setInputText',
        value: function setInputText() {
            if (this.inputEl) {
                this.inputEl.value = this.value.value;
            }
        }

        /**
         * Sets span text.
         */
    }, {
        key: 'setSpanText',
        value: function setSpanText() {
            var v = this.value;
            if (v.value == '' && this.type != T.HOUR) {
                this.els.span.innerHTML = '';
            } else if (v.day == -1 && this.type != T.HOUR) {
                this.els.span.innerHTML = this.LANG.INVALID_DATE;
            } else {
                if (this.type == T.HOUR) {
                    var d = new Date(),
                        weekDay = this.getWeekDay(d);
                    v = {
                        day: d.getDate(),
                        weekDay: weekDay,
                        month: d.getMonth() + 1,
                        year: d.getFullYear()
                    };
                }

                this.els.span.innerHTML = this.LANG.DAYS_ABBR[v.weekDay] + ', ' + v.day + ' ' + this.LANG.MONTHS_ABBR[v.month] + ' ' + v.year;
            }
        }

        /**
         * Sets date span text.
         */
    }, {
        key: 'setDateSpanText',
        value: function setDateSpanText() {
            var val;
            if (this.datePage == T.MONTH) {
                val = this.LANG.MONTHS[this.tmpValue.month] + ' ' + this.tmpValue.year;
            } else if (this.datePage == T.YEAR) {
                val = this.tmpYearValue.year;
            } else {
                val = this.tmpYearRangeValue.start + ' - ' + this.tmpYearRangeValue.end;
            }

            this.els.dateSpan.innerHTML = val;
        }

        /**
         * Sets page animation.
         * 
         * @param {HTMLElement} o
         * @param {HTMLElement} n
         * @param {String} a
         * @param {String} b
         */
    }, {
        key: 'setPageAnimation',
        value: function setPageAnimation(o, n, a, b) {
            o.classList.add('wdp-animation-fade-' + a);
            _util2['default'].addEventListenerOnce(o, _util2['default'].ANIMATION_END, function () {
                o.classList.add('wdp-d-none');
                o.classList.remove('wdp-animation-fade-' + a);
                n.classList.remove('wdp-d-none');
                var h = n.offsetHeight;
                n.classList.add('wdp-animation-fade-' + b);
                _util2['default'].addEventListenerOnce(n, _util2['default'].ANIMATION_END, function () {
                    n.classList.remove('wdp-animation-fade-' + b);
                });
            });
        }

        /**
         * Sets the picker position.
         */
    }, {
        key: 'setPosition',
        value: function setPosition() {
            var rect = this.parentEl.getBoundingClientRect(),
                ow = this.el.offsetWidth,
                oh = this.el.offsetHeight,
                x = rect.left + ow,
                _x = rect.left - ow,
                y = rect.top + rect.height + oh,
                _y = rect.top - oh,
                w = window.innerWidth,
                h = window.innerHeight;

            if (x >= w && _x > 0) {
                this.el.style.left = rect.left + rect.width - ow + 'px';
            } else {
                this.el.style.left = rect.left + 'px';
            }

            if (y >= h && _y > 0) {
                this.el.style.top = rect.top - oh + 'px';
            } else {
                this.el.style.top = rect.top + rect.height + 'px';
            }
        }

        /**
        * Increases date value by one.
        * 
        * @params {Event} e 
        */
    }, {
        key: 'increaseDateValue',
        value: function increaseDateValue(e) {
            e.preventDefault();
            if (this.datePage == T.MONTH) {
                var _tmpValue = this.tmpValue;
                var month = _tmpValue.month;
                var year = _tmpValue.year;

                if (month == 12) {
                    month = 1;
                    year += 1;
                } else {
                    month += 1;
                }
                this.setTmpMonth(month, year);
            } else if (this.datePage == T.YEAR) {
                var year = this.tmpYearValue.year;

                this.setTmpYear(year + 1);
            } else {
                var start = this.tmpYearRangeValue.start;

                this.setTmpYearRange(start + 10);
            }
        }

        /**
         * Decreases date value by one.
         * 
         * @params {Event} e
         */
    }, {
        key: 'decreaseDateValue',
        value: function decreaseDateValue(e) {
            e.preventDefault();
            if (this.datePage == T.MONTH) {
                var _tmpValue2 = this.tmpValue;
                var month = _tmpValue2.month;
                var year = _tmpValue2.year;

                if (month == 1) {
                    month = 12;
                    year -= 1;
                } else {
                    month -= 1;
                }
                this.setTmpMonth(month, year);
            } else if (this.datePage == T.YEAR) {
                var year = this.tmpYearValue.year;

                this.setTmpYear(year - 1);
            } else {
                var start = this.tmpYearRangeValue.start;

                this.setTmpYearRange(start - 10);
            }
        }

        /**
         * Creates day container.
         * 
         * @returns {HTMLUListElement}
         */
    }, {
        key: 'createDayCont',
        value: function createDayCont() {
            var ul = document.createElement('ul');
            ul.classList.add('wdp-week');
            return ul;
        }

        /**
         * Creates day element and attaches event listener.
         * 
         * @param {Number} d
         * @param {Number} m
         * @param {Number} y
         * @param {Boolean} muted
         * @returns {HTMLLIElement}
         */
    }, {
        key: 'createDayEl',
        value: function createDayEl(d, m, y, muted) {
            var _this5 = this;

            var li = document.createElement('li');
            li.setAttribute('date', d + '-' + m + '-' + y);
            if (muted) {
                li.classList.add('wdp-muted');
            }
            li.innerHTML = d;
            _util2['default'].addEventListener(li, [_util2['default'].MOUSE_DOWN], function () {
                _this5.setDay(d, m, y);
            });
            return li;
        }

        /**
         * Detects the target if it's the picker element, if not, closes the picker.
         * 
         * @param {Event} e 
         */
    }, {
        key: 'clickWindow',
        value: function clickWindow(e) {
            try {
                if (this.el == e.target || _util2['default'].contains(this.el, e.target)) {
                    throw null;
                }

                if (this.toggleEl && (this.toggleEl == e.target || _util2['default'].contains(this.toggleEl, e.target))) {
                    throw null;
                }

                if (this.inputToggle && this.inputEl && (this.inputEl == e.target || _util2['default'].contains(this.inputEl, e.target))) {
                    throw null;
                }

                this.close();
            } catch (ignored) {}
        }

        /**
         * Closes or cancels the picker.
         */
    }, {
        key: 'clickCross',
        value: function clickCross() {
            if (!this.showButtons) {
                this.close();
            } else {
                this.cancel();
            }
        }

        /**
         * Returns picker open status.
         * 
         * @returns {Boolean}
         */
    }, {
        key: 'isOpen',
        value: function isOpen() {
            return this.pickerOpen;
        }

        /**
         * Opens the picker.
         */
    }, {
        key: 'open',
        value: function open() {
            var _this6 = this;

            if (!this.isOpen()) {
                if (this.toggleEl) {
                    _util2['default'].addClass(this.toggleEl, 'wdp-active');
                }
                this.el.classList.add('wdp-active');
                var h = this.el.offsetHeight;
                this.setPosition();
                this.els.container.classList.add('wdp-active');
                _util2['default'].addEventListenerOnce(this.els.container, _util2['default'].TRANSITION_END, function () {
                    _util2['default'].addEventListener(window, ['resize', 'scroll'], _this6.setPosition);
                    _this6.pickerOpen = true;
                    _this6.el.dispatchEvent(EVENTS.OPEN);
                    if (!_this6.showButtons) {
                        _util2['default'].addEventListener(document, [_util2['default'].MOUSE_DOWN], _this6.clickWindow);
                    }
                });
            }
        }

        /**
         * Closes the picker.
         */
    }, {
        key: 'close',
        value: function close() {
            if (this.isOpen()) {
                if (this.toggleEl) {
                    _util2['default'].removeClass(this.toggleEl, 'wdp-active');
                }
                this.els.container.classList.remove('wdp-active');
                this.el.classList.remove('wdp-active');
                _util2['default'].removeEventListener(window, ['resize', 'scroll'], this.setPosition);
                this.pickerOpen = false;
                this.el.dispatchEvent(EVENTS.CLOSE);
                if (this.showButtons) {
                    _util2['default'].removeEventListener(document, [_util2['default'].MOUSE_DOWN], this.clickWindow);
                }
            }
        }

        /**
         * Toggles the picker.
         */
    }, {
        key: 'toggle',
        value: function toggle() {
            if (!this.isOpen()) {
                this.open();
            } else {
                this.close();
            }
        }

        /**
         * Saves the picker.
         */
    }, {
        key: 'save',
        value: function save() {
            this.initialValue = _extends({}, this.value);
            this.el.dispatchEvent(EVENTS.SAVE);
            this.close();
        }

        /**
         * Cancels the selection.
         */
    }, {
        key: 'cancel',
        value: function cancel() {
            this.value = _extends({}, this.initialValue);
            this.el.dispatchEvent(EVENTS.CANCEL);
            this.close();
            this.resetDatePage();
            this.resetHourPage();
            this.setSpanText();
            this.setInputText();
        }

        /**
         * Destroys the picker.
         */
    }, {
        key: 'destroy',
        value: function destroy() {
            if (this.isOpen()) {
                _util2['default'].removeEventListener(window, ['resize', 'scroll'], this.setPosition);
                if (this.showButtons) {
                    _util2['default'].removeEventListener(document, [_util2['default'].MOUSE_DOWN], this.clickWindow);
                }
            }

            if (this.inputEl) {
                _util2['default'].removeEventListener(this.inputEl, ['change'], this.changeInput);

                if (this.inputToggle) {
                    _util2['default'].removeEventListener(this.inputEl, [_util2['default'].MOUSE_DOWN], this.open);
                }
            }

            if (this.toggleEl) {
                _util2['default'].removeEventListener(this.toggleEl, [_util2['default'].MOUSE_DOWN], this.toggle);
            }

            this.el.innerHTML = '';
            this.el.classList.remove('wdp');
            this.el.dispatchEvent(EVENTS.DESTROY);
        }

        /**
         * Creates a new language.
         * 
         * @param {String} name
         * @param {Object} lang
         */
    }], [{
        key: 'createLanguage',
        value: function createLanguage(name, lang) {
            this.LANG[name] = lang;
        }
    }]);

    return WindowDatePicker;
})();

exports['default'] = WindowDatePicker;

WindowDatePicker.LANG = {};
WindowDatePicker.createLanguage('en', _lang2['default']);
module.exports = exports['default'];