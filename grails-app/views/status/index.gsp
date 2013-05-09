<html>
<head>
    <meta name="layout" content="main"/>
    <title>What Are You Doing?</title>
    <g:javascript library="jquery" plugin="jquery" />
</head>
<body>
    <h1>What Are You Doing?</h1>
    <div class="updatStatusForm">
        <g:formRemote url="[action: 'updateStatus']" update="messages" name="updateStatusForm"
                      onSuccess="document.updateStatusForm.message.value='';">
            <g:textArea name="message" value=""/><br/>
            <g:submitButton name="Update Status" id="update_status_button"/>
        </g:formRemote>
    </div>
    <div id="messages">
        <twitter:renderMessages messages="${statusMessages}"/>
    </div>
</body>
</html>