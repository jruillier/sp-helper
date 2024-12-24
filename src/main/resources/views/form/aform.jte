@param io.micronaut.views.fields.Form form

<form action="${form.action()}" method="${form.method()}">
    !{var fieldset = form.fieldset();}
    @template.form.fieldset(fieldset = fieldset)
    @template.form.buttons()
</form>
