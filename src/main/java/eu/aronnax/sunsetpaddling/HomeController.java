package eu.aronnax.sunsetpaddling;


import gg.jte.generated.precompiled.Templates;
import io.micronaut.context.BeanLocator;
import io.micronaut.http.annotation.Controller;
import io.micronaut.http.annotation.Get;

/**
 * Contrôleur pour la page d'accueil.
 */
@Controller(produces = "text/html")
public class HomeController {

    private final Templates templates;
    private final BeanLocator beanLocator;

    public HomeController(final Templates templates, final BeanLocator beanLocator) {
        this.templates = templates;
        this.beanLocator = beanLocator;
    }

    /**
     * Affiche la vue example.jte.
     */
    @Get
    public String home() {
        return templates.Home(beanLocator).render();
    }

}
