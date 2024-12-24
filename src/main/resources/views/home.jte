@param io.micronaut.context.BeanLocator beanLocator
@param String message
@param boolean showTime

@template.layout.page(beanLocator = beanLocator, pageTitle = "SunsetPaddling", header = @``, content = @`
    <h1>Hello, ${message}!</h1>
    @if(showTime)
        <p>It is ${System.currentTimeMillis()}</p>
    @endif
`)

