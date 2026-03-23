ALTER TABLE raid_stats
    ADD COLUMN temp_evolution_id SMALLINT UNSIGNED NOT NULL DEFAULT 0 AFTER form_id;

ALTER TABLE raid_stats
    DROP PRIMARY KEY;

ALTER TABLE raid_stats
    ADD PRIMARY KEY (date, area, fence, pokemon_id, form_id, temp_evolution_id, level);
