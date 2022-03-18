<#macro login path>
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
                                                <label class="form-label">Username</label>
                                                <input type="text" name="username" class="form-control form-control-lg" placeholder="Enter your username">
                                            </div>
                                            <div class="mb-3">
                                                <label class="form-label">Password</label>
                                                <input class="form-control form-control-lg" type="password" name="password" placeholder="Enter your password">
                                            </div>
                                            <input type="hidden" name="_csrf" value="${_csrf.token}">
                                            <div><input type="submit" value="Sign In" class="btn btn-lg btn-primary"></div>
                                            <div><a href="/sign-up">Sign Up</a></div>
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
<#macro logout>
    <form action="/logout" method="post">
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <input type="submit" value="Sign Out">
    </form>
</#macro>