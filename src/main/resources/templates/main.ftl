<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>
<@c.page>
<@l.logout/>
<div>Введите данные</div>
<div>
    <form  method = "post" action = "add">
        <input type="text" name="text" placeholder="Введите сообщение"/>
        <input type="text" name="tag" placeholder="Добавьте тэг"/>
        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
        <button type="submit">Добавить</button>


    </form>
</div>
<div>Список сообщений</div>
<form method="get" action="main">
    <input type="text" name="filter" />
    <button type="submit">Найти</button>
</form>
    <#list messages as message>
        <div>
            <b>${message.id}</b>
            <span>${message.text}</span>
            <i>${message.tag}</i>
            <strong>${message.authorName}</strong>
        </div>
    <#else> No messages!!!
    </#list>


</@c.page>