select * from masterid;

/*Select all players who are pichers with name John*/
select mlb_name, mlb_pos from masterid
where mlb_pos = "P" AND mlb_name like "John %";

/*select all players whose bref_id consisted of 7 characters*/
select mlb_name, bref_id from masterid 
where bref_id like '_______';

/*select all players whose mlb_names do not conatin letters 'y' or 'z'*/

select mlb_name from masterid
where mlb_name not like "%[y-z]%";