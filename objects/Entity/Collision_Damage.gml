if (damage_state == damageState.neutral && 
	damageTimer == damageCooldown &&  
	other.damage_tag != damageTag.none && 
	other.damage_tag != self.damage_tag && 
	!other.neutral) {
		
		damage_state = damageState.damaged;
}