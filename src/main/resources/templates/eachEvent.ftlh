<#import "parts/common.ftlh" as c>
<#import "parts/login.ftlh" as l>
<@c.page>

    <p3>${selectedEvent.get().name}</p3>
    <p3>${selectedEvent.get().dateFrom}</p3>
    <p3>${selectedEvent.get().dateTo}</p3>

</@c.page>