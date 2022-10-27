<#macro signUp path>
    <div class="main d-flex justify-content-center w-100">
        <main class="content d-flex p-0">
            <div class="container d-flex flex-column">
                <div class="row h-100">
                    <div class="col-sm-10 col-md-8 col-lg-6 mx-auto d-table h-100">
                        <div class="d-table-cell align-middle">
                            <div class="card">
                                <div class="card-body">
                                    <div class="m-sm-4">
                                        <form action="${path}" method="post">
                                            <div class="mb-3">
                                                <label class="form-label">Пользователь</label>
                                                <input type="text" name="username" class="form-control form-control-lg"
                                                       placeholder="Введите пользователя" required>
                                            </div>
                                            <div class="mb-3">
                                                <label class="form-label">Пароль</label>
                                                <input class="form-control form-control-lg" type="password"
                                                       id="password" name="password" placeholder="Введите пароль"
                                                       required>
                                                <small><p>Введите в диапазоне [a-z A-Z 0-9] не менее 6 знаков</p>
                                                </small>
                                            </div>
                                            <div class="mb-3">
                                                <label class="form-label">Подтвердите пароль</label>
                                                <input class="form-control form-control-lg" type="password"
                                                       id="password1" name="password1"
                                                       placeholder="Подтвердите ваш пароль" required>
                                            </div>
                                            <div>
                                                <input type="submit" value="Войти" class="btn btn-lg btn-primary">
                                            </div>
                                            <div class="mb-3">
                                                <a class="text-end" href="/">Главная станица</a>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </main>
    </div>
</#macro>