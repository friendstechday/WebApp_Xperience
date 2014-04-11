<!--
  Copyright (c) 2010, Oracle. All rights reserved.

  Redistribution and use in source and binary forms, with or without
  modification, are permitted provided that the following conditions are met:

  * Redistributions of source code must retain the above copyright notice,
    this list of conditions and the following disclaimer.

  * Redistributions in binary form must reproduce the above copyright notice,
    this list of conditions and the following disclaimer in the documentation
    and/or other materials provided with the distribution.

  * Neither the name of Oracle nor the names of its contributors
    may be used to endorse or promote products derived from this software without
    specific prior written permission.

  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
  AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
  IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
  ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE
  LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
  CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
  SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
  INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
  CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
  ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF
  THE POSSIBILITY OF SUCH DAMAGE.
-->

<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%--
The taglib directive below imports the JSTL library. If you uncomment it,
you must also add the JSTL library to the project. The Add Library... action
on Libraries node in Projects view can be used to add the JSTL 1.1 library.
--%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <link href="<c:url value='/menu-2.css' />" rel="stylesheet" type="text/css" />
        <script type="text/javascript">
            var sse50 = function() {
                return {
                    initMenu: function() {
                        var m = document.getElementById('sses50');
                        if (!m)
                            return;
                        m.style.width = m.getElementsByTagName("ul")[0].offsetWidth + 1 + "px";
                        var url = document.location.href.toLowerCase();
                        var a = m.getElementsByTagName("a");
                        var k = -1;
                        var l = -1;
                        var hasEnd = 0;
                        for (var i = 0; i < a.length; i++) {
                            if (a[i].href && url.indexOf(a[i].href.toLowerCase()) !== -1 && a[i].href.length > l) {
                                k = i;
                                l = a[i].href.length;
                            }
                            if (a[i].className === "end")
                                hasEnd = 1;
                        }
                        if (k === -1 && /:\/\/(?:www\.)?[^.\/]+?\.[^.\/]+\/?$/.test) {
                            for (var i = 0; i < a.length; i++) {
                                if (a[i].getAttribute("maptopuredomain") === "true") {
                                    k = i;
                                    break;
                                }
                            }
                            if (k === -1 && a[0].getAttribute("maptopuredomain") !== "false")
                                k = 0;
                        }
                        if (k > -1) {
                            a[k].className = 'current';
                        }
                        l = a.length;
                        if (hasEnd)
                            l--;
                        for (i = 0; i < l; i++) {
                            a[i].onmouseover = function() {
                                for (j = 0; j < l; j++) {
                                    a[j].className = '';
                                }
                                this.className = 'current';
                            };
                            a[i].onmouseout = function() {
                                for (j = 0; j < l; j++) {
                                    a[j].className = '';
                                    if (k > -1) {
                                        a[k].className = 'current';
                                    }
                                }
                            };
                        }
                    }
                };
            }();
        </script>
    </head>
    <body>
        <div id="sse50">
            <div id="sses50">
                <ul>
                    <li><a href="?menu=50&skin=2&p=Javascript-Menus"><a href="ListPerson.jsp"><strong>List a Person Record</strong></a></a></li>
                    <li><a href="?menu=50&skin=2&p=Horizontal-Menus">Horizontal Menus</a></li>
                    <li><a href="?menu=50&skin=2&p=Web-Menus">Web Menus</a></li>
                </ul>
            </div>
        </div>

    </body>
</html>
