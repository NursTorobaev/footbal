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
                                &copy; 2022 - <a class="text-muted" href="/main">InfoSystems</a>
                            </li>
                            <li class="list-inline-item">
                                <a class="text-muted" href="https://www.uefa.tv/">news</a>
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
        </footer>
        <script>
            let role = document.getElementById('hiddenRole').value;
            if (role !== '[ADMIN]') document.getElementById('onlyAdmin').style.display = 'none';
        </script>
    </div>
</@c.page>