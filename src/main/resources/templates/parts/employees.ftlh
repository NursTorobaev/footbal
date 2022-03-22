<#macro page>
    <main class="content">
        <div class="col-12 col-xl-6">
            <div class="card">
                <div class="card-header">
                    <h5 class="card-title">Basic form</h5>
                    <h6 class="card-subtitle text-muted">Default Bootstrap form layout.</h6>
                </div>
                <div class="card-body">
                    <form method="post">

                        <div class="mb-3">
                            <label class="form-label">ФИО</label>
                            <input type="text" class="form-control" placeholder="ФИО" name="full_name">
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Должность</label>
                            <input type="text" class="form-control" placeholder="Должность" name="position">
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Дата рождения</label>
                            <input type="date" class="form-control" placeholder="Дата рождения" name="birthday">
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Номер телефона</label>
                            <input type="number" class="form-control" placeholder="Номер телефона" name="phone_number">
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Адрес</label>
                            <textarea class="form-control" placeholder="Адресс" rows="1" name="address"></textarea>
                        </div>

                        <button type="submit" class="btn btn-primary">Submit</button>
                    </form>
                </div>
            </div>
        </div>
        <div class="col-xl-8">
            <div class="card">
                <div class="card-header">
                    <div class="card-actions float-end">
                        <div class="dropdown position-relative">
                            <a href="#" data-bs-toggle="dropdown" data-bs-display="static">
                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"
                                     fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"
                                     stroke-linejoin="round" class="feather feather-more-horizontal align-middle">
                                    <circle cx="12" cy="12" r="1"></circle>
                                    <circle cx="19" cy="12" r="1"></circle>
                                    <circle cx="5" cy="12" r="1"></circle>
                                </svg>
                            </a>
                        </div>
                    </div>
                    <h5 class="card-title mb-0">Clients</h5>
                </div>
                <div class="card-body">
                    <div id="datatables-clients_wrapper" class="dataTables_wrapper dt-bootstrap5 no-footer">
                        <div class="row">
                            <div class="col-sm-12">
                                <table id="datatables-clients"
                                       class="table table-striped dataTable no-footer dtr-inline" style="width: 100%;"
                                       aria-describedby="datatables-clients_info">
                                    <thead>
                                    <tr>
                                        <th class="sorting" tabindex="0" aria-controls="datatables-clients" rowspan="1"
                                            colspan="1" style="width: 52px;"
                                            aria-label="#: activate to sort column ascending">#
                                        </th>
                                        <th class="sorting sorting_asc" tabindex="0" aria-controls="datatables-clients"
                                            rowspan="1" colspan="1" style="width: 206px;" aria-sort="ascending"
                                            aria-label="Name: activate to sort column descending">Name
                                        </th>
                                        <th class="sorting" tabindex="0" aria-controls="datatables-clients" rowspan="1"
                                            colspan="1" style="width: 160px;"
                                            aria-label="Company: activate to sort column ascending">Company
                                        </th>
                                        <th class="sorting" tabindex="0" aria-controls="datatables-clients" rowspan="1"
                                            colspan="1" style="width: 270px;"
                                            aria-label="Email: activate to sort column ascending">Email
                                        </th>
                                        <th class="sorting" tabindex="0" aria-controls="datatables-clients" rowspan="1"
                                            colspan="1" style="width: 99px;"
                                            aria-label="Status: activate to sort column ascending">Status
                                        </th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr class="odd">
                                        <td class="dtr-control" tabindex="0"><img src="/static/image/avatar-3.jpg"
                                                                                  width="32" height="32"
                                                                                  class="rounded-circle my-n1"
                                                                                  alt="Avatar"></td>
                                        <td class="sorting_1">Angelica Ramos</td>
                                        <td>The Wiz</td>
                                        <td>angelica@ramos.com</td>
                                        <td><span class="badge bg-success">Active</span></td>
                                    </tr>
                                    <tr class="even">
                                        <td class="dtr-control" tabindex="0"><img src="/static/image/avatar.jpg"
                                                                                  width="32" height="32"
                                                                                  class="rounded-circle my-n1"
                                                                                  alt="Avatar"></td>
                                        <td class="sorting_1">Ashton Cox</td>
                                        <td>Levitz Furniture</td>
                                        <td>ashton@cox.com</td>
                                        <td><span class="badge bg-success">Active</span></td>
                                    </tr>
                                    <tr class="odd">
                                        <td class="dtr-control" tabindex="0"><img src="/static/image/avatar-4.jpg"
                                                                                  width="32" height="32"
                                                                                  class="rounded-circle my-n1"
                                                                                  alt="Avatar"></td>
                                        <td class="sorting_1">Brenden Wagner</td>
                                        <td>The Wiz</td>
                                        <td>brenden@wagner.com</td>
                                        <td><span class="badge bg-warning">Inactive</span></td>
                                    </tr>
                                    <tr class="even">
                                        <td class="dtr-control" tabindex="0"><img src="/static/image/avatar-2.jpg"
                                                                                  width="32" height="32"
                                                                                  class="rounded-circle my-n1"
                                                                                  alt="Avatar"></td>
                                        <td class="sorting_1">Charde Marshall</td>
                                        <td>Price Savers</td>
                                        <td>charde@marshall.com</td>
                                        <td><span class="badge bg-success">Active</span></td>
                                    </tr>
                                    <tr class="odd">
                                        <td class="dtr-control" tabindex="0"><img src="/static/image/avatar-3.jpg"
                                                                                  width="32" height="32"
                                                                                  class="rounded-circle my-n1"
                                                                                  alt="Avatar"></td>
                                        <td class="sorting_1">Doris Wilder</td>
                                        <td>Red Robin Stores</td>
                                        <td>doris@wilder.com</td>
                                        <td><span class="badge bg-warning">Inactive</span></td>
                                    </tr>
                                    <tr class="even">
                                        <td class="dtr-control" tabindex="0"><img src="/static/image/avatar-4.jpg"
                                                                                  width="32" height="32"
                                                                                  class="rounded-circle my-n1"
                                                                                  alt="Avatar"></td>
                                        <td class="sorting_1">Fiona Green</td>
                                        <td>The Sample</td>
                                        <td>fiona@green.com</td>
                                        <td><span class="badge bg-warning">Inactive</span></td>
                                    </tr>
                                    <tr class="odd">
                                        <td class="dtr-control" tabindex="0"><img src="/static/image/avatar.jpg"
                                                                                  width="32" height="32"
                                                                                  class="rounded-circle my-n1"
                                                                                  alt="Avatar"></td>
                                        <td class="sorting_1">Garrett Winters</td>
                                        <td>Good Guys</td>
                                        <td>garrett@winters.com</td>
                                        <td><span class="badge bg-success">Active</span></td>
                                    </tr>
                                    <tr class="even">
                                        <td class="dtr-control" tabindex="0"><img src="/static/image/avatar-5.jpg"
                                                                                  width="32" height="32"
                                                                                  class="rounded-circle my-n1"
                                                                                  alt="Avatar"></td>
                                        <td class="sorting_1">Gavin Cortez</td>
                                        <td>Red Robin Stores</td>
                                        <td>gavin@cortez.com</td>
                                        <td><span class="badge bg-success">Active</span></td>
                                    </tr>
                                    <tr class="odd">
                                        <td class="dtr-control" tabindex="0"><img src="/static/image/avatar-2.jpg"
                                                                                  width="32" height="32"
                                                                                  class="rounded-circle my-n1"
                                                                                  alt="Avatar"></td>
                                        <td class="sorting_1">Haley Kennedy</td>
                                        <td>Helping Hand</td>
                                        <td>haley@kennedy.com</td>
                                        <td><span class="badge bg-danger">Deleted</span></td>
                                    </tr>
                                    <tr class="even">
                                        <td class="dtr-control" tabindex="0"><img src="/static/image/avatar-5.jpg"
                                                                                  width="32" height="32"
                                                                                  class="rounded-circle my-n1"
                                                                                  alt="Avatar"></td>
                                        <td class="sorting_1">Howard Hatfield</td>
                                        <td>Price Savers</td>
                                        <td>howard@hatfield.com</td>
                                        <td><span class="badge bg-warning">Inactive</span></td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>
</#macro>