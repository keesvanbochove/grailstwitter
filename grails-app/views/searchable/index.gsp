<html>
<head>
    <meta name="layout" content="main"/>
    <title>User Search Results</title>
</head>
<body>
        <g:each var="person" in="${searchResult?.results}" status="counter">
        <div id="search_result_${counter}">
            <span class="real_name">${person.realName}</span>
            <a href="/grailstwitter/status/follow?username=${person.username}">follow</a>
            </div>
        </g:each>
</body>
</html>