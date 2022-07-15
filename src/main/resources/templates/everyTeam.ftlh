<#import "parts/default.ftlh" as c>
<@c.page>
    <form action="/events" method="get">
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-header">
                        <h5 class="card-title">Игроки</h5>
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
                                                <th>Номер</th>
                                                <th>ФИО</th>
                                                <th>Должность</th>
                                                <th>Дата рождения</th>
                                                <th>Позиция</th>
                                                <th>Команда</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <#list players as player>
                                                <tr>
                                                    <td>${player.number}</td>
                                                    <td>${player.name}</td>
                                                    <td>${player.workPosition}</td>
                                                    <td>${player.birthday}</td>
                                                    <td>${player.position}</td>
                                                    <td>${player.team.name}</td>
                                                </tr>
                                            </#list>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                            <h5 class="text-end"><a href="player_add">Добавить</a></h5>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</@c.page>