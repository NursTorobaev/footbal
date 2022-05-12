<#macro page>
    <!DOCTYPE html>
    <html lang="ru" xmlns:th="http://www.thymeleaf.org">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="Responsive Bootstrap 5 Admin &amp; Dashboard Template">
        <meta name="author" content="Bootlab">

        <title>InfoSystems</title>

        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500&display=swap" rel="stylesheet">

        <!-- Choose your prefered color scheme -->
        <!-- <link href="css/light.css" rel="stylesheet"> -->
        <!-- <link href="css/dark.css" rel="stylesheet"> -->

        <!-- BEGIN SETTINGS -->
        <!-- Remove this after purchasing -->
        <link rel="stylesheet" href="/static/css/light.css">
        <!-- END SETTINGS -->
        <script>
            (function (h, o, t, j, a, r) {
                h.hj = h.hj || function () {
                    (h.hj.q = h.hj.q || []).push(arguments)
                };
                h._hjSettings = {hjid: 2120269, hjsv: 6};
                a = o.getElementsByTagName('head')[0];
                r = o.createElement('script');
                r.async = 1;
                r.src = t + h._hjSettings.hjid + j + h._hjSettings.hjsv;
                a.appendChild(r);
            })(window, document, 'https://static.hotjar.com/c/hotjar-', '.js?sv=');
        </script>
        <script async src="https://www.googletagmanager.com/gtag/js?id=G-Q3ZYEKLQ68"></script>
        <script>
            window.dataLayer = window.dataLayer || [];

            function gtag() {
                dataLayer.push(arguments);
            }

            gtag('js', new Date());

            gtag('config', 'G-Q3ZYEKLQ68');
        </script>
    </head>
    <!--
      HOW TO USE:
      data-theme: default (default), dark, light
      data-layout: fluid (default), boxed
      data-sidebar-position: left (default), right
      data-sidebar-behavior: sticky (default), fixed, compact
    -->

    <body data-theme="default" data-layout="fluid" data-sidebar-position="left" data-sidebar-behavior="sticky">
    <div class="wrapper">
        <nav id="sidebar" class="sidebar">
            <div class="sidebar-content js-simplebar">
                <a class="sidebar-brand" href="/main">
                    <svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"
                         x="0px" y="0px"
                         width="20px" height="20px" viewBox="0 0 20 20" enable-background="new 0 0 20 20"
                         xml:space="preserve">
            <path d="M19.4,4.1l-9-4C10.1,0,9.9,0,9.6,0.1l-9,4C0.2,4.2,0,4.6,0,5s0.2,0.8,0.6,0.9l9,4C9.7,10,9.9,10,10,10s0.3,0,0.4-0.1l9-4
              C19.8,5.8,20,5.4,20,5S19.8,4.2,19.4,4.1z"/>
                        <path d="M10,15c-0.1,0-0.3,0-0.4-0.1l-9-4c-0.5-0.2-0.7-0.8-0.5-1.3c0.2-0.5,0.8-0.7,1.3-0.5l8.6,3.8l8.6-3.8c0.5-0.2,1.1,0,1.3,0.5
              c0.2,0.5,0,1.1-0.5,1.3l-9,4C10.3,15,10.1,15,10,15z"/>
                        <path d="M10,20c-0.1,0-0.3,0-0.4-0.1l-9-4c-0.5-0.2-0.7-0.8-0.5-1.3c0.2-0.5,0.8-0.7,1.3-0.5l8.6,3.8l8.6-3.8c0.5-0.2,1.1,0,1.3,0.5
              c0.2,0.5,0,1.1-0.5,1.3l-9,4C10.3,20,10.1,20,10,20z"/></svg>

                    <span class="align-middle me-3">InfoSystems</span>
                </a>
                <ul class="sidebar-nav">
                    <a class="sidebar-link" href="/consumer">
                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none"
                             stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
                             class="feather feather-list align-middle">
                            <line x1="8" y1="6" x2="21" y2="6"></line>
                            <line x1="8" y1="12" x2="21" y2="12"></line>
                            <line x1="8" y1="18" x2="21" y2="18"></line>
                            <line x1="3" y1="6" x2="3.01" y2="6"></line>
                            <line x1="3" y1="12" x2="3.01" y2="12"></line>
                            <line x1="3" y1="18" x2="3.01" y2="18"></line>
                        </svg>
                        <span class="align-middle">Пользователи</span>
                    </a>
                </ul>
            </div>
        </nav>
        <div class="main">
            <main class="content">
                <#nested>
            </main>
            <footer class="footer">
                <div class="container-fluid">
                    <div class="row text-muted">
                        <div class="col-6 text-start">
                            <ul class="list-inline">
                                <li class="list-inline-item">
                                    <a class="text-muted" href="/">Home</a>
                                </li>
                            </ul>
                        </div>
                        <div class="col-6 text-end">
                            <p class="mb-0">
                                &copy; 2022 - InfoSystems
                            </p>
                        </div>
                    </div>
                </div>
            </footer>
        </div>
    </div>
    <script src="/static/js/app.js"></script>
    </body>
    </html>
</#macro>