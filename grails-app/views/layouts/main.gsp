<html>
    <head>
        <title><g:layoutTitle default="Grails" /></title>
        <link rel="stylesheet" href="${resource(dir:'css',file:'main.css')}" />
        <link rel="stylesheet" href="${resource(dir:'css',file:'grailstwitter.css')}" />
        <link rel="shortcut icon" href="${resource(dir:'images',file:'favicon.ico')}" type="image/x-icon" />
        <g:layoutHead />
        <g:javascript library="application" />
    </head>
    <body>

        <div class="pageBody">
            <div id="spinner" class="spinner" style="display:none;">
                <img src="${resource(dir:'images',file:'spinner.gif')}" alt="code:'spinner.alt',default:'Loading...')}" />
            </div>
            <div id="nav">
                <ul>
                    <li><g:link controller="home">Home</g:link></li>
                    <sec:ifLoggedIn>
                        <li><g:link controller="status">Update status</g:link></li>
                        <li><a href="/grailstwitter/person/${sec.username()}">My page</a></li>
                        <strong><sec:username/></strong> (<g:link controller="logout">logout</g:link>)<br/><br/>
                    </sec:ifLoggedIn>
                    <sec:ifNotLoggedIn>
                        <li><g:link url="[controller: 'login', action:'auth']">Login</g:link></li>
                    </sec:ifNotLoggedIn>
                </ul>
            </div>
            <g:layoutBody />
        </div>

    </body>
</html>
