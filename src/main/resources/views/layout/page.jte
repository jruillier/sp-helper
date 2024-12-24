@import eu.aronnax.sunsetpaddling.infra.view.LayoutViewHelper
@import io.micronaut.context.BeanLocator
@import gg.jte.Content

@param BeanLocator beanLocator
@param String pageTitle
@param Content header
@param Content content

!{var layoutViewHelper = beanLocator.getBean(LayoutViewHelper.class);}

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>

    <link rel="stylesheet" href="/css/style.css"/>
    <link rel="icon" type="image/x-icon" href="/images/favicon.ico">
    <title>${pageTitle}</title>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@1.0.*/css/bulma.min.css">
    <script src="https://unpkg.com/htmx.org@2.0.*"></script>
</head>
<body>

<header class="section">
    <div class="container">
        ${header}
    </div>
</header>

<section class="section">
    <div class="container">
        ${content}
    </div>
</section>

<div id="modals-here"
     class="modal">
</div>

</body>
</html>
