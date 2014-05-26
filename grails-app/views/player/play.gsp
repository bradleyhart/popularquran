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

    <title>Popular Quran</title>

    <link href='http://fonts.googleapis.com/css?family=Open+Sans+Condensed:300|Playfair+Display:400italic'
          rel='stylesheet' type='text/css'/>
    <asset:stylesheet src="foundation.min.css"/>
    <asset:stylesheet src="main.css"/>
    <asset:stylesheet src="app.css"/>
    <asset:javascript src="modernizr.foundation.js"/>
    <asset:stylesheet src="ligature/ligature.css"/>
    <!-- IE Fix for HTML5 Tags -->
    <!--[if lt IE 9]>
        <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
</head>
<body>
    <h4><g:link controller="mostPopular" action="${referrer}" fragment="${id}" class="back">BACK</g:link></h4>
    <div style="text-align: center">
        <iframe src="http://www.youtube.com/embed/${id}" style="min-width: 95%; min-height:95%" frameborder="0" allowfullscreen></iframe>
    </div>
</body>
</html>