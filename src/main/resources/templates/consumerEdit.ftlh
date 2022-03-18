<#import "parts/common.ftlh" as c>
<@c.page>
    Consumer editor
    <form action="/consumer" method="post">
        <input type="text" name="username" value="${consumer.username}">
        <#list roles as role>
            <div>
                <label><input type="checkbox" name="${role}" ${consumer.roles?seq_contains(role)?string("checked", "")}>${role}</label>
            </div>
        </#list>
        <input type="hidden" value="${consumer.id}" name="consumerId">
        <button type="submit">Save</button>
    </form>
</@c.page>