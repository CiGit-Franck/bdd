-- Affichage des marques des avions
select name from airlines.aircraft_brands;

-- Affichage des modèles d'avion Boeing
select name from airlines.aircraft_models
where brand_idx in (select id from airlines.aircraft_brands where name = 'Boeing');

-- Affichage des villes couvertes et leurs pays
select country.name as country, city.name as city
from airlines.cities city, airlines.countries country
where country.id = city.country_idx;

select airlines.countries.name as pays, airlines.cities.name as ville
from airlines.cities
join airlines.countries on cities.country_idx = countries.id
order by pays, ville;

-- Affichage des avions AIRBUS ayant plus de 300 places triés par nb de places décroissant
select registration, seats_nb, ab.name "marque", am.name "modele"
from airlines.aircrafts, airlines.aircraft_brands ab, airlines.aircraft_models am
where seats_nb >= 300
and model_idx = am.id
and am.brand_idx = ab.id
and ab.name = 'Airbus'
order by seats_nb desc;

select registration, seats_nb, brands.name, models.name from airlines.aircrafts
join airlines.aircraft_models models on aircrafts.model_idx = models.id
join airlines.aircraft_brands brands on models.brand_idx = brands.id
where seats_nb > 300 and brands.name = 'Airbus'
order by seats_nb desc;

-- Affichage des vols intérieurs
select country.name as pays, fromcity.name as depart, tocity.name as arrival
from airlines.flights
join airlines.cities fromcity on flights.from_city = fromcity.id
join airlines.cities tocity on flights.to_city = tocity.id
join airlines.countries country on fromcity.country_idx = country.id
where fromcity.country_idx = tocity.country_idx
order by pays, depart;

-- Affichage des vols intérieurs plus longs que 5h
