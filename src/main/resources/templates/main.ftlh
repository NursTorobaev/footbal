<#import "parts/default.ftlh" as c>
<@c.page>
<#--        <div>-->
<#--            <form method="get" action="/main">-->
<#--                <input type="text" name="filter" value="${filter!}"/>-->
<#--                <button type="submit">Найти</button>-->
<#--            </form>-->
<#--        </div>-->
<#--        <div>-->
<#--            <span><a href="/consumer">Consumers</a></span>-->
<#--        </div>-->
<#--        <form method="post" enctype="multipart/form-data">-->
<#--            <div class="mb-3 row">-->
<#--                <label class="col-form-label col-sm-2 text-sm-right">Textarea</label>-->
<#--                <div class="col-sm-10">-->
<#--                    <textarea class="form-control" placeholder="Введите сообщение" name="text" rows="3"></textarea>-->
<#--                </div>-->
<#--            </div>-->
<#--            <div class="form-control">-->
<#--                <input type="text" name="tag" placeholder="Тэг">-->
<#--            </div>-->
<#--            <button type="submit" class="btn-primary">Добавить</button>-->
<#--        </form>-->
<#--        <div>Список сообщении</div>-->
<#--        <#list messages as message>-->
<#--            <div>-->
<#--                <b>${message.id}</b>-->
<#--                <span>${message.text}</span>-->
<#--                <i>${message.tag}</i>-->
<#--                <strong>${message.authorName}</strong>-->
<#--            </div>-->
<#--        <#else>-->
<#--            No message-->
<#--        </#list>-->
<#--    </div>-->
</@c.page>