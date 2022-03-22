<#import "parts/default.ftlh" as c>
<#import "parts/employees.ftlh" as cal>
<@c.page>
    <@cal.page>
    </@cal.page>
    <script src="/static/js/app.js"></script>
    <script>
        document.addEventListener("DOMContentLoaded", function() {
            // Datatables clients
            $("#datatables-clients").DataTable({
                responsive: true,
                order: [
                    [1, "asc"]
                ]
            });
        });
    </script>
</@c.page>