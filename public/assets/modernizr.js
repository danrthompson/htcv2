window.Modernizr=function(e,t,i){function n(e){p.cssText=e}function s(e,t){return typeof e===t}var a,r,o,l="2.6.1",c={},h=t.documentElement,u="modernizr",d=t.createElement(u),p=d.style,f=({}.toString," -webkit- -moz- -o- -ms- ".split(" ")),g={},m=[],v=m.slice,_=function(e,i,n,s){var a,r,o,l=t.createElement("div"),c=t.body,d=c?c:t.createElement("body");if(parseInt(n,10))for(;n--;)o=t.createElement("div"),o.id=s?s[n]:u+(n+1),l.appendChild(o);return a=["&#173;",'<style id="s',u,'">',e,"</style>"].join(""),l.id=u,(c?l:d).innerHTML+=a,d.appendChild(l),c||(d.style.background="",h.appendChild(d)),r=i(l,e),c?l.parentNode.removeChild(l):d.parentNode.removeChild(d),!!r},y={}.hasOwnProperty;o=s(y,"undefined")||s(y.call,"undefined")?function(e,t){return t in e&&s(e.constructor.prototype[t],"undefined")}:function(e,t){return y.call(e,t)},Function.prototype.bind||(Function.prototype.bind=function(e){var t=this;if("function"!=typeof t)throw new TypeError;var i=v.call(arguments,1),n=function(){if(this instanceof n){var s=function(){};s.prototype=t.prototype;var a=new s,r=t.apply(a,i.concat(v.call(arguments)));return Object(r)===r?r:a}return t.apply(e,i.concat(v.call(arguments)))};return n}),g.touch=function(){var i;return"ontouchstart"in e||e.DocumentTouch&&t instanceof DocumentTouch?i=!0:_(["@media (",f.join("touch-enabled),("),u,")","{#modernizr{top:9px;position:absolute}}"].join(""),function(e){i=9===e.offsetTop}),i};for(var b in g)o(g,b)&&(r=b.toLowerCase(),c[r]=g[b](),m.push((c[r]?"":"no-")+r));return c.addTest=function(e,t){if("object"==typeof e)for(var n in e)o(e,n)&&c.addTest(n,e[n]);else{if(e=e.toLowerCase(),c[e]!==i)return c;t="function"==typeof t?t():t,enableClasses&&(h.className+=" "+(t?"":"no-")+e),c[e]=t}return c},n(""),d=a=null,function(e,t){function i(e,t){var i=e.createElement("p"),n=e.getElementsByTagName("head")[0]||e.documentElement;return i.innerHTML="x<style>"+t+"</style>",n.insertBefore(i.lastChild,n.firstChild)}function n(){var e=v.elements;return"string"==typeof e?e.split(" "):e}function s(e){var t=m[e[f]];return t||(t={},g++,e[f]=g,m[g]=t),t}function a(e,i,n){if(i||(i=t),h)return i.createElement(e);n||(n=s(i));var a;return a=n.cache[e]?n.cache[e].cloneNode():p.test(e)?(n.cache[e]=n.createElem(e)).cloneNode():n.createElem(e),a.canHaveChildren&&!d.test(e)?n.frag.appendChild(a):a}function r(e,i){if(e||(e=t),h)return e.createDocumentFragment();i=i||s(e);for(var a=i.frag.cloneNode(),r=0,o=n(),l=o.length;l>r;r++)a.createElement(o[r]);return a}function o(e,t){t.cache||(t.cache={},t.createElem=e.createElement,t.createFrag=e.createDocumentFragment,t.frag=t.createFrag()),e.createElement=function(i){return v.shivMethods?a(i,e,t):t.createElem(i)},e.createDocumentFragment=Function("h,f","return function(){var n=f.cloneNode(),c=n.createElement;h.shivMethods&&("+n().join().replace(/\w+/g,function(e){return t.createElem(e),t.frag.createElement(e),'c("'+e+'")'})+");return n}")(v,t.frag)}function l(e){e||(e=t);var n=s(e);return v.shivCSS&&!c&&!n.hasCSS&&(n.hasCSS=!!i(e,"article,aside,figcaption,figure,footer,header,hgroup,nav,section{display:block}mark{background:#FF0;color:#000}")),h||o(e,n),e}var c,h,u=e.html5||{},d=/^<|^(?:button|map|select|textarea|object|iframe|option|optgroup)$/i,p=/^<|^(?:a|b|button|code|div|fieldset|form|h1|h2|h3|h4|h5|h6|i|iframe|img|input|label|li|link|ol|option|p|param|q|script|select|span|strong|style|table|tbody|td|textarea|tfoot|th|thead|tr|ul)$/i,f="_html5shiv",g=0,m={};!function(){try{var e=t.createElement("a");e.innerHTML="<xyz></xyz>",c="hidden"in e,h=1==e.childNodes.length||function(){t.createElement("a");var e=t.createDocumentFragment();return"undefined"==typeof e.cloneNode||"undefined"==typeof e.createDocumentFragment||"undefined"==typeof e.createElement}()}catch(i){c=!0,h=!0}}();var v={elements:u.elements||"abbr article aside audio bdi canvas data datalist details figcaption figure footer header hgroup mark meter nav output progress section summary time video",shivCSS:u.shivCSS!==!1,supportsUnknownElements:h,shivMethods:u.shivMethods!==!1,type:"default",shivDocument:l,createElement:a,createDocumentFragment:r};e.html5=v,l(t)}(this,t),c._version=l,c._prefixes=f,c.testStyles=_,c}(this,this.document),function(e,t,i){function n(e){return"[object Function]"==m.call(e)}function s(e){return"string"==typeof e}function a(){}function r(e){return!e||"loaded"==e||"complete"==e||"uninitialized"==e}function o(){var e=v.shift();_=1,e?e.t?f(function(){("c"==e.t?d.injectCss:d.injectJs)(e.s,0,e.a,e.x,e.e,1)},0):(e(),o()):_=0}function l(e,i,n,s,a,l,c){function h(t){if(!p&&r(u.readyState)&&(y.r=p=1,!_&&o(),u.onload=u.onreadystatechange=null,t)){"img"!=e&&f(function(){x.removeChild(u)},50);for(var n in S[i])S[i].hasOwnProperty(n)&&S[i][n].onload()}}var c=c||d.errorTimeout,u=t.createElement(e),p=0,m=0,y={t:n,s:i,e:a,a:l,x:c};1===S[i]&&(m=1,S[i]=[]),"object"==e?u.data=i:(u.src=i,u.type=e),u.width=u.height="0",u.onerror=u.onload=u.onreadystatechange=function(){h.call(this,m)},v.splice(s,0,y),"img"!=e&&(m||2===S[i]?(x.insertBefore(u,b?null:g),f(h,c)):S[i].push(u))}function c(e,t,i,n,a){return _=0,t=t||"j",s(e)?l("c"==t?k:w,e,t,this.i++,i,n,a):(v.splice(this.i++,0,e),1==v.length&&o()),this}function h(){var e=d;return e.loader={load:c,i:0},e}var u,d,p=t.documentElement,f=e.setTimeout,g=t.getElementsByTagName("script")[0],m={}.toString,v=[],_=0,y="MozAppearance"in p.style,b=y&&!!t.createRange().compareNode,x=b?p:g.parentNode,p=e.opera&&"[object Opera]"==m.call(e.opera),p=!!t.attachEvent&&!p,w=y?"object":p?"script":"img",k=p?"script":w,j=Array.isArray||function(e){return"[object Array]"==m.call(e)},C=[],S={},T={timeout:function(e,t){return t.length&&(e.timeout=t[0]),e}};d=function(e){function t(e){var t,i,n,e=e.split("!"),s=C.length,a=e.pop(),r=e.length,a={url:a,origUrl:a,prefixes:e};for(i=0;r>i;i++)n=e[i].split("="),(t=T[n.shift()])&&(a=t(a,n));for(i=0;s>i;i++)a=C[i](a);return a}function r(e,s,a,r,o){var l=t(e),c=l.autoCallback;l.url.split(".").pop().split("?").shift(),l.bypass||(s&&(s=n(s)?s:s[e]||s[r]||s[e.split("/").pop().split("?")[0]]),l.instead?l.instead(e,s,a,r,o):(S[l.url]?l.noexec=!0:S[l.url]=1,a.load(l.url,l.forceCSS||!l.forceJS&&"css"==l.url.split(".").pop().split("?").shift()?"c":i,l.noexec,l.attrs,l.timeout),(n(s)||n(c))&&a.load(function(){h(),s&&s(l.origUrl,o,r),c&&c(l.origUrl,o,r),S[l.url]=2})))}function o(e,t){function i(e,i){if(e){if(s(e))i||(u=function(){var e=[].slice.call(arguments);d.apply(this,e),p()}),r(e,u,t,0,c);else if(Object(e)===e)for(l in o=function(){var t,i=0;for(t in e)e.hasOwnProperty(t)&&i++;return i}(),e)e.hasOwnProperty(l)&&(!i&&!--o&&(n(u)?u=function(){var e=[].slice.call(arguments);d.apply(this,e),p()}:u[l]=function(e){return function(){var t=[].slice.call(arguments);e&&e.apply(this,t),p()}}(d[l])),r(e[l],u,t,l,c))}else!i&&p()}var o,l,c=!!e.test,h=e.load||e.both,u=e.callback||a,d=u,p=e.complete||a;i(c?e.yep:e.nope,!!h),h&&i(h)}var l,c,u=this.yepnope.loader;if(s(e))r(e,0,u,0);else if(j(e))for(l=0;l<e.length;l++)c=e[l],s(c)?r(c,0,u,0):j(c)?d(c):Object(c)===c&&o(c,u);else Object(e)===e&&o(e,u)},d.addPrefix=function(e,t){T[e]=t},d.addFilter=function(e){C.push(e)},d.errorTimeout=1e4,null==t.readyState&&t.addEventListener&&(t.readyState="loading",t.addEventListener("DOMContentLoaded",u=function(){t.removeEventListener("DOMContentLoaded",u,0),t.readyState="complete"},0)),e.yepnope=h(),e.yepnope.executeStack=o,e.yepnope.injectJs=function(e,i,n,s,l,c){var h,u,p=t.createElement("script"),s=s||d.errorTimeout;p.src=e;for(u in n)p.setAttribute(u,n[u]);i=c?o:i||a,p.onreadystatechange=p.onload=function(){!h&&r(p.readyState)&&(h=1,i(),p.onload=p.onreadystatechange=null)},f(function(){h||(h=1,i(1))},s),l?p.onload():g.parentNode.insertBefore(p,g)},e.yepnope.injectCss=function(e,i,n,s,r,l){var c,s=t.createElement("link"),i=l?o:i||a;s.href=e,s.rel="stylesheet",s.type="text/css";for(c in n)s.setAttribute(c,n[c]);r||(g.parentNode.insertBefore(s,g),f(i,0))}}(this,document),Modernizr.load=function(){yepnope.apply(window,[].slice.call(arguments,0))};