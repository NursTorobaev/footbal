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
                                                <label class="form-label">Username</label>
                                                <input type="text" name="username" class="form-control form-control-lg" placeholder="Enter your username">
                                            </div>
                                            <div class="mb-3">
                                                <label class="form-label">Password</label>
                                                <input class="form-control form-control-lg" type="password" id="password" name="password" placeholder="Enter your password">
                                            </div>
                                            <div class="mb-3">
                                                <label class="form-label">Confirm password</label>
                                                <input class="form-control form-control-lg" type="password" id="password1" name="password1" placeholder="Confirm your password">
                                            </div>
                                            <script>
                                                function isCorrectPassword(s){
                                                    return !/[a-z]/.test(s) && /[A-Z]/.test(s) && /[0-9]/.test(s);
                                                }
                                                $("#password").delegate(function (){
                                                    console.log(123);
                                                    if(isCorrectPassword(document.getElementById("password").value)){
                                                        console.log("Welcome");
                                                    }
                                                })
                                                $("#password1").delegate(function (){
                                                    let a = document.getElementById("password1").value, b = document.getElementById("password").value;
                                                    if(isCorrectPassword(a) && a === b){
                                                        console.log("Welcome 1");
                                                    }
                                                })
                                            </script>
                                            <input type="hidden" name="_csrf" value="${_csrf.token}">
                                            <div><input type="submit" value="Sign In" class="btn btn-lg btn-primary"></div>
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