package eu.aronnax.sunsetpaddling.infra.view;

import io.micronaut.http.annotation.Controller;
import io.micronaut.http.annotation.Get;

/**
 * Controller for Seance.
 */
@Controller("/seance")
public class SeanceController {

    @Get
    public String get() {
        return "Hello, world!";
    }
}
