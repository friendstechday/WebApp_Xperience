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
            // Copyright 2006-2007 javascript-array.com

            var timeout = 500;
            var closetimer = 0;
            var ddmenuitem = 0;

// open hidden layer
            function mopen(id)
            {
                // cancel close timer
                mcancelclosetime();

                // close old layer
                if (ddmenuitem)
                    ddmenuitem.style.visibility = 'hidden';

                // get new layer and show it
                ddmenuitem = document.getElementById(id);
                ddmenuitem.style.visibility = 'visible';

            }
// close showed layer
            function mclose()
            {
                if (ddmenuitem)
                    ddmenuitem.style.visibility = 'hidden';
            }

// go close timer
            function mclosetime()
            {
                closetimer = window.setTimeout(mclose, timeout);
            }

// cancel close timer
            function mcancelclosetime()
            {
                if (closetimer)
                {
                    window.clearTimeout(closetimer);
                    closetimer = null;
                }
            }

// close layer when click-out
            document.onclick = mclose;
        </script>
    </head>
    <body>
        <ul id="sddm">
            <li><a href="#" 
                   onmouseover="mopen('m1')" 
                   onmouseout="mclosetime()">Clientes</a>
                <div id="m1" 
                     onmouseover="mcancelclosetime()" 
                     onmouseout="mclosetime()">
                    <a href="CreatePerson.jsp">Cadastro</a>
                    <a href="#">Relatórios</a>
                </div>
            </li>
            <li><a href="#" 
                   onmouseover="mopen('m2')" 
                   onmouseout="mclosetime()">Produtos</a>
                <div id="m2" 
                     onmouseover="mcancelclosetime()" 
                     onmouseout="mclosetime()">
                    <a href="CreateProduct.jsp">Cadastro</a>
                    <a href="#">Relatórios</a>
                </div>
            </li>
            <li><a href="#">Fichas</a></li>
            <li><a href="#">Ordem de Serviço</a></li>
            <li><a href="#">Sair\</a></li>
        </ul>
        <div style="clear:both"></div>

    </body>
</html>
