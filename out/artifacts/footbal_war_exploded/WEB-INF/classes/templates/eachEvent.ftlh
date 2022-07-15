<#import "parts/common.ftlh" as c>
<#import "parts/login.ftlh" as l>
<@c.page>
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-header">
                    <h5 class="card-title">Команды турнира ${selectedEvent.get().name}</h5>
                    <h6 class="card-title">С ${selectedEvent.get().dateFrom} -:- ${selectedEvent.get().dateTo}</h6>
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
                                            <th>Отдел</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <#list teams as team>
                                            <tr>
                                                <td>${team.name}</td>
                                                <td>${team.departmentName}</td>
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