package eu.aronnax.sunsetpaddling;


import io.micronaut.http.annotation.Controller;
import io.micronaut.http.annotation.Get;
import io.micronaut.views.View;
import java.util.Collections;
import java.util.Map;

/**
 * Contrôleur pour la page d'accueil.
 */
@Controller
public class HomeController {

    /**
     * Affiche la vue example.jte avec l'annotation @View.
     */
    @Get("/example")
    @View("example")
    public Map<String, Object> example() {
        return Map.of("message", "Hello, world!",
                "showTime", true);
    }

}
