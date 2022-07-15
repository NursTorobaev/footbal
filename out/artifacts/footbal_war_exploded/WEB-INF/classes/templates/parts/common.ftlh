<#macro page>
    <!DOCTYPE html>
    <html xmlns:th="http://www.thymeleaf.org" lang="ru">
    <head>
        <meta charset="UTF-8">
        <title>Home</title>
        <link rel="stylesheet" href="/static/css/light.css">
    </head>
    <body>
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
                                <a class="text-muted" href="/participants">Игроки</a>
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
                <#nested>
        </footer>
        <script>
            let role = document.getElementById('hiddenRole').value;
            if (role !== '[ADMIN]') document.getElementById('onlyAdmin').style.display = 'none';
        </script>
    </div>
    </body>
    </html>
</#macro>