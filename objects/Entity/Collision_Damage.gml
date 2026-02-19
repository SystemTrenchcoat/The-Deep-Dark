if (!damaged && damageTimer == damageCooldown && damageTag != Damage.damageTag && Damage.damageTag != "None") {
	damaged = true
	hp -= 1;
}