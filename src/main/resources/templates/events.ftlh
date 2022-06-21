<#import "parts/common.ftlh" as c>
<#import "parts/login.ftlh" as l>
<@c.page>
    <form action="/events" method="get">
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-header">
                        <h5 class="card-title">Турниры</h5>
                    </div>
                    <div class="row">
                        <div class="card-body">
                            <div id="datatables-reponsive_wrapper"
                                 class="dataTables_wrapper dt-bootstrap5 no-footer">
                                <div class="row">
                                    <div class="col-sm-12">
                                        <table id="datatables-reponsive"
                                               class="table table-striped dataTable no-footer dtr-inline"
                                               style="width: 100%;"
                                               aria-describedby="datatables-reponsive_info">
                                            <thead>
                                            <tr>
                                                <th>Наименование</th>
                                                <th>Дата с:</th>
                                                <th>Дата по:</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <#list events as event>
                                                <tr>
                                                    <td><a href="/eachEvent/${event.id}">${event.name}</a></td>
                                                    <td>${event.dateFrom}</td>
                                                    <td>${event.dateTo}</td>
                                                </tr>
                                            </#list>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</@c.page>