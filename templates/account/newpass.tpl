<div class="row-fluid">
    <div class="container">
        <div class="headerBox-List">
            <div class="span8">
                <h2>{{ (customer.password ? 'Cambiar Contraseña' : 'Activar cuenta') | translate }}</h2>
            </div>
            <div class="span4 breadcrumbs-wrapper">
                {% snipplet "breadcrumbs.tpl" %}
            </div>
        </div>
        <div class="account-form-wrapper span6 offset3 sst">
            <form action="" method="post" class="form-horizontal">
                {% if failure %}
                    <div class="st alert alert-error">{{ 'Las contraseñas no coinciden.' | translate }}</div>
                {% endif %}
                <div class="control-group">
                    <label class="control-label" for="password">{{ 'Contraseña' | translate }}</label>
                    <div class="controls">
                        <input type="password" name="password" id="password" />
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label" for="password_confirm">{{ 'Confirmar Contraseña' | translate }}</label>
                    <div class="controls">
                        <input type="password" name="password_confirm" id="password_confirm" />
                    </div>
                </div>
                <div class="control-group">
                    <div class="controls">
                        <input class="submit_button" type="submit" value="{{ (customer.password ? 'Cambiar contraseña' : 'Activar cuenta')  | translate }}" />
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
