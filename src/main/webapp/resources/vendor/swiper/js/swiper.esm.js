/**
 * Swiper 4.5.1 Most modern mobile touch slider and framework with hardware
 * accelerated transitions http://www.idangero.us/swiper/
 * 
 * Copyright 2014-2019 Vladimir Kharlampidi
 * 
 * Released under the MIT License
 * 
 * Released on: September 13, 2019
 */
'use strict';
Object.defineProperty(exports, '__esModule', {
    value: true
});
var _get = function get(_x14, _x15, _x16) {
    var _again = true;
    _function: while (_again) {
        var object = _x14,
            property = _x15,
            receiver = _x16;
        _again = false;
        if (object === null) object = Function.prototype;
        var desc = Object.getOwnPropertyDescriptor(object, property);
        if (desc === undefined) {
            var parent = Object.getPrototypeOf(object);
            if (parent === null) {
                return undefined;
            } else {
                _x14 = parent;
                _x15 = property;
                _x16 = receiver;
                _again = true;
                desc = parent = undefined;
                continue _function;
            }
        } else if ('value' in desc) {
            return desc.value;
        } else {
            var getter = desc.get;
            if (getter === undefined) {
                return undefined;
            }
            return getter.call(receiver);
        }
    }
};
var _createClass = (function() {
    function defineProperties(target, props) {
        for (var i = 0; i < props.length; i++) {
            var descriptor = props[i];
            descriptor.enumerable = descriptor.enumerable || false;
            descriptor.configurable = true;
            if ('value' in descriptor) descriptor.writable = true;
            Object.defineProperty(target, descriptor.key, descriptor);
        }
    }
    return function(Constructor, protoProps, staticProps) {
        if (protoProps) defineProperties(Constructor.prototype, protoProps);
        if (staticProps) defineProperties(Constructor, staticProps);
        return Constructor;
    };
})();

function _inherits(subClass, superClass) {
    if (typeof superClass !== 'function' && superClass !== null) {
        throw new TypeError('Super expression must either be null or a function, not ' + typeof superClass);
    }
    subClass.prototype = Object.create(superClass && superClass.prototype, {
        constructor: {
            value: subClass,
            enumerable: false,
            writable: true,
            configurable: true
        }
    });
    if (superClass) Object.setPrototypeOf ? Object.setPrototypeOf(subClass, superClass) : subClass.__proto__ = superClass;
}

function _classCallCheck(instance, Constructor) {
    if (!(instance instanceof Constructor)) {
        throw new TypeError('Cannot call a class as a function');
    }
}
var _dom7DistDom7Modular = require('dom7/dist/dom7.modular');
var _ssrWindow = require('ssr-window');
var Methods = {
    addClass: _dom7DistDom7Modular.addClass,
    removeClass: _dom7DistDom7Modular.removeClass,
    hasClass: _dom7DistDom7Modular.hasClass,
    toggleClass: _dom7DistDom7Modular.toggleClass,
    attr: _dom7DistDom7Modular.attr,
    removeAttr: _dom7DistDom7Modular.removeAttr,
    data: _dom7DistDom7Modular.data,
    transform: _dom7DistDom7Modular.transform,
    transition: _dom7DistDom7Modular.transition,
    on: _dom7DistDom7Modular.on,
    off: _dom7DistDom7Modular.off,
    trigger: _dom7DistDom7Modular.trigger,
    transitionEnd: _dom7DistDom7Modular.transitionEnd,
    outerWidth: _dom7DistDom7Modular.outerWidth,
    outerHeight: _dom7DistDom7Modular.outerHeight,
    offset: _dom7DistDom7Modular.offset,
    css: _dom7DistDom7Modular.css,
    each: _dom7DistDom7Modular.each,
    html: _dom7DistDom7Modular.html,
    text: _dom7DistDom7Modular.text,
    is: _dom7DistDom7Modular.is,
    index: _dom7DistDom7Modular.index,
    eq: _dom7DistDom7Modular.eq,
    append: _dom7DistDom7Modular.append,
    prepend: _dom7DistDom7Modular.prepend,
    next: _dom7DistDom7Modular.next,
    nextAll: _dom7DistDom7Modular.nextAll,
    prev: _dom7DistDom7Modular.prev,
    prevAll: _dom7DistDom7Modular.prevAll,
    parent: _dom7DistDom7Modular.parent,
    parents: _dom7DistDom7Modular.parents,
    closest: _dom7DistDom7Modular.closest,
    find: _dom7DistDom7Modular.find,
    children: _dom7DistDom7Modular.children,
    remove: _dom7DistDom7Modular.remove,
    add: _dom7DistDom7Modular.add,
    styles: _dom7DistDom7Modular.styles
};
Object.keys(Methods).forEach(function(methodName) {
    _dom7DistDom7Modular.$.fn[methodName] = _dom7DistDom7Modular.$.fn[methodName] || Methods[methodName];
});
var Utils = {
    deleteProps: function deleteProps(obj) {
        var object = obj;
        Object.keys(object).forEach(function(key) {
            try {
                object[key] = null;
            } catch (e) { // no
                // getter
                // for
                // object
            }
            try {
                delete object[key];
            } catch (e) { // something got wrong
            }
        });
    },
    nextTick: function nextTick(callback) {
        var delay = arguments.length <= 1 || arguments[1] === undefined ? 0 : arguments[1];
        return setTimeout(callback, delay);
    },
    now: function now() {
        return Date.now();
    },
    getTranslate: function getTranslate(el) {
        var axis = arguments.length <= 1 || arguments[1] === undefined ? 'x' : arguments[1];
        var matrix = undefined;
        var curTransform = undefined;
        var transformMatrix = undefined;
        var curStyle = _ssrWindow.window.getComputedStyle(el, null);
        if (_ssrWindow.window.WebKitCSSMatrix) {
            curTransform = curStyle.transform || curStyle.webkitTransform;
            if (curTransform.split(',').length > 6) {
                curTransform = curTransform.split(', ').map(function(a) {
                    return a.replace(',', '.');
                }).join(', ');
            } // Some
            // old
            // versions
            // of
            // Webkit
            // choke
            // when
            // 'none'
            // is
            // passed;
            // pass
            // empty string instead in this case
            transformMatrix = new _ssrWindow.window.WebKitCSSMatrix(curTransform === 'none' ? '' : curTransform);
        } else {
            transformMatrix = curStyle.MozTransform || curStyle.OTransform || curStyle.MsTransform || curStyle.msTransform || curStyle.transform || curStyle.getPropertyValue('transform').replace('translate(', 'matrix(1, 0, 0, 1,');
            matrix = transformMatrix.toString().split(',');
        }
        if (axis === 'x') { // Latest
            // Chrome
            // and
            // webkits
            // Fix
            if (_ssrWindow.window.WebKitCSSMatrix) curTransform = transformMatrix.m41; // Crazy
            // IE10
            // Matrix
            else if (matrix.length === 16) curTransform = parseFloat(matrix[12]); // Normal
            // Browsers
            else curTransform = parseFloat(matrix[4]);
        }
        if (axis === 'y') { // Latest Chrome
            // and webkits
            // Fix
            if (_ssrWindow.window.WebKitCSSMatrix) curTransform = transformMatrix.m42; // Crazy
            // IE10
            // Matrix
            else if (matrix.length === 16) curTransform = parseFloat(matrix[13]); // Normal
            // Browsers
            else curTransform = parseFloat(matrix[5]);
        }
        return curTransform || 0;
    },
    parseUrlQuery: function parseUrlQuery(url) {
        var query = {};
        var urlToParse = url || _ssrWindow.window.location.href;
        var i = undefined;
        var params = undefined;
        var param = undefined;
        var length = undefined;
        if (typeof urlToParse === 'string' && urlToParse.length) {
            urlToParse = urlToParse.indexOf('?') > -1 ? urlToParse.replace(/\S*\?/, '') : '';
            params = urlToParse.split('&').filter(function(paramsPart) {
                return paramsPart !== '';
            });
            length = params.length;
            for (i = 0; i < length; i += 1) {
                param = params[i].replace(/#\S+/g, '').split('=');
                query[decodeURIComponent(param[0])] = typeof param[1] === 'undefined' ? undefined : decodeURIComponent(param[1]) || '';
            }
        }
        return query;
    },
    isObject: function isObject(o) {
        return typeof o === 'object' && o !== null && o.constructor && o.constructor === Object;
    },
    extend: function extend() {
        for (var _len = arguments.length, args = Array(_len), _key = 0; _key < _len; _key++) {
            args[_key] = arguments[_key];
        }
        var to = Object(args[0]);
        for (var i = 1; i < args.length; i += 1) {
            var nextSource = args[i];
            if (nextSource !== undefined && nextSource !== null) {
                var keysArray = Object.keys(Object(nextSource));
                for (var nextIndex = 0, len = keysArray.length; nextIndex < len; nextIndex += 1) {
                    var nextKey = keysArray[nextIndex];
                    var desc = Object.getOwnPropertyDescriptor(nextSource, nextKey);
                    if (desc !== undefined && desc.enumerable) {
                        if (Utils.isObject(to[nextKey]) && Utils.isObject(nextSource[nextKey])) {
                            Utils.extend(to[nextKey], nextSource[nextKey]);
                        } else if (!Utils.isObject(to[nextKey]) && Utils.isObject(nextSource[nextKey])) {
                            to[nextKey] = {};
                            Utils.extend(to[nextKey], nextSource[nextKey]);
                        } else {
                            to[nextKey] = nextSource[nextKey];
                        }
                    }
                }
            }
        }
        return to;
    }
};
var Support = (function Support() {
    var testDiv = _ssrWindow.document.createElement('div');
    return {
        touch: _ssrWindow.window.Modernizr && _ssrWindow.window.Modernizr.touch === true || (function checkTouch() {
            return !!(_ssrWindow.window.navigator.maxTouchPoints > 0 || 'ontouchstart' in _ssrWindow.window || _ssrWindow.window.DocumentTouch && _ssrWindow.document instanceof _ssrWindow.window.DocumentTouch);
        })(),
        pointerEvents: !!(_ssrWindow.window.navigator.pointerEnabled || _ssrWindow.window.PointerEvent || 'maxTouchPoints' in _ssrWindow.window.navigator && _ssrWindow.window.navigator.maxTouchPoints > 0),
        prefixedPointerEvents: !!_ssrWindow.window.navigator.msPointerEnabled,
        transition: (function checkTransition() {
            var style = testDiv.style;
            return 'transition' in style || 'webkitTransition' in style || 'MozTransition' in style;
        })(),
        transforms3d: _ssrWindow.window.Modernizr && _ssrWindow.window.Modernizr.csstransforms3d === true || (function checkTransforms3d() {
            var style = testDiv.style;
            return 'webkitPerspective' in style || 'MozPerspective' in style || 'OPerspective' in style || 'MsPerspective' in style || 'perspective' in style;
        })(),
        flexbox: (function checkFlexbox() {
            var style = testDiv.style;
            var styles = 'alignItems webkitAlignItems webkitBoxAlign msFlexAlign mozBoxAlign webkitFlexDirection msFlexDirection mozBoxDirection mozBoxOrient webkitBoxDirection webkitBoxOrient'.split(' ');
            for (var i = 0; i < styles.length; i += 1) {
                if (styles[i] in style) return true;
            }
            return false;
        })(),
        observer: (function checkObserver() {
            return 'MutationObserver' in _ssrWindow.window || 'WebkitMutationObserver' in _ssrWindow.window;
        })(),
        passiveListener: (function checkPassiveListener() {
            var supportsPassive = false;
            try {
                var opts = Object.defineProperty({}, 'passive', { // eslint-disable-next-line
                    get: function get() {
                        supportsPassive = true;
                    }
                });
                _ssrWindow.window.addEventListener('testPassiveListener', null, opts);
            } catch (e) { // No
                // support
            }
            return supportsPassive;
        })(),
        gestures: (function checkGestures() {
            return 'ongesturestart' in _ssrWindow.window;
        })()
    };
})();
var Browser = (function Browser() {
    function isSafari() {
        var ua = _ssrWindow.window.navigator.userAgent.toLowerCase();
        return ua.indexOf('safari') >= 0 && ua.indexOf('chrome') < 0 && ua.indexOf('android') < 0;
    }
    return {
        isIE: !!_ssrWindow.window.navigator.userAgent.match(/Trident/g) || !!_ssrWindow.window.navigator.userAgent.match(/MSIE/g),
        isEdge: !!_ssrWindow.window.navigator.userAgent.match(/Edge/g),
        isSafari: isSafari(),
        isUiWebView: /(iPhone|iPod|iPad).*AppleWebKit(?!.*Safari)/i.test(_ssrWindow.window.navigator.userAgent)
    };
})();
var SwiperClass = (function() {
    function SwiperClass() {
        var params = arguments.length <= 0 || arguments[0] === undefined ? {} : arguments[0];
        _classCallCheck(this, SwiperClass);
        var self = this;
        self.params = params; // Events
        self.eventsListeners = {};
        if (self.params && self.params.on) {
            Object.keys(self.params.on).forEach(function(eventName) {
                self.on(eventName, self.params.on[eventName]);
            });
        }
    }
    _createClass(SwiperClass, [{
        key: 'on',
        value: function on(events, handler, priority) {
            var self = this;
            if (typeof handler !== 'function') return self;
            var method = priority ? 'unshift' : 'push';
            events.split(' ').forEach(function(event) {
                if (!self.eventsListeners[event]) self.eventsListeners[event] = [];
                self.eventsListeners[event][method](handler);
            });
            return self;
        }
    }, {
        key: 'once',
        value: function once(events, handler, priority) {
            var self = this;
            if (typeof handler !== 'function') return self;

            function onceHandler() {
                for (var _len2 = arguments.length, args = Array(_len2), _key2 = 0; _key2 < _len2; _key2++) {
                    args[_key2] = arguments[_key2];
                }
                handler.apply(self, args);
                self.off(events, onceHandler);
                if (onceHandler.f7proxy) {
                    delete onceHandler.f7proxy;
                }
            }
            onceHandler.f7proxy = handler;
            return self.on(events, onceHandler, priority);
        }
    }, {
        key: 'off',
        value: function off(events, handler) {
            var self = this;
            if (!self.eventsListeners) return self;
            events.split(' ').forEach(function(event) {
                if (typeof handler === 'undefined') {
                    self.eventsListeners[event] = [];
                } else if (self.eventsListeners[event] && self.eventsListeners[event].length) {
                    self.eventsListeners[event].forEach(function(eventHandler, index) {
                        if (eventHandler === handler || eventHandler.f7proxy && eventHandler.f7proxy === handler) {
                            self.eventsListeners[event].splice(index, 1);
                        }
                    });
                }
            });
            return self;
        }
    }, {
        key: 'emit',
        value: function emit() {
            var self = this;
            if (!self.eventsListeners) return self;
            var events = undefined;
            var data = undefined;
            var context = undefined;
            for (var _len3 = arguments.length, args = Array(_len3), _key3 = 0; _key3 < _len3; _key3++) {
                args[_key3] = arguments[_key3];
            }
            if (typeof args[0] === 'string' || Array.isArray(args[0])) {
                events = args[0];
                data = args.slice(1, args.length);
                context = self;
            } else {
                events = args[0].events;
                data = args[0].data;
                context = args[0].context || self;
            }
            var eventsArray = Array.isArray(events) ? events : events.split(' ');
            eventsArray.forEach(function(event) {
                if (self.eventsListeners && self.eventsListeners[event]) {
                    (function() {
                        var handlers = [];
                        self.eventsListeners[event].forEach(function(eventHandler) {
                            handlers.push(eventHandler);
                        });
                        handlers.forEach(function(eventHandler) {
                            eventHandler.apply(context, data);
                        });
                    })();
                }
            });
            return self;
        }
    }, {
        key: 'useModulesParams',
        value: function useModulesParams(instanceParams) {
            var instance = this;
            if (!instance.modules) return;
            Object.keys(instance.modules).forEach(function(moduleName) {
                var module = instance.modules[moduleName]; // Extend
                // params
                if (module.params) {
                    Utils.extend(instanceParams, module.params);
                }
            });
        }
    }, {
        key: 'useModules',
        value: function useModules() {
            var modulesParams = arguments.length <= 0 || arguments[0] === undefined ? {} : arguments[0];
            var instance = this;
            if (!instance.modules) return;
            Object.keys(instance.modules).forEach(function(moduleName) {
                var module = instance.modules[moduleName];
                var moduleParams = modulesParams[moduleName] || {}; // Extend
                // instance
                // methods
                // and
                // props
                if (module.instance) {
                    Object.keys(module.instance).forEach(function(modulePropName) {
                        var moduleProp = module.instance[modulePropName];
                        if (typeof moduleProp === 'function') {
                            instance[modulePropName] = moduleProp.bind(instance);
                        } else {
                            instance[modulePropName] = moduleProp;
                        }
                    });
                } // Add
                // event
                // listeners
                if (module.on && instance.on) {
                    Object.keys(module.on).forEach(function(moduleEventName) {
                        instance.on(moduleEventName, module.on[moduleEventName]);
                    });
                } // Module
                // create
                // callback
                if (module.create) {
                    module.create.bind(instance)(moduleParams);
                }
            });
        }
    }], [{
        key: 'installModule',
        value: function installModule(module) {
            var Class = this;
            if (!Class.prototype.modules) Class.prototype.modules = {};
            var name = module.name || Object.keys(Class.prototype.modules).length + '_' + Utils.now();
            Class.prototype.modules[name] = module; // Prototype
            if (module.proto) {
                Object.keys(module.proto).forEach(function(key) {
                    Class.prototype[key] = module.proto[key];
                });
            } // Class
            if (module['static']) {
                Object.keys(module['static']).forEach(function(key) {
                    Class[key] = module['static'][key];
                });
            } // Callback
            if (module.install) {
                for (var _len4 = arguments.length, params = Array(_len4 > 1 ? _len4 - 1 : 0), _key4 = 1; _key4 < _len4; _key4++) {
                    params[_key4 - 1] = arguments[_key4];
                }
                module.install.apply(Class, params);
            }
            return Class;
        }
    }, {
        key: 'use',
        value: function use(module) {
            var Class = this;
            if (Array.isArray(module)) {
                module.forEach(function(m) {
                    return Class.installModule(m);
                });
                return Class;
            }
            for (var _len5 = arguments.length, params = Array(_len5 > 1 ? _len5 - 1 : 0), _key5 = 1; _key5 < _len5; _key5++) {
                params[_key5 - 1] = arguments[_key5];
            }
            return Class.installModule.apply(Class, [module].concat(params));
        }
    }, {
        key: 'components',
        set: function set(components) {
            var Class = this;
            if (!Class.use) return;
            Class.use(components);
        }
    }]);
    return SwiperClass;
})();

function updateSize() {
    var swiper = this;
    var width = undefined;
    var height = undefined;
    var $el = swiper.$el;
    if (typeof swiper.params.width !== 'undefined') {
        width = swiper.params.width;
    } else {
        width = $el[0].clientWidth;
    }
    if (typeof swiper.params.height !== 'undefined') {
        height = swiper.params.height;
    } else {
        height = $el[0].clientHeight;
    }
    if (width === 0 && swiper.isHorizontal() || height === 0 && swiper.isVertical()) {
        return;
    } // Subtract
    // paddings
    width = width - parseInt($el.css('padding-left'), 10) - parseInt($el.css('padding-right'), 10);
    height = height - parseInt($el.css('padding-top'), 10) - parseInt($el.css('padding-bottom'), 10);
    Utils.extend(swiper, {
        width: width,
        height: height,
        size: swiper.isHorizontal() ? width : height
    });
}

function updateSlides() {
    var swiper = this;
    var params = swiper.params;
    var $wrapperEl = swiper.$wrapperEl;
    var swiperSize = swiper.size;
    var rtl = swiper.rtlTranslate;
    var wrongRTL = swiper.wrongRTL;
    var isVirtual = swiper.virtual && params.virtual.enabled;
    var previousSlidesLength = isVirtual ? swiper.virtual.slides.length : swiper.slides.length;
    var slides = $wrapperEl.children('.' + swiper.params.slideClass);
    var slidesLength = isVirtual ? swiper.virtual.slides.length : slides.length;
    var snapGrid = [];
    var slidesGrid = [];
    var slidesSizesGrid = [];
    var offsetBefore = params.slidesOffsetBefore;
    if (typeof offsetBefore === 'function') {
        offsetBefore = params.slidesOffsetBefore.call(swiper);
    }
    var offsetAfter = params.slidesOffsetAfter;
    if (typeof offsetAfter === 'function') {
        offsetAfter = params.slidesOffsetAfter.call(swiper);
    }
    var previousSnapGridLength = swiper.snapGrid.length;
    var previousSlidesGridLength = swiper.snapGrid.length;
    var spaceBetween = params.spaceBetween;
    var slidePosition = -offsetBefore;
    var prevSlideSize = 0;
    var index = 0;
    if (typeof swiperSize === 'undefined') {
        return;
    }
    if (typeof spaceBetween === 'string' && spaceBetween.indexOf('%') >= 0) {
        spaceBetween = parseFloat(spaceBetween.replace('%', '')) / 100 * swiperSize;
    }
    swiper.virtualSize = -spaceBetween; // reset
    // margins
    if (rtl) slides.css({
        marginLeft: '',
        marginTop: ''
    });
    else slides.css({
        marginRight: '',
        marginBottom: ''
    });
    var slidesNumberEvenToRows = undefined;
    if (params.slidesPerColumn > 1) {
        if (Math.floor(slidesLength / params.slidesPerColumn) === slidesLength / swiper.params.slidesPerColumn) {
            slidesNumberEvenToRows = slidesLength;
        } else {
            slidesNumberEvenToRows = Math.ceil(slidesLength / params.slidesPerColumn) * params.slidesPerColumn;
        }
        if (params.slidesPerView !== 'auto' && params.slidesPerColumnFill === 'row') {
            slidesNumberEvenToRows = Math.max(slidesNumberEvenToRows, params.slidesPerView * params.slidesPerColumn);
        }
    } // Calc
    // slides
    var slideSize = undefined;
    var slidesPerColumn = params.slidesPerColumn;
    var slidesPerRow = slidesNumberEvenToRows / slidesPerColumn;
    var numFullColumns = Math.floor(slidesLength / params.slidesPerColumn);
    for (var i = 0; i < slidesLength; i += 1) {
        slideSize = 0;
        var _slide = slides.eq(i);
        if (params.slidesPerColumn > 1) { // Set
            // slides
            // order
            var newSlideOrderIndex = undefined;
            var column = undefined;
            var row = undefined;
            if (params.slidesPerColumnFill === 'column' || params.slidesPerColumnFill === 'row' && params.slidesPerGroup > 1) {
                if (params.slidesPerColumnFill === 'column') {
                    column = Math.floor(i / slidesPerColumn);
                    row = i - column * slidesPerColumn;
                    if (column > numFullColumns || column === numFullColumns && row === slidesPerColumn - 1) {
                        row += 1;
                        if (row >= slidesPerColumn) {
                            row = 0;
                            column += 1;
                        }
                    }
                } else {
                    var groupIndex = Math.floor(i / params.slidesPerGroup);
                    row = Math.floor(i / params.slidesPerView) - groupIndex * params.slidesPerColumn;
                    column = i - row * params.slidesPerView - groupIndex * params.slidesPerView;
                }
                newSlideOrderIndex = column + row * slidesNumberEvenToRows / slidesPerColumn;
                _slide.css({
                    '-webkit-box-ordinal-group': newSlideOrderIndex,
                    '-moz-box-ordinal-group': newSlideOrderIndex,
                    '-ms-flex-order': newSlideOrderIndex,
                    '-webkit-order': newSlideOrderIndex,
                    order: newSlideOrderIndex
                });
            } else {
                row = Math.floor(i / slidesPerRow);
                column = i - row * slidesPerRow;
            }
            _slide.css('margin-' + (swiper.isHorizontal() ? 'top' : 'left'), row !== 0 && params.spaceBetween && params.spaceBetween + 'px').attr('data-swiper-column', column).attr('data-swiper-row', row);
        }
        if (_slide.css('display') === 'none') continue; // eslint-disable-line
        if (params.slidesPerView === 'auto') {
            var slideStyles = _ssrWindow.window.getComputedStyle(_slide[0], null);
            var currentTransform = _slide[0].style.transform;
            var currentWebKitTransform = _slide[0].style.webkitTransform;
            if (currentTransform) {
                _slide[0].style.transform = 'none';
            }
            if (currentWebKitTransform) {
                _slide[0].style.webkitTransform = 'none';
            }
            if (params.roundLengths) {
                slideSize = swiper.isHorizontal() ? _slide.outerWidth(true) : _slide.outerHeight(true);
            } else { // eslint-disable-next-line
                if (swiper.isHorizontal()) {
                    var width = parseFloat(slideStyles.getPropertyValue('width'));
                    var paddingLeft = parseFloat(slideStyles.getPropertyValue('padding-left'));
                    var paddingRight = parseFloat(slideStyles.getPropertyValue('padding-right'));
                    var marginLeft = parseFloat(slideStyles.getPropertyValue('margin-left'));
                    var marginRight = parseFloat(slideStyles.getPropertyValue('margin-right'));
                    var boxSizing = slideStyles.getPropertyValue('box-sizing');
                    if (boxSizing && boxSizing === 'border-box' && !Browser.isIE) {
                        slideSize = width + marginLeft + marginRight;
                    } else {
                        slideSize = width + paddingLeft + paddingRight + marginLeft + marginRight;
                    }
                } else {
                    var height = parseFloat(slideStyles.getPropertyValue('height'));
                    var paddingTop = parseFloat(slideStyles.getPropertyValue('padding-top'));
                    var paddingBottom = parseFloat(slideStyles.getPropertyValue('padding-bottom'));
                    var marginTop = parseFloat(slideStyles.getPropertyValue('margin-top'));
                    var marginBottom = parseFloat(slideStyles.getPropertyValue('margin-bottom'));
                    var boxSizing = slideStyles.getPropertyValue('box-sizing');
                    if (boxSizing && boxSizing === 'border-box' && !Browser.isIE) {
                        slideSize = height + marginTop + marginBottom;
                    } else {
                        slideSize = height + paddingTop + paddingBottom + marginTop + marginBottom;
                    }
                }
            }
            if (currentTransform) {
                _slide[0].style.transform = currentTransform;
            }
            if (currentWebKitTransform) {
                _slide[0].style.webkitTransform = currentWebKitTransform;
            }
            if (params.roundLengths) slideSize = Math.floor(slideSize);
        } else {
            slideSize = (swiperSize - (params.slidesPerView - 1) * spaceBetween) / params.slidesPerView;
            if (params.roundLengths) slideSize = Math.floor(slideSize);
            if (slides[i]) {
                if (swiper.isHorizontal()) {
                    slides[i].style.width = slideSize + 'px';
                } else {
                    slides[i].style.height = slideSize + 'px';
                }
            }
        }
        if (slides[i]) {
            slides[i].swiperSlideSize = slideSize;
        }
        slidesSizesGrid.push(slideSize);
        if (params.centeredSlides) {
            slidePosition = slidePosition + slideSize / 2 + prevSlideSize / 2 + spaceBetween;
            if (prevSlideSize === 0 && i !== 0) slidePosition = slidePosition - swiperSize / 2 - spaceBetween;
            if (i === 0) slidePosition = slidePosition - swiperSize / 2 - spaceBetween;
            if (Math.abs(slidePosition) < 1 / 1000) slidePosition = 0;
            if (params.roundLengths) slidePosition = Math.floor(slidePosition);
            if (index % params.slidesPerGroup === 0) snapGrid.push(slidePosition);
            slidesGrid.push(slidePosition);
        } else {
            if (params.roundLengths) slidePosition = Math.floor(slidePosition);
            if (index % params.slidesPerGroup === 0) snapGrid.push(slidePosition);
            slidesGrid.push(slidePosition);
            slidePosition = slidePosition + slideSize + spaceBetween;
        }
        swiper.virtualSize += slideSize + spaceBetween;
        prevSlideSize = slideSize;
        index += 1;
    }
    swiper.virtualSize = Math.max(swiper.virtualSize, swiperSize) + offsetAfter;
    var newSlidesGrid = undefined;
    if (rtl && wrongRTL && (params.effect === 'slide' || params.effect === 'coverflow')) {
        $wrapperEl.css({
            width: swiper.virtualSize + params.spaceBetween + 'px'
        });
    }
    if (!Support.flexbox || params.setWrapperSize) {
        if (swiper.isHorizontal()) $wrapperEl.css({
            width: swiper.virtualSize + params.spaceBetween + 'px'
        });
        else $wrapperEl.css({
            height: swiper.virtualSize + params.spaceBetween + 'px'
        });
    }
    if (params.slidesPerColumn > 1) {
        swiper.virtualSize = (slideSize + params.spaceBetween) * slidesNumberEvenToRows;
        swiper.virtualSize = Math.ceil(swiper.virtualSize / params.slidesPerColumn) - params.spaceBetween;
        if (swiper.isHorizontal()) $wrapperEl.css({
            width: swiper.virtualSize + params.spaceBetween + 'px'
        });
        else $wrapperEl.css({
            height: swiper.virtualSize + params.spaceBetween + 'px'
        });
        if (params.centeredSlides) {
            newSlidesGrid = [];
            for (var i = 0; i < snapGrid.length; i += 1) {
                var slidesGridItem = snapGrid[i];
                if (params.roundLengths) slidesGridItem = Math.floor(slidesGridItem);
                if (snapGrid[i] < swiper.virtualSize + snapGrid[0]) newSlidesGrid.push(slidesGridItem);
            }
            snapGrid = newSlidesGrid;
        }
    } // Remove
    // last
    // grid
    // elements
    // depending
    // on
    // width
    if (!params.centeredSlides) {
        newSlidesGrid = [];
        for (var i = 0; i < snapGrid.length; i += 1) {
            var slidesGridItem = snapGrid[i];
            if (params.roundLengths) slidesGridItem = Math.floor(slidesGridItem);
            if (snapGrid[i] <= swiper.virtualSize - swiperSize) {
                newSlidesGrid.push(slidesGridItem);
            }
        }
        snapGrid = newSlidesGrid;
        if (Math.floor(swiper.virtualSize - swiperSize) - Math.floor(snapGrid[snapGrid.length - 1]) > 1) {
            snapGrid.push(swiper.virtualSize - swiperSize);
        }
    }
    if (snapGrid.length === 0) snapGrid = [0];
    if (params.spaceBetween !== 0) {
        if (swiper.isHorizontal()) {
            if (rtl) slides.css({
                marginLeft: spaceBetween + 'px'
            });
            else slides.css({
                marginRight: spaceBetween + 'px'
            });
        } else slides.css({
            marginBottom: spaceBetween + 'px'
        });
    }
    if (params.centerInsufficientSlides) {
        var allSlidesSize = 0;
        slidesSizesGrid.forEach(function(slideSizeValue) {
            allSlidesSize += slideSizeValue + (params.spaceBetween ? params.spaceBetween : 0);
        });
        allSlidesSize -= params.spaceBetween;
        if (allSlidesSize < swiperSize) {
            (function() {
                var allSlidesOffset = (swiperSize - allSlidesSize) / 2;
                snapGrid.forEach(function(snap, snapIndex) {
                    snapGrid[snapIndex] = snap - allSlidesOffset;
                });
                slidesGrid.forEach(function(snap, snapIndex) {
                    slidesGrid[snapIndex] = snap + allSlidesOffset;
                });
            })();
        }
    }
    Utils.extend(swiper, {
        slides: slides,
        snapGrid: snapGrid,
        slidesGrid: slidesGrid,
        slidesSizesGrid: slidesSizesGrid
    });
    if (slidesLength !== previousSlidesLength) {
        swiper.emit('slidesLengthChange');
    }
    if (snapGrid.length !== previousSnapGridLength) {
        if (swiper.params.watchOverflow) swiper.checkOverflow();
        swiper.emit('snapGridLengthChange');
    }
    if (slidesGrid.length !== previousSlidesGridLength) {
        swiper.emit('slidesGridLengthChange');
    }
    if (params.watchSlidesProgress || params.watchSlidesVisibility) {
        swiper.updateSlidesOffset();
    }
}

function updateAutoHeight(speed) {
    var swiper = this;
    var activeSlides = [];
    var newHeight = 0;
    var i = undefined;
    if (typeof speed === 'number') {
        swiper.setTransition(speed);
    } else if (speed === true) {
        swiper.setTransition(swiper.params.speed);
    } // Find
    // slides
    // currently
    // in
    // view
    if (swiper.params.slidesPerView !== 'auto' && swiper.params.slidesPerView > 1) {
        for (i = 0; i < Math.ceil(swiper.params.slidesPerView); i += 1) {
            var _index = swiper.activeIndex + i;
            if (_index > swiper.slides.length) break;
            activeSlides.push(swiper.slides.eq(_index)[0]);
        }
    } else {
        activeSlides.push(swiper.slides.eq(swiper.activeIndex)[0]);
    } // Find
    // new
    // height
    // from
    // highest
    // slide
    // in
    // view
    for (i = 0; i < activeSlides.length; i += 1) {
        if (typeof activeSlides[i] !== 'undefined') {
            var height = activeSlides[i].offsetHeight;
            newHeight = height > newHeight ? height : newHeight;
        }
    } // Update
    // Height
    if (newHeight) swiper.$wrapperEl.css('height', newHeight + 'px');
}

function updateSlidesOffset() {
    var swiper = this;
    var slides = swiper.slides;
    for (var i = 0; i < slides.length; i += 1) {
        slides[i].swiperSlideOffset = swiper.isHorizontal() ? slides[i].offsetLeft : slides[i].offsetTop;
    }
}

function updateSlidesProgress() {
    var translate = arguments.length <= 0 || arguments[0] === undefined ? this && this.translate || 0 : arguments[0];
    var swiper = this;
    var params = swiper.params;
    var slides = swiper.slides;
    var rtl = swiper.rtlTranslate;
    if (slides.length === 0) return;
    if (typeof slides[0].swiperSlideOffset === 'undefined') swiper.updateSlidesOffset();
    var offsetCenter = -translate;
    if (rtl) offsetCenter = translate; // Visible
    // Slides
    slides.removeClass(params.slideVisibleClass);
    swiper.visibleSlidesIndexes = [];
    swiper.visibleSlides = [];
    for (var i = 0; i < slides.length; i += 1) {
        var _slide2 = slides[i];
        var slideProgress = (offsetCenter + (params.centeredSlides ? swiper.minTranslate() : 0) - _slide2.swiperSlideOffset) / (_slide2.swiperSlideSize + params.spaceBetween);
        if (params.watchSlidesVisibility) {
            var slideBefore = -(offsetCenter - _slide2.swiperSlideOffset);
            var slideAfter = slideBefore + swiper.slidesSizesGrid[i];
            var isVisible = slideBefore >= 0 && slideBefore < swiper.size - 1 || slideAfter > 1 && slideAfter <= swiper.size || slideBefore <= 0 && slideAfter >= swiper.size;
            if (isVisible) {
                swiper.visibleSlides.push(_slide2);
                swiper.visibleSlidesIndexes.push(i);
                slides.eq(i).addClass(params.slideVisibleClass);
            }
        }
        _slide2.progress = rtl ? -slideProgress : slideProgress;
    }
    swiper.visibleSlides = (0, _dom7DistDom7Modular.$)(swiper.visibleSlides);
}

function updateProgress() {
    var translate = arguments.length <= 0 || arguments[0] === undefined ? this && this.translate || 0 : arguments[0];
    var swiper = this;
    var params = swiper.params;
    var translatesDiff = swiper.maxTranslate() - swiper.minTranslate();
    var progress = swiper.progress;
    var isBeginning = swiper.isBeginning;
    var isEnd = swiper.isEnd;
    var wasBeginning = isBeginning;
    var wasEnd = isEnd;
    if (translatesDiff === 0) {
        progress = 0;
        isBeginning = true;
        isEnd = true;
    } else {
        progress = (translate - swiper.minTranslate()) / translatesDiff;
        isBeginning = progress <= 0;
        isEnd = progress >= 1;
    }
    Utils.extend(swiper, {
        progress: progress,
        isBeginning: isBeginning,
        isEnd: isEnd
    });
    if (params.watchSlidesProgress || params.watchSlidesVisibility) swiper.updateSlidesProgress(translate);
    if (isBeginning && !wasBeginning) {
        swiper.emit('reachBeginning toEdge');
    }
    if (isEnd && !wasEnd) {
        swiper.emit('reachEnd toEdge');
    }
    if (wasBeginning && !isBeginning || wasEnd && !isEnd) {
        swiper.emit('fromEdge');
    }
    swiper.emit('progress', progress);
}

function updateSlidesClasses() {
    var swiper = this;
    var slides = swiper.slides;
    var params = swiper.params;
    var $wrapperEl = swiper.$wrapperEl;
    var activeIndex = swiper.activeIndex;
    var realIndex = swiper.realIndex;
    var isVirtual = swiper.virtual && params.virtual.enabled;
    slides.removeClass(params.slideActiveClass + ' ' + params.slideNextClass + ' ' + params.slidePrevClass + ' ' + params.slideDuplicateActiveClass + ' ' + params.slideDuplicateNextClass + ' ' + params.slideDuplicatePrevClass);
    var activeSlide = undefined;
    if (isVirtual) {
        activeSlide = swiper.$wrapperEl.find('.' + params.slideClass + '[data-swiper-slide-index="' + activeIndex + '"]');
    } else {
        activeSlide = slides.eq(activeIndex);
    } // Active
    // classes
    activeSlide.addClass(params.slideActiveClass);
    if (params.loop) { // Duplicate to
        // all looped
        // slides
        if (activeSlide.hasClass(params.slideDuplicateClass)) {
            $wrapperEl.children('.' + params.slideClass + ':not(.' + params.slideDuplicateClass + ')[data-swiper-slide-index="' + realIndex + '"]').addClass(params.slideDuplicateActiveClass);
        } else {
            $wrapperEl.children('.' + params.slideClass + '.' + params.slideDuplicateClass + '[data-swiper-slide-index="' + realIndex + '"]').addClass(params.slideDuplicateActiveClass);
        }
    } // Next
    // Slide
    var nextSlide = activeSlide.nextAll('.' + params.slideClass).eq(0).addClass(params.slideNextClass);
    if (params.loop && nextSlide.length === 0) {
        nextSlide = slides.eq(0);
        nextSlide.addClass(params.slideNextClass);
    } // Prev
    // Slide
    var prevSlide = activeSlide.prevAll('.' + params.slideClass).eq(0).addClass(params.slidePrevClass);
    if (params.loop && prevSlide.length === 0) {
        prevSlide = slides.eq(-1);
        prevSlide.addClass(params.slidePrevClass);
    }
    if (params.loop) { // Duplicate
        // to
        // all
        // looped
        // slides
        if (nextSlide.hasClass(params.slideDuplicateClass)) {
            $wrapperEl.children('.' + params.slideClass + ':not(.' + params.slideDuplicateClass + ')[data-swiper-slide-index="' + nextSlide.attr('data-swiper-slide-index') + '"]').addClass(params.slideDuplicateNextClass);
        } else {
            $wrapperEl.children('.' + params.slideClass + '.' + params.slideDuplicateClass + '[data-swiper-slide-index="' + nextSlide.attr('data-swiper-slide-index') + '"]').addClass(params.slideDuplicateNextClass);
        }
        if (prevSlide.hasClass(params.slideDuplicateClass)) {
            $wrapperEl.children('.' + params.slideClass + ':not(.' + params.slideDuplicateClass + ')[data-swiper-slide-index="' + prevSlide.attr('data-swiper-slide-index') + '"]').addClass(params.slideDuplicatePrevClass);
        } else {
            $wrapperEl.children('.' + params.slideClass + '.' + params.slideDuplicateClass + '[data-swiper-slide-index="' + prevSlide.attr('data-swiper-slide-index') + '"]').addClass(params.slideDuplicatePrevClass);
        }
    }
}

function updateActiveIndex(newActiveIndex) {
    var swiper = this;
    var translate = swiper.rtlTranslate ? swiper.translate : -swiper.translate;
    var slidesGrid = swiper.slidesGrid;
    var snapGrid = swiper.snapGrid;
    var params = swiper.params;
    var previousIndex = swiper.activeIndex;
    var previousRealIndex = swiper.realIndex;
    var previousSnapIndex = swiper.snapIndex;
    var activeIndex = newActiveIndex;
    var snapIndex = undefined;
    if (typeof activeIndex === 'undefined') {
        for (var i = 0; i < slidesGrid.length; i += 1) {
            if (typeof slidesGrid[i + 1] !== 'undefined') {
                if (translate >= slidesGrid[i] && translate < slidesGrid[i + 1] - (slidesGrid[i + 1] - slidesGrid[i]) / 2) {
                    activeIndex = i;
                } else if (translate >= slidesGrid[i] && translate < slidesGrid[i + 1]) {
                    activeIndex = i + 1;
                }
            } else if (translate >= slidesGrid[i]) {
                activeIndex = i;
            }
        } // Normalize
        // slideIndex
        if (params.normalizeSlideIndex) {
            if (activeIndex < 0 || typeof activeIndex === 'undefined') activeIndex = 0;
        }
    }
    if (snapGrid.indexOf(translate) >= 0) {
        snapIndex = snapGrid.indexOf(translate);
    } else {
        snapIndex = Math.floor(activeIndex / params.slidesPerGroup);
    }
    if (snapIndex >= snapGrid.length) snapIndex = snapGrid.length - 1;
    if (activeIndex === previousIndex) {
        if (snapIndex !== previousSnapIndex) {
            swiper.snapIndex = snapIndex;
            swiper.emit('snapIndexChange');
        }
        return;
    } // Get
    // real
    // index
    var realIndex = parseInt(swiper.slides.eq(activeIndex).attr('data-swiper-slide-index') || activeIndex, 10);
    Utils.extend(swiper, {
        snapIndex: snapIndex,
        realIndex: realIndex,
        previousIndex: previousIndex,
        activeIndex: activeIndex
    });
    swiper.emit('activeIndexChange');
    swiper.emit('snapIndexChange');
    if (previousRealIndex !== realIndex) {
        swiper.emit('realIndexChange');
    }
    if (swiper.initialized || swiper.runCallbacksOnInit) {
        swiper.emit('slideChange');
    }
}

function updateClickedSlide(e) {
    var swiper = this;
    var params = swiper.params;
    var slide = (0, _dom7DistDom7Modular.$)(e.target).closest('.' + params.slideClass)[0];
    var slideFound = false;
    if (slide) {
        for (var i = 0; i < swiper.slides.length; i += 1) {
            if (swiper.slides[i] === slide) slideFound = true;
        }
    }
    if (slide && slideFound) {
        swiper.clickedSlide = slide;
        if (swiper.virtual && swiper.params.virtual.enabled) {
            swiper.clickedIndex = parseInt((0, _dom7DistDom7Modular.$)(slide).attr('data-swiper-slide-index'), 10);
        } else {
            swiper.clickedIndex = (0, _dom7DistDom7Modular.$)(slide).index();
        }
    } else {
        swiper.clickedSlide = undefined;
        swiper.clickedIndex = undefined;
        return;
    }
    if (params.slideToClickedSlide && swiper.clickedIndex !== undefined && swiper.clickedIndex !== swiper.activeIndex) {
        swiper.slideToClickedSlide();
    }
}
var update = {
    updateSize: updateSize,
    updateSlides: updateSlides,
    updateAutoHeight: updateAutoHeight,
    updateSlidesOffset: updateSlidesOffset,
    updateSlidesProgress: updateSlidesProgress,
    updateProgress: updateProgress,
    updateSlidesClasses: updateSlidesClasses,
    updateActiveIndex: updateActiveIndex,
    updateClickedSlide: updateClickedSlide
};

function getTranslate() {
    var axis = arguments.length <= 0 || arguments[0] === undefined ? this.isHorizontal() ? 'x' : 'y' : arguments[0];
    var swiper = this;
    var params = swiper.params;
    var rtl = swiper.rtlTranslate;
    var translate = swiper.translate;
    var $wrapperEl = swiper.$wrapperEl;
    if (params.virtualTranslate) {
        return rtl ? -translate : translate;
    }
    var currentTranslate = Utils.getTranslate($wrapperEl[0], axis);
    if (rtl) currentTranslate = -currentTranslate;
    return currentTranslate || 0;
}

function setTranslate(translate, byController) {
    var swiper = this;
    var rtl = swiper.rtlTranslate;
    var params = swiper.params;
    var $wrapperEl = swiper.$wrapperEl;
    var progress = swiper.progress;
    var x = 0;
    var y = 0;
    var z = 0;
    if (swiper.isHorizontal()) {
        x = rtl ? -translate : translate;
    } else {
        y = translate;
    }
    if (params.roundLengths) {
        x = Math.floor(x);
        y = Math.floor(y);
    }
    if (!params.virtualTranslate) {
        if (Support.transforms3d) $wrapperEl.transform('translate3d(' + x + 'px, ' + y + 'px, ' + z + 'px)');
        else $wrapperEl.transform('translate(' + x + 'px, ' + y + 'px)');
    }
    swiper.previousTranslate = swiper.translate;
    swiper.translate = swiper.isHorizontal() ? x : y; // Check
    // if
    // we
    // need
    // to
    // update
    // progress
    var newProgress = undefined;
    var translatesDiff = swiper.maxTranslate() - swiper.minTranslate();
    if (translatesDiff === 0) {
        newProgress = 0;
    } else {
        newProgress = (translate - swiper.minTranslate()) / translatesDiff;
    }
    if (newProgress !== progress) {
        swiper.updateProgress(translate);
    }
    swiper.emit('setTranslate', swiper.translate, byController);
}

function minTranslate() {
    return -this.snapGrid[0];
}

function maxTranslate() {
    return -this.snapGrid[this.snapGrid.length - 1];
}
var translate = {
    getTranslate: getTranslate,
    setTranslate: setTranslate,
    minTranslate: minTranslate,
    maxTranslate: maxTranslate
};

function setTransition(duration, byController) {
    var swiper = this;
    swiper.$wrapperEl.transition(duration);
    swiper.emit('setTransition', duration, byController);
}

function transitionStart(runCallbacks, direction) {
    if (runCallbacks === undefined) runCallbacks = true;
    var swiper = this;
    var activeIndex = swiper.activeIndex;
    var params = swiper.params;
    var previousIndex = swiper.previousIndex;
    if (params.autoHeight) {
        swiper.updateAutoHeight();
    }
    var dir = direction;
    if (!dir) {
        if (activeIndex > previousIndex) dir = 'next';
        else if (activeIndex < previousIndex) dir = 'prev';
        else dir = 'reset';
    }
    swiper.emit('transitionStart');
    if (runCallbacks && activeIndex !== previousIndex) {
        if (dir === 'reset') {
            swiper.emit('slideResetTransitionStart');
            return;
        }
        swiper.emit('slideChangeTransitionStart');
        if (dir === 'next') {
            swiper.emit('slideNextTransitionStart');
        } else {
            swiper.emit('slidePrevTransitionStart');
        }
    }
}

function transitionEnd(runCallbacks, direction) {
    if (runCallbacks === undefined) runCallbacks = true;
    var swiper = this;
    var activeIndex = swiper.activeIndex;
    var previousIndex = swiper.previousIndex;
    swiper.animating = false;
    swiper.setTransition(0);
    var dir = direction;
    if (!dir) {
        if (activeIndex > previousIndex) dir = 'next';
        else if (activeIndex < previousIndex) dir = 'prev';
        else dir = 'reset';
    }
    swiper.emit('transitionEnd');
    if (runCallbacks && activeIndex !== previousIndex) {
        if (dir === 'reset') {
            swiper.emit('slideResetTransitionEnd');
            return;
        }
        swiper.emit('slideChangeTransitionEnd');
        if (dir === 'next') {
            swiper.emit('slideNextTransitionEnd');
        } else {
            swiper.emit('slidePrevTransitionEnd');
        }
    }
}
var transition = {
    setTransition: setTransition,
    transitionStart: transitionStart,
    transitionEnd: transitionEnd
};

function slideTo(index, speed, runCallbacks, internal) {
    if (index === undefined) index = 0;
    if (speed === undefined) speed = this.params.speed;
    if (runCallbacks === undefined) runCallbacks = true;
    var swiper = this;
    var slideIndex = index;
    if (slideIndex < 0) slideIndex = 0;
    var params = swiper.params;
    var snapGrid = swiper.snapGrid;
    var slidesGrid = swiper.slidesGrid;
    var previousIndex = swiper.previousIndex;
    var activeIndex = swiper.activeIndex;
    var rtl = swiper.rtlTranslate;
    if (swiper.animating && params.preventInteractionOnTransition) {
        return false;
    }
    var snapIndex = Math.floor(slideIndex / params.slidesPerGroup);
    if (snapIndex >= snapGrid.length) snapIndex = snapGrid.length - 1;
    if ((activeIndex || params.initialSlide || 0) === (previousIndex || 0) && runCallbacks) {
        swiper.emit('beforeSlideChangeStart');
    }
    var translate = -snapGrid[snapIndex]; // Update
    // progress
    swiper.updateProgress(translate); // Normalize slideIndex
    if (params.normalizeSlideIndex) {
        for (var i = 0; i < slidesGrid.length; i += 1) {
            if (-Math.floor(translate * 100) >= Math.floor(slidesGrid[i] * 100)) {
                slideIndex = i;
            }
        }
    } // Directions
    // locks
    if (swiper.initialized && slideIndex !== activeIndex) {
        if (!swiper.allowSlideNext && translate < swiper.translate && translate < swiper.minTranslate()) {
            return false;
        }
        if (!swiper.allowSlidePrev && translate > swiper.translate && translate > swiper.maxTranslate()) {
            if ((activeIndex || 0) !== slideIndex) return false;
        }
    }
    var direction = undefined;
    if (slideIndex > activeIndex) direction = 'next';
    else if (slideIndex < activeIndex) direction = 'prev';
    else direction = 'reset'; // Update
    // Index
    if (rtl && -translate === swiper.translate || !rtl && translate === swiper.translate) {
        swiper.updateActiveIndex(slideIndex); // Update
        // Height
        if (params.autoHeight) {
            swiper.updateAutoHeight();
        }
        swiper.updateSlidesClasses();
        if (params.effect !== 'slide') {
            swiper.setTranslate(translate);
        }
        if (direction !== 'reset') {
            swiper.transitionStart(runCallbacks, direction);
            swiper.transitionEnd(runCallbacks, direction);
        }
        return false;
    }
    if (speed === 0 || !Support.transition) {
        swiper.setTransition(0);
        swiper.setTranslate(translate);
        swiper.updateActiveIndex(slideIndex);
        swiper.updateSlidesClasses();
        swiper.emit('beforeTransitionStart', speed, internal);
        swiper.transitionStart(runCallbacks, direction);
        swiper.transitionEnd(runCallbacks, direction);
    } else {
        swiper.setTransition(speed);
        swiper.setTranslate(translate);
        swiper.updateActiveIndex(slideIndex);
        swiper.updateSlidesClasses();
        swiper.emit('beforeTransitionStart', speed, internal);
        swiper.transitionStart(runCallbacks, direction);
        if (!swiper.animating) {
            swiper.animating = true;
            if (!swiper.onSlideToWrapperTransitionEnd) {
                swiper.onSlideToWrapperTransitionEnd = function transitionEnd(e) {
                    if (!swiper || swiper.destroyed) return;
                    if (e.target !== this) return;
                    swiper.$wrapperEl[0].removeEventListener('transitionend', swiper.onSlideToWrapperTransitionEnd);
                    swiper.$wrapperEl[0].removeEventListener('webkitTransitionEnd', swiper.onSlideToWrapperTransitionEnd);
                    swiper.onSlideToWrapperTransitionEnd = null;
                    delete swiper.onSlideToWrapperTransitionEnd;
                    swiper.transitionEnd(runCallbacks, direction);
                };
            }
            swiper.$wrapperEl[0].addEventListener('transitionend', swiper.onSlideToWrapperTransitionEnd);
            swiper.$wrapperEl[0].addEventListener('webkitTransitionEnd', swiper.onSlideToWrapperTransitionEnd);
        }
    }
    return true;
}

function slideToLoop(index, speed, runCallbacks, internal) {
    if (index === undefined) index = 0;
    if (speed === undefined) speed = this.params.speed;
    if (runCallbacks === undefined) runCallbacks = true;
    var swiper = this;
    var newIndex = index;
    if (swiper.params.loop) {
        newIndex += swiper.loopedSlides;
    }
    return swiper.slideTo(newIndex, speed, runCallbacks, internal);
}
/*
 * eslint
 * no-unused-vars:
 * "off"
 */
function slideNext(speed, runCallbacks, internal) {
    if (speed === undefined) speed = this.params.speed;
    if (runCallbacks === undefined) runCallbacks = true;
    var swiper = this;
    var params = swiper.params;
    var animating = swiper.animating;
    if (params.loop) {
        if (animating) return false;
        swiper.loopFix(); // eslint-disable-next-line
        swiper._clientLeft = swiper.$wrapperEl[0].clientLeft;
        return swiper.slideTo(swiper.activeIndex + params.slidesPerGroup, speed, runCallbacks, internal);
    }
    return swiper.slideTo(swiper.activeIndex + params.slidesPerGroup, speed, runCallbacks, internal);
}
/*
 * eslint
 * no-unused-vars:
 * "off"
 */
function slidePrev(speed, runCallbacks, internal) {
    if (speed === undefined) speed = this.params.speed;
    if (runCallbacks === undefined) runCallbacks = true;
    var swiper = this;
    var params = swiper.params;
    var animating = swiper.animating;
    var snapGrid = swiper.snapGrid;
    var slidesGrid = swiper.slidesGrid;
    var rtlTranslate = swiper.rtlTranslate;
    if (params.loop) {
        if (animating) return false;
        swiper.loopFix(); // eslint-disable-next-line
        swiper._clientLeft = swiper.$wrapperEl[0].clientLeft;
    }
    var translate = rtlTranslate ? swiper.translate : -swiper.translate;

    function normalize(val) {
        if (val < 0) return -Math.floor(Math.abs(val));
        return Math.floor(val);
    }
    var normalizedTranslate = normalize(translate);
    var normalizedSnapGrid = snapGrid.map(function(val) {
        return normalize(val);
    });
    var normalizedSlidesGrid = slidesGrid.map(function(val) {
        return normalize(val);
    });
    var currentSnap = snapGrid[normalizedSnapGrid.indexOf(normalizedTranslate)];
    var prevSnap = snapGrid[normalizedSnapGrid.indexOf(normalizedTranslate) - 1];
    var prevIndex = undefined;
    if (typeof prevSnap !== 'undefined') {
        prevIndex = slidesGrid.indexOf(prevSnap);
        if (prevIndex < 0) prevIndex = swiper.activeIndex - 1;
    }
    return swiper.slideTo(prevIndex, speed, runCallbacks, internal);
}
/*
 * eslint
 * no-unused-vars:
 * "off"
 */
function slideReset(speed, runCallbacks, internal) {
    if (speed === undefined) speed = this.params.speed;
    if (runCallbacks === undefined) runCallbacks = true;
    var swiper = this;
    return swiper.slideTo(swiper.activeIndex, speed, runCallbacks, internal);
}
/*
 * eslint
 * no-unused-vars:
 * "off"
 */
function slideToClosest(speed, runCallbacks, internal) {
    if (speed === undefined) speed = this.params.speed;
    if (runCallbacks === undefined) runCallbacks = true;
    var swiper = this;
    var index = swiper.activeIndex;
    var snapIndex = Math.floor(index / swiper.params.slidesPerGroup);
    if (snapIndex < swiper.snapGrid.length - 1) {
        var _translate = swiper.rtlTranslate ? swiper.translate : -swiper.translate;
        var currentSnap = swiper.snapGrid[snapIndex];
        var nextSnap = swiper.snapGrid[snapIndex + 1];
        if (_translate - currentSnap > (nextSnap - currentSnap) / 2) {
            index = swiper.params.slidesPerGroup;
        }
    }
    return swiper.slideTo(index, speed, runCallbacks, internal);
}

function slideToClickedSlide() {
    var swiper = this;
    var params = swiper.params;
    var $wrapperEl = swiper.$wrapperEl;
    var slidesPerView = params.slidesPerView === 'auto' ? swiper.slidesPerViewDynamic() : params.slidesPerView;
    var slideToIndex = swiper.clickedIndex;
    var realIndex = undefined;
    if (params.loop) {
        if (swiper.animating) return;
        realIndex = parseInt((0, _dom7DistDom7Modular.$)(swiper.clickedSlide).attr('data-swiper-slide-index'), 10);
        if (params.centeredSlides) {
            if (slideToIndex < swiper.loopedSlides - slidesPerView / 2 || slideToIndex > swiper.slides.length - swiper.loopedSlides + slidesPerView / 2) {
                swiper.loopFix();
                slideToIndex = $wrapperEl.children('.' + params.slideClass + '[data-swiper-slide-index="' + realIndex + '"]:not(.' + params.slideDuplicateClass + ')').eq(0).index();
                Utils.nextTick(function() {
                    swiper.slideTo(slideToIndex);
                });
            } else {
                swiper.slideTo(slideToIndex);
            }
        } else if (slideToIndex > swiper.slides.length - slidesPerView) {
            swiper.loopFix();
            slideToIndex = $wrapperEl.children('.' + params.slideClass + '[data-swiper-slide-index="' + realIndex + '"]:not(.' + params.slideDuplicateClass + ')').eq(0).index();
            Utils.nextTick(function() {
                swiper.slideTo(slideToIndex);
            });
        } else {
            swiper.slideTo(slideToIndex);
        }
    } else {
        swiper.slideTo(slideToIndex);
    }
}
var slide = {
    slideTo: slideTo,
    slideToLoop: slideToLoop,
    slideNext: slideNext,
    slidePrev: slidePrev,
    slideReset: slideReset,
    slideToClosest: slideToClosest,
    slideToClickedSlide: slideToClickedSlide
};

function loopCreate() {
    var swiper = this;
    var params = swiper.params;
    var $wrapperEl = swiper.$wrapperEl; // Remove
    // duplicated
    // slides
    $wrapperEl.children('.' + params.slideClass + '.' + params.slideDuplicateClass).remove();
    var slides = $wrapperEl.children('.' + params.slideClass);
    if (params.loopFillGroupWithBlank) {
        var blankSlidesNum = params.slidesPerGroup - slides.length % params.slidesPerGroup;
        if (blankSlidesNum !== params.slidesPerGroup) {
            for (var i = 0; i < blankSlidesNum; i += 1) {
                var blankNode = (0, _dom7DistDom7Modular.$)(_ssrWindow.document.createElement('div')).addClass(params.slideClass + ' ' + params.slideBlankClass);
                $wrapperEl.append(blankNode);
            }
            slides = $wrapperEl.children('.' + params.slideClass);
        }
    }
    if (params.slidesPerView === 'auto' && !params.loopedSlides) params.loopedSlides = slides.length;
    swiper.loopedSlides = parseInt(params.loopedSlides || params.slidesPerView, 10);
    swiper.loopedSlides += params.loopAdditionalSlides;
    if (swiper.loopedSlides > slides.length) {
        swiper.loopedSlides = slides.length;
    }
    var prependSlides = [];
    var appendSlides = [];
    slides.each(function(index, el) {
        var slide = (0, _dom7DistDom7Modular.$)(el);
        if (index < swiper.loopedSlides) appendSlides.push(el);
        if (index < slides.length && index >= slides.length - swiper.loopedSlides) prependSlides.push(el);
        slide.attr('data-swiper-slide-index', index);
    });
    for (var i = 0; i < appendSlides.length; i += 1) {
        $wrapperEl.append((0, _dom7DistDom7Modular.$)(appendSlides[i].cloneNode(true)).addClass(params.slideDuplicateClass));
    }
    for (var i = prependSlides.length - 1; i >= 0; i -= 1) {
        $wrapperEl.prepend((0, _dom7DistDom7Modular.$)(prependSlides[i].cloneNode(true)).addClass(params.slideDuplicateClass));
    }
}

function loopFix() {
    var swiper = this;
    var params = swiper.params;
    var activeIndex = swiper.activeIndex;
    var slides = swiper.slides;
    var loopedSlides = swiper.loopedSlides;
    var allowSlidePrev = swiper.allowSlidePrev;
    var allowSlideNext = swiper.allowSlideNext;
    var snapGrid = swiper.snapGrid;
    var rtl = swiper.rtlTranslate;
    var newIndex = undefined;
    swiper.allowSlidePrev = true;
    swiper.allowSlideNext = true;
    var snapTranslate = -snapGrid[activeIndex];
    var diff = snapTranslate - swiper.getTranslate(); // Fix
    // For
    // Negative
    // Oversliding
    if (activeIndex < loopedSlides) {
        newIndex = slides.length - loopedSlides * 3 + activeIndex;
        newIndex += loopedSlides;
        var slideChanged = swiper.slideTo(newIndex, 0, false, true);
        if (slideChanged && diff !== 0) {
            swiper.setTranslate((rtl ? -swiper.translate : swiper.translate) - diff);
        }
    } else if (params.slidesPerView === 'auto' && activeIndex >= loopedSlides * 2 || activeIndex >= slides.length - loopedSlides) { // Fix
        // For
        // Positive
        // Oversliding
        newIndex = -slides.length + activeIndex + loopedSlides;
        newIndex += loopedSlides;
        var slideChanged = swiper.slideTo(newIndex, 0, false, true);
        if (slideChanged && diff !== 0) {
            swiper.setTranslate((rtl ? -swiper.translate : swiper.translate) - diff);
        }
    }
    swiper.allowSlidePrev = allowSlidePrev;
    swiper.allowSlideNext = allowSlideNext;
}

function loopDestroy() {
    var swiper = this;
    var $wrapperEl = swiper.$wrapperEl;
    var params = swiper.params;
    var slides = swiper.slides;
    $wrapperEl.children('.' + params.slideClass + '.' + params.slideDuplicateClass + ',.' + params.slideClass + '.' + params.slideBlankClass).remove();
    slides.removeAttr('data-swiper-slide-index');
}
var loop = {
    loopCreate: loopCreate,
    loopFix: loopFix,
    loopDestroy: loopDestroy
};

function setGrabCursor(moving) {
    var swiper = this;
    if (Support.touch || !swiper.params.simulateTouch || swiper.params.watchOverflow && swiper.isLocked) return;
    var el = swiper.el;
    el.style.cursor = 'move';
    el.style.cursor = moving ? '-webkit-grabbing' : '-webkit-grab';
    el.style.cursor = moving ? '-moz-grabbin' : '-moz-grab';
    el.style.cursor = moving ? 'grabbing' : 'grab';
}

function unsetGrabCursor() {
    var swiper = this;
    if (Support.touch || swiper.params.watchOverflow && swiper.isLocked) return;
    swiper.el.style.cursor = '';
}
var grabCursor = {
    setGrabCursor: setGrabCursor,
    unsetGrabCursor: unsetGrabCursor
};

function appendSlide(slides) {
    var swiper = this;
    var $wrapperEl = swiper.$wrapperEl;
    var params = swiper.params;
    if (params.loop) {
        swiper.loopDestroy();
    }
    if (typeof slides === 'object' && 'length' in slides) {
        for (var i = 0; i < slides.length; i += 1) {
            if (slides[i]) $wrapperEl.append(slides[i]);
        }
    } else {
        $wrapperEl.append(slides);
    }
    if (params.loop) {
        swiper.loopCreate();
    }
    if (!(params.observer && Support.observer)) {
        swiper.update();
    }
}

function prependSlide(slides) {
    var swiper = this;
    var params = swiper.params;
    var $wrapperEl = swiper.$wrapperEl;
    var activeIndex = swiper.activeIndex;
    if (params.loop) {
        swiper.loopDestroy();
    }
    var newActiveIndex = activeIndex + 1;
    if (typeof slides === 'object' && 'length' in slides) {
        for (var i = 0; i < slides.length; i += 1) {
            if (slides[i]) $wrapperEl.prepend(slides[i]);
        }
        newActiveIndex = activeIndex + slides.length;
    } else {
        $wrapperEl.prepend(slides);
    }
    if (params.loop) {
        swiper.loopCreate();
    }
    if (!(params.observer && Support.observer)) {
        swiper.update();
    }
    swiper.slideTo(newActiveIndex, 0, false);
}

function addSlide(index, slides) {
    var swiper = this;
    var $wrapperEl = swiper.$wrapperEl;
    var params = swiper.params;
    var activeIndex = swiper.activeIndex;
    var activeIndexBuffer = activeIndex;
    if (params.loop) {
        activeIndexBuffer -= swiper.loopedSlides;
        swiper.loopDestroy();
        swiper.slides = $wrapperEl.children('.' + params.slideClass);
    }
    var baseLength = swiper.slides.length;
    if (index <= 0) {
        swiper.prependSlide(slides);
        return;
    }
    if (index >= baseLength) {
        swiper.appendSlide(slides);
        return;
    }
    var newActiveIndex = activeIndexBuffer > index ? activeIndexBuffer + 1 : activeIndexBuffer;
    var slidesBuffer = [];
    for (var i = baseLength - 1; i >= index; i -= 1) {
        var currentSlide = swiper.slides.eq(i);
        currentSlide.remove();
        slidesBuffer.unshift(currentSlide);
    }
    if (typeof slides === 'object' && 'length' in slides) {
        for (var i = 0; i < slides.length; i += 1) {
            if (slides[i]) $wrapperEl.append(slides[i]);
        }
        newActiveIndex = activeIndexBuffer > index ? activeIndexBuffer + slides.length : activeIndexBuffer;
    } else {
        $wrapperEl.append(slides);
    }
    for (var i = 0; i < slidesBuffer.length; i += 1) {
        $wrapperEl.append(slidesBuffer[i]);
    }
    if (params.loop) {
        swiper.loopCreate();
    }
    if (!(params.observer && Support.observer)) {
        swiper.update();
    }
    if (params.loop) {
        swiper.slideTo(newActiveIndex + swiper.loopedSlides, 0, false);
    } else {
        swiper.slideTo(newActiveIndex, 0, false);
    }
}

function removeSlide(slidesIndexes) {
    var swiper = this;
    var params = swiper.params;
    var $wrapperEl = swiper.$wrapperEl;
    var activeIndex = swiper.activeIndex;
    var activeIndexBuffer = activeIndex;
    if (params.loop) {
        activeIndexBuffer -= swiper.loopedSlides;
        swiper.loopDestroy();
        swiper.slides = $wrapperEl.children('.' + params.slideClass);
    }
    var newActiveIndex = activeIndexBuffer;
    var indexToRemove = undefined;
    if (typeof slidesIndexes === 'object' && 'length' in slidesIndexes) {
        for (var i = 0; i < slidesIndexes.length; i += 1) {
            indexToRemove = slidesIndexes[i];
            if (swiper.slides[indexToRemove]) swiper.slides.eq(indexToRemove).remove();
            if (indexToRemove < newActiveIndex) newActiveIndex -= 1;
        }
        newActiveIndex = Math.max(newActiveIndex, 0);
    } else {
        indexToRemove = slidesIndexes;
        if (swiper.slides[indexToRemove]) swiper.slides.eq(indexToRemove).remove();
        if (indexToRemove < newActiveIndex) newActiveIndex -= 1;
        newActiveIndex = Math.max(newActiveIndex, 0);
    }
    if (params.loop) {
        swiper.loopCreate();
    }
    if (!(params.observer && Support.observer)) {
        swiper.update();
    }
    if (params.loop) {
        swiper.slideTo(newActiveIndex + swiper.loopedSlides, 0, false);
    } else {
        swiper.slideTo(newActiveIndex, 0, false);
    }
}

function removeAllSlides() {
    var swiper = this;
    var slidesIndexes = [];
    for (var i = 0; i < swiper.slides.length; i += 1) {
        slidesIndexes.push(i);
    }
    swiper.removeSlide(slidesIndexes);
}
var manipulation = {
    appendSlide: appendSlide,
    prependSlide: prependSlide,
    addSlide: addSlide,
    removeSlide: removeSlide,
    removeAllSlides: removeAllSlides
};
var Device = (function Device() {
    var ua = _ssrWindow.window.navigator.userAgent;
    var device = {
        ios: false,
        android: false,
        androidChrome: false,
        desktop: false,
        windows: false,
        iphone: false,
        ipod: false,
        ipad: false,
        cordova: _ssrWindow.window.cordova || _ssrWindow.window.phonegap,
        phonegap: _ssrWindow.window.cordova || _ssrWindow.window.phonegap
    };
    var windows = ua.match(/(Windows Phone);?[\s\/]+([\d.]+)?/); // eslint-disable-line
    var android = ua.match(/(Android);?[\s\/]+([\d.]+)?/); // eslint-disable-line
    var ipad = ua.match(/(iPad).*OS\s([\d_]+)/);
    var ipod = ua.match(/(iPod)(.*OS\s([\d_]+))?/);
    var iphone = !ipad && ua.match(/(iPhone\sOS|iOS)\s([\d_]+)/); // Windows
    if (windows) {
        device.os = 'windows';
        device.osVersion = windows[2];
        device.windows = true;
    } // Android
    if (android && !windows) {
        device.os = 'android';
        device.osVersion = android[2];
        device.android = true;
        device.androidChrome = ua.toLowerCase().indexOf('chrome') >= 0;
    }
    if (ipad || iphone || ipod) {
        device.os = 'ios';
        device.ios = true;
    } // iOS
    if (iphone && !ipod) {
        device.osVersion = iphone[2].replace(/_/g, '.');
        device.iphone = true;
    }
    if (ipad) {
        device.osVersion = ipad[2].replace(/_/g, '.');
        device.ipad = true;
    }
    if (ipod) {
        device.osVersion = ipod[3] ? ipod[3].replace(/_/g, '.') : null;
        device.iphone = true;
    } // iOS
    // 8+
    // changed
    // UA
    if (device.ios && device.osVersion && ua.indexOf('Version/') >= 0) {
        if (device.osVersion.split('.')[0] === '10') {
            device.osVersion = ua.toLowerCase().split('version/')[1].split(' ')[0];
        }
    } // Desktop
    device.desktop = !(device.os || device.android || device.webView); // Webview
    device.webView = (iphone || ipad || ipod) && ua.match(/.*AppleWebKit(?!.*Safari)/i); // Minimal
    // UI
    if (device.os && device.os === 'ios') {
        var osVersionArr = device.osVersion.split('.');
        var metaViewport = _ssrWindow.document.querySelector('meta[name="viewport"]');
        device.minimalUi = !device.webView && (ipod || iphone) && (osVersionArr[0] * 1 === 7 ? osVersionArr[1] * 1 >= 1 : osVersionArr[0] * 1 > 7) && metaViewport && metaViewport.getAttribute('content').indexOf('minimal-ui') >= 0;
    } // Pixel
    // Ratio
    device.pixelRatio = _ssrWindow.window.devicePixelRatio || 1; // Export object
    return device;
})();

function onTouchStart(event) {
    var swiper = this;
    var data = swiper.touchEventsData;
    var params = swiper.params;
    var touches = swiper.touches;
    if (swiper.animating && params.preventInteractionOnTransition) {
        return;
    }
    var e = event;
    if (e.originalEvent) e = e.originalEvent;
    data.isTouchEvent = e.type === 'touchstart';
    if (!data.isTouchEvent && 'which' in e && e.which === 3) return;
    if (!data.isTouchEvent && 'button' in e && e.button > 0) return;
    if (data.isTouched && data.isMoved) return;
    if (params.noSwiping && (0, _dom7DistDom7Modular.$)(e.target).closest(params.noSwipingSelector ? params.noSwipingSelector : '.' + params.noSwipingClass)[0]) {
        swiper.allowClick = true;
        return;
    }
    if (params.swipeHandler) {
        if (!(0, _dom7DistDom7Modular.$)(e).closest(params.swipeHandler)[0]) return;
    }
    touches.currentX = e.type === 'touchstart' ? e.targetTouches[0].pageX : e.pageX;
    touches.currentY = e.type === 'touchstart' ? e.targetTouches[0].pageY : e.pageY;
    var startX = touches.currentX;
    var startY = touches.currentY; // Do
    // NOT
    // start
    // if
    // iOS
    // edge
    // swipe
    // is
    // detected.
    // Otherwise
    // iOS
    // app
    // (UIWebView)
    // cannot
    // swipe-to-go-back
    // anymore
    var edgeSwipeDetection = params.edgeSwipeDetection || params.iOSEdgeSwipeDetection;
    var edgeSwipeThreshold = params.edgeSwipeThreshold || params.iOSEdgeSwipeThreshold;
    if (edgeSwipeDetection && (startX <= edgeSwipeThreshold || startX >= _ssrWindow.window.screen.width - edgeSwipeThreshold)) {
        return;
    }
    Utils.extend(data, {
        isTouched: true,
        isMoved: false,
        allowTouchCallbacks: true,
        isScrolling: undefined,
        startMoving: undefined
    });
    touches.startX = startX;
    touches.startY = startY;
    data.touchStartTime = Utils.now();
    swiper.allowClick = true;
    swiper.updateSize();
    swiper.swipeDirection = undefined;
    if (params.threshold > 0) data.allowThresholdMove = false;
    if (e.type !== 'touchstart') {
        var preventDefault = true;
        if ((0, _dom7DistDom7Modular.$)(e.target).is(data.formElements)) preventDefault = false;
        if (_ssrWindow.document.activeElement && (0, _dom7DistDom7Modular.$)(_ssrWindow.document.activeElement).is(data.formElements) && _ssrWindow.document.activeElement !== e.target) {
            _ssrWindow.document.activeElement.blur();
        }
        var shouldPreventDefault = preventDefault && swiper.allowTouchMove && params.touchStartPreventDefault;
        if (params.touchStartForcePreventDefault || shouldPreventDefault) {
            e.preventDefault();
        }
    }
    swiper.emit('touchStart', e);
}

function onTouchMove(event) {
    var swiper = this;
    var data = swiper.touchEventsData;
    var params = swiper.params;
    var touches = swiper.touches;
    var rtl = swiper.rtlTranslate;
    var e = event;
    if (e.originalEvent) e = e.originalEvent;
    if (!data.isTouched) {
        if (data.startMoving && data.isScrolling) {
            swiper.emit('touchMoveOpposite', e);
        }
        return;
    }
    if (data.isTouchEvent && e.type === 'mousemove') return;
    var pageX = e.type === 'touchmove' ? e.targetTouches[0].pageX : e.pageX;
    var pageY = e.type === 'touchmove' ? e.targetTouches[0].pageY : e.pageY;
    if (e.preventedByNestedSwiper) {
        touches.startX = pageX;
        touches.startY = pageY;
        return;
    }
    if (!swiper.allowTouchMove) { // isMoved
        // =
        // true;
        swiper.allowClick = false;
        if (data.isTouched) {
            Utils.extend(touches, {
                startX: pageX,
                startY: pageY,
                currentX: pageX,
                currentY: pageY
            });
            data.touchStartTime = Utils.now();
        }
        return;
    }
    if (data.isTouchEvent && params.touchReleaseOnEdges && !params.loop) {
        if (swiper.isVertical()) { // Vertical
            if (pageY < touches.startY && swiper.translate <= swiper.maxTranslate() || pageY > touches.startY && swiper.translate >= swiper.minTranslate()) {
                data.isTouched = false;
                data.isMoved = false;
                return;
            }
        } else if (pageX < touches.startX && swiper.translate <= swiper.maxTranslate() || pageX > touches.startX && swiper.translate >= swiper.minTranslate()) {
            return;
        }
    }
    if (data.isTouchEvent && _ssrWindow.document.activeElement) {
        if (e.target === _ssrWindow.document.activeElement && (0, _dom7DistDom7Modular.$)(e.target).is(data.formElements)) {
            data.isMoved = true;
            swiper.allowClick = false;
            return;
        }
    }
    if (data.allowTouchCallbacks) {
        swiper.emit('touchMove', e);
    }
    if (e.targetTouches && e.targetTouches.length > 1) return;
    touches.currentX = pageX;
    touches.currentY = pageY;
    var diffX = touches.currentX - touches.startX;
    var diffY = touches.currentY - touches.startY;
    if (swiper.params.threshold && Math.sqrt(Math.pow(diffX, 2) + Math.pow(diffY, 2)) < swiper.params.threshold) return;
    if (typeof data.isScrolling === 'undefined') {
        var touchAngle = undefined;
        if (swiper.isHorizontal() && touches.currentY === touches.startY || swiper.isVertical() && touches.currentX === touches.startX) {
            data.isScrolling = false;
        } else { // eslint-disable-next-line
            if (diffX * diffX + diffY * diffY >= 25) {
                touchAngle = Math.atan2(Math.abs(diffY), Math.abs(diffX)) * 180 / Math.PI;
                data.isScrolling = swiper.isHorizontal() ? touchAngle > params.touchAngle : 90 - touchAngle > params.touchAngle;
            }
        }
    }
    if (data.isScrolling) {
        swiper.emit('touchMoveOpposite', e);
    }
    if (typeof data.startMoving === 'undefined') {
        if (touches.currentX !== touches.startX || touches.currentY !== touches.startY) {
            data.startMoving = true;
        }
    }
    if (data.isScrolling) {
        data.isTouched = false;
        return;
    }
    if (!data.startMoving) {
        return;
    }
    swiper.allowClick = false;
    e.preventDefault();
    if (params.touchMoveStopPropagation && !params.nested) {
        e.stopPropagation();
    }
    if (!data.isMoved) {
        if (params.loop) {
            swiper.loopFix();
        }
        data.startTranslate = swiper.getTranslate();
        swiper.setTransition(0);
        if (swiper.animating) {
            swiper.$wrapperEl.trigger('webkitTransitionEnd transitionend');
        }
        data.allowMomentumBounce = false; // Grab
        // Cursor
        if (params.grabCursor && (swiper.allowSlideNext === true || swiper.allowSlidePrev === true)) {
            swiper.setGrabCursor(true);
        }
        swiper.emit('sliderFirstMove', e);
    }
    swiper.emit('sliderMove', e);
    data.isMoved = true;
    var diff = swiper.isHorizontal() ? diffX : diffY;
    touches.diff = diff;
    diff *= params.touchRatio;
    if (rtl) diff = -diff;
    swiper.swipeDirection = diff > 0 ? 'prev' : 'next';
    data.currentTranslate = diff + data.startTranslate;
    var disableParentSwiper = true;
    var resistanceRatio = params.resistanceRatio;
    if (params.touchReleaseOnEdges) {
        resistanceRatio = 0;
    }
    if (diff > 0 && data.currentTranslate > swiper.minTranslate()) {
        disableParentSwiper = false;
        if (params.resistance) data.currentTranslate = swiper.minTranslate() - 1 + Math.pow(-swiper.minTranslate() + data.startTranslate + diff, resistanceRatio);
    } else if (diff < 0 && data.currentTranslate < swiper.maxTranslate()) {
        disableParentSwiper = false;
        if (params.resistance) data.currentTranslate = swiper.maxTranslate() + 1 - Math.pow(swiper.maxTranslate() - data.startTranslate - diff, resistanceRatio);
    }
    if (disableParentSwiper) {
        e.preventedByNestedSwiper = true;
    } // Directions
    // locks
    if (!swiper.allowSlideNext && swiper.swipeDirection === 'next' && data.currentTranslate < data.startTranslate) {
        data.currentTranslate = data.startTranslate;
    }
    if (!swiper.allowSlidePrev && swiper.swipeDirection === 'prev' && data.currentTranslate > data.startTranslate) {
        data.currentTranslate = data.startTranslate;
    } // Threshold
    if (params.threshold > 0) {
        if (Math.abs(diff) > params.threshold || data.allowThresholdMove) {
            if (!data.allowThresholdMove) {
                data.allowThresholdMove = true;
                touches.startX = touches.currentX;
                touches.startY = touches.currentY;
                data.currentTranslate = data.startTranslate;
                touches.diff = swiper.isHorizontal() ? touches.currentX - touches.startX : touches.currentY - touches.startY;
                return;
            }
        } else {
            data.currentTranslate = data.startTranslate;
            return;
        }
    }
    if (!params.followFinger) return; // Update
    // active
    // index
    // in
    // free
    // mode
    if (params.freeMode || params.watchSlidesProgress || params.watchSlidesVisibility) {
        swiper.updateActiveIndex();
        swiper.updateSlidesClasses();
    }
    if (params.freeMode) { // Velocity
        if (data.velocities.length === 0) {
            data.velocities.push({
                position: touches[swiper.isHorizontal() ? 'startX' : 'startY'],
                time: data.touchStartTime
            });
        }
        data.velocities.push({
            position: touches[swiper.isHorizontal() ? 'currentX' : 'currentY'],
            time: Utils.now()
        });
    } // Update
    // progress
    swiper.updateProgress(data.currentTranslate); // Update translate
    swiper.setTranslate(data.currentTranslate);
}

function onTouchEnd(event) {
    var swiper = this;
    var data = swiper.touchEventsData;
    var params = swiper.params;
    var touches = swiper.touches;
    var rtl = swiper.rtlTranslate;
    var $wrapperEl = swiper.$wrapperEl;
    var slidesGrid = swiper.slidesGrid;
    var snapGrid = swiper.snapGrid;
    var e = event;
    if (e.originalEvent) e = e.originalEvent;
    if (data.allowTouchCallbacks) {
        swiper.emit('touchEnd', e);
    }
    data.allowTouchCallbacks = false;
    if (!data.isTouched) {
        if (data.isMoved && params.grabCursor) {
            swiper.setGrabCursor(false);
        }
        data.isMoved = false;
        data.startMoving = false;
        return;
    } // Return
    // Grab
    // Cursor
    if (params.grabCursor && data.isMoved && data.isTouched && (swiper.allowSlideNext === true || swiper.allowSlidePrev === true)) {
        swiper.setGrabCursor(false);
    } // Time
    // diff
    var touchEndTime = Utils.now();
    var timeDiff = touchEndTime - data.touchStartTime; // Tap,
    // doubleTap,
    // Click
    if (swiper.allowClick) {
        swiper.updateClickedSlide(e);
        swiper.emit('tap', e);
        if (timeDiff < 300 && touchEndTime - data.lastClickTime > 300) {
            if (data.clickTimeout) clearTimeout(data.clickTimeout);
            data.clickTimeout = Utils.nextTick(function() {
                if (!swiper || swiper.destroyed) return;
                swiper.emit('click', e);
            }, 300);
        }
        if (timeDiff < 300 && touchEndTime - data.lastClickTime < 300) {
            if (data.clickTimeout) clearTimeout(data.clickTimeout);
            swiper.emit('doubleTap', e);
        }
    }
    data.lastClickTime = Utils.now();
    Utils.nextTick(function() {
        if (!swiper.destroyed) swiper.allowClick = true;
    });
    if (!data.isTouched || !data.isMoved || !swiper.swipeDirection || touches.diff === 0 || data.currentTranslate === data.startTranslate) {
        data.isTouched = false;
        data.isMoved = false;
        data.startMoving = false;
        return;
    }
    data.isTouched = false;
    data.isMoved = false;
    data.startMoving = false;
    var currentPos = undefined;
    if (params.followFinger) {
        currentPos = rtl ? swiper.translate : -swiper.translate;
    } else {
        currentPos = -data.currentTranslate;
    }
    if (params.freeMode) {
        if (currentPos < -swiper.minTranslate()) {
            swiper.slideTo(swiper.activeIndex);
            return;
        }
        if (currentPos > -swiper.maxTranslate()) {
            if (swiper.slides.length < snapGrid.length) {
                swiper.slideTo(snapGrid.length - 1);
            } else {
                swiper.slideTo(swiper.slides.length - 1);
            }
            return;
        }
        if (params.freeModeMomentum) {
            var _ret3 = (function() {
                if (data.velocities.length > 1) {
                    var lastMoveEvent = data.velocities.pop();
                    var velocityEvent = data.velocities.pop();
                    var distance = lastMoveEvent.position - velocityEvent.position;
                    var time = lastMoveEvent.time - velocityEvent.time;
                    swiper.velocity = distance / time;
                    swiper.velocity /= 2;
                    if (Math.abs(swiper.velocity) < params.freeModeMinimumVelocity) {
                        swiper.velocity = 0;
                    } // this
                    // implies
                    // that
                    // the
                    // user
                    // stopped
                    // moving
                    // a
                    // finger
                    // then
                    // released.
                    // There would be no events with distance zero, so the last event is stale.
                    if (time > 150 || Utils.now() - lastMoveEvent.time > 300) {
                        swiper.velocity = 0;
                    }
                } else {
                    swiper.velocity = 0;
                }
                swiper.velocity *= params.freeModeMomentumVelocityRatio;
                data.velocities.length = 0;
                var momentumDuration = 1000 * params.freeModeMomentumRatio;
                var momentumDistance = swiper.velocity * momentumDuration;
                var newPosition = swiper.translate + momentumDistance;
                if (rtl) newPosition = -newPosition;
                var doBounce = false;
                var afterBouncePosition = undefined;
                var bounceAmount = Math.abs(swiper.velocity) * 20 * params.freeModeMomentumBounceRatio;
                var needsLoopFix = undefined;
                if (newPosition < swiper.maxTranslate()) {
                    if (params.freeModeMomentumBounce) {
                        if (newPosition + swiper.maxTranslate() < -bounceAmount) {
                            newPosition = swiper.maxTranslate() - bounceAmount;
                        }
                        afterBouncePosition = swiper.maxTranslate();
                        doBounce = true;
                        data.allowMomentumBounce = true;
                    } else {
                        newPosition = swiper.maxTranslate();
                    }
                    if (params.loop && params.centeredSlides) needsLoopFix = true;
                } else if (newPosition > swiper.minTranslate()) {
                    if (params.freeModeMomentumBounce) {
                        if (newPosition - swiper.minTranslate() > bounceAmount) {
                            newPosition = swiper.minTranslate() + bounceAmount;
                        }
                        afterBouncePosition = swiper.minTranslate();
                        doBounce = true;
                        data.allowMomentumBounce = true;
                    } else {
                        newPosition = swiper.minTranslate();
                    }
                    if (params.loop && params.centeredSlides) needsLoopFix = true;
                } else if (params.freeModeSticky) {
                    var nextSlide = undefined;
                    for (var j = 0; j < snapGrid.length; j += 1) {
                        if (snapGrid[j] > -newPosition) {
                            nextSlide = j;
                            break;
                        }
                    }
                    if (Math.abs(snapGrid[nextSlide] - newPosition) < Math.abs(snapGrid[nextSlide - 1] - newPosition) || swiper.swipeDirection === 'next') {
                        newPosition = snapGrid[nextSlide];
                    } else {
                        newPosition = snapGrid[nextSlide - 1];
                    }
                    newPosition = -newPosition;
                }
                if (needsLoopFix) {
                    swiper.once('transitionEnd', function() {
                        swiper.loopFix();
                    });
                } // Fix
                // duration
                if (swiper.velocity !== 0) {
                    if (rtl) {
                        momentumDuration = Math.abs((-newPosition - swiper.translate) / swiper.velocity);
                    } else {
                        momentumDuration = Math.abs((newPosition - swiper.translate) / swiper.velocity);
                    }
                } else if (params.freeModeSticky) {
                    swiper.slideToClosest();
                    return {
                        v: undefined
                    };
                }
                if (params.freeModeMomentumBounce && doBounce) {
                    swiper.updateProgress(afterBouncePosition);
                    swiper.setTransition(momentumDuration);
                    swiper.setTranslate(newPosition);
                    swiper.transitionStart(true, swiper.swipeDirection);
                    swiper.animating = true;
                    $wrapperEl.transitionEnd(function() {
                        if (!swiper || swiper.destroyed || !data.allowMomentumBounce) return;
                        swiper.emit('momentumBounce');
                        swiper.setTransition(params.speed);
                        swiper.setTranslate(afterBouncePosition);
                        $wrapperEl.transitionEnd(function() {
                            if (!swiper || swiper.destroyed) return;
                            swiper.transitionEnd();
                        });
                    });
                } else if (swiper.velocity) {
                    swiper.updateProgress(newPosition);
                    swiper.setTransition(momentumDuration);
                    swiper.setTranslate(newPosition);
                    swiper.transitionStart(true, swiper.swipeDirection);
                    if (!swiper.animating) {
                        swiper.animating = true;
                        $wrapperEl.transitionEnd(function() {
                            if (!swiper || swiper.destroyed) return;
                            swiper.transitionEnd();
                        });
                    }
                } else {
                    swiper.updateProgress(newPosition);
                }
                swiper.updateActiveIndex();
                swiper.updateSlidesClasses();
            })();
            if (typeof _ret3 === 'object') return _ret3.v;
        } else if (params.freeModeSticky) {
            swiper.slideToClosest();
            return;
        }
        if (!params.freeModeMomentum || timeDiff >= params.longSwipesMs) {
            swiper.updateProgress();
            swiper.updateActiveIndex();
            swiper.updateSlidesClasses();
        }
        return;
    } // Find
    // current
    // slide
    var stopIndex = 0;
    var groupSize = swiper.slidesSizesGrid[0];
    for (var i = 0; i < slidesGrid.length; i += params.slidesPerGroup) {
        if (typeof slidesGrid[i + params.slidesPerGroup] !== 'undefined') {
            if (currentPos >= slidesGrid[i] && currentPos < slidesGrid[i + params.slidesPerGroup]) {
                stopIndex = i;
                groupSize = slidesGrid[i + params.slidesPerGroup] - slidesGrid[i];
            }
        } else if (currentPos >= slidesGrid[i]) {
            stopIndex = i;
            groupSize = slidesGrid[slidesGrid.length - 1] - slidesGrid[slidesGrid.length - 2];
        }
    } // Find
    // current
    // slide
    // size
    var ratio = (currentPos - slidesGrid[stopIndex]) / groupSize;
    if (timeDiff > params.longSwipesMs) { // Long
        // touches
        if (!params.longSwipes) {
            swiper.slideTo(swiper.activeIndex);
            return;
        }
        if (swiper.swipeDirection === 'next') {
            if (ratio >= params.longSwipesRatio) swiper.slideTo(stopIndex + params.slidesPerGroup);
            else swiper.slideTo(stopIndex);
        }
        if (swiper.swipeDirection === 'prev') {
            if (ratio > 1 - params.longSwipesRatio) swiper.slideTo(stopIndex + params.slidesPerGroup);
            else swiper.slideTo(stopIndex);
        }
    } else { // Short
        // swipes
        if (!params.shortSwipes) {
            swiper.slideTo(swiper.activeIndex);
            return;
        }
        if (swiper.swipeDirection === 'next') {
            swiper.slideTo(stopIndex + params.slidesPerGroup);
        }
        if (swiper.swipeDirection === 'prev') {
            swiper.slideTo(stopIndex);
        }
    }
}

function onResize() {
    var swiper = this;
    var params = swiper.params;
    var el = swiper.el;
    if (el && el.offsetWidth === 0) return; // Breakpoints
    if (params.breakpoints) {
        swiper.setBreakpoint();
    } // Save locks
    var allowSlideNext = swiper.allowSlideNext;
    var allowSlidePrev = swiper.allowSlidePrev;
    var snapGrid = swiper.snapGrid; // Disable
    // locks
    // on
    // resize
    swiper.allowSlideNext = true;
    swiper.allowSlidePrev = true;
    swiper.updateSize();
    swiper.updateSlides();
    if (params.freeMode) {
        var newTranslate = Math.min(Math.max(swiper.translate, swiper.maxTranslate()), swiper.minTranslate());
        swiper.setTranslate(newTranslate);
        swiper.updateActiveIndex();
        swiper.updateSlidesClasses();
        if (params.autoHeight) {
            swiper.updateAutoHeight();
        }
    } else {
        swiper.updateSlidesClasses();
        if ((params.slidesPerView === 'auto' || params.slidesPerView > 1) && swiper.isEnd && !swiper.params.centeredSlides) {
            swiper.slideTo(swiper.slides.length - 1, 0, false, true);
        } else {
            swiper.slideTo(swiper.activeIndex, 0, false, true);
        }
    }
    if (swiper.autoplay && swiper.autoplay.running && swiper.autoplay.paused) {
        swiper.autoplay.run();
    } // Return
    // locks
    // after
    // resize
    swiper.allowSlidePrev = allowSlidePrev;
    swiper.allowSlideNext = allowSlideNext;
    if (swiper.params.watchOverflow && snapGrid !== swiper.snapGrid) {
        swiper.checkOverflow();
    }
}

function onClick(e) {
    var swiper = this;
    if (!swiper.allowClick) {
        if (swiper.params.preventClicks) e.preventDefault();
        if (swiper.params.preventClicksPropagation && swiper.animating) {
            e.stopPropagation();
            e.stopImmediatePropagation();
        }
    }
}

function attachEvents() {
    var swiper = this;
    var params = swiper.params;
    var touchEvents = swiper.touchEvents;
    var el = swiper.el;
    var wrapperEl = swiper.wrapperEl; {
        swiper.onTouchStart = onTouchStart.bind(swiper);
        swiper.onTouchMove = onTouchMove.bind(swiper);
        swiper.onTouchEnd = onTouchEnd.bind(swiper);
    }
    swiper.onClick = onClick.bind(swiper);
    var target = params.touchEventsTarget === 'container' ? el : wrapperEl;
    var capture = !!params.nested; // Touch
    // Events
    {
        if (!Support.touch && (Support.pointerEvents || Support.prefixedPointerEvents)) {
            target.addEventListener(touchEvents.start, swiper.onTouchStart, false);
            _ssrWindow.document.addEventListener(touchEvents.move, swiper.onTouchMove, capture);
            _ssrWindow.document.addEventListener(touchEvents.end, swiper.onTouchEnd, false);
        } else {
            if (Support.touch) {
                var passiveListener = touchEvents.start === 'touchstart' && Support.passiveListener && params.passiveListeners ? {
                    passive: true,
                    capture: false
                } : false;
                target.addEventListener(touchEvents.start, swiper.onTouchStart, passiveListener);
                target.addEventListener(touchEvents.move, swiper.onTouchMove, Support.passiveListener ? {
                    passive: false,
                    capture: capture
                } : capture);
                target.addEventListener(touchEvents.end, swiper.onTouchEnd, passiveListener);
            }
            if (params.simulateTouch && !Device.ios && !Device.android || params.simulateTouch && !Support.touch && Device.ios) {
                target.addEventListener('mousedown', swiper.onTouchStart, false);
                _ssrWindow.document.addEventListener('mousemove', swiper.onTouchMove, capture);
                _ssrWindow.document.addEventListener('mouseup', swiper.onTouchEnd, false);
            }
        } // Prevent
        // Links
        // Clicks
        if (params.preventClicks || params.preventClicksPropagation) {
            target.addEventListener('click', swiper.onClick, true);
        }
    } // Resize
    // handler
    swiper.on(Device.ios || Device.android ? 'resize orientationchange observerUpdate' : 'resize observerUpdate', onResize, true);
}

function detachEvents() {
    var swiper = this;
    var params = swiper.params;
    var touchEvents = swiper.touchEvents;
    var el = swiper.el;
    var wrapperEl = swiper.wrapperEl;
    var target = params.touchEventsTarget === 'container' ? el : wrapperEl;
    var capture = !!params.nested; // Touch
    // Events
    {
        if (!Support.touch && (Support.pointerEvents || Support.prefixedPointerEvents)) {
            target.removeEventListener(touchEvents.start, swiper.onTouchStart, false);
            _ssrWindow.document.removeEventListener(touchEvents.move, swiper.onTouchMove, capture);
            _ssrWindow.document.removeEventListener(touchEvents.end, swiper.onTouchEnd, false);
        } else {
            if (Support.touch) {
                var passiveListener = touchEvents.start === 'onTouchStart' && Support.passiveListener && params.passiveListeners ? {
                    passive: true,
                    capture: false
                } : false;
                target.removeEventListener(touchEvents.start, swiper.onTouchStart, passiveListener);
                target.removeEventListener(touchEvents.move, swiper.onTouchMove, capture);
                target.removeEventListener(touchEvents.end, swiper.onTouchEnd, passiveListener);
            }
            if (params.simulateTouch && !Device.ios && !Device.android || params.simulateTouch && !Support.touch && Device.ios) {
                target.removeEventListener('mousedown', swiper.onTouchStart, false);
                _ssrWindow.document.removeEventListener('mousemove', swiper.onTouchMove, capture);
                _ssrWindow.document.removeEventListener('mouseup', swiper.onTouchEnd, false);
            }
        } // Prevent
        // Links
        // Clicks
        if (params.preventClicks || params.preventClicksPropagation) {
            target.removeEventListener('click', swiper.onClick, true);
        }
    } // Resize
    // handler
    swiper.off(Device.ios || Device.android ? 'resize orientationchange observerUpdate' : 'resize observerUpdate', onResize);
}
var events = {
    attachEvents: attachEvents,
    detachEvents: detachEvents
};

function setBreakpoint() {
    var swiper = this;
    var activeIndex = swiper.activeIndex;
    var initialized = swiper.initialized;
    var _swiper$loopedSlides = swiper.loopedSlides;
    var loopedSlides = _swiper$loopedSlides === undefined ? 0 : _swiper$loopedSlides;
    var params = swiper.params;
    var breakpoints = params.breakpoints;
    if (!breakpoints || breakpoints && Object.keys(breakpoints).length === 0) return; // Set
    // breakpoint
    // for
    // window
    // width
    // and
    // update
    // parameters
    var breakpoint = swiper.getBreakpoint(breakpoints);
    if (breakpoint && swiper.currentBreakpoint !== breakpoint) {
        (function() {
            var breakpointOnlyParams = breakpoint in breakpoints ? breakpoints[breakpoint] : undefined;
            if (breakpointOnlyParams) {
                ['slidesPerView', 'spaceBetween', 'slidesPerGroup'].forEach(function(param) {
                    var paramValue = breakpointOnlyParams[param];
                    if (typeof paramValue === 'undefined') return;
                    if (param === 'slidesPerView' && (paramValue === 'AUTO' || paramValue === 'auto')) {
                        breakpointOnlyParams[param] = 'auto';
                    } else if (param === 'slidesPerView') {
                        breakpointOnlyParams[param] = parseFloat(paramValue);
                    } else {
                        breakpointOnlyParams[param] = parseInt(paramValue, 10);
                    }
                });
            }
            var breakpointParams = breakpointOnlyParams || swiper.originalParams;
            var directionChanged = breakpointParams.direction && breakpointParams.direction !== params.direction;
            var needsReLoop = params.loop && (breakpointParams.slidesPerView !== params.slidesPerView || directionChanged);
            if (directionChanged && initialized) {
                swiper.changeDirection();
            }
            Utils.extend(swiper.params, breakpointParams);
            Utils.extend(swiper, {
                allowTouchMove: swiper.params.allowTouchMove,
                allowSlideNext: swiper.params.allowSlideNext,
                allowSlidePrev: swiper.params.allowSlidePrev
            });
            swiper.currentBreakpoint = breakpoint;
            if (needsReLoop && initialized) {
                swiper.loopDestroy();
                swiper.loopCreate();
                swiper.updateSlides();
                swiper.slideTo(activeIndex - loopedSlides + swiper.loopedSlides, 0, false);
            }
            swiper.emit('breakpoint', breakpointParams);
        })();
    }
}

function getBreakpoint(breakpoints) {
    var swiper = this; // Get
    // breakpoint
    // for
    // window
    // width
    if (!breakpoints) return undefined;
    var breakpoint = false;
    var points = [];
    Object.keys(breakpoints).forEach(function(point) {
        points.push(point);
    });
    points.sort(function(a, b) {
        return parseInt(a, 10) - parseInt(b, 10);
    });
    for (var i = 0; i < points.length; i += 1) {
        var point = points[i];
        if (swiper.params.breakpointsInverse) {
            if (point <= _ssrWindow.window.innerWidth) {
                breakpoint = point;
            }
        } else if (point >= _ssrWindow.window.innerWidth && !breakpoint) {
            breakpoint = point;
        }
    }
    return breakpoint || 'max';
}
var breakpoints = {
    setBreakpoint: setBreakpoint,
    getBreakpoint: getBreakpoint
};

function addClasses() {
    var swiper = this;
    var classNames = swiper.classNames;
    var params = swiper.params;
    var rtl = swiper.rtl;
    var $el = swiper.$el;
    var suffixes = [];
    suffixes.push('initialized');
    suffixes.push(params.direction);
    if (params.freeMode) {
        suffixes.push('free-mode');
    }
    if (!Support.flexbox) {
        suffixes.push('no-flexbox');
    }
    if (params.autoHeight) {
        suffixes.push('autoheight');
    }
    if (rtl) {
        suffixes.push('rtl');
    }
    if (params.slidesPerColumn > 1) {
        suffixes.push('multirow');
    }
    if (Device.android) {
        suffixes.push('android');
    }
    if (Device.ios) {
        suffixes.push('ios');
    } // WP8
    // Touch
    // Events
    // Fix
    if ((Browser.isIE || Browser.isEdge) && (Support.pointerEvents || Support.prefixedPointerEvents)) {
        suffixes.push('wp8-' + params.direction);
    }
    suffixes.forEach(function(suffix) {
        classNames.push(params.containerModifierClass + suffix);
    });
    $el.addClass(classNames.join(' '));
}

function removeClasses() {
    var swiper = this;
    var $el = swiper.$el;
    var classNames = swiper.classNames;
    $el.removeClass(classNames.join(' '));
}
var classes = {
    addClasses: addClasses,
    removeClasses: removeClasses
};

function loadImage(imageEl, src, srcset, sizes, checkForComplete, callback) {
    var image = undefined;

    function onReady() {
        if (callback) callback();
    }
    if (!imageEl.complete || !checkForComplete) {
        if (src) {
            image = new _ssrWindow.window.Image();
            image.onload = onReady;
            image.onerror = onReady;
            if (sizes) {
                image.sizes = sizes;
            }
            if (srcset) {
                image.srcset = srcset;
            }
            if (src) {
                image.src = src;
            }
        } else {
            onReady();
        }
    } else { // image
        // already
        // loaded...
        onReady();
    }
}

function preloadImages() {
    var swiper = this;
    swiper.imagesToLoad = swiper.$el.find('img');

    function onReady() {
        if (typeof swiper === 'undefined' || swiper === null || !swiper || swiper.destroyed) return;
        if (swiper.imagesLoaded !== undefined) swiper.imagesLoaded += 1;
        if (swiper.imagesLoaded === swiper.imagesToLoad.length) {
            if (swiper.params.updateOnImagesReady) swiper.update();
            swiper.emit('imagesReady');
        }
    }
    for (var i = 0; i < swiper.imagesToLoad.length; i += 1) {
        var imageEl = swiper.imagesToLoad[i];
        swiper.loadImage(imageEl, imageEl.currentSrc || imageEl.getAttribute('src'), imageEl.srcset || imageEl.getAttribute('srcset'), imageEl.sizes || imageEl.getAttribute('sizes'), true, onReady);
    }
}
var images = {
    loadImage: loadImage,
    preloadImages: preloadImages
};

function checkOverflow() {
    var swiper = this;
    var wasLocked = swiper.isLocked;
    swiper.isLocked = swiper.snapGrid.length === 1;
    swiper.allowSlideNext = !swiper.isLocked;
    swiper.allowSlidePrev = !swiper.isLocked; // events
    if (wasLocked !== swiper.isLocked) swiper.emit(swiper.isLocked ? 'lock' : 'unlock');
    if (wasLocked && wasLocked !== swiper.isLocked) {
        swiper.isEnd = false;
        swiper.navigation.update();
    }
}
var checkOverflow$1 = {
    checkOverflow: checkOverflow
};
var defaults = {
    init: true,
    direction: 'horizontal',
    touchEventsTarget: 'container',
    initialSlide: 0,
    speed: 300, //
    preventInteractionOnTransition: false, // To support iOS's swipe-to-go-back
    // gesture (when being used in-app, with
    // UIWebView).
    edgeSwipeDetection: false,
    edgeSwipeThreshold: 20, // Free mode
    freeMode: false,
    freeModeMomentum: true,
    freeModeMomentumRatio: 1,
    freeModeMomentumBounce: true,
    freeModeMomentumBounceRatio: 1,
    freeModeMomentumVelocityRatio: 1,
    freeModeSticky: false,
    freeModeMinimumVelocity: 0.02, // Autoheight
    autoHeight: false, // Set wrapper width
    setWrapperSize: false, // Virtual Translate
    virtualTranslate: false, // Effects
    effect: 'slide', // 'slide' or 'fade' or 'cube' or 'coverflow' or 'flip'
    // Breakpoints
    breakpoints: undefined,
    breakpointsInverse: false, // Slides grid
    spaceBetween: 0,
    slidesPerView: 1,
    slidesPerColumn: 1,
    slidesPerColumnFill: 'column',
    slidesPerGroup: 1,
    centeredSlides: false,
    slidesOffsetBefore: 0, // in
    // px
    slidesOffsetAfter: 0, // in px
    normalizeSlideIndex: true,
    centerInsufficientSlides: false, // Disable swiper
    // and hide
    // navigation when
    // container not
    // overflow
    watchOverflow: false, // Round length
    roundLengths: false, // Touches
    touchRatio: 1,
    touchAngle: 45,
    simulateTouch: true,
    shortSwipes: true,
    longSwipes: true,
    longSwipesRatio: 0.5,
    longSwipesMs: 300,
    followFinger: true,
    allowTouchMove: true,
    threshold: 0,
    touchMoveStopPropagation: true,
    touchStartPreventDefault: true,
    touchStartForcePreventDefault: false,
    touchReleaseOnEdges: false, // Unique
    // Navigation
    // Elements
    uniqueNavElements: true, // Resistance
    resistance: true,
    resistanceRatio: 0.85, // Progress
    watchSlidesProgress: false,
    watchSlidesVisibility: false, // Cursor
    grabCursor: false, // Clicks
    preventClicks: true,
    preventClicksPropagation: true,
    slideToClickedSlide: false, // Images
    preloadImages: true,
    updateOnImagesReady: true, // loop
    loop: false,
    loopAdditionalSlides: 0,
    loopedSlides: null,
    loopFillGroupWithBlank: false, // Swiping/no
    // swiping
    allowSlidePrev: true,
    allowSlideNext: true,
    swipeHandler: null, // '.swipe-handler',
    noSwiping: true,
    noSwipingClass: 'swiper-no-swiping',
    noSwipingSelector: null, // Passive
    // Listeners
    passiveListeners: true, // NS
    containerModifierClass: 'swiper-container-', // NEW
    slideClass: 'swiper-slide',
    slideBlankClass: 'swiper-slide-invisible-blank',
    slideActiveClass: 'swiper-slide-active',
    slideDuplicateActiveClass: 'swiper-slide-duplicate-active',
    slideVisibleClass: 'swiper-slide-visible',
    slideDuplicateClass: 'swiper-slide-duplicate',
    slideNextClass: 'swiper-slide-next',
    slideDuplicateNextClass: 'swiper-slide-duplicate-next',
    slidePrevClass: 'swiper-slide-prev',
    slideDuplicatePrevClass: 'swiper-slide-duplicate-prev',
    wrapperClass: 'swiper-wrapper', // Callbacks
    runCallbacksOnInit: true
}; /* eslint no-param-reassign: "off" */
var prototypes = {
    update: update,
    translate: translate,
    transition: transition,
    slide: slide,
    loop: loop,
    grabCursor: grabCursor,
    manipulation: manipulation,
    events: events,
    breakpoints: breakpoints,
    checkOverflow: checkOverflow$1,
    classes: classes,
    images: images
};
var extendedDefaults = {};
var Swiper = (function(_SwiperClass) {
    _inherits(Swiper, _SwiperClass);

    function Swiper() {
        _classCallCheck(this, Swiper);
        var el = undefined;
        var params = undefined;
        for (var _len6 = arguments.length, args = Array(_len6), _key6 = 0; _key6 < _len6; _key6++) {
            args[_key6] = arguments[_key6];
        }
        if (args.length === 1 && args[0].constructor && args[0].constructor === Object) {
            params = args[0];
        } else {
            el = args[0];
            params = args[1];
        }
        if (!params) params = {};
        params = Utils.extend({}, params);
        if (el && !params.el) params.el = el;
        _get(Object.getPrototypeOf(Swiper.prototype), 'constructor', this).call(this, params);
        Object.keys(prototypes).forEach(function(prototypeGroup) {
            Object.keys(prototypes[prototypeGroup]).forEach(function(protoMethod) {
                if (!Swiper.prototype[protoMethod]) {
                    Swiper.prototype[protoMethod] = prototypes[prototypeGroup][protoMethod];
                }
            });
        }); // Swiper
        // Instance
        var swiper = this;
        if (typeof swiper.modules === 'undefined') {
            swiper.modules = {};
        }
        Object.keys(swiper.modules).forEach(function(moduleName) {
            var module = swiper.modules[moduleName];
            if (module.params) {
                var moduleParamName = Object.keys(module.params)[0];
                var moduleParams = module.params[moduleParamName];
                if (typeof moduleParams !== 'object' || moduleParams === null) return;
                if (!(moduleParamName in params && 'enabled' in moduleParams)) return;
                if (params[moduleParamName] === true) {
                    params[moduleParamName] = {
                        enabled: true
                    };
                }
                if (typeof params[moduleParamName] === 'object' && !('enabled' in params[moduleParamName])) {
                    params[moduleParamName].enabled = true;
                }
                if (!params[moduleParamName]) params[moduleParamName] = {
                    enabled: false
                };
            }
        }); // Extend
        // defaults
        // with
        // modules
        // params
        var swiperParams = Utils.extend({}, defaults);
        swiper.useModulesParams(swiperParams); // Extend
        // defaults
        // with
        // passed
        // params
        swiper.params = Utils.extend({}, swiperParams, extendedDefaults, params);
        swiper.originalParams = Utils.extend({}, swiper.params);
        swiper.passedParams = Utils.extend({}, params); // Save
        // Dom
        // lib
        swiper.$ = _dom7DistDom7Modular.$; // Find el
        var $el = (0, _dom7DistDom7Modular.$)(swiper.params.el);
        el = $el[0];
        if (!el) {
            return undefined;
        }
        if ($el.length > 1) {
            var _ret5 = (function() {
                var swipers = [];
                $el.each(function(index, containerEl) {
                    var newParams = Utils.extend({}, params, {
                        el: containerEl
                    });
                    swipers.push(new Swiper(newParams));
                });
                return {
                    v: swipers
                };
            })();
            if (typeof _ret5 === 'object') return _ret5.v;
        }
        el.swiper = swiper;
        $el.data('swiper', swiper); // Find
        // Wrapper
        var $wrapperEl = $el.children('.' + swiper.params.wrapperClass); // Extend Swiper
        Utils.extend(swiper, {
            $el: $el,
            el: el,
            $wrapperEl: $wrapperEl,
            wrapperEl: $wrapperEl[0], // Classes
            classNames: [], // Slides
            slides: (0, _dom7DistDom7Modular.$)(),
            slidesGrid: [],
            snapGrid: [],
            slidesSizesGrid: [], // isDirection
            isHorizontal: function isHorizontal() {
                return swiper.params.direction === 'horizontal';
            },
            isVertical: function isVertical() {
                return swiper.params.direction === 'vertical';
            }, // RTL
            rtl: el.dir.toLowerCase() === 'rtl' || $el.css('direction') === 'rtl',
            rtlTranslate: swiper.params.direction === 'horizontal' && (el.dir.toLowerCase() === 'rtl' || $el.css('direction') === 'rtl'),
            wrongRTL: $wrapperEl.css('display') === '-webkit-box', // Indexes
            activeIndex: 0,
            realIndex: 0, //
            isBeginning: true,
            isEnd: false, // Props
            translate: 0,
            previousTranslate: 0,
            progress: 0,
            velocity: 0,
            animating: false, // Locks
            allowSlideNext: swiper.params.allowSlideNext,
            allowSlidePrev: swiper.params.allowSlidePrev, // Touch
            // Events
            touchEvents: (function touchEvents() {
                var touch = ['touchstart', 'touchmove', 'touchend'];
                var desktop = ['mousedown', 'mousemove', 'mouseup'];
                if (Support.pointerEvents) {
                    desktop = ['pointerdown', 'pointermove', 'pointerup'];
                } else if (Support.prefixedPointerEvents) {
                    desktop = ['MSPointerDown', 'MSPointerMove', 'MSPointerUp'];
                }
                swiper.touchEventsTouch = {
                    start: touch[0],
                    move: touch[1],
                    end: touch[2]
                };
                swiper.touchEventsDesktop = {
                    start: desktop[0],
                    move: desktop[1],
                    end: desktop[2]
                };
                return Support.touch || !swiper.params.simulateTouch ? swiper.touchEventsTouch : swiper.touchEventsDesktop;
            })(),
            touchEventsData: {
                isTouched: undefined,
                isMoved: undefined,
                allowTouchCallbacks: undefined,
                touchStartTime: undefined,
                isScrolling: undefined,
                currentTranslate: undefined,
                startTranslate: undefined,
                allowThresholdMove: undefined, // Form
                // elements
                // to
                // match
                formElements: 'input, select, option, textarea, button, video', // Last click
                // time
                lastClickTime: Utils.now(),
                clickTimeout: undefined, // Velocities
                velocities: [],
                allowMomentumBounce: undefined,
                isTouchEvent: undefined,
                startMoving: undefined
            }, // Clicks
            allowClick: true, // Touches
            allowTouchMove: swiper.params.allowTouchMove,
            touches: {
                startX: 0,
                startY: 0,
                currentX: 0,
                currentY: 0,
                diff: 0
            }, // Images
            imagesToLoad: [],
            imagesLoaded: 0
        }); // Install Modules
        swiper.useModules(); // Init
        if (swiper.params.init) {
            swiper.init();
        } // Return app instance
        return swiper;
    }
    _createClass(Swiper, [{
        key: 'slidesPerViewDynamic',
        value: function slidesPerViewDynamic() {
            var swiper = this;
            var params = swiper.params;
            var slides = swiper.slides;
            var slidesGrid = swiper.slidesGrid;
            var swiperSize = swiper.size;
            var activeIndex = swiper.activeIndex;
            var spv = 1;
            if (params.centeredSlides) {
                var slideSize = slides[activeIndex].swiperSlideSize;
                var breakLoop = undefined;
                for (var i = activeIndex + 1; i < slides.length; i += 1) {
                    if (slides[i] && !breakLoop) {
                        slideSize += slides[i].swiperSlideSize;
                        spv += 1;
                        if (slideSize > swiperSize) breakLoop = true;
                    }
                }
                for (var i = activeIndex - 1; i >= 0; i -= 1) {
                    if (slides[i] && !breakLoop) {
                        slideSize += slides[i].swiperSlideSize;
                        spv += 1;
                        if (slideSize > swiperSize) breakLoop = true;
                    }
                }
            } else {
                for (var i = activeIndex + 1; i < slides.length; i += 1) {
                    if (slidesGrid[i] - slidesGrid[activeIndex] < swiperSize) {
                        spv += 1;
                    }
                }
            }
            return spv;
        }
    }, {
        key: 'update',
        value: function update() {
            var swiper = this;
            if (!swiper || swiper.destroyed) return;
            var snapGrid = swiper.snapGrid;
            var params = swiper.params; // Breakpoints
            if (params.breakpoints) {
                swiper.setBreakpoint();
            }
            swiper.updateSize();
            swiper.updateSlides();
            swiper.updateProgress();
            swiper.updateSlidesClasses();

            function setTranslate() {
                var translateValue = swiper.rtlTranslate ? swiper.translate * -1 : swiper.translate;
                var newTranslate = Math.min(Math.max(translateValue, swiper.maxTranslate()), swiper.minTranslate());
                swiper.setTranslate(newTranslate);
                swiper.updateActiveIndex();
                swiper.updateSlidesClasses();
            }
            var translated = undefined;
            if (swiper.params.freeMode) {
                setTranslate();
                if (swiper.params.autoHeight) {
                    swiper.updateAutoHeight();
                }
            } else {
                if ((swiper.params.slidesPerView === 'auto' || swiper.params.slidesPerView > 1) && swiper.isEnd && !swiper.params.centeredSlides) {
                    translated = swiper.slideTo(swiper.slides.length - 1, 0, false, true);
                } else {
                    translated = swiper.slideTo(swiper.activeIndex, 0, false, true);
                }
                if (!translated) {
                    setTranslate();
                }
            }
            if (params.watchOverflow && snapGrid !== swiper.snapGrid) {
                swiper.checkOverflow();
            }
            swiper.emit('update');
        }
    }, {
        key: 'changeDirection',
        value: function changeDirection(newDirection) {
            var needUpdate = arguments.length <= 1 || arguments[1] === undefined ? true : arguments[1];
            var swiper = this;
            var currentDirection = swiper.params.direction;
            if (!newDirection) { // eslint-disable-next-line
                newDirection = currentDirection === 'horizontal' ? 'vertical' : 'horizontal';
            }
            if (newDirection === currentDirection || newDirection !== 'horizontal' && newDirection !== 'vertical') {
                return swiper;
            }
            swiper.$el.removeClass('' + swiper.params.containerModifierClass + currentDirection + ' wp8-' + currentDirection).addClass('' + swiper.params.containerModifierClass + newDirection);
            if ((Browser.isIE || Browser.isEdge) && (Support.pointerEvents || Support.prefixedPointerEvents)) {
                swiper.$el.addClass(swiper.params.containerModifierClass + 'wp8-' + newDirection);
            }
            swiper.params.direction = newDirection;
            swiper.slides.each(function(slideIndex, slideEl) {
                if (newDirection === 'vertical') {
                    slideEl.style.width = '';
                } else {
                    slideEl.style.height = '';
                }
            });
            swiper.emit('changeDirection');
            if (needUpdate) swiper.update();
            return swiper;
        }
    }, {
        key: 'init',
        value: function init() {
            var swiper = this;
            if (swiper.initialized) return;
            swiper.emit('beforeInit'); // Set
            // breakpoint
            if (swiper.params.breakpoints) {
                swiper.setBreakpoint();
            } // Add Classes
            swiper.addClasses(); // Create loop
            if (swiper.params.loop) {
                swiper.loopCreate();
            } // Update size
            swiper.updateSize(); // Update slides
            swiper.updateSlides();
            if (swiper.params.watchOverflow) {
                swiper.checkOverflow();
            } // Set
            // Grab
            // Cursor
            if (swiper.params.grabCursor) {
                swiper.setGrabCursor();
            }
            if (swiper.params.preloadImages) {
                swiper.preloadImages();
            } // Slide
            // To
            // Initial
            // Slide
            if (swiper.params.loop) {
                swiper.slideTo(swiper.params.initialSlide + swiper.loopedSlides, 0, swiper.params.runCallbacksOnInit);
            } else {
                swiper.slideTo(swiper.params.initialSlide, 0, swiper.params.runCallbacksOnInit);
            } // Attach
            // events
            swiper.attachEvents(); // Init Flag
            swiper.initialized = true; // Emit
            swiper.emit('init');
        }
    }, {
        key: 'destroy',
        value: function destroy() {
            var deleteInstance = arguments.length <= 0 || arguments[0] === undefined ? true : arguments[0];
            var cleanStyles = arguments.length <= 1 || arguments[1] === undefined ? true : arguments[1];
            var swiper = this;
            var params = swiper.params;
            var $el = swiper.$el;
            var $wrapperEl = swiper.$wrapperEl;
            var slides = swiper.slides;
            if (typeof swiper.params === 'undefined' || swiper.destroyed) {
                return null;
            }
            swiper.emit('beforeDestroy'); // Init
            // Flag
            swiper.initialized = false; // Detach events
            swiper.detachEvents(); // Destroy loop
            if (params.loop) {
                swiper.loopDestroy();
            } // Cleanup styles
            if (cleanStyles) {
                swiper.removeClasses();
                $el.removeAttr('style');
                $wrapperEl.removeAttr('style');
                if (slides && slides.length) {
                    slides.removeClass([params.slideVisibleClass, params.slideActiveClass, params.slideNextClass, params.slidePrevClass].join(' ')).removeAttr('style').removeAttr('data-swiper-slide-index').removeAttr('data-swiper-column').removeAttr('data-swiper-row');
                }
            }
            swiper.emit('destroy'); // Detach
            // emitter
            // events
            Object.keys(swiper.eventsListeners).forEach(function(eventName) {
                swiper.off(eventName);
            });
            if (deleteInstance !== false) {
                swiper.$el[0].swiper = null;
                swiper.$el.data('swiper', null);
                Utils.deleteProps(swiper);
            }
            swiper.destroyed = true;
            return null;
        }
    }], [{
        key: 'extendDefaults',
        value: function extendDefaults(newDefaults) {
            Utils.extend(extendedDefaults, newDefaults);
        }
    }, {
        key: 'extendedDefaults',
        get: function get() {
            return extendedDefaults;
        }
    }, {
        key: 'defaults',
        get: function get() {
            return defaults;
        }
    }, {
        key: 'Class',
        get: function get() {
            return SwiperClass;
        }
    }, {
        key: '$',
        get: function get() {
            return _dom7DistDom7Modular.$;
        }
    }]);
    return Swiper;
})(SwiperClass);
var Device$1 = {
    name: 'device',
    proto: {
        device: Device
    },
    'static': {
        device: Device
    }
};
var Support$1 = {
    name: 'support',
    proto: {
        support: Support
    },
    'static': {
        support: Support
    }
};
var Browser$1 = {
    name: 'browser',
    proto: {
        browser: Browser
    },
    'static': {
        browser: Browser
    }
};
var Resize = {
    name: 'resize',
    create: function create() {
        var swiper = this;
        Utils.extend(swiper, {
            resize: {
                resizeHandler: function resizeHandler() {
                    if (!swiper || swiper.destroyed || !swiper.initialized) return;
                    swiper.emit('beforeResize');
                    swiper.emit('resize');
                },
                orientationChangeHandler: function orientationChangeHandler() {
                    if (!swiper || swiper.destroyed || !swiper.initialized) return;
                    swiper.emit('orientationchange');
                }
            }
        });
    },
    on: {
        init: function init() {
            var swiper = this; // Emit
            // resize
            _ssrWindow.window.addEventListener('resize', swiper.resize.resizeHandler); // Emit
            // orientationchange
            _ssrWindow.window.addEventListener('orientationchange', swiper.resize.orientationChangeHandler);
        },
        destroy: function destroy() {
            var swiper = this;
            _ssrWindow.window.removeEventListener('resize', swiper.resize.resizeHandler);
            _ssrWindow.window.removeEventListener('orientationchange', swiper.resize.orientationChangeHandler);
        }
    }
};
var Observer = {
    func: _ssrWindow.window.MutationObserver || _ssrWindow.window.WebkitMutationObserver,
    attach: function attach(target) {
        var options = arguments.length <= 1 || arguments[1] === undefined ? {} : arguments[1];
        var swiper = this;
        var ObserverFunc = Observer.func;
        var observer = new ObserverFunc(function(mutations) { // The
            // observerUpdate
            // event
            // should
            // only
            // be
            // triggered
            // once despite the number of mutations. Additional
            // triggers are redundant and are very costly
            if (mutations.length === 1) {
                swiper.emit('observerUpdate', mutations[0]);
                return;
            }
            var observerUpdate = function observerUpdate() {
                swiper.emit('observerUpdate', mutations[0]);
            };
            if (_ssrWindow.window.requestAnimationFrame) {
                _ssrWindow.window.requestAnimationFrame(observerUpdate);
            } else {
                _ssrWindow.window.setTimeout(observerUpdate, 0);
            }
        });
        observer.observe(target, {
            attributes: typeof options.attributes === 'undefined' ? true : options.attributes,
            childList: typeof options.childList === 'undefined' ? true : options.childList,
            characterData: typeof options.characterData === 'undefined' ? true : options.characterData
        });
        swiper.observer.observers.push(observer);
    },
    init: function init() {
        var swiper = this;
        if (!Support.observer || !swiper.params.observer) return;
        if (swiper.params.observeParents) {
            var containerParents = swiper.$el.parents();
            for (var i = 0; i < containerParents.length; i += 1) {
                swiper.observer.attach(containerParents[i]);
            }
        } // Observe
        // container
        swiper.observer.attach(swiper.$el[0], {
            childList: swiper.params.observeSlideChildren
        }); // Observe
        // wrapper
        swiper.observer.attach(swiper.$wrapperEl[0], {
            attributes: false
        });
    },
    destroy: function destroy() {
        var swiper = this;
        swiper.observer.observers.forEach(function(observer) {
            observer.disconnect();
        });
        swiper.observer.observers = [];
    }
};
var Observer$1 = {
    name: 'observer',
    params: {
        observer: false,
        observeParents: false,
        observeSlideChildren: false
    },
    create: function create() {
        var swiper = this;
        Utils.extend(swiper, {
            observer: {
                init: Observer.init.bind(swiper),
                attach: Observer.attach.bind(swiper),
                destroy: Observer.destroy.bind(swiper),
                observers: []
            }
        });
    },
    on: {
        init: function init() {
            var swiper = this;
            swiper.observer.init();
        },
        destroy: function destroy() {
            var swiper = this;
            swiper.observer.destroy();
        }
    }
};
var Virtual = {
    update: function update(force) {
        var swiper = this;
        var _swiper$params = swiper.params;
        var slidesPerView = _swiper$params.slidesPerView;
        var slidesPerGroup = _swiper$params.slidesPerGroup;
        var centeredSlides = _swiper$params.centeredSlides;
        var _swiper$params$virtual = swiper.params.virtual;
        var addSlidesBefore = _swiper$params$virtual.addSlidesBefore;
        var addSlidesAfter = _swiper$params$virtual.addSlidesAfter;
        var _swiper$virtual = swiper.virtual;
        var previousFrom = _swiper$virtual.from;
        var previousTo = _swiper$virtual.to;
        var slides = _swiper$virtual.slides;
        var previousSlidesGrid = _swiper$virtual.slidesGrid;
        var renderSlide = _swiper$virtual.renderSlide;
        var previousOffset = _swiper$virtual.offset;
        swiper.updateActiveIndex();
        var activeIndex = swiper.activeIndex || 0;
        var offsetProp = undefined;
        if (swiper.rtlTranslate) offsetProp = 'right';
        else offsetProp = swiper.isHorizontal() ? 'left' : 'top';
        var slidesAfter = undefined;
        var slidesBefore = undefined;
        if (centeredSlides) {
            slidesAfter = Math.floor(slidesPerView / 2) + slidesPerGroup + addSlidesBefore;
            slidesBefore = Math.floor(slidesPerView / 2) + slidesPerGroup + addSlidesAfter;
        } else {
            slidesAfter = slidesPerView + (slidesPerGroup - 1) + addSlidesBefore;
            slidesBefore = slidesPerGroup + addSlidesAfter;
        }
        var from = Math.max((activeIndex || 0) - slidesBefore, 0);
        var to = Math.min((activeIndex || 0) + slidesAfter, slides.length - 1);
        var offset = (swiper.slidesGrid[from] || 0) - (swiper.slidesGrid[0] || 0);
        Utils.extend(swiper.virtual, {
            from: from,
            to: to,
            offset: offset,
            slidesGrid: swiper.slidesGrid
        });

        function onRendered() {
            swiper.updateSlides();
            swiper.updateProgress();
            swiper.updateSlidesClasses();
            if (swiper.lazy && swiper.params.lazy.enabled) {
                swiper.lazy.load();
            }
        }
        if (previousFrom === from && previousTo === to && !force) {
            if (swiper.slidesGrid !== previousSlidesGrid && offset !== previousOffset) {
                swiper.slides.css(offsetProp, offset + 'px');
            }
            swiper.updateProgress();
            return;
        }
        if (swiper.params.virtual.renderExternal) {
            swiper.params.virtual.renderExternal.call(swiper, {
                offset: offset,
                from: from,
                to: to,
                slides: (function getSlides() {
                    var slidesToRender = [];
                    for (var i = from; i <= to; i += 1) {
                        slidesToRender.push(slides[i]);
                    }
                    return slidesToRender;
                })()
            });
            onRendered();
            return;
        }
        var prependIndexes = [];
        var appendIndexes = [];
        if (force) {
            swiper.$wrapperEl.find('.' + swiper.params.slideClass).remove();
        } else {
            for (var i = previousFrom; i <= previousTo; i += 1) {
                if (i < from || i > to) {
                    swiper.$wrapperEl.find('.' + swiper.params.slideClass + '[data-swiper-slide-index="' + i + '"]').remove();
                }
            }
        }
        for (var i = 0; i < slides.length; i += 1) {
            if (i >= from && i <= to) {
                if (typeof previousTo === 'undefined' || force) {
                    appendIndexes.push(i);
                } else {
                    if (i > previousTo) appendIndexes.push(i);
                    if (i < previousFrom) prependIndexes.push(i);
                }
            }
        }
        appendIndexes.forEach(function(index) {
            swiper.$wrapperEl.append(renderSlide(slides[index], index));
        });
        prependIndexes.sort(function(a, b) {
            return b - a;
        }).forEach(function(index) {
            swiper.$wrapperEl.prepend(renderSlide(slides[index], index));
        });
        swiper.$wrapperEl.children('.swiper-slide').css(offsetProp, offset + 'px');
        onRendered();
    },
    renderSlide: function renderSlide(slide, index) {
        var swiper = this;
        var params = swiper.params.virtual;
        if (params.cache && swiper.virtual.cache[index]) {
            return swiper.virtual.cache[index];
        }
        var $slideEl = params.renderSlide ? (0, _dom7DistDom7Modular.$)(params.renderSlide.call(swiper, slide, index)) : (0, _dom7DistDom7Modular.$)('<div class="' + swiper.params.slideClass + '" data-swiper-slide-index="' + index + '">' + slide + '</div>');
        if (!$slideEl.attr('data-swiper-slide-index')) $slideEl.attr('data-swiper-slide-index', index);
        if (params.cache) swiper.virtual.cache[index] = $slideEl;
        return $slideEl;
    },
    appendSlide: function appendSlide(slides) {
        var swiper = this;
        if (typeof slides === 'object' && 'length' in slides) {
            for (var i = 0; i < slides.length; i += 1) {
                if (slides[i]) swiper.virtual.slides.push(slides[i]);
            }
        } else {
            swiper.virtual.slides.push(slides);
        }
        swiper.virtual.update(true);
    },
    prependSlide: function prependSlide(slides) {
        var swiper = this;
        var activeIndex = swiper.activeIndex;
        var newActiveIndex = activeIndex + 1;
        var numberOfNewSlides = 1;
        if (Array.isArray(slides)) {
            for (var i = 0; i < slides.length; i += 1) {
                if (slides[i]) swiper.virtual.slides.unshift(slides[i]);
            }
            newActiveIndex = activeIndex + slides.length;
            numberOfNewSlides = slides.length;
        } else {
            swiper.virtual.slides.unshift(slides);
        }
        if (swiper.params.virtual.cache) {
            (function() {
                var cache = swiper.virtual.cache;
                var newCache = {};
                Object.keys(cache).forEach(function(cachedIndex) {
                    newCache[parseInt(cachedIndex, 10) + numberOfNewSlides] = cache[cachedIndex];
                });
                swiper.virtual.cache = newCache;
            })();
        }
        swiper.virtual.update(true);
        swiper.slideTo(newActiveIndex, 0);
    },
    removeSlide: function removeSlide(slidesIndexes) {
        var swiper = this;
        if (typeof slidesIndexes === 'undefined' || slidesIndexes === null) return;
        var activeIndex = swiper.activeIndex;
        if (Array.isArray(slidesIndexes)) {
            for (var i = slidesIndexes.length - 1; i >= 0; i -= 1) {
                swiper.virtual.slides.splice(slidesIndexes[i], 1);
                if (swiper.params.virtual.cache) {
                    delete swiper.virtual.cache[slidesIndexes[i]];
                }
                if (slidesIndexes[i] < activeIndex) activeIndex -= 1;
                activeIndex = Math.max(activeIndex, 0);
            }
        } else {
            swiper.virtual.slides.splice(slidesIndexes, 1);
            if (swiper.params.virtual.cache) {
                delete swiper.virtual.cache[slidesIndexes];
            }
            if (slidesIndexes < activeIndex) activeIndex -= 1;
            activeIndex = Math.max(activeIndex, 0);
        }
        swiper.virtual.update(true);
        swiper.slideTo(activeIndex, 0);
    },
    removeAllSlides: function removeAllSlides() {
        var swiper = this;
        swiper.virtual.slides = [];
        if (swiper.params.virtual.cache) {
            swiper.virtual.cache = {};
        }
        swiper.virtual.update(true);
        swiper.slideTo(0, 0);
    }
};
var virtual = {
    name: 'virtual',
    params: {
        virtual: {
            enabled: false,
            slides: [],
            cache: true,
            renderSlide: null,
            renderExternal: null,
            addSlidesBefore: 0,
            addSlidesAfter: 0
        }
    },
    create: function create() {
        var swiper = this;
        Utils.extend(swiper, {
            virtual: {
                update: Virtual.update.bind(swiper),
                appendSlide: Virtual.appendSlide.bind(swiper),
                prependSlide: Virtual.prependSlide.bind(swiper),
                removeSlide: Virtual.removeSlide.bind(swiper),
                removeAllSlides: Virtual.removeAllSlides.bind(swiper),
                renderSlide: Virtual.renderSlide.bind(swiper),
                slides: swiper.params.virtual.slides,
                cache: {}
            }
        });
    },
    on: {
        beforeInit: function beforeInit() {
            var swiper = this;
            if (!swiper.params.virtual.enabled) return;
            swiper.classNames.push(swiper.params.containerModifierClass + 'virtual');
            var overwriteParams = {
                watchSlidesProgress: true
            };
            Utils.extend(swiper.params, overwriteParams);
            Utils.extend(swiper.originalParams, overwriteParams);
            if (!swiper.params.initialSlide) {
                swiper.virtual.update();
            }
        },
        setTranslate: function setTranslate() {
            var swiper = this;
            if (!swiper.params.virtual.enabled) return;
            swiper.virtual.update();
        }
    }
};
var Keyboard = {
    handle: function handle(event) {
        var swiper = this;
        var rtl = swiper.rtlTranslate;
        var e = event;
        if (e.originalEvent) e = e.originalEvent; // jquery
        // fix
        var kc = e.keyCode || e.charCode; // Directions locks
        if (!swiper.allowSlideNext && (swiper.isHorizontal() && kc === 39 || swiper.isVertical() && kc === 40 || kc === 34)) {
            return false;
        }
        if (!swiper.allowSlidePrev && (swiper.isHorizontal() && kc === 37 || swiper.isVertical() && kc === 38 || kc === 33)) {
            return false;
        }
        if (e.shiftKey || e.altKey || e.ctrlKey || e.metaKey) {
            return undefined;
        }
        if (_ssrWindow.document.activeElement && _ssrWindow.document.activeElement.nodeName && (_ssrWindow.document.activeElement.nodeName.toLowerCase() === 'input' || _ssrWindow.document.activeElement.nodeName.toLowerCase() === 'textarea')) {
            return undefined;
        }
        if (swiper.params.keyboard.onlyInViewport && (kc === 33 || kc === 34 || kc === 37 || kc === 39 || kc === 38 || kc === 40)) {
            var inView = false; // Check
            // that
            // swiper
            // should
            // be
            // inside
            // of
            // visible
            // area
            // of
            // window
            if (swiper.$el.parents('.' + swiper.params.slideClass).length > 0 && swiper.$el.parents('.' + swiper.params.slideActiveClass).length === 0) {
                return undefined;
            }
            var windowWidth = _ssrWindow.window.innerWidth;
            var windowHeight = _ssrWindow.window.innerHeight;
            var swiperOffset = swiper.$el.offset();
            if (rtl) swiperOffset.left -= swiper.$el[0].scrollLeft;
            var swiperCoord = [
                [swiperOffset.left, swiperOffset.top],
                [swiperOffset.left + swiper.width, swiperOffset.top],
                [swiperOffset.left, swiperOffset.top + swiper.height],
                [swiperOffset.left + swiper.width, swiperOffset.top + swiper.height]
            ];
            for (var i = 0; i < swiperCoord.length; i += 1) {
                var point = swiperCoord[i];
                if (point[0] >= 0 && point[0] <= windowWidth && point[1] >= 0 && point[1] <= windowHeight) {
                    inView = true;
                }
            }
            if (!inView) return undefined;
        }
        if (swiper.isHorizontal()) {
            if (kc === 33 || kc === 34 || kc === 37 || kc === 39) {
                if (e.preventDefault) e.preventDefault();
                else e.returnValue = false;
            }
            if ((kc === 34 || kc === 39) && !rtl || (kc === 33 || kc === 37) && rtl) swiper.slideNext();
            if ((kc === 33 || kc === 37) && !rtl || (kc === 34 || kc === 39) && rtl) swiper.slidePrev();
        } else {
            if (kc === 33 || kc === 34 || kc === 38 || kc === 40) {
                if (e.preventDefault) e.preventDefault();
                else e.returnValue = false;
            }
            if (kc === 34 || kc === 40) swiper.slideNext();
            if (kc === 33 || kc === 38) swiper.slidePrev();
        }
        swiper.emit('keyPress', kc);
        return undefined;
    },
    enable: function enable() {
        var swiper = this;
        if (swiper.keyboard.enabled) return;
        (0, _dom7DistDom7Modular.$)(_ssrWindow.document).on('keydown', swiper.keyboard.handle);
        swiper.keyboard.enabled = true;
    },
    disable: function disable() {
        var swiper = this;
        if (!swiper.keyboard.enabled) return;
        (0, _dom7DistDom7Modular.$)(_ssrWindow.document).off('keydown', swiper.keyboard.handle);
        swiper.keyboard.enabled = false;
    }
};
var keyboard = {
    name: 'keyboard',
    params: {
        keyboard: {
            enabled: false,
            onlyInViewport: true
        }
    },
    create: function create() {
        var swiper = this;
        Utils.extend(swiper, {
            keyboard: {
                enabled: false,
                enable: Keyboard.enable.bind(swiper),
                disable: Keyboard.disable.bind(swiper),
                handle: Keyboard.handle.bind(swiper)
            }
        });
    },
    on: {
        init: function init() {
            var swiper = this;
            if (swiper.params.keyboard.enabled) {
                swiper.keyboard.enable();
            }
        },
        destroy: function destroy() {
            var swiper = this;
            if (swiper.keyboard.enabled) {
                swiper.keyboard.disable();
            }
        }
    }
};

function isEventSupported() {
    var eventName = 'onwheel';
    var isSupported = (eventName in _ssrWindow.document);
    if (!isSupported) {
        var element = _ssrWindow.document.createElement('div');
        element.setAttribute(eventName, 'return;');
        isSupported = typeof element[eventName] === 'function';
    }
    if (!isSupported && _ssrWindow.document.implementation && _ssrWindow.document.implementation.hasFeature // always
        // returns
        // true
        // in
        // newer
        // browsers
        // as
        // per
        // the
        // standard.
        // @see http://dom.spec.whatwg.org/#dom-domimplementation-hasfeature
        &&
        _ssrWindow.document.implementation.hasFeature('', '') !== true) { // This is
        // the only
        // way to
        // test
        // support
        // for the
        // `wheel`
        // event in
        // IE9+.
        isSupported = _ssrWindow.document.implementation.hasFeature('Events.wheel', '3.0');
    }
    return isSupported;
}
var Mousewheel = {
    lastScrollTime: Utils.now(),
    event: (function getEvent() {
        if (_ssrWindow.window.navigator.userAgent.indexOf('firefox') > -1) return 'DOMMouseScroll';
        return isEventSupported() ? 'wheel' : 'mousewheel';
    })(),
    normalize: function normalize(e) { // Reasonable
        // defaults
        var PIXEL_STEP = 10;
        var LINE_HEIGHT = 40;
        var PAGE_HEIGHT = 800;
        var sX = 0;
        var sY = 0; // spinX,
        // spinY
        var pX = 0;
        var pY = 0; // pixelX, pixelY
        // Legacy
        if ('detail' in e) {
            sY = e.detail;
        }
        if ('wheelDelta' in e) {
            sY = -e.wheelDelta / 120;
        }
        if ('wheelDeltaY' in e) {
            sY = -e.wheelDeltaY / 120;
        }
        if ('wheelDeltaX' in e) {
            sX = -e.wheelDeltaX / 120;
        } // side
        // scrolling
        // on
        // FF
        // with
        // DOMMouseScroll
        if ('axis' in e && e.axis === e.HORIZONTAL_AXIS) {
            sX = sY;
            sY = 0;
        }
        pX = sX * PIXEL_STEP;
        pY = sY * PIXEL_STEP;
        if ('deltaY' in e) {
            pY = e.deltaY;
        }
        if ('deltaX' in e) {
            pX = e.deltaX;
        }
        if ((pX || pY) && e.deltaMode) {
            if (e.deltaMode === 1) { // delta
                // in
                // LINE
                // units
                pX *= LINE_HEIGHT;
                pY *= LINE_HEIGHT;
            } else { // delta in PAGE units
                pX *= PAGE_HEIGHT;
                pY *= PAGE_HEIGHT;
            }
        } // Fall-back if spin cannot be
        // determined
        if (pX && !sX) {
            sX = pX < 1 ? -1 : 1;
        }
        if (pY && !sY) {
            sY = pY < 1 ? -1 : 1;
        }
        return {
            spinX: sX,
            spinY: sY,
            pixelX: pX,
            pixelY: pY
        };
    },
    handleMouseEnter: function handleMouseEnter() {
        var swiper = this;
        swiper.mouseEntered = true;
    },
    handleMouseLeave: function handleMouseLeave() {
        var swiper = this;
        swiper.mouseEntered = false;
    },
    handle: function handle(event) {
        var e = event;
        var swiper = this;
        var params = swiper.params.mousewheel;
        if (!swiper.mouseEntered && !params.releaseOnEdges) return true;
        if (e.originalEvent) e = e.originalEvent; // jquery
        // fix
        var delta = 0;
        var rtlFactor = swiper.rtlTranslate ? -1 : 1;
        var data = Mousewheel.normalize(e);
        if (params.forceToAxis) {
            if (swiper.isHorizontal()) {
                if (Math.abs(data.pixelX) > Math.abs(data.pixelY)) delta = data.pixelX * rtlFactor;
                else return true;
            } else if (Math.abs(data.pixelY) > Math.abs(data.pixelX)) delta = data.pixelY;
            else return true;
        } else {
            delta = Math.abs(data.pixelX) > Math.abs(data.pixelY) ? -data.pixelX * rtlFactor : -data.pixelY;
        }
        if (delta === 0) return true;
        if (params.invert) delta = -delta;
        if (!swiper.params.freeMode) {
            if (Utils.now() - swiper.mousewheel.lastScrollTime > 60) {
                if (delta < 0) {
                    if ((!swiper.isEnd || swiper.params.loop) && !swiper.animating) {
                        swiper.slideNext();
                        swiper.emit('scroll', e);
                    } else if (params.releaseOnEdges) return true;
                } else if ((!swiper.isBeginning || swiper.params.loop) && !swiper.animating) {
                    swiper.slidePrev();
                    swiper.emit('scroll', e);
                } else if (params.releaseOnEdges) return true;
            }
            swiper.mousewheel.lastScrollTime = new _ssrWindow.window.Date().getTime();
        } else { // Freemode
            // or
            // scrollContainer:
            if (swiper.params.loop) {
                swiper.loopFix();
            }
            var position = swiper.getTranslate() + delta * params.sensitivity;
            var wasBeginning = swiper.isBeginning;
            var wasEnd = swiper.isEnd;
            if (position >= swiper.minTranslate()) position = swiper.minTranslate();
            if (position <= swiper.maxTranslate()) position = swiper.maxTranslate();
            swiper.setTransition(0);
            swiper.setTranslate(position);
            swiper.updateProgress();
            swiper.updateActiveIndex();
            swiper.updateSlidesClasses();
            if (!wasBeginning && swiper.isBeginning || !wasEnd && swiper.isEnd) {
                swiper.updateSlidesClasses();
            }
            if (swiper.params.freeModeSticky) {
                clearTimeout(swiper.mousewheel.timeout);
                swiper.mousewheel.timeout = Utils.nextTick(function() {
                    swiper.slideToClosest();
                }, 300);
            } // Emit
            // event
            swiper.emit('scroll', e); // Stop autoplay
            if (swiper.params.autoplay && swiper.params.autoplayDisableOnInteraction) swiper.autoplay.stop(); // Return
            // page
            // scroll
            // on
            // edge
            // positions
            if (position === swiper.minTranslate() || position === swiper.maxTranslate()) return true;
        }
        if (e.preventDefault) e.preventDefault();
        else e.returnValue = false;
        return false;
    },
    enable: function enable() {
        var swiper = this;
        if (!Mousewheel.event) return false;
        if (swiper.mousewheel.enabled) return false;
        var target = swiper.$el;
        if (swiper.params.mousewheel.eventsTarged !== 'container') {
            target = (0, _dom7DistDom7Modular.$)(swiper.params.mousewheel.eventsTarged);
        }
        target.on('mouseenter', swiper.mousewheel.handleMouseEnter);
        target.on('mouseleave', swiper.mousewheel.handleMouseLeave);
        target.on(Mousewheel.event, swiper.mousewheel.handle);
        swiper.mousewheel.enabled = true;
        return true;
    },
    disable: function disable() {
        var swiper = this;
        if (!Mousewheel.event) return false;
        if (!swiper.mousewheel.enabled) return false;
        var target = swiper.$el;
        if (swiper.params.mousewheel.eventsTarged !== 'container') {
            target = (0, _dom7DistDom7Modular.$)(swiper.params.mousewheel.eventsTarged);
        }
        target.off(Mousewheel.event, swiper.mousewheel.handle);
        swiper.mousewheel.enabled = false;
        return true;
    }
};
var mousewheel = {
    name: 'mousewheel',
    params: {
        mousewheel: {
            enabled: false,
            releaseOnEdges: false,
            invert: false,
            forceToAxis: false,
            sensitivity: 1,
            eventsTarged: 'container'
        }
    },
    create: function create() {
        var swiper = this;
        Utils.extend(swiper, {
            mousewheel: {
                enabled: false,
                enable: Mousewheel.enable.bind(swiper),
                disable: Mousewheel.disable.bind(swiper),
                handle: Mousewheel.handle.bind(swiper),
                handleMouseEnter: Mousewheel.handleMouseEnter.bind(swiper),
                handleMouseLeave: Mousewheel.handleMouseLeave.bind(swiper),
                lastScrollTime: Utils.now()
            }
        });
    },
    on: {
        init: function init() {
            var swiper = this;
            if (swiper.params.mousewheel.enabled) swiper.mousewheel.enable();
        },
        destroy: function destroy() {
            var swiper = this;
            if (swiper.mousewheel.enabled) swiper.mousewheel.disable();
        }
    }
};
var Navigation = {
    update: function update() { // Update
        // Navigation
        // Buttons
        var swiper = this;
        var params = swiper.params.navigation;
        if (swiper.params.loop) return;
        var _swiper$navigation = swiper.navigation;
        var $nextEl = _swiper$navigation.$nextEl;
        var $prevEl = _swiper$navigation.$prevEl;
        if ($prevEl && $prevEl.length > 0) {
            if (swiper.isBeginning) {
                $prevEl.addClass(params.disabledClass);
            } else {
                $prevEl.removeClass(params.disabledClass);
            }
            $prevEl[swiper.params.watchOverflow && swiper.isLocked ? 'addClass' : 'removeClass'](params.lockClass);
        }
        if ($nextEl && $nextEl.length > 0) {
            if (swiper.isEnd) {
                $nextEl.addClass(params.disabledClass);
            } else {
                $nextEl.removeClass(params.disabledClass);
            }
            $nextEl[swiper.params.watchOverflow && swiper.isLocked ? 'addClass' : 'removeClass'](params.lockClass);
        }
    },
    onPrevClick: function onPrevClick(e) {
        var swiper = this;
        e.preventDefault();
        if (swiper.isBeginning && !swiper.params.loop) return;
        swiper.slidePrev();
    },
    onNextClick: function onNextClick(e) {
        var swiper = this;
        e.preventDefault();
        if (swiper.isEnd && !swiper.params.loop) return;
        swiper.slideNext();
    },
    init: function init() {
        var swiper = this;
        var params = swiper.params.navigation;
        if (!(params.nextEl || params.prevEl)) return;
        var $nextEl = undefined;
        var $prevEl = undefined;
        if (params.nextEl) {
            $nextEl = (0, _dom7DistDom7Modular.$)(params.nextEl);
            if (swiper.params.uniqueNavElements && typeof params.nextEl === 'string' && $nextEl.length > 1 && swiper.$el.find(params.nextEl).length === 1) {
                $nextEl = swiper.$el.find(params.nextEl);
            }
        }
        if (params.prevEl) {
            $prevEl = (0, _dom7DistDom7Modular.$)(params.prevEl);
            if (swiper.params.uniqueNavElements && typeof params.prevEl === 'string' && $prevEl.length > 1 && swiper.$el.find(params.prevEl).length === 1) {
                $prevEl = swiper.$el.find(params.prevEl);
            }
        }
        if ($nextEl && $nextEl.length > 0) {
            $nextEl.on('click', swiper.navigation.onNextClick);
        }
        if ($prevEl && $prevEl.length > 0) {
            $prevEl.on('click', swiper.navigation.onPrevClick);
        }
        Utils.extend(swiper.navigation, {
            $nextEl: $nextEl,
            nextEl: $nextEl && $nextEl[0],
            $prevEl: $prevEl,
            prevEl: $prevEl && $prevEl[0]
        });
    },
    destroy: function destroy() {
        var swiper = this;
        var _swiper$navigation2 = swiper.navigation;
        var $nextEl = _swiper$navigation2.$nextEl;
        var $prevEl = _swiper$navigation2.$prevEl;
        if ($nextEl && $nextEl.length) {
            $nextEl.off('click', swiper.navigation.onNextClick);
            $nextEl.removeClass(swiper.params.navigation.disabledClass);
        }
        if ($prevEl && $prevEl.length) {
            $prevEl.off('click', swiper.navigation.onPrevClick);
            $prevEl.removeClass(swiper.params.navigation.disabledClass);
        }
    }
};
var navigation = {
    name: 'navigation',
    params: {
        navigation: {
            nextEl: null,
            prevEl: null,
            hideOnClick: false,
            disabledClass: 'swiper-button-disabled',
            hiddenClass: 'swiper-button-hidden',
            lockClass: 'swiper-button-lock'
        }
    },
    create: function create() {
        var swiper = this;
        Utils.extend(swiper, {
            navigation: {
                init: Navigation.init.bind(swiper),
                update: Navigation.update.bind(swiper),
                destroy: Navigation.destroy.bind(swiper),
                onNextClick: Navigation.onNextClick.bind(swiper),
                onPrevClick: Navigation.onPrevClick.bind(swiper)
            }
        });
    },
    on: {
        init: function init() {
            var swiper = this;
            swiper.navigation.init();
            swiper.navigation.update();
        },
        toEdge: function toEdge() {
            var swiper = this;
            swiper.navigation.update();
        },
        fromEdge: function fromEdge() {
            var swiper = this;
            swiper.navigation.update();
        },
        destroy: function destroy() {
            var swiper = this;
            swiper.navigation.destroy();
        },
        click: function click(e) {
            var swiper = this;
            var _swiper$navigation3 = swiper.navigation;
            var $nextEl = _swiper$navigation3.$nextEl;
            var $prevEl = _swiper$navigation3.$prevEl;
            if (swiper.params.navigation.hideOnClick && !(0, _dom7DistDom7Modular.$)(e.target).is($prevEl) && !(0, _dom7DistDom7Modular.$)(e.target).is($nextEl)) {
                var isHidden = undefined;
                if ($nextEl) {
                    isHidden = $nextEl.hasClass(swiper.params.navigation.hiddenClass);
                } else if ($prevEl) {
                    isHidden = $prevEl.hasClass(swiper.params.navigation.hiddenClass);
                }
                if (isHidden === true) {
                    swiper.emit('navigationShow', swiper);
                } else {
                    swiper.emit('navigationHide', swiper);
                }
                if ($nextEl) {
                    $nextEl.toggleClass(swiper.params.navigation.hiddenClass);
                }
                if ($prevEl) {
                    $prevEl.toggleClass(swiper.params.navigation.hiddenClass);
                }
            }
        }
    }
};
var Pagination = {
    update: function update() { // Render
        // ||
        // Update
        // Pagination
        // bullets/items
        var swiper = this;
        var rtl = swiper.rtl;
        var params = swiper.params.pagination;
        if (!params.el || !swiper.pagination.el || !swiper.pagination.$el || swiper.pagination.$el.length === 0) return;
        var slidesLength = swiper.virtual && swiper.params.virtual.enabled ? swiper.virtual.slides.length : swiper.slides.length;
        var $el = swiper.pagination.$el; // Current/Total
        var current = undefined;
        var total = swiper.params.loop ? Math.ceil((slidesLength - swiper.loopedSlides * 2) / swiper.params.slidesPerGroup) : swiper.snapGrid.length;
        if (swiper.params.loop) {
            current = Math.ceil((swiper.activeIndex - swiper.loopedSlides) / swiper.params.slidesPerGroup);
            if (current > slidesLength - 1 - swiper.loopedSlides * 2) {
                current -= slidesLength - swiper.loopedSlides * 2;
            }
            if (current > total - 1) current -= total;
            if (current < 0 && swiper.params.paginationType !== 'bullets') current = total + current;
        } else if (typeof swiper.snapIndex !== 'undefined') {
            current = swiper.snapIndex;
        } else {
            current = swiper.activeIndex || 0;
        } // Types
        if (params.type === 'bullets' && swiper.pagination.bullets && swiper.pagination.bullets.length > 0) {
            (function() {
                var bullets = swiper.pagination.bullets;
                var firstIndex = undefined;
                var lastIndex = undefined;
                var midIndex = undefined;
                if (params.dynamicBullets) {
                    swiper.pagination.bulletSize = bullets.eq(0)[swiper.isHorizontal() ? 'outerWidth' : 'outerHeight'](true);
                    $el.css(swiper.isHorizontal() ? 'width' : 'height', swiper.pagination.bulletSize * (params.dynamicMainBullets + 4) + 'px');
                    if (params.dynamicMainBullets > 1 && swiper.previousIndex !== undefined) {
                        swiper.pagination.dynamicBulletIndex += current - swiper.previousIndex;
                        if (swiper.pagination.dynamicBulletIndex > params.dynamicMainBullets - 1) {
                            swiper.pagination.dynamicBulletIndex = params.dynamicMainBullets - 1;
                        } else if (swiper.pagination.dynamicBulletIndex < 0) {
                            swiper.pagination.dynamicBulletIndex = 0;
                        }
                    }
                    firstIndex = current - swiper.pagination.dynamicBulletIndex;
                    lastIndex = firstIndex + (Math.min(bullets.length, params.dynamicMainBullets) - 1);
                    midIndex = (lastIndex + firstIndex) / 2;
                }
                bullets.removeClass(params.bulletActiveClass + ' ' + params.bulletActiveClass + '-next ' + params.bulletActiveClass + '-next-next ' + params.bulletActiveClass + '-prev ' + params.bulletActiveClass + '-prev-prev ' + params.bulletActiveClass + '-main');
                if ($el.length > 1) {
                    bullets.each(function(index, bullet) {
                        var $bullet = (0, _dom7DistDom7Modular.$)(bullet);
                        var bulletIndex = $bullet.index();
                        if (bulletIndex === current) {
                            $bullet.addClass(params.bulletActiveClass);
                        }
                        if (params.dynamicBullets) {
                            if (bulletIndex >= firstIndex && bulletIndex <= lastIndex) {
                                $bullet.addClass(params.bulletActiveClass + '-main');
                            }
                            if (bulletIndex === firstIndex) {
                                $bullet.prev().addClass(params.bulletActiveClass + '-prev').prev().addClass(params.bulletActiveClass + '-prev-prev');
                            }
                            if (bulletIndex === lastIndex) {
                                $bullet.next().addClass(params.bulletActiveClass + '-next').next().addClass(params.bulletActiveClass + '-next-next');
                            }
                        }
                    });
                } else {
                    var $bullet = bullets.eq(current);
                    $bullet.addClass(params.bulletActiveClass);
                    if (params.dynamicBullets) {
                        var $firstDisplayedBullet = bullets.eq(firstIndex);
                        var $lastDisplayedBullet = bullets.eq(lastIndex);
                        for (var i = firstIndex; i <= lastIndex; i += 1) {
                            bullets.eq(i).addClass(params.bulletActiveClass + '-main');
                        }
                        $firstDisplayedBullet.prev().addClass(params.bulletActiveClass + '-prev').prev().addClass(params.bulletActiveClass + '-prev-prev');
                        $lastDisplayedBullet.next().addClass(params.bulletActiveClass + '-next').next().addClass(params.bulletActiveClass + '-next-next');
                    }
                }
                if (params.dynamicBullets) {
                    var dynamicBulletsLength = Math.min(bullets.length, params.dynamicMainBullets + 4);
                    var bulletsOffset = (swiper.pagination.bulletSize * dynamicBulletsLength - swiper.pagination.bulletSize) / 2 - midIndex * swiper.pagination.bulletSize;
                    var offsetProp = rtl ? 'right' : 'left';
                    bullets.css(swiper.isHorizontal() ? offsetProp : 'top', bulletsOffset + 'px');
                }
            })();
        }
        if (params.type === 'fraction') {
            $el.find('.' + params.currentClass).text(params.formatFractionCurrent(current + 1));
            $el.find('.' + params.totalClass).text(params.formatFractionTotal(total));
        }
        if (params.type === 'progressbar') {
            var progressbarDirection = undefined;
            if (params.progressbarOpposite) {
                progressbarDirection = swiper.isHorizontal() ? 'vertical' : 'horizontal';
            } else {
                progressbarDirection = swiper.isHorizontal() ? 'horizontal' : 'vertical';
            }
            var scale = (current + 1) / total;
            var scaleX = 1;
            var scaleY = 1;
            if (progressbarDirection === 'horizontal') {
                scaleX = scale;
            } else {
                scaleY = scale;
            }
            $el.find('.' + params.progressbarFillClass).transform('translate3d(0,0,0) scaleX(' + scaleX + ') scaleY(' + scaleY + ')').transition(swiper.params.speed);
        }
        if (params.type === 'custom' && params.renderCustom) {
            $el.html(params.renderCustom(swiper, current + 1, total));
            swiper.emit('paginationRender', swiper, $el[0]);
        } else {
            swiper.emit('paginationUpdate', swiper, $el[0]);
        }
        $el[swiper.params.watchOverflow && swiper.isLocked ? 'addClass' : 'removeClass'](params.lockClass);
    },
    render: function render() { // Render
        // Container
        var swiper = this;
        var params = swiper.params.pagination;
        if (!params.el || !swiper.pagination.el || !swiper.pagination.$el || swiper.pagination.$el.length === 0) return;
        var slidesLength = swiper.virtual && swiper.params.virtual.enabled ? swiper.virtual.slides.length : swiper.slides.length;
        var $el = swiper.pagination.$el;
        var paginationHTML = '';
        if (params.type === 'bullets') {
            var numberOfBullets = swiper.params.loop ? Math.ceil((slidesLength - swiper.loopedSlides * 2) / swiper.params.slidesPerGroup) : swiper.snapGrid.length;
            for (var i = 0; i < numberOfBullets; i += 1) {
                if (params.renderBullet) {
                    paginationHTML += params.renderBullet.call(swiper, i, params.bulletClass);
                } else {
                    paginationHTML += '<' + params.bulletElement + ' class="' + params.bulletClass + '"></' + params.bulletElement + '>';
                }
            }
            $el.html(paginationHTML);
            swiper.pagination.bullets = $el.find('.' + params.bulletClass);
        }
        if (params.type === 'fraction') {
            if (params.renderFraction) {
                paginationHTML = params.renderFraction.call(swiper, params.currentClass, params.totalClass);
            } else {
                paginationHTML = '<span class="' + params.currentClass + '"></span>' + ' / ' + ('<span class="' + params.totalClass + '"></span>');
            }
            $el.html(paginationHTML);
        }
        if (params.type === 'progressbar') {
            if (params.renderProgressbar) {
                paginationHTML = params.renderProgressbar.call(swiper, params.progressbarFillClass);
            } else {
                paginationHTML = '<span class="' + params.progressbarFillClass + '"></span>';
            }
            $el.html(paginationHTML);
        }
        if (params.type !== 'custom') {
            swiper.emit('paginationRender', swiper.pagination.$el[0]);
        }
    },
    init: function init() {
        var swiper = this;
        var params = swiper.params.pagination;
        if (!params.el) return;
        var $el = (0, _dom7DistDom7Modular.$)(params.el);
        if ($el.length === 0) return;
        if (swiper.params.uniqueNavElements && typeof params.el === 'string' && $el.length > 1 && swiper.$el.find(params.el).length === 1) {
            $el = swiper.$el.find(params.el);
        }
        if (params.type === 'bullets' && params.clickable) {
            $el.addClass(params.clickableClass);
        }
        $el.addClass(params.modifierClass + params.type);
        if (params.type === 'bullets' && params.dynamicBullets) {
            $el.addClass('' + params.modifierClass + params.type + '-dynamic');
            swiper.pagination.dynamicBulletIndex = 0;
            if (params.dynamicMainBullets < 1) {
                params.dynamicMainBullets = 1;
            }
        }
        if (params.type === 'progressbar' && params.progressbarOpposite) {
            $el.addClass(params.progressbarOppositeClass);
        }
        if (params.clickable) {
            $el.on('click', '.' + params.bulletClass, function onClick(e) {
                e.preventDefault();
                var index = (0, _dom7DistDom7Modular.$)(this).index() * swiper.params.slidesPerGroup;
                if (swiper.params.loop) index += swiper.loopedSlides;
                swiper.slideTo(index);
            });
        }
        Utils.extend(swiper.pagination, {
            $el: $el,
            el: $el[0]
        });
    },
    destroy: function destroy() {
        var swiper = this;
        var params = swiper.params.pagination;
        if (!params.el || !swiper.pagination.el || !swiper.pagination.$el || swiper.pagination.$el.length === 0) return;
        var $el = swiper.pagination.$el;
        $el.removeClass(params.hiddenClass);
        $el.removeClass(params.modifierClass + params.type);
        if (swiper.pagination.bullets) swiper.pagination.bullets.removeClass(params.bulletActiveClass);
        if (params.clickable) {
            $el.off('click', '.' + params.bulletClass);
        }
    }
};
var pagination = {
    name: 'pagination',
    params: {
        pagination: {
            el: null,
            bulletElement: 'span',
            clickable: false,
            hideOnClick: false,
            renderBullet: null,
            renderProgressbar: null,
            renderFraction: null,
            renderCustom: null,
            progressbarOpposite: false,
            type: 'bullets', // 'bullets'
            // or
            // 'progressbar'
            // or
            // 'fraction'
            // or
            // 'custom'
            dynamicBullets: false,
            dynamicMainBullets: 1,
            formatFractionCurrent: function formatFractionCurrent(number) {
                return number;
            },
            formatFractionTotal: function formatFractionTotal(number) {
                return number;
            },
            bulletClass: 'swiper-pagination-bullet',
            bulletActiveClass: 'swiper-pagination-bullet-active',
            modifierClass: 'swiper-pagination-', // NEW
            currentClass: 'swiper-pagination-current',
            totalClass: 'swiper-pagination-total',
            hiddenClass: 'swiper-pagination-hidden',
            progressbarFillClass: 'swiper-pagination-progressbar-fill',
            progressbarOppositeClass: 'swiper-pagination-progressbar-opposite',
            clickableClass: 'swiper-pagination-clickable', // NEW
            lockClass: 'swiper-pagination-lock'
        }
    },
    create: function create() {
        var swiper = this;
        Utils.extend(swiper, {
            pagination: {
                init: Pagination.init.bind(swiper),
                render: Pagination.render.bind(swiper),
                update: Pagination.update.bind(swiper),
                destroy: Pagination.destroy.bind(swiper),
                dynamicBulletIndex: 0
            }
        });
    },
    on: {
        init: function init() {
            var swiper = this;
            swiper.pagination.init();
            swiper.pagination.render();
            swiper.pagination.update();
        },
        activeIndexChange: function activeIndexChange() {
            var swiper = this;
            if (swiper.params.loop) {
                swiper.pagination.update();
            } else if (typeof swiper.snapIndex === 'undefined') {
                swiper.pagination.update();
            }
        },
        snapIndexChange: function snapIndexChange() {
            var swiper = this;
            if (!swiper.params.loop) {
                swiper.pagination.update();
            }
        },
        slidesLengthChange: function slidesLengthChange() {
            var swiper = this;
            if (swiper.params.loop) {
                swiper.pagination.render();
                swiper.pagination.update();
            }
        },
        snapGridLengthChange: function snapGridLengthChange() {
            var swiper = this;
            if (!swiper.params.loop) {
                swiper.pagination.render();
                swiper.pagination.update();
            }
        },
        destroy: function destroy() {
            var swiper = this;
            swiper.pagination.destroy();
        },
        click: function click(e) {
            var swiper = this;
            if (swiper.params.pagination.el && swiper.params.pagination.hideOnClick && swiper.pagination.$el.length > 0 && !(0, _dom7DistDom7Modular.$)(e.target).hasClass(swiper.params.pagination.bulletClass)) {
                var isHidden = swiper.pagination.$el.hasClass(swiper.params.pagination.hiddenClass);
                if (isHidden === true) {
                    swiper.emit('paginationShow', swiper);
                } else {
                    swiper.emit('paginationHide', swiper);
                }
                swiper.pagination.$el.toggleClass(swiper.params.pagination.hiddenClass);
            }
        }
    }
};
var Scrollbar = {
    setTranslate: function setTranslate() {
        var swiper = this;
        if (!swiper.params.scrollbar.el || !swiper.scrollbar.el) return;
        var scrollbar = swiper.scrollbar;
        var rtl = swiper.rtlTranslate;
        var progress = swiper.progress;
        var dragSize = scrollbar.dragSize;
        var trackSize = scrollbar.trackSize;
        var $dragEl = scrollbar.$dragEl;
        var $el = scrollbar.$el;
        var params = swiper.params.scrollbar;
        var newSize = dragSize;
        var newPos = (trackSize - dragSize) * progress;
        if (rtl) {
            newPos = -newPos;
            if (newPos > 0) {
                newSize = dragSize - newPos;
                newPos = 0;
            } else if (-newPos + dragSize > trackSize) {
                newSize = trackSize + newPos;
            }
        } else if (newPos < 0) {
            newSize = dragSize + newPos;
            newPos = 0;
        } else if (newPos + dragSize > trackSize) {
            newSize = trackSize - newPos;
        }
        if (swiper.isHorizontal()) {
            if (Support.transforms3d) {
                $dragEl.transform('translate3d(' + newPos + 'px, 0, 0)');
            } else {
                $dragEl.transform('translateX(' + newPos + 'px)');
            }
            $dragEl[0].style.width = newSize + 'px';
        } else {
            if (Support.transforms3d) {
                $dragEl.transform('translate3d(0px, ' + newPos + 'px, 0)');
            } else {
                $dragEl.transform('translateY(' + newPos + 'px)');
            }
            $dragEl[0].style.height = newSize + 'px';
        }
        if (params.hide) {
            clearTimeout(swiper.scrollbar.timeout);
            $el[0].style.opacity = 1;
            swiper.scrollbar.timeout = setTimeout(function() {
                $el[0].style.opacity = 0;
                $el.transition(400);
            }, 1000);
        }
    },
    setTransition: function setTransition(duration) {
        var swiper = this;
        if (!swiper.params.scrollbar.el || !swiper.scrollbar.el) return;
        swiper.scrollbar.$dragEl.transition(duration);
    },
    updateSize: function updateSize() {
        var swiper = this;
        if (!swiper.params.scrollbar.el || !swiper.scrollbar.el) return;
        var scrollbar = swiper.scrollbar;
        var $dragEl = scrollbar.$dragEl;
        var $el = scrollbar.$el;
        $dragEl[0].style.width = '';
        $dragEl[0].style.height = '';
        var trackSize = swiper.isHorizontal() ? $el[0].offsetWidth : $el[0].offsetHeight;
        var divider = swiper.size / swiper.virtualSize;
        var moveDivider = divider * (trackSize / swiper.size);
        var dragSize = undefined;
        if (swiper.params.scrollbar.dragSize === 'auto') {
            dragSize = trackSize * divider;
        } else {
            dragSize = parseInt(swiper.params.scrollbar.dragSize, 10);
        }
        if (swiper.isHorizontal()) {
            $dragEl[0].style.width = dragSize + 'px';
        } else {
            $dragEl[0].style.height = dragSize + 'px';
        }
        if (divider >= 1) {
            $el[0].style.display = 'none';
        } else {
            $el[0].style.display = '';
        }
        if (swiper.params.scrollbar.hide) {
            $el[0].style.opacity = 0;
        }
        Utils.extend(scrollbar, {
            trackSize: trackSize,
            divider: divider,
            moveDivider: moveDivider,
            dragSize: dragSize
        });
        scrollbar.$el[swiper.params.watchOverflow && swiper.isLocked ? 'addClass' : 'removeClass'](swiper.params.scrollbar.lockClass);
    },
    getPointerPosition: function getPointerPosition(e) {
        var swiper = this;
        if (swiper.isHorizontal()) {
            return e.type === 'touchstart' || e.type === 'touchmove' ? e.targetTouches[0].pageX : e.pageX || e.clientX;
        }
        return e.type === 'touchstart' || e.type === 'touchmove' ? e.targetTouches[0].pageY : e.pageY || e.clientY;
    },
    setDragPosition: function setDragPosition(e) {
        var swiper = this;
        var scrollbar = swiper.scrollbar;
        var rtl = swiper.rtlTranslate;
        var $el = scrollbar.$el;
        var dragSize = scrollbar.dragSize;
        var trackSize = scrollbar.trackSize;
        var dragStartPos = scrollbar.dragStartPos;
        var positionRatio = undefined;
        positionRatio = (scrollbar.getPointerPosition(e) - $el.offset()[swiper.isHorizontal() ? 'left' : 'top'] - (dragStartPos !== null ? dragStartPos : dragSize / 2)) / (trackSize - dragSize);
        positionRatio = Math.max(Math.min(positionRatio, 1), 0);
        if (rtl) {
            positionRatio = 1 - positionRatio;
        }
        var position = swiper.minTranslate() + (swiper.maxTranslate() - swiper.minTranslate()) * positionRatio;
        swiper.updateProgress(position);
        swiper.setTranslate(position);
        swiper.updateActiveIndex();
        swiper.updateSlidesClasses();
    },
    onDragStart: function onDragStart(e) {
        var swiper = this;
        var params = swiper.params.scrollbar;
        var scrollbar = swiper.scrollbar;
        var $wrapperEl = swiper.$wrapperEl;
        var $el = scrollbar.$el;
        var $dragEl = scrollbar.$dragEl;
        swiper.scrollbar.isTouched = true;
        swiper.scrollbar.dragStartPos = e.target === $dragEl[0] || e.target === $dragEl ? scrollbar.getPointerPosition(e) - e.target.getBoundingClientRect()[swiper.isHorizontal() ? 'left' : 'top'] : null;
        e.preventDefault();
        e.stopPropagation();
        $wrapperEl.transition(100);
        $dragEl.transition(100);
        scrollbar.setDragPosition(e);
        clearTimeout(swiper.scrollbar.dragTimeout);
        $el.transition(0);
        if (params.hide) {
            $el.css('opacity', 1);
        }
        swiper.emit('scrollbarDragStart', e);
    },
    onDragMove: function onDragMove(e) {
        var swiper = this;
        var scrollbar = swiper.scrollbar;
        var $wrapperEl = swiper.$wrapperEl;
        var $el = scrollbar.$el;
        var $dragEl = scrollbar.$dragEl;
        if (!swiper.scrollbar.isTouched) return;
        if (e.preventDefault) e.preventDefault();
        else e.returnValue = false;
        scrollbar.setDragPosition(e);
        $wrapperEl.transition(0);
        $el.transition(0);
        $dragEl.transition(0);
        swiper.emit('scrollbarDragMove', e);
    },
    onDragEnd: function onDragEnd(e) {
        var swiper = this;
        var params = swiper.params.scrollbar;
        var scrollbar = swiper.scrollbar;
        var $el = scrollbar.$el;
        if (!swiper.scrollbar.isTouched) return;
        swiper.scrollbar.isTouched = false;
        if (params.hide) {
            clearTimeout(swiper.scrollbar.dragTimeout);
            swiper.scrollbar.dragTimeout = Utils.nextTick(function() {
                $el.css('opacity', 0);
                $el.transition(400);
            }, 1000);
        }
        swiper.emit('scrollbarDragEnd', e);
        if (params.snapOnRelease) {
            swiper.slideToClosest();
        }
    },
    enableDraggable: function enableDraggable() {
        var swiper = this;
        if (!swiper.params.scrollbar.el) return;
        var scrollbar = swiper.scrollbar;
        var touchEventsTouch = swiper.touchEventsTouch;
        var touchEventsDesktop = swiper.touchEventsDesktop;
        var params = swiper.params;
        var $el = scrollbar.$el;
        var target = $el[0];
        var activeListener = Support.passiveListener && params.passiveListeners ? {
            passive: false,
            capture: false
        } : false;
        var passiveListener = Support.passiveListener && params.passiveListeners ? {
            passive: true,
            capture: false
        } : false;
        if (!Support.touch) {
            target.addEventListener(touchEventsDesktop.start, swiper.scrollbar.onDragStart, activeListener);
            _ssrWindow.document.addEventListener(touchEventsDesktop.move, swiper.scrollbar.onDragMove, activeListener);
            _ssrWindow.document.addEventListener(touchEventsDesktop.end, swiper.scrollbar.onDragEnd, passiveListener);
        } else {
            target.addEventListener(touchEventsTouch.start, swiper.scrollbar.onDragStart, activeListener);
            target.addEventListener(touchEventsTouch.move, swiper.scrollbar.onDragMove, activeListener);
            target.addEventListener(touchEventsTouch.end, swiper.scrollbar.onDragEnd, passiveListener);
        }
    },
    disableDraggable: function disableDraggable() {
        var swiper = this;
        if (!swiper.params.scrollbar.el) return;
        var scrollbar = swiper.scrollbar;
        var touchEventsTouch = swiper.touchEventsTouch;
        var touchEventsDesktop = swiper.touchEventsDesktop;
        var params = swiper.params;
        var $el = scrollbar.$el;
        var target = $el[0];
        var activeListener = Support.passiveListener && params.passiveListeners ? {
            passive: false,
            capture: false
        } : false;
        var passiveListener = Support.passiveListener && params.passiveListeners ? {
            passive: true,
            capture: false
        } : false;
        if (!Support.touch) {
            target.removeEventListener(touchEventsDesktop.start, swiper.scrollbar.onDragStart, activeListener);
            _ssrWindow.document.removeEventListener(touchEventsDesktop.move, swiper.scrollbar.onDragMove, activeListener);
            _ssrWindow.document.removeEventListener(touchEventsDesktop.end, swiper.scrollbar.onDragEnd, passiveListener);
        } else {
            target.removeEventListener(touchEventsTouch.start, swiper.scrollbar.onDragStart, activeListener);
            target.removeEventListener(touchEventsTouch.move, swiper.scrollbar.onDragMove, activeListener);
            target.removeEventListener(touchEventsTouch.end, swiper.scrollbar.onDragEnd, passiveListener);
        }
    },
    init: function init() {
        var swiper = this;
        if (!swiper.params.scrollbar.el) return;
        var scrollbar = swiper.scrollbar;
        var $swiperEl = swiper.$el;
        var params = swiper.params.scrollbar;
        var $el = (0, _dom7DistDom7Modular.$)(params.el);
        if (swiper.params.uniqueNavElements && typeof params.el === 'string' && $el.length > 1 && $swiperEl.find(params.el).length === 1) {
            $el = $swiperEl.find(params.el);
        }
        var $dragEl = $el.find('.' + swiper.params.scrollbar.dragClass);
        if ($dragEl.length === 0) {
            $dragEl = (0, _dom7DistDom7Modular.$)('<div class="' + swiper.params.scrollbar.dragClass + '"></div>');
            $el.append($dragEl);
        }
        Utils.extend(scrollbar, {
            $el: $el,
            el: $el[0],
            $dragEl: $dragEl,
            dragEl: $dragEl[0]
        });
        if (params.draggable) {
            scrollbar.enableDraggable();
        }
    },
    destroy: function destroy() {
        var swiper = this;
        swiper.scrollbar.disableDraggable();
    }
};
var scrollbar = {
    name: 'scrollbar',
    params: {
        scrollbar: {
            el: null,
            dragSize: 'auto',
            hide: false,
            draggable: false,
            snapOnRelease: true,
            lockClass: 'swiper-scrollbar-lock',
            dragClass: 'swiper-scrollbar-drag'
        }
    },
    create: function create() {
        var swiper = this;
        Utils.extend(swiper, {
            scrollbar: {
                init: Scrollbar.init.bind(swiper),
                destroy: Scrollbar.destroy.bind(swiper),
                updateSize: Scrollbar.updateSize.bind(swiper),
                setTranslate: Scrollbar.setTranslate.bind(swiper),
                setTransition: Scrollbar.setTransition.bind(swiper),
                enableDraggable: Scrollbar.enableDraggable.bind(swiper),
                disableDraggable: Scrollbar.disableDraggable.bind(swiper),
                setDragPosition: Scrollbar.setDragPosition.bind(swiper),
                getPointerPosition: Scrollbar.getPointerPosition.bind(swiper),
                onDragStart: Scrollbar.onDragStart.bind(swiper),
                onDragMove: Scrollbar.onDragMove.bind(swiper),
                onDragEnd: Scrollbar.onDragEnd.bind(swiper),
                isTouched: false,
                timeout: null,
                dragTimeout: null
            }
        });
    },
    on: {
        init: function init() {
            var swiper = this;
            swiper.scrollbar.init();
            swiper.scrollbar.updateSize();
            swiper.scrollbar.setTranslate();
        },
        update: function update() {
            var swiper = this;
            swiper.scrollbar.updateSize();
        },
        resize: function resize() {
            var swiper = this;
            swiper.scrollbar.updateSize();
        },
        observerUpdate: function observerUpdate() {
            var swiper = this;
            swiper.scrollbar.updateSize();
        },
        setTranslate: function setTranslate() {
            var swiper = this;
            swiper.scrollbar.setTranslate();
        },
        setTransition: function setTransition(duration) {
            var swiper = this;
            swiper.scrollbar.setTransition(duration);
        },
        destroy: function destroy() {
            var swiper = this;
            swiper.scrollbar.destroy();
        }
    }
};
var Parallax = {
    setTransform: function setTransform(el, progress) {
        var swiper = this;
        var rtl = swiper.rtl;
        var $el = (0, _dom7DistDom7Modular.$)(el);
        var rtlFactor = rtl ? -1 : 1;
        var p = $el.attr('data-swiper-parallax') || '0';
        var x = $el.attr('data-swiper-parallax-x');
        var y = $el.attr('data-swiper-parallax-y');
        var scale = $el.attr('data-swiper-parallax-scale');
        var opacity = $el.attr('data-swiper-parallax-opacity');
        if (x || y) {
            x = x || '0';
            y = y || '0';
        } else if (swiper.isHorizontal()) {
            x = p;
            y = '0';
        } else {
            y = p;
            x = '0';
        }
        if (x.indexOf('%') >= 0) {
            x = parseInt(x, 10) * progress * rtlFactor + '%';
        } else {
            x = x * progress * rtlFactor + 'px';
        }
        if (y.indexOf('%') >= 0) {
            y = parseInt(y, 10) * progress + '%';
        } else {
            y = y * progress + 'px';
        }
        if (typeof opacity !== 'undefined' && opacity !== null) {
            var currentOpacity = opacity - (opacity - 1) * (1 - Math.abs(progress));
            $el[0].style.opacity = currentOpacity;
        }
        if (typeof scale === 'undefined' || scale === null) {
            $el.transform('translate3d(' + x + ', ' + y + ', 0px)');
        } else {
            var currentScale = scale - (scale - 1) * (1 - Math.abs(progress));
            $el.transform('translate3d(' + x + ', ' + y + ', 0px) scale(' + currentScale + ')');
        }
    },
    setTranslate: function setTranslate() {
        var swiper = this;
        var $el = swiper.$el;
        var slides = swiper.slides;
        var progress = swiper.progress;
        var snapGrid = swiper.snapGrid;
        $el.children('[data-swiper-parallax], [data-swiper-parallax-x], [data-swiper-parallax-y], [data-swiper-parallax-opacity], [data-swiper-parallax-scale]').each(function(index, el) {
            swiper.parallax.setTransform(el, progress);
        });
        slides.each(function(slideIndex, slideEl) {
            var slideProgress = slideEl.progress;
            if (swiper.params.slidesPerGroup > 1 && swiper.params.slidesPerView !== 'auto') {
                slideProgress += Math.ceil(slideIndex / 2) - progress * (snapGrid.length - 1);
            }
            slideProgress = Math.min(Math.max(slideProgress, -1), 1);
            (0, _dom7DistDom7Modular.$)(slideEl).find('[data-swiper-parallax], [data-swiper-parallax-x], [data-swiper-parallax-y], [data-swiper-parallax-opacity], [data-swiper-parallax-scale]').each(function(index, el) {
                swiper.parallax.setTransform(el, slideProgress);
            });
        });
    },
    setTransition: function setTransition() {
        var duration = arguments.length <= 0 || arguments[0] === undefined ? this.params.speed : arguments[0];
        var swiper = this;
        var $el = swiper.$el;
        $el.find('[data-swiper-parallax], [data-swiper-parallax-x], [data-swiper-parallax-y], [data-swiper-parallax-opacity], [data-swiper-parallax-scale]').each(function(index, parallaxEl) {
            var $parallaxEl = (0, _dom7DistDom7Modular.$)(parallaxEl);
            var parallaxDuration = parseInt($parallaxEl.attr('data-swiper-parallax-duration'), 10) || duration;
            if (duration === 0) parallaxDuration = 0;
            $parallaxEl.transition(parallaxDuration);
        });
    }
};
var parallax = {
    name: 'parallax',
    params: {
        parallax: {
            enabled: false
        }
    },
    create: function create() {
        var swiper = this;
        Utils.extend(swiper, {
            parallax: {
                setTransform: Parallax.setTransform.bind(swiper),
                setTranslate: Parallax.setTranslate.bind(swiper),
                setTransition: Parallax.setTransition.bind(swiper)
            }
        });
    },
    on: {
        beforeInit: function beforeInit() {
            var swiper = this;
            if (!swiper.params.parallax.enabled) return;
            swiper.params.watchSlidesProgress = true;
            swiper.originalParams.watchSlidesProgress = true;
        },
        init: function init() {
            var swiper = this;
            if (!swiper.params.parallax.enabled) return;
            swiper.parallax.setTranslate();
        },
        setTranslate: function setTranslate() {
            var swiper = this;
            if (!swiper.params.parallax.enabled) return;
            swiper.parallax.setTranslate();
        },
        setTransition: function setTransition(duration) {
            var swiper = this;
            if (!swiper.params.parallax.enabled) return;
            swiper.parallax.setTransition(duration);
        }
    }
};
var Zoom = { // Calc
    // Scale
    // From
    // Multi-touches
    getDistanceBetweenTouches: function getDistanceBetweenTouches(e) {
        if (e.targetTouches.length < 2) return 1;
        var x1 = e.targetTouches[0].pageX;
        var y1 = e.targetTouches[0].pageY;
        var x2 = e.targetTouches[1].pageX;
        var y2 = e.targetTouches[1].pageY;
        var distance = Math.sqrt(Math.pow(x2 - x1, 2) + Math.pow(y2 - y1, 2));
        return distance;
    }, // Events
    onGestureStart: function onGestureStart(e) {
        var swiper = this;
        var params = swiper.params.zoom;
        var zoom = swiper.zoom;
        var gesture = zoom.gesture;
        zoom.fakeGestureTouched = false;
        zoom.fakeGestureMoved = false;
        if (!Support.gestures) {
            if (e.type !== 'touchstart' || e.type === 'touchstart' && e.targetTouches.length < 2) {
                return;
            }
            zoom.fakeGestureTouched = true;
            gesture.scaleStart = Zoom.getDistanceBetweenTouches(e);
        }
        if (!gesture.$slideEl || !gesture.$slideEl.length) {
            gesture.$slideEl = (0, _dom7DistDom7Modular.$)(e.target).closest('.swiper-slide');
            if (gesture.$slideEl.length === 0) gesture.$slideEl = swiper.slides.eq(swiper.activeIndex);
            gesture.$imageEl = gesture.$slideEl.find('img, svg, canvas');
            gesture.$imageWrapEl = gesture.$imageEl.parent('.' + params.containerClass);
            gesture.maxRatio = gesture.$imageWrapEl.attr('data-swiper-zoom') || params.maxRatio;
            if (gesture.$imageWrapEl.length === 0) {
                gesture.$imageEl = undefined;
                return;
            }
        }
        gesture.$imageEl.transition(0);
        swiper.zoom.isScaling = true;
    },
    onGestureChange: function onGestureChange(e) {
        var swiper = this;
        var params = swiper.params.zoom;
        var zoom = swiper.zoom;
        var gesture = zoom.gesture;
        if (!Support.gestures) {
            if (e.type !== 'touchmove' || e.type === 'touchmove' && e.targetTouches.length < 2) {
                return;
            }
            zoom.fakeGestureMoved = true;
            gesture.scaleMove = Zoom.getDistanceBetweenTouches(e);
        }
        if (!gesture.$imageEl || gesture.$imageEl.length === 0) return;
        if (Support.gestures) {
            zoom.scale = e.scale * zoom.currentScale;
        } else {
            zoom.scale = gesture.scaleMove / gesture.scaleStart * zoom.currentScale;
        }
        if (zoom.scale > gesture.maxRatio) {
            zoom.scale = gesture.maxRatio - 1 + Math.pow(zoom.scale - gesture.maxRatio + 1, 0.5);
        }
        if (zoom.scale < params.minRatio) {
            zoom.scale = params.minRatio + 1 - Math.pow(params.minRatio - zoom.scale + 1, 0.5);
        }
        gesture.$imageEl.transform('translate3d(0,0,0) scale(' + zoom.scale + ')');
    },
    onGestureEnd: function onGestureEnd(e) {
        var swiper = this;
        var params = swiper.params.zoom;
        var zoom = swiper.zoom;
        var gesture = zoom.gesture;
        if (!Support.gestures) {
            if (!zoom.fakeGestureTouched || !zoom.fakeGestureMoved) {
                return;
            }
            if (e.type !== 'touchend' || e.type === 'touchend' && e.changedTouches.length < 2 && !Device.android) {
                return;
            }
            zoom.fakeGestureTouched = false;
            zoom.fakeGestureMoved = false;
        }
        if (!gesture.$imageEl || gesture.$imageEl.length === 0) return;
        zoom.scale = Math.max(Math.min(zoom.scale, gesture.maxRatio), params.minRatio);
        gesture.$imageEl.transition(swiper.params.speed).transform('translate3d(0,0,0) scale(' + zoom.scale + ')');
        zoom.currentScale = zoom.scale;
        zoom.isScaling = false;
        if (zoom.scale === 1) gesture.$slideEl = undefined;
    },
    onTouchStart: function onTouchStart(e) {
        var swiper = this;
        var zoom = swiper.zoom;
        var gesture = zoom.gesture;
        var image = zoom.image;
        if (!gesture.$imageEl || gesture.$imageEl.length === 0) return;
        if (image.isTouched) return;
        if (Device.android) e.preventDefault();
        image.isTouched = true;
        image.touchesStart.x = e.type === 'touchstart' ? e.targetTouches[0].pageX : e.pageX;
        image.touchesStart.y = e.type === 'touchstart' ? e.targetTouches[0].pageY : e.pageY;
    },
    onTouchMove: function onTouchMove(e) {
        var swiper = this;
        var zoom = swiper.zoom;
        var gesture = zoom.gesture;
        var image = zoom.image;
        var velocity = zoom.velocity;
        if (!gesture.$imageEl || gesture.$imageEl.length === 0) return;
        swiper.allowClick = false;
        if (!image.isTouched || !gesture.$slideEl) return;
        if (!image.isMoved) {
            image.width = gesture.$imageEl[0].offsetWidth;
            image.height = gesture.$imageEl[0].offsetHeight;
            image.startX = Utils.getTranslate(gesture.$imageWrapEl[0], 'x') || 0;
            image.startY = Utils.getTranslate(gesture.$imageWrapEl[0], 'y') || 0;
            gesture.slideWidth = gesture.$slideEl[0].offsetWidth;
            gesture.slideHeight = gesture.$slideEl[0].offsetHeight;
            gesture.$imageWrapEl.transition(0);
            if (swiper.rtl) {
                image.startX = -image.startX;
                image.startY = -image.startY;
            }
        } // Define
        // if
        // we
        // need
        // image
        // drag
        var scaledWidth = image.width * zoom.scale;
        var scaledHeight = image.height * zoom.scale;
        if (scaledWidth < gesture.slideWidth && scaledHeight < gesture.slideHeight) return;
        image.minX = Math.min(gesture.slideWidth / 2 - scaledWidth / 2, 0);
        image.maxX = -image.minX;
        image.minY = Math.min(gesture.slideHeight / 2 - scaledHeight / 2, 0);
        image.maxY = -image.minY;
        image.touchesCurrent.x = e.type === 'touchmove' ? e.targetTouches[0].pageX : e.pageX;
        image.touchesCurrent.y = e.type === 'touchmove' ? e.targetTouches[0].pageY : e.pageY;
        if (!image.isMoved && !zoom.isScaling) {
            if (swiper.isHorizontal() && (Math.floor(image.minX) === Math.floor(image.startX) && image.touchesCurrent.x < image.touchesStart.x || Math.floor(image.maxX) === Math.floor(image.startX) && image.touchesCurrent.x > image.touchesStart.x)) {
                image.isTouched = false;
                return;
            }
            if (!swiper.isHorizontal() && (Math.floor(image.minY) === Math.floor(image.startY) && image.touchesCurrent.y < image.touchesStart.y || Math.floor(image.maxY) === Math.floor(image.startY) && image.touchesCurrent.y > image.touchesStart.y)) {
                image.isTouched = false;
                return;
            }
        }
        e.preventDefault();
        e.stopPropagation();
        image.isMoved = true;
        image.currentX = image.touchesCurrent.x - image.touchesStart.x + image.startX;
        image.currentY = image.touchesCurrent.y - image.touchesStart.y + image.startY;
        if (image.currentX < image.minX) {
            image.currentX = image.minX + 1 - Math.pow(image.minX - image.currentX + 1, 0.8);
        }
        if (image.currentX > image.maxX) {
            image.currentX = image.maxX - 1 + Math.pow(image.currentX - image.maxX + 1, 0.8);
        }
        if (image.currentY < image.minY) {
            image.currentY = image.minY + 1 - Math.pow(image.minY - image.currentY + 1, 0.8);
        }
        if (image.currentY > image.maxY) {
            image.currentY = image.maxY - 1 + Math.pow(image.currentY - image.maxY + 1, 0.8);
        } // Velocity
        if (!velocity.prevPositionX) velocity.prevPositionX = image.touchesCurrent.x;
        if (!velocity.prevPositionY) velocity.prevPositionY = image.touchesCurrent.y;
        if (!velocity.prevTime) velocity.prevTime = Date.now();
        velocity.x = (image.touchesCurrent.x - velocity.prevPositionX) / (Date.now() - velocity.prevTime) / 2;
        velocity.y = (image.touchesCurrent.y - velocity.prevPositionY) / (Date.now() - velocity.prevTime) / 2;
        if (Math.abs(image.touchesCurrent.x - velocity.prevPositionX) < 2) velocity.x = 0;
        if (Math.abs(image.touchesCurrent.y - velocity.prevPositionY) < 2) velocity.y = 0;
        velocity.prevPositionX = image.touchesCurrent.x;
        velocity.prevPositionY = image.touchesCurrent.y;
        velocity.prevTime = Date.now();
        gesture.$imageWrapEl.transform('translate3d(' + image.currentX + 'px, ' + image.currentY + 'px,0)');
    },
    onTouchEnd: function onTouchEnd() {
        var swiper = this;
        var zoom = swiper.zoom;
        var gesture = zoom.gesture;
        var image = zoom.image;
        var velocity = zoom.velocity;
        if (!gesture.$imageEl || gesture.$imageEl.length === 0) return;
        if (!image.isTouched || !image.isMoved) {
            image.isTouched = false;
            image.isMoved = false;
            return;
        }
        image.isTouched = false;
        image.isMoved = false;
        var momentumDurationX = 300;
        var momentumDurationY = 300;
        var momentumDistanceX = velocity.x * momentumDurationX;
        var newPositionX = image.currentX + momentumDistanceX;
        var momentumDistanceY = velocity.y * momentumDurationY;
        var newPositionY = image.currentY + momentumDistanceY; // Fix
        // duration
        if (velocity.x !== 0) momentumDurationX = Math.abs((newPositionX - image.currentX) / velocity.x);
        if (velocity.y !== 0) momentumDurationY = Math.abs((newPositionY - image.currentY) / velocity.y);
        var momentumDuration = Math.max(momentumDurationX, momentumDurationY);
        image.currentX = newPositionX;
        image.currentY = newPositionY; // Define
        // if
        // we
        // need
        // image
        // drag
        var scaledWidth = image.width * zoom.scale;
        var scaledHeight = image.height * zoom.scale;
        image.minX = Math.min(gesture.slideWidth / 2 - scaledWidth / 2, 0);
        image.maxX = -image.minX;
        image.minY = Math.min(gesture.slideHeight / 2 - scaledHeight / 2, 0);
        image.maxY = -image.minY;
        image.currentX = Math.max(Math.min(image.currentX, image.maxX), image.minX);
        image.currentY = Math.max(Math.min(image.currentY, image.maxY), image.minY);
        gesture.$imageWrapEl.transition(momentumDuration).transform('translate3d(' + image.currentX + 'px, ' + image.currentY + 'px,0)');
    },
    onTransitionEnd: function onTransitionEnd() {
        var swiper = this;
        var zoom = swiper.zoom;
        var gesture = zoom.gesture;
        if (gesture.$slideEl && swiper.previousIndex !== swiper.activeIndex) {
            gesture.$imageEl.transform('translate3d(0,0,0) scale(1)');
            gesture.$imageWrapEl.transform('translate3d(0,0,0)');
            zoom.scale = 1;
            zoom.currentScale = 1;
            gesture.$slideEl = undefined;
            gesture.$imageEl = undefined;
            gesture.$imageWrapEl = undefined;
        }
    }, // Toggle
    // Zoom
    toggle: function toggle(e) {
        var swiper = this;
        var zoom = swiper.zoom;
        if (zoom.scale && zoom.scale !== 1) { // Zoom
            // Out
            zoom.out();
        } else { // Zoom In
            zoom['in'](e);
        }
    },
    'in': function _in(e) {
        var swiper = this;
        var zoom = swiper.zoom;
        var params = swiper.params.zoom;
        var gesture = zoom.gesture;
        var image = zoom.image;
        if (!gesture.$slideEl) {
            gesture.$slideEl = swiper.clickedSlide ? (0, _dom7DistDom7Modular.$)(swiper.clickedSlide) : swiper.slides.eq(swiper.activeIndex);
            gesture.$imageEl = gesture.$slideEl.find('img, svg, canvas');
            gesture.$imageWrapEl = gesture.$imageEl.parent('.' + params.containerClass);
        }
        if (!gesture.$imageEl || gesture.$imageEl.length === 0) return;
        gesture.$slideEl.addClass('' + params.zoomedSlideClass);
        var touchX = undefined;
        var touchY = undefined;
        var offsetX = undefined;
        var offsetY = undefined;
        var diffX = undefined;
        var diffY = undefined;
        var translateX = undefined;
        var translateY = undefined;
        var imageWidth = undefined;
        var imageHeight = undefined;
        var scaledWidth = undefined;
        var scaledHeight = undefined;
        var translateMinX = undefined;
        var translateMinY = undefined;
        var translateMaxX = undefined;
        var translateMaxY = undefined;
        var slideWidth = undefined;
        var slideHeight = undefined;
        if (typeof image.touchesStart.x === 'undefined' && e) {
            touchX = e.type === 'touchend' ? e.changedTouches[0].pageX : e.pageX;
            touchY = e.type === 'touchend' ? e.changedTouches[0].pageY : e.pageY;
        } else {
            touchX = image.touchesStart.x;
            touchY = image.touchesStart.y;
        }
        zoom.scale = gesture.$imageWrapEl.attr('data-swiper-zoom') || params.maxRatio;
        zoom.currentScale = gesture.$imageWrapEl.attr('data-swiper-zoom') || params.maxRatio;
        if (e) {
            slideWidth = gesture.$slideEl[0].offsetWidth;
            slideHeight = gesture.$slideEl[0].offsetHeight;
            offsetX = gesture.$slideEl.offset().left;
            offsetY = gesture.$slideEl.offset().top;
            diffX = offsetX + slideWidth / 2 - touchX;
            diffY = offsetY + slideHeight / 2 - touchY;
            imageWidth = gesture.$imageEl[0].offsetWidth;
            imageHeight = gesture.$imageEl[0].offsetHeight;
            scaledWidth = imageWidth * zoom.scale;
            scaledHeight = imageHeight * zoom.scale;
            translateMinX = Math.min(slideWidth / 2 - scaledWidth / 2, 0);
            translateMinY = Math.min(slideHeight / 2 - scaledHeight / 2, 0);
            translateMaxX = -translateMinX;
            translateMaxY = -translateMinY;
            translateX = diffX * zoom.scale;
            translateY = diffY * zoom.scale;
            if (translateX < translateMinX) {
                translateX = translateMinX;
            }
            if (translateX > translateMaxX) {
                translateX = translateMaxX;
            }
            if (translateY < translateMinY) {
                translateY = translateMinY;
            }
            if (translateY > translateMaxY) {
                translateY = translateMaxY;
            }
        } else {
            translateX = 0;
            translateY = 0;
        }
        gesture.$imageWrapEl.transition(300).transform('translate3d(' + translateX + 'px, ' + translateY + 'px,0)');
        gesture.$imageEl.transition(300).transform('translate3d(0,0,0) scale(' + zoom.scale + ')');
    },
    out: function out() {
        var swiper = this;
        var zoom = swiper.zoom;
        var params = swiper.params.zoom;
        var gesture = zoom.gesture;
        if (!gesture.$slideEl) {
            gesture.$slideEl = swiper.clickedSlide ? (0, _dom7DistDom7Modular.$)(swiper.clickedSlide) : swiper.slides.eq(swiper.activeIndex);
            gesture.$imageEl = gesture.$slideEl.find('img, svg, canvas');
            gesture.$imageWrapEl = gesture.$imageEl.parent('.' + params.containerClass);
        }
        if (!gesture.$imageEl || gesture.$imageEl.length === 0) return;
        zoom.scale = 1;
        zoom.currentScale = 1;
        gesture.$imageWrapEl.transition(300).transform('translate3d(0,0,0)');
        gesture.$imageEl.transition(300).transform('translate3d(0,0,0) scale(1)');
        gesture.$slideEl.removeClass('' + params.zoomedSlideClass);
        gesture.$slideEl = undefined;
    }, // Attach/Detach
    // Events
    enable: function enable() {
        var swiper = this;
        var zoom = swiper.zoom;
        if (zoom.enabled) return;
        zoom.enabled = true;
        var passiveListener = swiper.touchEvents.start === 'touchstart' && Support.passiveListener && swiper.params.passiveListeners ? {
            passive: true,
            capture: false
        } : false; // Scale
        // image
        if (Support.gestures) {
            swiper.$wrapperEl.on('gesturestart', '.swiper-slide', zoom.onGestureStart, passiveListener);
            swiper.$wrapperEl.on('gesturechange', '.swiper-slide', zoom.onGestureChange, passiveListener);
            swiper.$wrapperEl.on('gestureend', '.swiper-slide', zoom.onGestureEnd, passiveListener);
        } else if (swiper.touchEvents.start === 'touchstart') {
            swiper.$wrapperEl.on(swiper.touchEvents.start, '.swiper-slide', zoom.onGestureStart, passiveListener);
            swiper.$wrapperEl.on(swiper.touchEvents.move, '.swiper-slide', zoom.onGestureChange, passiveListener);
            swiper.$wrapperEl.on(swiper.touchEvents.end, '.swiper-slide', zoom.onGestureEnd, passiveListener);
        } // Move
        // image
        swiper.$wrapperEl.on(swiper.touchEvents.move, '.' + swiper.params.zoom.containerClass, zoom.onTouchMove);
    },
    disable: function disable() {
        var swiper = this;
        var zoom = swiper.zoom;
        if (!zoom.enabled) return;
        swiper.zoom.enabled = false;
        var passiveListener = swiper.touchEvents.start === 'touchstart' && Support.passiveListener && swiper.params.passiveListeners ? {
            passive: true,
            capture: false
        } : false; // Scale
        // image
        if (Support.gestures) {
            swiper.$wrapperEl.off('gesturestart', '.swiper-slide', zoom.onGestureStart, passiveListener);
            swiper.$wrapperEl.off('gesturechange', '.swiper-slide', zoom.onGestureChange, passiveListener);
            swiper.$wrapperEl.off('gestureend', '.swiper-slide', zoom.onGestureEnd, passiveListener);
        } else if (swiper.touchEvents.start === 'touchstart') {
            swiper.$wrapperEl.off(swiper.touchEvents.start, '.swiper-slide', zoom.onGestureStart, passiveListener);
            swiper.$wrapperEl.off(swiper.touchEvents.move, '.swiper-slide', zoom.onGestureChange, passiveListener);
            swiper.$wrapperEl.off(swiper.touchEvents.end, '.swiper-slide', zoom.onGestureEnd, passiveListener);
        } // Move
        // image
        swiper.$wrapperEl.off(swiper.touchEvents.move, '.' + swiper.params.zoom.containerClass, zoom.onTouchMove);
    }
};
var zoom = {
    name: 'zoom',
    params: {
        zoom: {
            enabled: false,
            maxRatio: 3,
            minRatio: 1,
            toggle: true,
            containerClass: 'swiper-zoom-container',
            zoomedSlideClass: 'swiper-slide-zoomed'
        }
    },
    create: function create() {
        var swiper = this;
        var zoom = {
            enabled: false,
            scale: 1,
            currentScale: 1,
            isScaling: false,
            gesture: {
                $slideEl: undefined,
                slideWidth: undefined,
                slideHeight: undefined,
                $imageEl: undefined,
                $imageWrapEl: undefined,
                maxRatio: 3
            },
            image: {
                isTouched: undefined,
                isMoved: undefined,
                currentX: undefined,
                currentY: undefined,
                minX: undefined,
                minY: undefined,
                maxX: undefined,
                maxY: undefined,
                width: undefined,
                height: undefined,
                startX: undefined,
                startY: undefined,
                touchesStart: {},
                touchesCurrent: {}
            },
            velocity: {
                x: undefined,
                y: undefined,
                prevPositionX: undefined,
                prevPositionY: undefined,
                prevTime: undefined
            }
        };
        'onGestureStart onGestureChange onGestureEnd onTouchStart onTouchMove onTouchEnd onTransitionEnd toggle enable disable in out'.split(' ').forEach(function(methodName) {
            zoom[methodName] = Zoom[methodName].bind(swiper);
        });
        Utils.extend(swiper, {
            zoom: zoom
        });
        var scale = 1;
        Object.defineProperty(swiper.zoom, 'scale', {
            get: function get() {
                return scale;
            },
            set: function set(value) {
                if (scale !== value) {
                    var imageEl = swiper.zoom.gesture.$imageEl ? swiper.zoom.gesture.$imageEl[0] : undefined;
                    var slideEl = swiper.zoom.gesture.$slideEl ? swiper.zoom.gesture.$slideEl[0] : undefined;
                    swiper.emit('zoomChange', value, imageEl, slideEl);
                }
                scale = value;
            }
        });
    },
    on: {
        init: function init() {
            var swiper = this;
            if (swiper.params.zoom.enabled) {
                swiper.zoom.enable();
            }
        },
        destroy: function destroy() {
            var swiper = this;
            swiper.zoom.disable();
        },
        touchStart: function touchStart(e) {
            var swiper = this;
            if (!swiper.zoom.enabled) return;
            swiper.zoom.onTouchStart(e);
        },
        touchEnd: function touchEnd(e) {
            var swiper = this;
            if (!swiper.zoom.enabled) return;
            swiper.zoom.onTouchEnd(e);
        },
        doubleTap: function doubleTap(e) {
            var swiper = this;
            if (swiper.params.zoom.enabled && swiper.zoom.enabled && swiper.params.zoom.toggle) {
                swiper.zoom.toggle(e);
            }
        },
        transitionEnd: function transitionEnd() {
            var swiper = this;
            if (swiper.zoom.enabled && swiper.params.zoom.enabled) {
                swiper.zoom.onTransitionEnd();
            }
        }
    }
};
var Lazy = {
    loadInSlide: function loadInSlide(index) {
        var loadInDuplicate = arguments.length <= 1 || arguments[1] === undefined ? true : arguments[1];
        var swiper = this;
        var params = swiper.params.lazy;
        if (typeof index === 'undefined') return;
        if (swiper.slides.length === 0) return;
        var isVirtual = swiper.virtual && swiper.params.virtual.enabled;
        var $slideEl = isVirtual ? swiper.$wrapperEl.children('.' + swiper.params.slideClass + '[data-swiper-slide-index="' + index + '"]') : swiper.slides.eq(index);
        var $images = $slideEl.find('.' + params.elementClass + ':not(.' + params.loadedClass + '):not(.' + params.loadingClass + ')');
        if ($slideEl.hasClass(params.elementClass) && !$slideEl.hasClass(params.loadedClass) && !$slideEl.hasClass(params.loadingClass)) {
            $images = $images.add($slideEl[0]);
        }
        if ($images.length === 0) return;
        $images.each(function(imageIndex, imageEl) {
            var $imageEl = (0, _dom7DistDom7Modular.$)(imageEl);
            $imageEl.addClass(params.loadingClass);
            var background = $imageEl.attr('data-background');
            var src = $imageEl.attr('data-src');
            var srcset = $imageEl.attr('data-srcset');
            var sizes = $imageEl.attr('data-sizes');
            swiper.loadImage($imageEl[0], src || background, srcset, sizes, false, function() {
                if (typeof swiper === 'undefined' || swiper === null || !swiper || swiper && !swiper.params || swiper.destroyed) return;
                if (background) {
                    $imageEl.css('background-image', 'url("' + background + '")');
                    $imageEl.removeAttr('data-background');
                } else {
                    if (srcset) {
                        $imageEl.attr('srcset', srcset);
                        $imageEl.removeAttr('data-srcset');
                    }
                    if (sizes) {
                        $imageEl.attr('sizes', sizes);
                        $imageEl.removeAttr('data-sizes');
                    }
                    if (src) {
                        $imageEl.attr('src', src);
                        $imageEl.removeAttr('data-src');
                    }
                }
                $imageEl.addClass(params.loadedClass).removeClass(params.loadingClass);
                $slideEl.find('.' + params.preloaderClass).remove();
                if (swiper.params.loop && loadInDuplicate) {
                    var slideOriginalIndex = $slideEl.attr('data-swiper-slide-index');
                    if ($slideEl.hasClass(swiper.params.slideDuplicateClass)) {
                        var originalSlide = swiper.$wrapperEl.children('[data-swiper-slide-index="' + slideOriginalIndex + '"]:not(.' + swiper.params.slideDuplicateClass + ')');
                        swiper.lazy.loadInSlide(originalSlide.index(), false);
                    } else {
                        var duplicatedSlide = swiper.$wrapperEl.children('.' + swiper.params.slideDuplicateClass + '[data-swiper-slide-index="' + slideOriginalIndex + '"]');
                        swiper.lazy.loadInSlide(duplicatedSlide.index(), false);
                    }
                }
                swiper.emit('lazyImageReady', $slideEl[0], $imageEl[0]);
            });
            swiper.emit('lazyImageLoad', $slideEl[0], $imageEl[0]);
        });
    },
    load: function load() {
        var swiper = this;
        var $wrapperEl = swiper.$wrapperEl;
        var swiperParams = swiper.params;
        var slides = swiper.slides;
        var activeIndex = swiper.activeIndex;
        var isVirtual = swiper.virtual && swiperParams.virtual.enabled;
        var params = swiperParams.lazy;
        var slidesPerView = swiperParams.slidesPerView;
        if (slidesPerView === 'auto') {
            slidesPerView = 0;
        }

        function slideExist(index) {
            if (isVirtual) {
                if ($wrapperEl.children('.' + swiperParams.slideClass + '[data-swiper-slide-index="' + index + '"]').length) {
                    return true;
                }
            } else if (slides[index]) return true;
            return false;
        }

        function slideIndex(slideEl) {
            if (isVirtual) {
                return (0, _dom7DistDom7Modular.$)(slideEl).attr('data-swiper-slide-index');
            }
            return (0, _dom7DistDom7Modular.$)(slideEl).index();
        }
        if (!swiper.lazy.initialImageLoaded) swiper.lazy.initialImageLoaded = true;
        if (swiper.params.watchSlidesVisibility) {
            $wrapperEl.children('.' + swiperParams.slideVisibleClass).each(function(elIndex, slideEl) {
                var index = isVirtual ? (0, _dom7DistDom7Modular.$)(slideEl).attr('data-swiper-slide-index') : (0, _dom7DistDom7Modular.$)(slideEl).index();
                swiper.lazy.loadInSlide(index);
            });
        } else if (slidesPerView > 1) {
            for (var i = activeIndex; i < activeIndex + slidesPerView; i += 1) {
                if (slideExist(i)) swiper.lazy.loadInSlide(i);
            }
        } else {
            swiper.lazy.loadInSlide(activeIndex);
        }
        if (params.loadPrevNext) {
            if (slidesPerView > 1 || params.loadPrevNextAmount && params.loadPrevNextAmount > 1) {
                var amount = params.loadPrevNextAmount;
                var spv = slidesPerView;
                var maxIndex = Math.min(activeIndex + spv + Math.max(amount, spv), slides.length);
                var minIndex = Math.max(activeIndex - Math.max(spv, amount), 0); // Next
                // Slides
                for (var i = activeIndex + slidesPerView; i < maxIndex; i += 1) {
                    if (slideExist(i)) swiper.lazy.loadInSlide(i);
                } // Prev
                // Slides
                for (var i = minIndex; i < activeIndex; i += 1) {
                    if (slideExist(i)) swiper.lazy.loadInSlide(i);
                }
            } else {
                var nextSlide = $wrapperEl.children('.' + swiperParams.slideNextClass);
                if (nextSlide.length > 0) swiper.lazy.loadInSlide(slideIndex(nextSlide));
                var prevSlide = $wrapperEl.children('.' + swiperParams.slidePrevClass);
                if (prevSlide.length > 0) swiper.lazy.loadInSlide(slideIndex(prevSlide));
            }
        }
    }
};
var lazy = {
    name: 'lazy',
    params: {
        lazy: {
            enabled: false,
            loadPrevNext: false,
            loadPrevNextAmount: 1,
            loadOnTransitionStart: false,
            elementClass: 'swiper-lazy',
            loadingClass: 'swiper-lazy-loading',
            loadedClass: 'swiper-lazy-loaded',
            preloaderClass: 'swiper-lazy-preloader'
        }
    },
    create: function create() {
        var swiper = this;
        Utils.extend(swiper, {
            lazy: {
                initialImageLoaded: false,
                load: Lazy.load.bind(swiper),
                loadInSlide: Lazy.loadInSlide.bind(swiper)
            }
        });
    },
    on: {
        beforeInit: function beforeInit() {
            var swiper = this;
            if (swiper.params.lazy.enabled && swiper.params.preloadImages) {
                swiper.params.preloadImages = false;
            }
        },
        init: function init() {
            var swiper = this;
            if (swiper.params.lazy.enabled && !swiper.params.loop && swiper.params.initialSlide === 0) {
                swiper.lazy.load();
            }
        },
        scroll: function scroll() {
            var swiper = this;
            if (swiper.params.freeMode && !swiper.params.freeModeSticky) {
                swiper.lazy.load();
            }
        },
        resize: function resize() {
            var swiper = this;
            if (swiper.params.lazy.enabled) {
                swiper.lazy.load();
            }
        },
        scrollbarDragMove: function scrollbarDragMove() {
            var swiper = this;
            if (swiper.params.lazy.enabled) {
                swiper.lazy.load();
            }
        },
        transitionStart: function transitionStart() {
            var swiper = this;
            if (swiper.params.lazy.enabled) {
                if (swiper.params.lazy.loadOnTransitionStart || !swiper.params.lazy.loadOnTransitionStart && !swiper.lazy.initialImageLoaded) {
                    swiper.lazy.load();
                }
            }
        },
        transitionEnd: function transitionEnd() {
            var swiper = this;
            if (swiper.params.lazy.enabled && !swiper.params.lazy.loadOnTransitionStart) {
                swiper.lazy.load();
            }
        }
    }
};
/*
 * eslint
 * no-bitwise:
 * ["error", {
 * "allow":
 * [">>"] }]
 */
var Controller = {
    LinearSpline: function LinearSpline(x, y) {
        var binarySearch = (function search() {
            var maxIndex = undefined;
            var minIndex = undefined;
            var guess = undefined;
            return function(array, val) {
                minIndex = -1;
                maxIndex = array.length;
                while (maxIndex - minIndex > 1) {
                    guess = maxIndex + minIndex >> 1;
                    if (array[guess] <= val) {
                        minIndex = guess;
                    } else {
                        maxIndex = guess;
                    }
                }
                return maxIndex;
            };
        })();
        this.x = x;
        this.y = y;
        this.lastIndex = x.length - 1; // Given
        // an x
        // value
        // (x2),
        // return
        // the
        // expected
        // y2
        // value:
        // (x1,y1) is the known point before given value,
        // (x3,y3) is the known point after given value.
        var i1 = undefined;
        var i3 = undefined;
        this.interpolate = function interpolate(x2) {
            if (!x2) return 0; // Get
            // the
            // indexes
            // of
            // x1
            // and
            // x3
            // (the
            // array
            // indexes
            // before
            // and
            // after
            // given
            // x2):
            i3 = binarySearch(this.x, x2);
            i1 = i3 - 1; // We have our indexes i1 & i3, so
            // we can calculate already:
            // y2 := ((x2−x1) × (y3−y1)) ÷ (x3−x1) + y1
            return (x2 - this.x[i1]) * (this.y[i3] - this.y[i1]) / (this.x[i3] - this.x[i1]) + this.y[i1];
        };
        return this;
    }, // xxx:
    // for
    // now
    // i
    // will
    // just
    // save
    // one
    // spline
    // function
    // to
    // to
    getInterpolateFunction: function getInterpolateFunction(c) {
        var swiper = this;
        if (!swiper.controller.spline) {
            swiper.controller.spline = swiper.params.loop ? new Controller.LinearSpline(swiper.slidesGrid, c.slidesGrid) : new Controller.LinearSpline(swiper.snapGrid, c.snapGrid);
        }
    },
    setTranslate: function setTranslate(_setTranslate, byController) {
        var swiper = this;
        var controlled = swiper.controller.control;
        var multiplier = undefined;
        var controlledTranslate = undefined;

        function setControlledTranslate(c) { // this
            // will
            // create
            // an
            // Interpolate
            // function
            // based
            // on
            // the
            // snapGrids
            // x is the Grid of the scrolled scroller and y will be the controlled scroller
            // it makes sense to create this only once and recall it for the interpolation
            // the function does a lot of value caching for performance
            var translate = swiper.rtlTranslate ? -swiper.translate : swiper.translate;
            if (swiper.params.controller.by === 'slide') {
                swiper.controller.getInterpolateFunction(c); // i am
                // not
                // sure
                // why
                // the
                // values
                // have
                // to
                // be
                // multiplicated
                // this
                // way,
                // tried
                // to
                // invert
                // the
                // snapGrid
                // but it did not work out
                controlledTranslate = -swiper.controller.spline.interpolate(-translate);
            }
            if (!controlledTranslate || swiper.params.controller.by === 'container') {
                multiplier = (c.maxTranslate() - c.minTranslate()) / (swiper.maxTranslate() - swiper.minTranslate());
                controlledTranslate = (translate - swiper.minTranslate()) * multiplier + c.minTranslate();
            }
            if (swiper.params.controller.inverse) {
                controlledTranslate = c.maxTranslate() - controlledTranslate;
            }
            c.updateProgress(controlledTranslate);
            c.setTranslate(controlledTranslate, swiper);
            c.updateActiveIndex();
            c.updateSlidesClasses();
        }
        if (Array.isArray(controlled)) {
            for (var i = 0; i < controlled.length; i += 1) {
                if (controlled[i] !== byController && controlled[i] instanceof Swiper) {
                    setControlledTranslate(controlled[i]);
                }
            }
        } else if (controlled instanceof Swiper && byController !== controlled) {
            setControlledTranslate(controlled);
        }
    },
    setTransition: function setTransition(duration, byController) {
        var swiper = this;
        var controlled = swiper.controller.control;
        var i = undefined;

        function setControlledTransition(c) {
            c.setTransition(duration, swiper);
            if (duration !== 0) {
                c.transitionStart();
                if (c.params.autoHeight) {
                    Utils.nextTick(function() {
                        c.updateAutoHeight();
                    });
                }
                c.$wrapperEl.transitionEnd(function() {
                    if (!controlled) return;
                    if (c.params.loop && swiper.params.controller.by === 'slide') {
                        c.loopFix();
                    }
                    c.transitionEnd();
                });
            }
        }
        if (Array.isArray(controlled)) {
            for (i = 0; i < controlled.length; i += 1) {
                if (controlled[i] !== byController && controlled[i] instanceof Swiper) {
                    setControlledTransition(controlled[i]);
                }
            }
        } else if (controlled instanceof Swiper && byController !== controlled) {
            setControlledTransition(controlled);
        }
    }
};
var controller = {
    name: 'controller',
    params: {
        controller: {
            control: undefined,
            inverse: false,
            by: 'slide'
        }
    }, // or
    // 'container'
    create: function create() {
        var swiper = this;
        Utils.extend(swiper, {
            controller: {
                control: swiper.params.controller.control,
                getInterpolateFunction: Controller.getInterpolateFunction.bind(swiper),
                setTranslate: Controller.setTranslate.bind(swiper),
                setTransition: Controller.setTransition.bind(swiper)
            }
        });
    },
    on: {
        update: function update() {
            var swiper = this;
            if (!swiper.controller.control) return;
            if (swiper.controller.spline) {
                swiper.controller.spline = undefined;
                delete swiper.controller.spline;
            }
        },
        resize: function resize() {
            var swiper = this;
            if (!swiper.controller.control) return;
            if (swiper.controller.spline) {
                swiper.controller.spline = undefined;
                delete swiper.controller.spline;
            }
        },
        observerUpdate: function observerUpdate() {
            var swiper = this;
            if (!swiper.controller.control) return;
            if (swiper.controller.spline) {
                swiper.controller.spline = undefined;
                delete swiper.controller.spline;
            }
        },
        setTranslate: function setTranslate(translate, byController) {
            var swiper = this;
            if (!swiper.controller.control) return;
            swiper.controller.setTranslate(translate, byController);
        },
        setTransition: function setTransition(duration, byController) {
            var swiper = this;
            if (!swiper.controller.control) return;
            swiper.controller.setTransition(duration, byController);
        }
    }
};
var a11y = {
    makeElFocusable: function makeElFocusable($el) {
        $el.attr('tabIndex', '0');
        return $el;
    },
    addElRole: function addElRole($el, role) {
        $el.attr('role', role);
        return $el;
    },
    addElLabel: function addElLabel($el, label) {
        $el.attr('aria-label', label);
        return $el;
    },
    disableEl: function disableEl($el) {
        $el.attr('aria-disabled', true);
        return $el;
    },
    enableEl: function enableEl($el) {
        $el.attr('aria-disabled', false);
        return $el;
    },
    onEnterKey: function onEnterKey(e) {
        var swiper = this;
        var params = swiper.params.a11y;
        if (e.keyCode !== 13) return;
        var $targetEl = (0, _dom7DistDom7Modular.$)(e.target);
        if (swiper.navigation && swiper.navigation.$nextEl && $targetEl.is(swiper.navigation.$nextEl)) {
            if (!(swiper.isEnd && !swiper.params.loop)) {
                swiper.slideNext();
            }
            if (swiper.isEnd) {
                swiper.a11y.notify(params.lastSlideMessage);
            } else {
                swiper.a11y.notify(params.nextSlideMessage);
            }
        }
        if (swiper.navigation && swiper.navigation.$prevEl && $targetEl.is(swiper.navigation.$prevEl)) {
            if (!(swiper.isBeginning && !swiper.params.loop)) {
                swiper.slidePrev();
            }
            if (swiper.isBeginning) {
                swiper.a11y.notify(params.firstSlideMessage);
            } else {
                swiper.a11y.notify(params.prevSlideMessage);
            }
        }
        if (swiper.pagination && $targetEl.is('.' + swiper.params.pagination.bulletClass)) {
            $targetEl[0].click();
        }
    },
    notify: function notify(message) {
        var swiper = this;
        var notification = swiper.a11y.liveRegion;
        if (notification.length === 0) return;
        notification.html('');
        notification.html(message);
    },
    updateNavigation: function updateNavigation() {
        var swiper = this;
        if (swiper.params.loop) return;
        var _swiper$navigation4 = swiper.navigation;
        var $nextEl = _swiper$navigation4.$nextEl;
        var $prevEl = _swiper$navigation4.$prevEl;
        if ($prevEl && $prevEl.length > 0) {
            if (swiper.isBeginning) {
                swiper.a11y.disableEl($prevEl);
            } else {
                swiper.a11y.enableEl($prevEl);
            }
        }
        if ($nextEl && $nextEl.length > 0) {
            if (swiper.isEnd) {
                swiper.a11y.disableEl($nextEl);
            } else {
                swiper.a11y.enableEl($nextEl);
            }
        }
    },
    updatePagination: function updatePagination() {
        var swiper = this;
        var params = swiper.params.a11y;
        if (swiper.pagination && swiper.params.pagination.clickable && swiper.pagination.bullets && swiper.pagination.bullets.length) {
            swiper.pagination.bullets.each(function(bulletIndex, bulletEl) {
                var $bulletEl = (0, _dom7DistDom7Modular.$)(bulletEl);
                swiper.a11y.makeElFocusable($bulletEl);
                swiper.a11y.addElRole($bulletEl, 'button');
                swiper.a11y.addElLabel($bulletEl, params.paginationBulletMessage.replace(/{{index}}/, $bulletEl.index() + 1));
            });
        }
    },
    init: function init() {
        var swiper = this;
        swiper.$el.append(swiper.a11y.liveRegion); // Navigation
        var params = swiper.params.a11y;
        var $nextEl = undefined;
        var $prevEl = undefined;
        if (swiper.navigation && swiper.navigation.$nextEl) {
            $nextEl = swiper.navigation.$nextEl;
        }
        if (swiper.navigation && swiper.navigation.$prevEl) {
            $prevEl = swiper.navigation.$prevEl;
        }
        if ($nextEl) {
            swiper.a11y.makeElFocusable($nextEl);
            swiper.a11y.addElRole($nextEl, 'button');
            swiper.a11y.addElLabel($nextEl, params.nextSlideMessage);
            $nextEl.on('keydown', swiper.a11y.onEnterKey);
        }
        if ($prevEl) {
            swiper.a11y.makeElFocusable($prevEl);
            swiper.a11y.addElRole($prevEl, 'button');
            swiper.a11y.addElLabel($prevEl, params.prevSlideMessage);
            $prevEl.on('keydown', swiper.a11y.onEnterKey);
        } // Pagination
        if (swiper.pagination && swiper.params.pagination.clickable && swiper.pagination.bullets && swiper.pagination.bullets.length) {
            swiper.pagination.$el.on('keydown', '.' + swiper.params.pagination.bulletClass, swiper.a11y.onEnterKey);
        }
    },
    destroy: function destroy() {
        var swiper = this;
        if (swiper.a11y.liveRegion && swiper.a11y.liveRegion.length > 0) swiper.a11y.liveRegion.remove();
        var $nextEl = undefined;
        var $prevEl = undefined;
        if (swiper.navigation && swiper.navigation.$nextEl) {
            $nextEl = swiper.navigation.$nextEl;
        }
        if (swiper.navigation && swiper.navigation.$prevEl) {
            $prevEl = swiper.navigation.$prevEl;
        }
        if ($nextEl) {
            $nextEl.off('keydown', swiper.a11y.onEnterKey);
        }
        if ($prevEl) {
            $prevEl.off('keydown', swiper.a11y.onEnterKey);
        } // Pagination
        if (swiper.pagination && swiper.params.pagination.clickable && swiper.pagination.bullets && swiper.pagination.bullets.length) {
            swiper.pagination.$el.off('keydown', '.' + swiper.params.pagination.bulletClass, swiper.a11y.onEnterKey);
        }
    }
};
var a11y$1 = {
    name: 'a11y',
    params: {
        a11y: {
            enabled: true,
            notificationClass: 'swiper-notification',
            prevSlideMessage: 'Previous slide',
            nextSlideMessage: 'Next slide',
            firstSlideMessage: 'This is the first slide',
            lastSlideMessage: 'This is the last slide',
            paginationBulletMessage: 'Go to slide {{index}}'
        }
    },
    create: function create() {
        var swiper = this;
        Utils.extend(swiper, {
            a11y: {
                liveRegion: (0, _dom7DistDom7Modular.$)('<span class="' + swiper.params.a11y.notificationClass + '" aria-live="assertive" aria-atomic="true"></span>')
            }
        });
        Object.keys(a11y).forEach(function(methodName) {
            swiper.a11y[methodName] = a11y[methodName].bind(swiper);
        });
    },
    on: {
        init: function init() {
            var swiper = this;
            if (!swiper.params.a11y.enabled) return;
            swiper.a11y.init();
            swiper.a11y.updateNavigation();
        },
        toEdge: function toEdge() {
            var swiper = this;
            if (!swiper.params.a11y.enabled) return;
            swiper.a11y.updateNavigation();
        },
        fromEdge: function fromEdge() {
            var swiper = this;
            if (!swiper.params.a11y.enabled) return;
            swiper.a11y.updateNavigation();
        },
        paginationUpdate: function paginationUpdate() {
            var swiper = this;
            if (!swiper.params.a11y.enabled) return;
            swiper.a11y.updatePagination();
        },
        destroy: function destroy() {
            var swiper = this;
            if (!swiper.params.a11y.enabled) return;
            swiper.a11y.destroy();
        }
    }
};
var History = {
    init: function init() {
        var swiper = this;
        if (!swiper.params.history) return;
        if (!_ssrWindow.window.history || !_ssrWindow.window.history.pushState) {
            swiper.params.history.enabled = false;
            swiper.params.hashNavigation.enabled = true;
            return;
        }
        var history = swiper.history;
        history.initialized = true;
        history.paths = History.getPathValues();
        if (!history.paths.key && !history.paths.value) return;
        history.scrollToSlide(0, history.paths.value, swiper.params.runCallbacksOnInit);
        if (!swiper.params.history.replaceState) {
            _ssrWindow.window.addEventListener('popstate', swiper.history.setHistoryPopState);
        }
    },
    destroy: function destroy() {
        var swiper = this;
        if (!swiper.params.history.replaceState) {
            _ssrWindow.window.removeEventListener('popstate', swiper.history.setHistoryPopState);
        }
    },
    setHistoryPopState: function setHistoryPopState() {
        var swiper = this;
        swiper.history.paths = History.getPathValues();
        swiper.history.scrollToSlide(swiper.params.speed, swiper.history.paths.value, false);
    },
    getPathValues: function getPathValues() {
        var pathArray = _ssrWindow.window.location.pathname.slice(1).split('/').filter(function(part) {
            return part !== '';
        });
        var total = pathArray.length;
        var key = pathArray[total - 2];
        var value = pathArray[total - 1];
        return {
            key: key,
            value: value
        };
    },
    setHistory: function setHistory(key, index) {
        var swiper = this;
        if (!swiper.history.initialized || !swiper.params.history.enabled) return;
        var slide = swiper.slides.eq(index);
        var value = History.slugify(slide.attr('data-history'));
        if (!_ssrWindow.window.location.pathname.includes(key)) {
            value = key + '/' + value;
        }
        var currentState = _ssrWindow.window.history.state;
        if (currentState && currentState.value === value) {
            return;
        }
        if (swiper.params.history.replaceState) {
            _ssrWindow.window.history.replaceState({
                value: value
            }, null, value);
        } else {
            _ssrWindow.window.history.pushState({
                value: value
            }, null, value);
        }
    },
    slugify: function slugify(text) {
        return text.toString().replace(/\s+/g, '-').replace(/[^\w-]+/g, '').replace(/--+/g, '-').replace(/^-+/, '').replace(/-+$/, '');
    },
    scrollToSlide: function scrollToSlide(speed, value, runCallbacks) {
        var swiper = this;
        if (value) {
            for (var i = 0, _length = swiper.slides.length; i < _length; i += 1) {
                var _slide3 = swiper.slides.eq(i);
                var slideHistory = History.slugify(_slide3.attr('data-history'));
                if (slideHistory === value && !_slide3.hasClass(swiper.params.slideDuplicateClass)) {
                    var _index2 = _slide3.index();
                    swiper.slideTo(_index2, speed, runCallbacks);
                }
            }
        } else {
            swiper.slideTo(0, speed, runCallbacks);
        }
    }
};
var history = {
    name: 'history',
    params: {
        history: {
            enabled: false,
            replaceState: false,
            key: 'slides'
        }
    },
    create: function create() {
        var swiper = this;
        Utils.extend(swiper, {
            history: {
                init: History.init.bind(swiper),
                setHistory: History.setHistory.bind(swiper),
                setHistoryPopState: History.setHistoryPopState.bind(swiper),
                scrollToSlide: History.scrollToSlide.bind(swiper),
                destroy: History.destroy.bind(swiper)
            }
        });
    },
    on: {
        init: function init() {
            var swiper = this;
            if (swiper.params.history.enabled) {
                swiper.history.init();
            }
        },
        destroy: function destroy() {
            var swiper = this;
            if (swiper.params.history.enabled) {
                swiper.history.destroy();
            }
        },
        transitionEnd: function transitionEnd() {
            var swiper = this;
            if (swiper.history.initialized) {
                swiper.history.setHistory(swiper.params.history.key, swiper.activeIndex);
            }
        }
    }
};
var HashNavigation = {
    onHashCange: function onHashCange() {
        var swiper = this;
        var newHash = _ssrWindow.document.location.hash.replace('#', '');
        var activeSlideHash = swiper.slides.eq(swiper.activeIndex).attr('data-hash');
        if (newHash !== activeSlideHash) {
            var newIndex = swiper.$wrapperEl.children('.' + swiper.params.slideClass + '[data-hash="' + newHash + '"]').index();
            if (typeof newIndex === 'undefined') return;
            swiper.slideTo(newIndex);
        }
    },
    setHash: function setHash() {
        var swiper = this;
        if (!swiper.hashNavigation.initialized || !swiper.params.hashNavigation.enabled) return;
        if (swiper.params.hashNavigation.replaceState && _ssrWindow.window.history && _ssrWindow.window.history.replaceState) {
            _ssrWindow.window.history.replaceState(null, null, '#' + swiper.slides.eq(swiper.activeIndex).attr('data-hash') || '');
        } else {
            var _slide4 = swiper.slides.eq(swiper.activeIndex);
            var hash = _slide4.attr('data-hash') || _slide4.attr('data-history');
            _ssrWindow.document.location.hash = hash || '';
        }
    },
    init: function init() {
        var swiper = this;
        if (!swiper.params.hashNavigation.enabled || swiper.params.history && swiper.params.history.enabled) return;
        swiper.hashNavigation.initialized = true;
        var hash = _ssrWindow.document.location.hash.replace('#', '');
        if (hash) {
            var speed = 0;
            for (var i = 0, _length2 = swiper.slides.length; i < _length2; i += 1) {
                var _slide5 = swiper.slides.eq(i);
                var slideHash = _slide5.attr('data-hash') || _slide5.attr('data-history');
                if (slideHash === hash && !_slide5.hasClass(swiper.params.slideDuplicateClass)) {
                    var _index3 = _slide5.index();
                    swiper.slideTo(_index3, speed, swiper.params.runCallbacksOnInit, true);
                }
            }
        }
        if (swiper.params.hashNavigation.watchState) {
            (0, _dom7DistDom7Modular.$)(_ssrWindow.window).on('hashchange', swiper.hashNavigation.onHashCange);
        }
    },
    destroy: function destroy() {
        var swiper = this;
        if (swiper.params.hashNavigation.watchState) {
            (0, _dom7DistDom7Modular.$)(_ssrWindow.window).off('hashchange', swiper.hashNavigation.onHashCange);
        }
    }
};
var hashNavigation = {
    name: 'hash-navigation',
    params: {
        hashNavigation: {
            enabled: false,
            replaceState: false,
            watchState: false
        }
    },
    create: function create() {
        var swiper = this;
        Utils.extend(swiper, {
            hashNavigation: {
                initialized: false,
                init: HashNavigation.init.bind(swiper),
                destroy: HashNavigation.destroy.bind(swiper),
                setHash: HashNavigation.setHash.bind(swiper),
                onHashCange: HashNavigation.onHashCange.bind(swiper)
            }
        });
    },
    on: {
        init: function init() {
            var swiper = this;
            if (swiper.params.hashNavigation.enabled) {
                swiper.hashNavigation.init();
            }
        },
        destroy: function destroy() {
            var swiper = this;
            if (swiper.params.hashNavigation.enabled) {
                swiper.hashNavigation.destroy();
            }
        },
        transitionEnd: function transitionEnd() {
            var swiper = this;
            if (swiper.hashNavigation.initialized) {
                swiper.hashNavigation.setHash();
            }
        }
    }
};
/*
 * eslint
 * no-underscore-dangle:
 * "off"
 */
var Autoplay = {
    run: function run() {
        var swiper = this;
        var $activeSlideEl = swiper.slides.eq(swiper.activeIndex);
        var delay = swiper.params.autoplay.delay;
        if ($activeSlideEl.attr('data-swiper-autoplay')) {
            delay = $activeSlideEl.attr('data-swiper-autoplay') || swiper.params.autoplay.delay;
        }
        clearTimeout(swiper.autoplay.timeout);
        swiper.autoplay.timeout = Utils.nextTick(function() {
            if (swiper.params.autoplay.reverseDirection) {
                if (swiper.params.loop) {
                    swiper.loopFix();
                    swiper.slidePrev(swiper.params.speed, true, true);
                    swiper.emit('autoplay');
                } else if (!swiper.isBeginning) {
                    swiper.slidePrev(swiper.params.speed, true, true);
                    swiper.emit('autoplay');
                } else if (!swiper.params.autoplay.stopOnLastSlide) {
                    swiper.slideTo(swiper.slides.length - 1, swiper.params.speed, true, true);
                    swiper.emit('autoplay');
                } else {
                    swiper.autoplay.stop();
                }
            } else if (swiper.params.loop) {
                swiper.loopFix();
                swiper.slideNext(swiper.params.speed, true, true);
                swiper.emit('autoplay');
            } else if (!swiper.isEnd) {
                swiper.slideNext(swiper.params.speed, true, true);
                swiper.emit('autoplay');
            } else if (!swiper.params.autoplay.stopOnLastSlide) {
                swiper.slideTo(0, swiper.params.speed, true, true);
                swiper.emit('autoplay');
            } else {
                swiper.autoplay.stop();
            }
        }, delay);
    },
    start: function start() {
        var swiper = this;
        if (typeof swiper.autoplay.timeout !== 'undefined') return false;
        if (swiper.autoplay.running) return false;
        swiper.autoplay.running = true;
        swiper.emit('autoplayStart');
        swiper.autoplay.run();
        return true;
    },
    stop: function stop() {
        var swiper = this;
        if (!swiper.autoplay.running) return false;
        if (typeof swiper.autoplay.timeout === 'undefined') return false;
        if (swiper.autoplay.timeout) {
            clearTimeout(swiper.autoplay.timeout);
            swiper.autoplay.timeout = undefined;
        }
        swiper.autoplay.running = false;
        swiper.emit('autoplayStop');
        return true;
    },
    pause: function pause(speed) {
        var swiper = this;
        if (!swiper.autoplay.running) return;
        if (swiper.autoplay.paused) return;
        if (swiper.autoplay.timeout) clearTimeout(swiper.autoplay.timeout);
        swiper.autoplay.paused = true;
        if (speed === 0 || !swiper.params.autoplay.waitForTransition) {
            swiper.autoplay.paused = false;
            swiper.autoplay.run();
        } else {
            swiper.$wrapperEl[0].addEventListener('transitionend', swiper.autoplay.onTransitionEnd);
            swiper.$wrapperEl[0].addEventListener('webkitTransitionEnd', swiper.autoplay.onTransitionEnd);
        }
    }
};
var autoplay = {
    name: 'autoplay',
    params: {
        autoplay: {
            enabled: false,
            delay: 3000,
            waitForTransition: true,
            disableOnInteraction: true,
            stopOnLastSlide: false,
            reverseDirection: false
        }
    },
    create: function create() {
        var swiper = this;
        Utils.extend(swiper, {
            autoplay: {
                running: false,
                paused: false,
                run: Autoplay.run.bind(swiper),
                start: Autoplay.start.bind(swiper),
                stop: Autoplay.stop.bind(swiper),
                pause: Autoplay.pause.bind(swiper),
                onTransitionEnd: function onTransitionEnd(e) {
                    if (!swiper || swiper.destroyed || !swiper.$wrapperEl) return;
                    if (e.target !== this) return;
                    swiper.$wrapperEl[0].removeEventListener('transitionend', swiper.autoplay.onTransitionEnd);
                    swiper.$wrapperEl[0].removeEventListener('webkitTransitionEnd', swiper.autoplay.onTransitionEnd);
                    swiper.autoplay.paused = false;
                    if (!swiper.autoplay.running) {
                        swiper.autoplay.stop();
                    } else {
                        swiper.autoplay.run();
                    }
                }
            }
        });
    },
    on: {
        init: function init() {
            var swiper = this;
            if (swiper.params.autoplay.enabled) {
                swiper.autoplay.start();
            }
        },
        beforeTransitionStart: function beforeTransitionStart(speed, internal) {
            var swiper = this;
            if (swiper.autoplay.running) {
                if (internal || !swiper.params.autoplay.disableOnInteraction) {
                    swiper.autoplay.pause(speed);
                } else {
                    swiper.autoplay.stop();
                }
            }
        },
        sliderFirstMove: function sliderFirstMove() {
            var swiper = this;
            if (swiper.autoplay.running) {
                if (swiper.params.autoplay.disableOnInteraction) {
                    swiper.autoplay.stop();
                } else {
                    swiper.autoplay.pause();
                }
            }
        },
        destroy: function destroy() {
            var swiper = this;
            if (swiper.autoplay.running) {
                swiper.autoplay.stop();
            }
        }
    }
};
var Fade = {
    setTranslate: function setTranslate() {
        var swiper = this;
        var slides = swiper.slides;
        for (var i = 0; i < slides.length; i += 1) {
            var $slideEl = swiper.slides.eq(i);
            var _offset = $slideEl[0].swiperSlideOffset;
            var tx = -_offset;
            if (!swiper.params.virtualTranslate) tx -= swiper.translate;
            var ty = 0;
            if (!swiper.isHorizontal()) {
                ty = tx;
                tx = 0;
            }
            var slideOpacity = swiper.params.fadeEffect.crossFade ? Math.max(1 - Math.abs($slideEl[0].progress), 0) : 1 + Math.min(Math.max($slideEl[0].progress, -1), 0);
            $slideEl.css({
                opacity: slideOpacity
            }).transform('translate3d(' + tx + 'px, ' + ty + 'px, 0px)');
        }
    },
    setTransition: function setTransition(duration) {
        var swiper = this;
        var slides = swiper.slides;
        var $wrapperEl = swiper.$wrapperEl;
        slides.transition(duration);
        if (swiper.params.virtualTranslate && duration !== 0) {
            (function() {
                var eventTriggered = false;
                slides.transitionEnd(function() {
                    if (eventTriggered) return;
                    if (!swiper || swiper.destroyed) return;
                    eventTriggered = true;
                    swiper.animating = false;
                    var triggerEvents = ['webkitTransitionEnd', 'transitionend'];
                    for (var i = 0; i < triggerEvents.length; i += 1) {
                        $wrapperEl.trigger(triggerEvents[i]);
                    }
                });
            })();
        }
    }
};
var effectFade = {
    name: 'effect-fade',
    params: {
        fadeEffect: {
            crossFade: false
        }
    },
    create: function create() {
        var swiper = this;
        Utils.extend(swiper, {
            fadeEffect: {
                setTranslate: Fade.setTranslate.bind(swiper),
                setTransition: Fade.setTransition.bind(swiper)
            }
        });
    },
    on: {
        beforeInit: function beforeInit() {
            var swiper = this;
            if (swiper.params.effect !== 'fade') return;
            swiper.classNames.push(swiper.params.containerModifierClass + 'fade');
            var overwriteParams = {
                slidesPerView: 1,
                slidesPerColumn: 1,
                slidesPerGroup: 1,
                watchSlidesProgress: true,
                spaceBetween: 0,
                virtualTranslate: true
            };
            Utils.extend(swiper.params, overwriteParams);
            Utils.extend(swiper.originalParams, overwriteParams);
        },
        setTranslate: function setTranslate() {
            var swiper = this;
            if (swiper.params.effect !== 'fade') return;
            swiper.fadeEffect.setTranslate();
        },
        setTransition: function setTransition(duration) {
            var swiper = this;
            if (swiper.params.effect !== 'fade') return;
            swiper.fadeEffect.setTransition(duration);
        }
    }
};
var Cube = {
    setTranslate: function setTranslate() {
        var swiper = this;
        var $el = swiper.$el;
        var $wrapperEl = swiper.$wrapperEl;
        var slides = swiper.slides;
        var swiperWidth = swiper.width;
        var swiperHeight = swiper.height;
        var rtl = swiper.rtlTranslate;
        var swiperSize = swiper.size;
        var params = swiper.params.cubeEffect;
        var isHorizontal = swiper.isHorizontal();
        var isVirtual = swiper.virtual && swiper.params.virtual.enabled;
        var wrapperRotate = 0;
        var $cubeShadowEl = undefined;
        if (params.shadow) {
            if (isHorizontal) {
                $cubeShadowEl = $wrapperEl.find('.swiper-cube-shadow');
                if ($cubeShadowEl.length === 0) {
                    $cubeShadowEl = (0, _dom7DistDom7Modular.$)('<div class="swiper-cube-shadow"></div>');
                    $wrapperEl.append($cubeShadowEl);
                }
                $cubeShadowEl.css({
                    height: swiperWidth + 'px'
                });
            } else {
                $cubeShadowEl = $el.find('.swiper-cube-shadow');
                if ($cubeShadowEl.length === 0) {
                    $cubeShadowEl = (0, _dom7DistDom7Modular.$)('<div class="swiper-cube-shadow"></div>');
                    $el.append($cubeShadowEl);
                }
            }
        }
        for (var i = 0; i < slides.length; i += 1) {
            var $slideEl = slides.eq(i);
            var slideIndex = i;
            if (isVirtual) {
                slideIndex = parseInt($slideEl.attr('data-swiper-slide-index'), 10);
            }
            var slideAngle = slideIndex * 90;
            var round = Math.floor(slideAngle / 360);
            if (rtl) {
                slideAngle = -slideAngle;
                round = Math.floor(-slideAngle / 360);
            }
            var progress = Math.max(Math.min($slideEl[0].progress, 1), -1);
            var tx = 0;
            var ty = 0;
            var tz = 0;
            if (slideIndex % 4 === 0) {
                tx = -round * 4 * swiperSize;
                tz = 0;
            } else if ((slideIndex - 1) % 4 === 0) {
                tx = 0;
                tz = -round * 4 * swiperSize;
            } else if ((slideIndex - 2) % 4 === 0) {
                tx = swiperSize + round * 4 * swiperSize;
                tz = swiperSize;
            } else if ((slideIndex - 3) % 4 === 0) {
                tx = -swiperSize;
                tz = 3 * swiperSize + swiperSize * 4 * round;
            }
            if (rtl) {
                tx = -tx;
            }
            if (!isHorizontal) {
                ty = tx;
                tx = 0;
            }
            var _transform = 'rotateX(' + (isHorizontal ? 0 : -slideAngle) + 'deg) rotateY(' + (isHorizontal ? slideAngle : 0) + 'deg) translate3d(' + tx + 'px, ' + ty + 'px, ' + tz + 'px)';
            if (progress <= 1 && progress > -1) {
                wrapperRotate = slideIndex * 90 + progress * 90;
                if (rtl) wrapperRotate = -slideIndex * 90 - progress * 90;
            }
            $slideEl.transform(_transform);
            if (params.slideShadows) { // Set
                // shadows
                var shadowBefore = isHorizontal ? $slideEl.find('.swiper-slide-shadow-left') : $slideEl.find('.swiper-slide-shadow-top');
                var shadowAfter = isHorizontal ? $slideEl.find('.swiper-slide-shadow-right') : $slideEl.find('.swiper-slide-shadow-bottom');
                if (shadowBefore.length === 0) {
                    shadowBefore = (0, _dom7DistDom7Modular.$)('<div class="swiper-slide-shadow-' + (isHorizontal ? 'left' : 'top') + '"></div>');
                    $slideEl.append(shadowBefore);
                }
                if (shadowAfter.length === 0) {
                    shadowAfter = (0, _dom7DistDom7Modular.$)('<div class="swiper-slide-shadow-' + (isHorizontal ? 'right' : 'bottom') + '"></div>');
                    $slideEl.append(shadowAfter);
                }
                if (shadowBefore.length) shadowBefore[0].style.opacity = Math.max(-progress, 0);
                if (shadowAfter.length) shadowAfter[0].style.opacity = Math.max(progress, 0);
            }
        }
        $wrapperEl.css({
            '-webkit-transform-origin': '50% 50% -' + swiperSize / 2 + 'px',
            '-moz-transform-origin': '50% 50% -' + swiperSize / 2 + 'px',
            '-ms-transform-origin': '50% 50% -' + swiperSize / 2 + 'px',
            'transform-origin': '50% 50% -' + swiperSize / 2 + 'px'
        });
        if (params.shadow) {
            if (isHorizontal) {
                $cubeShadowEl.transform('translate3d(0px, ' + (swiperWidth / 2 + params.shadowOffset) + 'px, ' + -swiperWidth / 2 + 'px) rotateX(90deg) rotateZ(0deg) scale(' + params.shadowScale + ')');
            } else {
                var shadowAngle = Math.abs(wrapperRotate) - Math.floor(Math.abs(wrapperRotate) / 90) * 90;
                var multiplier = 1.5 - (Math.sin(shadowAngle * 2 * Math.PI / 360) / 2 + Math.cos(shadowAngle * 2 * Math.PI / 360) / 2);
                var scale1 = params.shadowScale;
                var scale2 = params.shadowScale / multiplier;
                var _offset2 = params.shadowOffset;
                $cubeShadowEl.transform('scale3d(' + scale1 + ', 1, ' + scale2 + ') translate3d(0px, ' + (swiperHeight / 2 + _offset2) + 'px, ' + -swiperHeight / 2 / scale2 + 'px) rotateX(-90deg)');
            }
        }
        var zFactor = Browser.isSafari || Browser.isUiWebView ? -swiperSize / 2 : 0;
        $wrapperEl.transform('translate3d(0px,0,' + zFactor + 'px) rotateX(' + (swiper.isHorizontal() ? 0 : wrapperRotate) + 'deg) rotateY(' + (swiper.isHorizontal() ? -wrapperRotate : 0) + 'deg)');
    },
    setTransition: function setTransition(duration) {
        var swiper = this;
        var $el = swiper.$el;
        var slides = swiper.slides;
        slides.transition(duration).find('.swiper-slide-shadow-top, .swiper-slide-shadow-right, .swiper-slide-shadow-bottom, .swiper-slide-shadow-left').transition(duration);
        if (swiper.params.cubeEffect.shadow && !swiper.isHorizontal()) {
            $el.find('.swiper-cube-shadow').transition(duration);
        }
    }
};
var effectCube = {
    name: 'effect-cube',
    params: {
        cubeEffect: {
            slideShadows: true,
            shadow: true,
            shadowOffset: 20,
            shadowScale: 0.94
        }
    },
    create: function create() {
        var swiper = this;
        Utils.extend(swiper, {
            cubeEffect: {
                setTranslate: Cube.setTranslate.bind(swiper),
                setTransition: Cube.setTransition.bind(swiper)
            }
        });
    },
    on: {
        beforeInit: function beforeInit() {
            var swiper = this;
            if (swiper.params.effect !== 'cube') return;
            swiper.classNames.push(swiper.params.containerModifierClass + 'cube');
            swiper.classNames.push(swiper.params.containerModifierClass + '3d');
            var overwriteParams = {
                slidesPerView: 1,
                slidesPerColumn: 1,
                slidesPerGroup: 1,
                watchSlidesProgress: true,
                resistanceRatio: 0,
                spaceBetween: 0,
                centeredSlides: false,
                virtualTranslate: true
            };
            Utils.extend(swiper.params, overwriteParams);
            Utils.extend(swiper.originalParams, overwriteParams);
        },
        setTranslate: function setTranslate() {
            var swiper = this;
            if (swiper.params.effect !== 'cube') return;
            swiper.cubeEffect.setTranslate();
        },
        setTransition: function setTransition(duration) {
            var swiper = this;
            if (swiper.params.effect !== 'cube') return;
            swiper.cubeEffect.setTransition(duration);
        }
    }
};
var Flip = {
    setTranslate: function setTranslate() {
        var swiper = this;
        var slides = swiper.slides;
        var rtl = swiper.rtlTranslate;
        for (var i = 0; i < slides.length; i += 1) {
            var $slideEl = slides.eq(i);
            var progress = $slideEl[0].progress;
            if (swiper.params.flipEffect.limitRotation) {
                progress = Math.max(Math.min($slideEl[0].progress, 1), -1);
            }
            var _offset3 = $slideEl[0].swiperSlideOffset;
            var rotate = -180 * progress;
            var rotateY = rotate;
            var rotateX = 0;
            var tx = -_offset3;
            var ty = 0;
            if (!swiper.isHorizontal()) {
                ty = tx;
                tx = 0;
                rotateX = -rotateY;
                rotateY = 0;
            } else if (rtl) {
                rotateY = -rotateY;
            }
            $slideEl[0].style.zIndex = -Math.abs(Math.round(progress)) + slides.length;
            if (swiper.params.flipEffect.slideShadows) { // Set
                // shadows
                var shadowBefore = swiper.isHorizontal() ? $slideEl.find('.swiper-slide-shadow-left') : $slideEl.find('.swiper-slide-shadow-top');
                var shadowAfter = swiper.isHorizontal() ? $slideEl.find('.swiper-slide-shadow-right') : $slideEl.find('.swiper-slide-shadow-bottom');
                if (shadowBefore.length === 0) {
                    shadowBefore = (0, _dom7DistDom7Modular.$)('<div class="swiper-slide-shadow-' + (swiper.isHorizontal() ? 'left' : 'top') + '"></div>');
                    $slideEl.append(shadowBefore);
                }
                if (shadowAfter.length === 0) {
                    shadowAfter = (0, _dom7DistDom7Modular.$)('<div class="swiper-slide-shadow-' + (swiper.isHorizontal() ? 'right' : 'bottom') + '"></div>');
                    $slideEl.append(shadowAfter);
                }
                if (shadowBefore.length) shadowBefore[0].style.opacity = Math.max(-progress, 0);
                if (shadowAfter.length) shadowAfter[0].style.opacity = Math.max(progress, 0);
            }
            $slideEl.transform('translate3d(' + tx + 'px, ' + ty + 'px, 0px) rotateX(' + rotateX + 'deg) rotateY(' + rotateY + 'deg)');
        }
    },
    setTransition: function setTransition(duration) {
        var swiper = this;
        var slides = swiper.slides;
        var activeIndex = swiper.activeIndex;
        var $wrapperEl = swiper.$wrapperEl;
        slides.transition(duration).find('.swiper-slide-shadow-top, .swiper-slide-shadow-right, .swiper-slide-shadow-bottom, .swiper-slide-shadow-left').transition(duration);
        if (swiper.params.virtualTranslate && duration !== 0) {
            (function() {
                var eventTriggered = false; // eslint-disable-next-line
                slides.eq(activeIndex).transitionEnd(function onTransitionEnd() {
                    if (eventTriggered) return;
                    if (!swiper || swiper.destroyed) return; // if
                    // (!$(this).hasClass(swiper.params.slideActiveClass))
                    // return;
                    eventTriggered = true;
                    swiper.animating = false;
                    var triggerEvents = ['webkitTransitionEnd', 'transitionend'];
                    for (var i = 0; i < triggerEvents.length; i += 1) {
                        $wrapperEl.trigger(triggerEvents[i]);
                    }
                });
            })();
        }
    }
};
var effectFlip = {
    name: 'effect-flip',
    params: {
        flipEffect: {
            slideShadows: true,
            limitRotation: true
        }
    },
    create: function create() {
        var swiper = this;
        Utils.extend(swiper, {
            flipEffect: {
                setTranslate: Flip.setTranslate.bind(swiper),
                setTransition: Flip.setTransition.bind(swiper)
            }
        });
    },
    on: {
        beforeInit: function beforeInit() {
            var swiper = this;
            if (swiper.params.effect !== 'flip') return;
            swiper.classNames.push(swiper.params.containerModifierClass + 'flip');
            swiper.classNames.push(swiper.params.containerModifierClass + '3d');
            var overwriteParams = {
                slidesPerView: 1,
                slidesPerColumn: 1,
                slidesPerGroup: 1,
                watchSlidesProgress: true,
                spaceBetween: 0,
                virtualTranslate: true
            };
            Utils.extend(swiper.params, overwriteParams);
            Utils.extend(swiper.originalParams, overwriteParams);
        },
        setTranslate: function setTranslate() {
            var swiper = this;
            if (swiper.params.effect !== 'flip') return;
            swiper.flipEffect.setTranslate();
        },
        setTransition: function setTransition(duration) {
            var swiper = this;
            if (swiper.params.effect !== 'flip') return;
            swiper.flipEffect.setTransition(duration);
        }
    }
};
var Coverflow = {
    setTranslate: function setTranslate() {
        var swiper = this;
        var swiperWidth = swiper.width;
        var swiperHeight = swiper.height;
        var slides = swiper.slides;
        var $wrapperEl = swiper.$wrapperEl;
        var slidesSizesGrid = swiper.slidesSizesGrid;
        var params = swiper.params.coverflowEffect;
        var isHorizontal = swiper.isHorizontal();
        var transform = swiper.translate;
        var center = isHorizontal ? -transform + swiperWidth / 2 : -transform + swiperHeight / 2;
        var rotate = isHorizontal ? params.rotate : -params.rotate;
        var translate = params.depth; // Each
        // slide
        // offset
        // from
        // center
        for (var i = 0, _length3 = slides.length; i < _length3; i += 1) {
            var $slideEl = slides.eq(i);
            var slideSize = slidesSizesGrid[i];
            var slideOffset = $slideEl[0].swiperSlideOffset;
            var offsetMultiplier = (center - slideOffset - slideSize / 2) / slideSize * params.modifier;
            var rotateY = isHorizontal ? rotate * offsetMultiplier : 0;
            var rotateX = isHorizontal ? 0 : rotate * offsetMultiplier; // var
            // rotateZ
            // = 0
            var translateZ = -translate * Math.abs(offsetMultiplier);
            var translateY = isHorizontal ? 0 : params.stretch * offsetMultiplier;
            var translateX = isHorizontal ? params.stretch * offsetMultiplier : 0; // Fix
            // for
            // ultra
            // small
            // values
            if (Math.abs(translateX) < 0.001) translateX = 0;
            if (Math.abs(translateY) < 0.001) translateY = 0;
            if (Math.abs(translateZ) < 0.001) translateZ = 0;
            if (Math.abs(rotateY) < 0.001) rotateY = 0;
            if (Math.abs(rotateX) < 0.001) rotateX = 0;
            var slideTransform = 'translate3d(' + translateX + 'px,' + translateY + 'px,' + translateZ + 'px)  rotateX(' + rotateX + 'deg) rotateY(' + rotateY + 'deg)';
            $slideEl.transform(slideTransform);
            $slideEl[0].style.zIndex = -Math.abs(Math.round(offsetMultiplier)) + 1;
            if (params.slideShadows) { // Set
                // shadows
                var $shadowBeforeEl = isHorizontal ? $slideEl.find('.swiper-slide-shadow-left') : $slideEl.find('.swiper-slide-shadow-top');
                var $shadowAfterEl = isHorizontal ? $slideEl.find('.swiper-slide-shadow-right') : $slideEl.find('.swiper-slide-shadow-bottom');
                if ($shadowBeforeEl.length === 0) {
                    $shadowBeforeEl = (0, _dom7DistDom7Modular.$)('<div class="swiper-slide-shadow-' + (isHorizontal ? 'left' : 'top') + '"></div>');
                    $slideEl.append($shadowBeforeEl);
                }
                if ($shadowAfterEl.length === 0) {
                    $shadowAfterEl = (0, _dom7DistDom7Modular.$)('<div class="swiper-slide-shadow-' + (isHorizontal ? 'right' : 'bottom') + '"></div>');
                    $slideEl.append($shadowAfterEl);
                }
                if ($shadowBeforeEl.length) $shadowBeforeEl[0].style.opacity = offsetMultiplier > 0 ? offsetMultiplier : 0;
                if ($shadowAfterEl.length) $shadowAfterEl[0].style.opacity = -offsetMultiplier > 0 ? -offsetMultiplier : 0;
            }
        } // Set
        // correct
        // perspective
        // for
        // IE10
        if (Support.pointerEvents || Support.prefixedPointerEvents) {
            var ws = $wrapperEl[0].style;
            ws.perspectiveOrigin = center + 'px 50%';
        }
    },
    setTransition: function setTransition(duration) {
        var swiper = this;
        swiper.slides.transition(duration).find('.swiper-slide-shadow-top, .swiper-slide-shadow-right, .swiper-slide-shadow-bottom, .swiper-slide-shadow-left').transition(duration);
    }
};
var effectCoverflow = {
    name: 'effect-coverflow',
    params: {
        coverflowEffect: {
            rotate: 50,
            stretch: 0,
            depth: 100,
            modifier: 1,
            slideShadows: true
        }
    },
    create: function create() {
        var swiper = this;
        Utils.extend(swiper, {
            coverflowEffect: {
                setTranslate: Coverflow.setTranslate.bind(swiper),
                setTransition: Coverflow.setTransition.bind(swiper)
            }
        });
    },
    on: {
        beforeInit: function beforeInit() {
            var swiper = this;
            if (swiper.params.effect !== 'coverflow') return;
            swiper.classNames.push(swiper.params.containerModifierClass + 'coverflow');
            swiper.classNames.push(swiper.params.containerModifierClass + '3d');
            swiper.params.watchSlidesProgress = true;
            swiper.originalParams.watchSlidesProgress = true;
        },
        setTranslate: function setTranslate() {
            var swiper = this;
            if (swiper.params.effect !== 'coverflow') return;
            swiper.coverflowEffect.setTranslate();
        },
        setTransition: function setTransition(duration) {
            var swiper = this;
            if (swiper.params.effect !== 'coverflow') return;
            swiper.coverflowEffect.setTransition(duration);
        }
    }
};
var Thumbs = {
    init: function init() {
        var swiper = this;
        var thumbsParams = swiper.params.thumbs;
        var SwiperClass = swiper.constructor;
        if (thumbsParams.swiper instanceof SwiperClass) {
            swiper.thumbs.swiper = thumbsParams.swiper;
            Utils.extend(swiper.thumbs.swiper.originalParams, {
                watchSlidesProgress: true,
                slideToClickedSlide: false
            });
            Utils.extend(swiper.thumbs.swiper.params, {
                watchSlidesProgress: true,
                slideToClickedSlide: false
            });
        } else if (Utils.isObject(thumbsParams.swiper)) {
            swiper.thumbs.swiper = new SwiperClass(Utils.extend({}, thumbsParams.swiper, {
                watchSlidesVisibility: true,
                watchSlidesProgress: true,
                slideToClickedSlide: false
            }));
            swiper.thumbs.swiperCreated = true;
        }
        swiper.thumbs.swiper.$el.addClass(swiper.params.thumbs.thumbsContainerClass);
        swiper.thumbs.swiper.on('tap', swiper.thumbs.onThumbClick);
    },
    onThumbClick: function onThumbClick() {
        var swiper = this;
        var thumbsSwiper = swiper.thumbs.swiper;
        if (!thumbsSwiper) return;
        var clickedIndex = thumbsSwiper.clickedIndex;
        var clickedSlide = thumbsSwiper.clickedSlide;
        if (clickedSlide && (0, _dom7DistDom7Modular.$)(clickedSlide).hasClass(swiper.params.thumbs.slideThumbActiveClass)) return;
        if (typeof clickedIndex === 'undefined' || clickedIndex === null) return;
        var slideToIndex = undefined;
        if (thumbsSwiper.params.loop) {
            slideToIndex = parseInt((0, _dom7DistDom7Modular.$)(thumbsSwiper.clickedSlide).attr('data-swiper-slide-index'), 10);
        } else {
            slideToIndex = clickedIndex;
        }
        if (swiper.params.loop) {
            var currentIndex = swiper.activeIndex;
            if (swiper.slides.eq(currentIndex).hasClass(swiper.params.slideDuplicateClass)) {
                swiper.loopFix(); // eslint-disable-next-line
                swiper._clientLeft = swiper.$wrapperEl[0].clientLeft;
                currentIndex = swiper.activeIndex;
            }
            var prevIndex = swiper.slides.eq(currentIndex).prevAll('[data-swiper-slide-index="' + slideToIndex + '"]').eq(0).index();
            var nextIndex = swiper.slides.eq(currentIndex).nextAll('[data-swiper-slide-index="' + slideToIndex + '"]').eq(0).index();
            if (typeof prevIndex === 'undefined') slideToIndex = nextIndex;
            else if (typeof nextIndex === 'undefined') slideToIndex = prevIndex;
            else if (nextIndex - currentIndex < currentIndex - prevIndex) slideToIndex = nextIndex;
            else slideToIndex = prevIndex;
        }
        swiper.slideTo(slideToIndex);
    },
    update: function update(initial) {
        var swiper = this;
        var thumbsSwiper = swiper.thumbs.swiper;
        if (!thumbsSwiper) return;
        var slidesPerView = thumbsSwiper.params.slidesPerView === 'auto' ? thumbsSwiper.slidesPerViewDynamic() : thumbsSwiper.params.slidesPerView;
        if (swiper.realIndex !== thumbsSwiper.realIndex) {
            var currentThumbsIndex = thumbsSwiper.activeIndex;
            var newThumbsIndex = undefined;
            if (thumbsSwiper.params.loop) {
                if (thumbsSwiper.slides.eq(currentThumbsIndex).hasClass(thumbsSwiper.params.slideDuplicateClass)) {
                    thumbsSwiper.loopFix(); // eslint-disable-next-line
                    thumbsSwiper._clientLeft = thumbsSwiper.$wrapperEl[0].clientLeft;
                    currentThumbsIndex = thumbsSwiper.activeIndex;
                } // Find
                // actual
                // thumbs
                // index
                // to
                // slide
                // to
                var prevThumbsIndex = thumbsSwiper.slides.eq(currentThumbsIndex).prevAll('[data-swiper-slide-index="' + swiper.realIndex + '"]').eq(0).index();
                var nextThumbsIndex = thumbsSwiper.slides.eq(currentThumbsIndex).nextAll('[data-swiper-slide-index="' + swiper.realIndex + '"]').eq(0).index();
                if (typeof prevThumbsIndex === 'undefined') newThumbsIndex = nextThumbsIndex;
                else if (typeof nextThumbsIndex === 'undefined') newThumbsIndex = prevThumbsIndex;
                else if (nextThumbsIndex - currentThumbsIndex === currentThumbsIndex - prevThumbsIndex) newThumbsIndex = currentThumbsIndex;
                else if (nextThumbsIndex - currentThumbsIndex < currentThumbsIndex - prevThumbsIndex) newThumbsIndex = nextThumbsIndex;
                else newThumbsIndex = prevThumbsIndex;
            } else {
                newThumbsIndex = swiper.realIndex;
            }
            if (thumbsSwiper.visibleSlidesIndexes && thumbsSwiper.visibleSlidesIndexes.indexOf(newThumbsIndex) < 0) {
                if (thumbsSwiper.params.centeredSlides) {
                    if (newThumbsIndex > currentThumbsIndex) {
                        newThumbsIndex = newThumbsIndex - Math.floor(slidesPerView / 2) + 1;
                    } else {
                        newThumbsIndex = newThumbsIndex + Math.floor(slidesPerView / 2) - 1;
                    }
                } else if (newThumbsIndex > currentThumbsIndex) {
                    newThumbsIndex = newThumbsIndex - slidesPerView + 1;
                }
                thumbsSwiper.slideTo(newThumbsIndex, initial ? 0 : undefined);
            }
        } // Activate
        // thumbs
        var thumbsToActivate = 1;
        var thumbActiveClass = swiper.params.thumbs.slideThumbActiveClass;
        if (swiper.params.slidesPerView > 1 && !swiper.params.centeredSlides) {
            thumbsToActivate = swiper.params.slidesPerView;
        }
        thumbsSwiper.slides.removeClass(thumbActiveClass);
        if (thumbsSwiper.params.loop || thumbsSwiper.params.virtual) {
            for (var i = 0; i < thumbsToActivate; i += 1) {
                thumbsSwiper.$wrapperEl.children('[data-swiper-slide-index="' + (swiper.realIndex + i) + '"]').addClass(thumbActiveClass);
            }
        } else {
            for (var i = 0; i < thumbsToActivate; i += 1) {
                thumbsSwiper.slides.eq(swiper.realIndex + i).addClass(thumbActiveClass);
            }
        }
    }
};
var thumbs = {
    name: 'thumbs',
    params: {
        thumbs: {
            swiper: null,
            slideThumbActiveClass: 'swiper-slide-thumb-active',
            thumbsContainerClass: 'swiper-container-thumbs'
        }
    },
    create: function create() {
        var swiper = this;
        Utils.extend(swiper, {
            thumbs: {
                swiper: null,
                init: Thumbs.init.bind(swiper),
                update: Thumbs.update.bind(swiper),
                onThumbClick: Thumbs.onThumbClick.bind(swiper)
            }
        });
    },
    on: {
        beforeInit: function beforeInit() {
            var swiper = this;
            var thumbs = swiper.params.thumbs;
            if (!thumbs || !thumbs.swiper) return;
            swiper.thumbs.init();
            swiper.thumbs.update(true);
        },
        slideChange: function slideChange() {
            var swiper = this;
            if (!swiper.thumbs.swiper) return;
            swiper.thumbs.update();
        },
        update: function update() {
            var swiper = this;
            if (!swiper.thumbs.swiper) return;
            swiper.thumbs.update();
        },
        resize: function resize() {
            var swiper = this;
            if (!swiper.thumbs.swiper) return;
            swiper.thumbs.update();
        },
        observerUpdate: function observerUpdate() {
            var swiper = this;
            if (!swiper.thumbs.swiper) return;
            swiper.thumbs.update();
        },
        setTransition: function setTransition(duration) {
            var swiper = this;
            var thumbsSwiper = swiper.thumbs.swiper;
            if (!thumbsSwiper) return;
            thumbsSwiper.setTransition(duration);
        },
        beforeDestroy: function beforeDestroy() {
            var swiper = this;
            var thumbsSwiper = swiper.thumbs.swiper;
            if (!thumbsSwiper) return;
            if (swiper.thumbs.swiperCreated && thumbsSwiper) {
                thumbsSwiper.destroy();
            }
        }
    }
}; // Swiper
// Class
var components = [Device$1, Support$1, Browser$1, Resize, Observer$1];
if (typeof Swiper.use === 'undefined') {
    Swiper.use = Swiper.Class.use;
    Swiper.installModule = Swiper.Class.installModule;
}
Swiper.use(components);
exports.A11y = a11y$1;
exports.Autoplay = autoplay;
exports.Controller = controller;
exports.EffectCoverflow = effectCoverflow;
exports.EffectCube = effectCube;
exports.EffectFade = effectFade;
exports.EffectFlip = effectFlip;
exports.HashNavigation = hashNavigation;
exports.History = history;
exports.Keyboard = keyboard;
exports.Lazy = lazy;
exports.Mousewheel = mousewheel;
exports.Navigation = navigation;
exports.Pagination = pagination;
exports.Parallax = parallax;
exports.Scrollbar = scrollbar;
exports.Swiper = Swiper;
exports.Thumbs = thumbs;
exports.Virtual = virtual;
exports.Zoom = zoom;