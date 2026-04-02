if (damage_state == damageState.neutral && damageTimer == damageCooldown &&  other.damage_tag != damageTag.none && other.damage_tag != self.damage_tag && other.neutral == false) {
	damage_state = damageState.damaged;
	//show_message(string_concat(damage_tag," < ",other.damage_tag));
}
//if(damage_tag != other.damage_tag)
	//show_message(string_concat(damage_tag," < ",other.damage_tag));