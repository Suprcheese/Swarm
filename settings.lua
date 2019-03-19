data:extend(
	{
		{
			type = "bool-setting",
			name = "spawners-fragment-units",
			setting_type = "runtime-global",
			default_value = true
		},
		{
			type = "bool-setting",
			name = "units-fragment-units",
			setting_type = "runtime-global",
			default_value = true
		},
		{
			type = "int-setting",
			name = "spawns-per-tick",
			setting_type = "runtime-global",
			default_value = 1,
			allowed_values = {1, 10, 25, 50, 100}
		}
	}
)
