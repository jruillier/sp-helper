package eu.aronnax.sunsetpaddling.domain.entity;

import java.time.LocalDateTime;
import java.util.Set;

public record Seance(LocalDateTime horodate, String titre, Set<Personne> participants) {
}
