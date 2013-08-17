/*
 * jQuery Easing v1.3 - http://gsgd.co.uk/sandbox/jquery/easing/
 *
 * Uses the built in easing capabilities added In jQuery 1.1
 * to offer multiple easing options
 *
 * TERMS OF USE - jQuery Easing
 *
 * Open source under the BSD License.
 *
 * Copyright © 2008 George McGinley Smith
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without modification,
 * are permitted provided that the following conditions are met:
 *
 * Redistributions of source code must retain the above copyright notice, this list of
 * conditions and the following disclaimer.
 * Redistributions in binary form must reproduce the above copyright notice, this list
 * of conditions and the following disclaimer in the documentation and/or other materials
 * provided with the distribution.
 *
 * Neither the name of the author nor the names of contributors may be used to endorse
 * or promote products derived from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY
 * EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
 * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
 *  COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 *  EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE
 *  GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED
 * AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
 *  NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED
 * OF THE POSSIBILITY OF SUCH DAMAGE.
 *
*/
jQuery.easing.jswing=jQuery.easing.swing,jQuery.extend(jQuery.easing,{def:"easeOutQuad",swing:function(e,t,i,n,s){return jQuery.easing[jQuery.easing.def](e,t,i,n,s)},easeInQuad:function(e,t,i,n,s){return n*(t/=s)*t+i},easeOutQuad:function(e,t,i,n,s){return-n*(t/=s)*(t-2)+i},easeInOutQuad:function(e,t,i,n,s){return(t/=s/2)<1?n/2*t*t+i:-n/2*(--t*(t-2)-1)+i},easeInCubic:function(e,t,i,n,s){return n*(t/=s)*t*t+i},easeOutCubic:function(e,t,i,n,s){return n*((t=t/s-1)*t*t+1)+i},easeInOutCubic:function(e,t,i,n,s){return(t/=s/2)<1?n/2*t*t*t+i:n/2*((t-=2)*t*t+2)+i},easeInQuart:function(e,t,i,n,s){return n*(t/=s)*t*t*t+i},easeOutQuart:function(e,t,i,n,s){return-n*((t=t/s-1)*t*t*t-1)+i},easeInOutQuart:function(e,t,i,n,s){return(t/=s/2)<1?n/2*t*t*t*t+i:-n/2*((t-=2)*t*t*t-2)+i},easeInQuint:function(e,t,i,n,s){return n*(t/=s)*t*t*t*t+i},easeOutQuint:function(e,t,i,n,s){return n*((t=t/s-1)*t*t*t*t+1)+i},easeInOutQuint:function(e,t,i,n,s){return(t/=s/2)<1?n/2*t*t*t*t*t+i:n/2*((t-=2)*t*t*t*t+2)+i},easeInSine:function(e,t,i,n,s){return-n*Math.cos(t/s*(Math.PI/2))+n+i},easeOutSine:function(e,t,i,n,s){return n*Math.sin(t/s*(Math.PI/2))+i},easeInOutSine:function(e,t,i,n,s){return-n/2*(Math.cos(Math.PI*t/s)-1)+i},easeInExpo:function(e,t,i,n,s){return 0==t?i:n*Math.pow(2,10*(t/s-1))+i},easeOutExpo:function(e,t,i,n,s){return t==s?i+n:n*(-Math.pow(2,-10*t/s)+1)+i},easeInOutExpo:function(e,t,i,n,s){return 0==t?i:t==s?i+n:(t/=s/2)<1?n/2*Math.pow(2,10*(t-1))+i:n/2*(-Math.pow(2,-10*--t)+2)+i},easeInCirc:function(e,t,i,n,s){return-n*(Math.sqrt(1-(t/=s)*t)-1)+i},easeOutCirc:function(e,t,i,n,s){return n*Math.sqrt(1-(t=t/s-1)*t)+i},easeInOutCirc:function(e,t,i,n,s){return(t/=s/2)<1?-n/2*(Math.sqrt(1-t*t)-1)+i:n/2*(Math.sqrt(1-(t-=2)*t)+1)+i},easeInElastic:function(e,t,i,n,s){var r=1.70158,a=0,o=n;if(0==t)return i;if(1==(t/=s))return i+n;if(a||(a=.3*s),o<Math.abs(n)){o=n;var r=a/4}else var r=a/(2*Math.PI)*Math.asin(n/o);return-(o*Math.pow(2,10*(t-=1))*Math.sin((t*s-r)*2*Math.PI/a))+i},easeOutElastic:function(e,t,i,n,s){var r=1.70158,a=0,o=n;if(0==t)return i;if(1==(t/=s))return i+n;if(a||(a=.3*s),o<Math.abs(n)){o=n;var r=a/4}else var r=a/(2*Math.PI)*Math.asin(n/o);return o*Math.pow(2,-10*t)*Math.sin((t*s-r)*2*Math.PI/a)+n+i},easeInOutElastic:function(e,t,i,n,s){var r=1.70158,a=0,o=n;if(0==t)return i;if(2==(t/=s/2))return i+n;if(a||(a=s*.3*1.5),o<Math.abs(n)){o=n;var r=a/4}else var r=a/(2*Math.PI)*Math.asin(n/o);return 1>t?-.5*o*Math.pow(2,10*(t-=1))*Math.sin((t*s-r)*2*Math.PI/a)+i:.5*o*Math.pow(2,-10*(t-=1))*Math.sin((t*s-r)*2*Math.PI/a)+n+i},easeInBack:function(e,t,i,n,s,r){return void 0==r&&(r=1.70158),n*(t/=s)*t*((r+1)*t-r)+i},easeOutBack:function(e,t,i,n,s,r){return void 0==r&&(r=1.70158),n*((t=t/s-1)*t*((r+1)*t+r)+1)+i},easeInOutBack:function(e,t,i,n,s,r){return void 0==r&&(r=1.70158),(t/=s/2)<1?n/2*t*t*(((r*=1.525)+1)*t-r)+i:n/2*((t-=2)*t*(((r*=1.525)+1)*t+r)+2)+i},easeInBounce:function(e,t,i,n,s){return n-jQuery.easing.easeOutBounce(e,s-t,0,n,s)+i},easeOutBounce:function(e,t,i,n,s){return(t/=s)<1/2.75?n*7.5625*t*t+i:2/2.75>t?n*(7.5625*(t-=1.5/2.75)*t+.75)+i:2.5/2.75>t?n*(7.5625*(t-=2.25/2.75)*t+.9375)+i:n*(7.5625*(t-=2.625/2.75)*t+.984375)+i},easeInOutBounce:function(e,t,i,n,s){return s/2>t?.5*jQuery.easing.easeInBounce(e,2*t,0,n,s)+i:.5*jQuery.easing.easeOutBounce(e,2*t-s,0,n,s)+.5*n+i}});