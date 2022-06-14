<#import "parts/default.ftlh" as c>
<@c.page>
    <form action="/team_add" method="post" id="postForm">
        <div class="col-10 col-xl-5">
            <div class="card">
                <div class="card-header">
                    <h5 class="card-title">Добавить команду</h5>
                </div>
                <div class="card-body">
                    <form action="/team" method="post">
                        <div class="mb-3">
                            <label class="form-label">Команда</label>
                            <input type="text" name="teamName" class="form-control"
                                   placeholder="Наименование команды">
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Отдел</label>
                            <input type="text" name="departmentName" class="form-control"
                                   placeholder="Наименование отдела">
                        </div>
                        <button id="submitButton" type="submit" class="btn btn-primary">Submit</button>
                    </form>
                </div>
            </div>
        </div>
    </form>
</@c.page>