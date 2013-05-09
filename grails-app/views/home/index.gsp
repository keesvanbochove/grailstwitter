<html>
    <head>
        <title>Welcome to Gtwitter</title>
        <meta name="layout" content="main" />
    </head>
    <body>
        <div id="nav">
        	<p>Welcome on the home page</p>
        </div>
        <div id="pageBody">
        	<div id="messages">
        		<twitter:renderMessages messages="${statusMessages}"/>
    		</div>
        </div>
    </body>
</html>
