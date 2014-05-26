<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="${assetPath(src: 'favicon.ico')}" type="image/x-icon">

    <title><g:layoutTitle default="Popular Quran"/></title>

    <asset:stylesheet src="foundation.min.css"/>
    <asset:stylesheet src="main.css"/>
    <asset:stylesheet src="app.css"/>
    <asset:javascript src="modernizr.foundation.js"/>
    <asset:stylesheet src="ligature/ligature.css"/>
    <link href='http://fonts.googleapis.com/css?family=Open+Sans+Condensed:300|Playfair+Display:400italic'
          rel='stylesheet' type='text/css'/>
    <!-- IE Fix for HTML5 Tags -->
    <!--[if lt IE 9]>
        <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
    <g:layoutHead/>
</head>

<body>

<nav>
    <div class="twelve columns header_nav">
        <div class="row">
            <nav:primary id="menu-header" class="nav-bar horizontal" scope="app"/>
            <script>$('ul#menu-header').nav-bar();</script>
        </div>
    </div>
</nav>

<header>
    <h1 class="heading_supersize">Quran</h1>

    <h2 class="welcome_text">Most Popular</h2>
</header>

<g:layoutBody/>
<g:each in="${youTubeItems}" status="i" var="item">
    <section class="${i % 2 == 1 ? 'section_dark' : 'section_light'}">
        <div class="row" id="${item.id}">
            <g:link controller="player" action="play" id="${item.id}" params="[referrer: actionName]">
                <h4>${item.title}</h4>
                <figure>
                    <img src="${item.mediumImage}"/>
                </figure>
            </g:link>
        </div>
    </section>
</g:each>

</body>
</html>
