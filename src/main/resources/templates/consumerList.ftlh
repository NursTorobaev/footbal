<#import "parts/common.ftlh" as c>

<@c.page>
    List of consumers
    <table>
        <thead>
        <tr>
            <th>Name</th>
            <th>Role</th>
            <th></th>
        </tr>
        </thead>
        <tbody>
        <#list consumers as consumer>
            <tr>
                <td>${consumer.username}</td>
                <td><#list consumer.roles as role>${role}<#sep>,</#list></td>
                <td><a href="/consumer/${consumer.id}">edit</a></td>
            </tr>
        </#list>
        </tbody>
    </table>
</@c.page>