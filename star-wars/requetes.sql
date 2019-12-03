-- Sélectionner les 10 planètes les plus peuplées
select name from starwars.planet
order by population desc limit 10;

-- Sélectionner les 5 planètes les plus grosses
select name from starwars.planet
order by diameter desc limit 5;

-- Compter le nombre de personnages par planète d'origine
select starwars.planet.name as planet,  count(*) as number from starwars.characters
join starwars.planet on characters.id_planet = planet.id
order planet, number;

-- Sélectionner les véhicules les plus chers de chaque catégorie de véhicule
select name as vehicule, starwars.vehicule_class.name as type, cost from starwars.vehicule
join starwars.vehicule_model on vehicule.id_model = vehicule_model.id
join starwars.vehicule_class on vehicule_model.id_class = vehicule_class.id
order by type, cost;

-- Sélectionner les vaisseaux et afficher le rapport cout / nb_passagers
?
