@param io.micronaut.views.fields.Fieldset fieldset
@param boolean readOnly = false


<fieldset class="column is-half">
    @for(var field : fieldset.fields())
        @if (field instanceof io.micronaut.views.fields.elements.InputTextFormElement formElement)
            <div class="field">
                <label
                        class="label"
                        for="${formElement.id()}"
                >${formElement.label().defaultMessage()}</label>
                <input
                        class="input"
                        id="${formElement.id()}"
                        type="text"
                        name="${formElement.name()}"
                        required="${formElement.required()}"
                        minlength="${formElement.minLength()}"
                        maxlength="${formElement.maxLength()}"
                        disabled="${readOnly}"
                        value="${formElement.value()}"
                />
            </div>
        @elseif(field instanceof io.micronaut.views.fields.elements.InputPasswordFormElement formElement)
            <div class="field">
                <label
                        class="label"
                        for="${formElement.id()}"
                >${formElement.label().defaultMessage()}</label>
                <input
                        class="input"
                        id="${formElement.id()}"
                        type="password"
                        name="${formElement.name()}"
                        required="${formElement.required()}"
                        minlength="${formElement.minLength()}"
                        maxlength="${formElement.maxLength()}"
                        disabled="${readOnly}"
                        value="${formElement.value()}"
                />
            </div>
        @elseif(field instanceof io.micronaut.views.fields.elements.InputDateFormElement formElement)
            <div class="field">
                <label
                        class="label"
                        for="${formElement.id()}"
                >${formElement.label().defaultMessage()}</label>
                <input
                        class="input"
                        id="${formElement.id()}"
                        type="date"
                        name="${formElement.name()}"
                        required="${formElement.required()}"
                        disabled="${readOnly}"
                        value="${formElement.value() + ""}"
                />
            </div>
        @elseif(field instanceof io.micronaut.views.fields.elements.SelectFormElement formElement)
            <div class="field">
                <label
                        class="label"
                        for="${formElement.id()}"
                >${formElement.label().defaultMessage()}</label>
                <div class="select">
                    <select
                            class="form-select"
                            id="${formElement.id()}"
                            name="${formElement.name()}"
                            required="${formElement.required()}"
                            disabled="${readOnly}"
                    >
                        <option></option>
                        @for(var option : formElement.options())
                            <option value="${option.value()}"
                                    selected="${option.selected()}"
                                    disabled="${option.disabled()}">
                                ${option.label().defaultMessage()}
                            </option>
                        @endfor
                    </select>
                </div>
            </div>
        @elseif(field instanceof io.micronaut.views.fields.elements.InputSubmitFormElement)
        @else
            <div>
                ${field.toString()}
            </div>
        @endif
    @endfor
</fieldset>