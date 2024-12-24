package eu.aronnax.sunsetpaddling.infra.view;

import io.micronaut.runtime.http.scope.RequestScope;
//import io.micronaut.security.utils.SecurityService;

@RequestScope
public class LayoutViewHelper {

//    private final SecurityService securityService;

//    public LayoutViewHelper(SecurityService securityService) {
//        this.securityService = securityService;
//    }

    public boolean isAuthenticated() {
//        return securityService.isAuthenticated();
        return false;
    }

    public String getPrincipalName() {
//        return securityService.username().orElse(null);
        return "anynymous";
    }
}
