<#import "parts/default.ftlh" as c>
<@c.page>
    <form action="/events" method="get">
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-header">
                        <h5 class="card-title">Команды</h5>
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
                                                <th style="width: 263px;">Наименование</th>
                                                <th style="width: 250px;">Дата с:</th>
                                                <th style="width: 250px;">Дата по:</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <#list events as event>
                                                <tr>
                                                    <td><a href="/tournament/${event.id}">${event.name}</a></td>
                                                    <td>${event.dateFrom}</td>
                                                    <td>${event.dateTo}</td>
                                                </tr>
                                            </#list>
                                            </tbody>
                                        </table>
                                    </div>
                                    <div class="text-end mt-2"><a href="team_add">Добавить</a></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</@c.page>