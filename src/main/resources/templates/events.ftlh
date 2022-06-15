<#import "parts/common.ftlh" as c>
<#import "parts/login.ftlh" as l>
<@c.page>
    <div class="main">
        <input type="hidden" value="${consumer}" id="hiddenRole"/>
        <footer class="footer">
            <div class="container-fluid">
                <div class="row text-muted">
                    <div class="col-6 text-start">
                        <ul class="list-inline">
                            <li class="list-inline-item" id="onlyAdmin">
                                <a class="text-muted" href="/main">InfoSystems</a>
                            </li>
                            <li class="list-inline-item">
                                <a class="text-muted" href="/">Команды</a>
                            </li>
                            <li class="list-inline-item">
                                <a class="text-muted" href="/events">Турниры</a>
                            </li>
                            <li class="list-inline-item">
                                <a class="text-muted" href="https://www.uefa.tv/">Новости</a>
                            </li>
                        </ul>
                    </div>
                    <div class="col-6 text-end">
                        <p class="mb-0">
                        <div class="text-end"><@l.logout/></div>
                        </p>
                    </div>
                </div>
            </div>
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
                                                        <th style="width: 250px;">Логотип</th>
                                                    </tr>
                                                    </thead>
                                                    <tbody>
                                                    <#list events as event>
                                                        <tr>
                                                            <td>${event.name}</td>
                                                            <td>${event.dateFrom}</td>
                                                            <td>${event.dateTo}</td>
                                                            <td>${event.logo}</td>
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
        </footer>
        <script>
            let role = document.getElementById('hiddenRole').value;
            if (role !== '[ADMIN]') document.getElementById('onlyAdmin').style.display = 'none';
        </script>
    </div>
</@c.page>