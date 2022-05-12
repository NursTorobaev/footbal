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
                                            <th
                                                style="width: 263px;">ФИО
                                            </th>
                                            <th style="width: 391px;">Должность
                                            </th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <#list consumers as consumer>
                                            <tr>
                                                <td>${consumer.username}</td>
                                                <td><#list consumer.roles as role>${role}<#sep>,</#list></td>
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