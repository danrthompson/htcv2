/**
 * jQuery Cookie plugin
 *
 * Copyright (c) 2010 Klaus Hartl (stilbuero.de)
 * Dual licensed under the MIT and GPL licenses:
 * http://www.opensource.org/licenses/mit-license.php
 * http://www.gnu.org/licenses/gpl.html
 *
 */
jQuery.cookie=function(e,t,i){if(arguments.length>1&&"[object Object]"!==String(t)){if(i=jQuery.extend({},i),(null===t||void 0===t)&&(i.expires=-1),"number"==typeof i.expires){var n=i.expires,s=i.expires=new Date;s.setDate(s.getDate()+n)}return t=String(t),document.cookie=[encodeURIComponent(e),"=",i.raw?t:encodeURIComponent(t),i.expires?"; expires="+i.expires.toUTCString():"",i.path?"; path="+i.path:"",i.domain?"; domain="+i.domain:"",i.secure?"; secure":""].join("")}i=t||{};var a,r=i.raw?function(e){return e}:decodeURIComponent;return(a=new RegExp("(?:^|; )"+encodeURIComponent(e)+"=([^;]*)").exec(document.cookie))?r(a[1]):null};