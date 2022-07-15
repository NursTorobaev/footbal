<#import "parts/default.ftlh" as c>
<@c.page>
    <form action="/team" method="get">
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-header">
                        <h5 class="card-title">Команды</h5>
                    </div>
                    <div class="row">
                        <div class="card-body">
                            <div id="datatables-reponsive_wrapper" class="dataTables_wrapper dt-bootstrap5 no-footer">
                                <div class="row">
                                    <div class="col-sm-12">
                                        <table id="datatables-reponsive"
                                               class="table table-striped dataTable no-footer dtr-inline"
                                               style="width: 100%;"
                                               aria-describedby="datatables-reponsive_info">
                                            <thead>
                                            <tr>
                                                <th style="width: 263px;">Наименование</th>
                                                <th style="width: 250px;">Голы</th>
                                                <th style="width: 250px;">Пропущенные</th>
                                                <th style="width: 250px;">Победы</th>
                                                <th style="width: 250px;">Поражения</th>
                                                <th style="width: 250px;">Ничьи</th>
                                                <th style="width: 250px;">Игры</th>
                                                <th style="width: 391px;">Отдел</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <#list teams as team>
                                                <tr>
                                                    <td><a href="/every-team/${team.id}">${team.name}</a></td>
                                                    <td>${team.goals}</td>
                                                    <td>${team.missed}</td>
                                                    <td>${team.wins}</td>
                                                    <td>${team.loses}</td>
                                                    <td>${team.draws}</td>
                                                    <td>${team.games}</td>
                                                    <td>${team.departmentName}</td>
                                                </tr>
                                            </#list>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                            <h5 class="text-end"><a href="team_add">Добавить</a></h5>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</@c.page>