<#import "parts/default.ftlh" as c>
<@c.page>
    <form action="/team_add" method="post" id="postForm">
        <div class="col-12">
            <div class="card">
                <div class="card-header">
                    <h5 class="card-title">Добавить команду</h5>
                </div>
                <div class="card-body">
                    <form action="/team" method="post">
                        <div class="row">
                            <div class="mb-3 col-6">
                                <label class="form-label">Команда</label>
                                <input type="text" name="teamName" class="form-control"
                                       placeholder="Наименование команды">
                            </div>
                            <div class="mb-3 col-6">
                                <label class="form-label">Отдел</label>
                                <input type="text" name="departmentName" class="form-control"
                                       placeholder="Наименование отдела">
                            </div>
                        </div>
                        <p class="text-end">
                            <button id="submitButton" type="submit" class="btn btn-primary">Сохранить</button>
                        </p>
                    </form>
                </div>
            </div>
        </div>
    </form>
</@c.page>