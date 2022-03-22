<#import "parts/default.ftlh" as c>
<@c.page>
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-header">
                    <h5 class="card-title">Сотрудники</h5>
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
                                            <th class="sorting sorting_asc" tabindex="0"
                                                aria-controls="datatables-reponsive" rowspan="1" colspan="1"
                                                style="width: 263px;" aria-sort="ascending"
                                                aria-label="Name: activate to sort column descending">ФИО
                                            </th>
                                            <th class="sorting" tabindex="0" aria-controls="datatables-reponsive"
                                                rowspan="1" colspan="1" style="width: 391px;"
                                                aria-label="Position: activate to sort column ascending">Должность
                                            </th>
                                            <th class="sorting" tabindex="0" aria-controls="datatables-reponsive"
                                                rowspan="1" colspan="1" style="width: 99px;"
                                                aria-label="Age: activate to sort column ascending">Дата рождения
                                            </th>
                                            <th class="sorting" tabindex="0" aria-controls="datatables-reponsive"
                                                rowspan="1" colspan="1" style="width: 180px;"
                                                aria-label="Start date: activate to sort column ascending">Изменить
                                            </th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <#list consumers as consumer>
                                            <tr>
                                                <td>${consumer.username}</td>
                                                <td><#list consumer.roles as role>${role}<#sep>,</#list></td>
                                                <td></td>
                                                <td><a href="/consumer/${consumer.id}">edit</a></td>
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
</@c.page>