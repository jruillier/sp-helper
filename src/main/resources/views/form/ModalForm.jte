@import io.micronaut.context.BeanLocator
@import io.micronaut.views.fields.Fieldset

@param BeanLocator beanLocator
@param String hxPut = null
@param String hxDelete = null
@param String title
@param Fieldset fieldset
@param boolean readOnly = false

<form
        hx-put="${hxPut}"
        hx-delete="${hxDelete}"
        onsubmit="htmx.removeClass(htmx.find('#modals-here'), 'is-active')"
        onreset="htmx.removeClass(htmx.find('#modals-here'), 'is-active')"
>

    <div class="modal-background"></div>
    <div class="modal-card">
        <div class="modal-card-head">
            <p class="modal-card-title">${title}</p>
        </div>
        <div class="modal-card-body">
            <div class="container">
                @template.form.Fieldset(fieldset = fieldset, readOnly)
            </div>
        </div>
        <div class="modal-card-foot">
            @template.form.Buttons()
        </div>
    </div>

</form>
