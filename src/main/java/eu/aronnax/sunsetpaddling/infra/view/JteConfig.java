package eu.aronnax.sunsetpaddling.infra.view;

import gg.jte.ContentType;
import gg.jte.TemplateEngine;
import gg.jte.generated.precompiled.DynamicTemplates;
import gg.jte.generated.precompiled.StaticTemplates;
import gg.jte.generated.precompiled.Templates;
import gg.jte.resolve.DirectoryCodeResolver;
import io.micronaut.context.annotation.Bean;
import io.micronaut.context.annotation.Factory;
import io.micronaut.context.annotation.Value;
import jakarta.annotation.Nullable;
import java.nio.file.Path;

@Factory
public class JteConfig {

    @Bean
    Templates templates(
            @Value("${micronaut.views.jte.dynamic}") Boolean dynamicTemplates,
            @Value("${micronaut.views.jte.dynamic-source-path}") @Nullable String dynamicSourcePath) {
        if (dynamicTemplates) {
            assert dynamicSourcePath != null;
            return new DynamicTemplates(
                    TemplateEngine.create(new DirectoryCodeResolver(Path.of(dynamicSourcePath)), ContentType.Html));
        }
        return new StaticTemplates();
    }
}
