<html>
    <head>
        <title>Page of ${person.username}</title>
        <meta name="layout" content="main" />
    </head>
    <body>
        <div id="pageBody">
            <sec:ifLoggedIn>
                <g:if test="${person.username.compareTo(sec.username().toString()) != 0}">
                    <g:if test="${!isFollowing}">
                        <a href="/grailstwitter/home/follow?username=${person.username}">follow</a>
                    </g:if>
                    <g:else>
                        <a href="/grailstwitter/home/unfollow?username=${person.username}">unfollow</a>
                    </g:else>
                </g:if>
            </sec:ifLoggedIn>
        	<div id="messages">
                <twitter:renderMessages messages="${statusMessages}"/>
    		</div>
        </div>
    </body>
</html>
