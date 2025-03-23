extends Node3D

signal happiness_changed(old_value, new_value)
signal hunger_changed(old_value, new_value)
signal mana_changed(old_value, new_value)
signal discipline_changed(old_value, new_value)
signal light_changed(old_value, new_value)

@export var happiness: int = 1:
	set(new_value):
		happiness_changed.emit(happiness, new_value)
		happiness = new_value
@export var hunger: int = 1:
	set(new_value):
		hunger_changed.emit(hunger, new_value)
		hunger = new_value
@export var mana: int = 1:
	set(new_value):
		mana_changed.emit(mana, new_value)
		mana = new_value
@export var discipline: int = 1:
	set(new_value):
		discipline_changed.emit(discipline, new_value)
		discipline = new_value
@export var light: bool = true:
	set(new_value):
		light_changed.emit(light, new_value)
		light = new_value
		
func incr_happiness():
	happiness += 1;
func incr_hunger():
	hunger += 1;
func incr_mana():
	mana += 1;
func incr_discipline():
	discipline += 1;

func decr_happiness():
	happiness -= 1;
func decr_hunger():
	hunger -= 1;
func decr_mana():
	mana -= 1;
func decr_discipline():
	discipline -= 1;
