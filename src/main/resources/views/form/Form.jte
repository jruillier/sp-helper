@param io.micronaut.views.fields.Form form

<form action="${form.action()}" method="${form.method()}">
    !{var fieldset = form.fieldset();}
    @template.form.Fieldset(fieldset = fieldset)
    @template.form.Buttons()
</form>
