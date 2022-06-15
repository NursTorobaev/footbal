<#import "parts/default.ftlh" as c>
<@c.page>
    <form action="/event_add" method="post">
        <label>File</label>
        <input type="file" name="file">
        <button type="submit">Submit</button>
    </form>
</@c.page>