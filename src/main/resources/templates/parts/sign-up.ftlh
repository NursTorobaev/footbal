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
                                                <input type="text" name="username" class="form-control form-control-lg"
                                                       placeholder="Enter your username" required>
                                            </div>
                                            <div class="mb-3">
                                                <label class="form-label">Password</label>
                                                <input class="form-control form-control-lg" type="password"
                                                       id="password" name="password" placeholder="Enter your password"
                                                       onchange="pass1()" required>
                                                <small><p>[a-z A-Z 0-9] and password length must be at least 6</p>
                                                </small>
                                            </div>
                                            <div class="mb-3">
                                                <label class="form-label">Confirm password</label>
                                                <input class="form-control form-control-lg" type="password"
                                                       id="password1" name="password1"
                                                       placeholder="Confirm your password" onchange="pass2()" required>
                                            </div>
                                            <!-- Include a polyfill for ES6 Promises (optional) for IE11 and Android browser -->
                                            <script src="/static/js/min.js"></script>
                                            <script>
                                                function isCorrectPassword(s) {
                                                    const alphabet = "abcdefghijklmnopqrstuvwxyz";
                                                    const numbers = "0123456789";
                                                    let ch = 0;
                                                    for (let i of alphabet) {
                                                        if (s.includes(i)) {
                                                            ch++;
                                                            break;
                                                        }
                                                    }
                                                    for (let i of numbers) {
                                                        if (s.includes(i)) {
                                                            ch++;
                                                            break;
                                                        }
                                                    }
                                                    for (let i of alphabet.toUpperCase()) {
                                                        if (s.includes(i)) {
                                                            ch++;
                                                            break;
                                                        }
                                                    }
                                                    return ch === 3 && s.length >= 6;
                                                }

                                                function pass1() {
                                                    let password = document.getElementById('password').value;
                                                    if (!isCorrectPassword(password)) {
                                                        Swal.fire("password isn't strong");
                                                        document.getElementById('password').value = '';
                                                    }
                                                }

                                                function pass2() {
                                                    let password = document.getElementById('password1').value;
                                                    let password1 = document.getElementById('password').value;
                                                    if (!isCorrectPassword(password)) {
                                                        Swal.fire("password isn't strong");
                                                        document.getElementById('password1').value = '';
                                                    } else if (password !== password1) {
                                                        Swal.fire("passwords do not match");
                                                        document.getElementById('password').value = '';
                                                        document.getElementById('password1').value = '';
                                                    }
                                                }
                                            </script>
                                            <div><input type="submit" value="Sign In" class="btn btn-lg btn-primary">
                                            </div>
                                            <div><a class="text-end" href="/">Home</a></div>
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