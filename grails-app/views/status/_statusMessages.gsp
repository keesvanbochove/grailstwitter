<div class="statusMessage" id="message_${messageCounter}">
    <a class="author" href="/grailstwitter/person/${statusMessage.author.username}">${statusMessage.author.realName}</a> said
    <span class="statusMessage">${statusMessage.message}</span><br/>
    <div class="statusMessageTime">at <g:formatDate date="${statusMessage.dateCreated}"/></div>
</div>
