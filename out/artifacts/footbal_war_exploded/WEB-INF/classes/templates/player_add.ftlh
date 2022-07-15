<#import "parts/default.ftlh" as c>
<@c.page>
    <form action="/player_add" method="post">
        <div class="col-12">
            <div class="card">
                <div class="card-header">
                    <h5 class="card-title">Добавить игрока</h5>
                </div>
                <div class="card-body">
                    <form action="/team" method="post">
                        <div class="row">
                            <div class="mb-3 col-6">
                                <label class="form-label">Игрок</label>
                                <input type="text" name="name" class="form-control"
                                       placeholder="ФИО">
                            </div>
                            <div class="mb-3 col-6">
                                <label class="form-label">Номер</label>
                                <input type="number" name="number" class="form-control"
                                       placeholder="Номер игрока">
                            </div>
                            <div class="mb-3 col-6">
                                <label class="form-label">Дата рождения</label>
                                <input type="date" name="birthday" class="form-control"
                                       placeholder="Дата рождения игрока">
                            </div>
                            <div class="mb-3 col-6">
                                <label class="form-label">Должность</label>
                                <input type="text" name="workPosition" class="form-control"
                                       placeholder="Должность игрока">
                            </div>
                            <div class="mb-3 col-6">
                                <label class="form-label">Команда</label>
                                <select class="form-control" name="selectedTeam" id="teamSelect">
                                    <#list teams as team>
                                        <option>${team.name}</option>
                                    </#list>
                                </select>
                            </div>
                            <div class="mb-3 col-6">
                                <label class="form-label">Место</label>
                                <select class="form-control" name="position" id="positionSelect">
                                    <option>Форвард</option>
                                    <option>Оттянутый нападающий</option>
                                    <option>Вингер</option>
                                    <option>Полусредний нападающий</option>
                                    <option>Вратарь</option>
                                    <option>Центральный опорный полузащитник</option>
                                    <option>Центральный полузащитник</option>
                                    <option>Центральный атакующий полузащитник</option>
                                    <option>Фланговый полузащитник</option>
                                    <option>Центральный защитник</option>
                                    <option>Свободный защитник (либеро)</option>
                                    <option>Фланговый защитник</option>
                                </select>
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