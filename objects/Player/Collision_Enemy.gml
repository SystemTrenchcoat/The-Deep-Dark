if (damage_state == damageState.neutral && damageTimer == damageCooldown && other.damage_tag == damageTag.enemy) {
	damage_state = damageState.damaged;
}