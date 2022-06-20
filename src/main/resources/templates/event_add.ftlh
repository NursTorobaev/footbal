<#import "parts/default.ftlh" as c>
<@c.page>
    <form action="/event_add" method="post">
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-header">
                        <h5 class="card-title">Добавить турнир</h5>
                        <h6 class="card-subtitle text-muted"></h6>
                    </div>
                    <div class="card-body">
                        <div class="row">
                            <div class="col-12 col-lg-6">
                                <div class="mb-3">
                                    <label>Название турнира</label>
                                    <input type="text" class="form-control" name="name">
                                    <span class="font-13"></span>
                                </div>
                                <div class="mb-3">
                                    <label>Дата с:</label>
                                    <input type="date" class="form-control" name="dateFrom">
                                    <span class="font-13">MM/ДД/ГГГГ</span>
                                </div>
                            </div>
                            <div class="col-12 col-lg-6">
                                <div class="mb-3">
                                    <label>Лого</label>
                                    <input type="file" class="form-control" name="file">
                                    <span class="font-13"></span>
                                </div>
                                <div class="mb-3">
                                    <label>Дата по:</label>
                                    <input type="date" class="form-control" name="dateTo">
                                    <span class="font-13">MM/ДД/ГГГГ</span>
                                </div>
                            </div>
                        </div>
                        <div class="form-content" id="add_form">
                            <label class="form-label">Команды</label>
                            <select class="form-control" name="teamsSelect" id="teamsSelect">
                                <#list teams as team>
                                    <option>${team}</option>
                                </#list>
                            </select>
                        </div>
                        <div class="mt-2 text-end">
                            <button type="button" class="btn btn-success" id="add_team">Добавить</button>
                        </div>
                        <div class="col-12 mt-4">
                            <div class="card">
                                <div class="table">
                                    <table id="teams" class="table">
                                        <thead>
                                        <th>#</th>
                                        <th>Команда</th>
                                        <th>Удалить</th>
                                        </thead>
                                        <tbody id="team_body">
                                        </tbody>
                                    </table>
                                    <script>
                                        document.getElementById("add_team").onclick = function () {
                                            let row = document.getElementById("teams").tBodies[0].rows.length;
                                            $("#team_body").append("<tr>\n" +
                                                "<td><label type=\"number\" name=\"number\"></label></td>" +
                                                "<td><input type=\"text\" class=\"form-control\" name=\"team\"></td>\n" +
                                                "<td><svg type=\"button\" onclick=\"deleteRow(this)\" xmlns=\"http://www.w3.org/2000/svg\" width=\"24\" height=\"24\" viewBox=\"0 0 24 24\"\n" +
                                                "fill=\"none\" stroke=\"currentColor\" stroke-width=\"2\" stroke-linecap=\"round\"\n" +
                                                "stroke-linejoin=\"round\" class=\"feather feather-trash align-middle me-2\">\n" +
                                                "<polyline points=\"3 6 5 6 21 6\"></polyline>\n" +
                                                "<path d=\"M19 6v14a2 2 0 0 1-2 2H7a2 2 0 0 1-2-2V6m3 0V4a2 2 0 0 1 2-2h4a2 2 0 0 1 2 2v2\"></path>\n" +
                                                "</svg></td>\n" +
                                                "</tr>");
                                            document.getElementsByName("team")[row].value = document.getElementById("teamsSelect").value;
                                            number();
                                        }

                                        function number() {
                                            let size = document.getElementById("teams").tBodies[0].rows.length;
                                            for (let i = 0; i < size; i++) {
                                                document.getElementsByName("number")[i].innerText = i + 1;
                                            }
                                        }

                                        function deleteRow(r) {
                                            let row = r.parentNode.rowIndex;
                                            document.getElementById("team_body").deleteRow(row);
                                            number();
                                        }
                                    </script>
                                </div>
                            </div>
                            <div class="text-end">
                                <button class="btn btn-primary" type="submit">Сохранить</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</@c.page>