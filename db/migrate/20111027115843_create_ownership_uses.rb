class CreateOwnershipUses < ActiveRecord::Migration
  def up
  	execute <<-SQL
CREATE VIEW V_OWNERSHIPS_USE AS 
	SELECT 
		exercises.starting_date,
		exercises.ending_date,
		ownerships.starting_date,
		ownerships.ending_date,
		ownerships.id ownership_id,
		exercises.id exercise_id,
		units.id unit_id,
		ownerships.type_id type_id,
		round(case 
				when  date(ownerships.starting_date) < date(exercises.starting_date) then 
					case 
						when ownerships.ending_date is not null and date(ownerships.ending_date) < date(exercises.ending_date) then
							julianday(ownerships.ending_date) - julianday(exercises.starting_date) 
						else
							julianday(exercises.ending_date) - julianday(exercises.starting_date) 
					end
				else 
					case 
						when ownerships.ending_date is not null and date(ownerships.ending_date) < date(exercises.ending_date) then
							julianday(ownerships.ending_date) - julianday(ownerships.starting_date) 
						else
							julianday(exercises.ending_date) - julianday(ownerships.starting_date) 
					end
			end) days
	from ownerships
	join units on units.id = ownerships.unit_id
	join staircases on staircases.id = units.staircase_id
	join condominia on condominia.id = staircases.condominium_id
	join exercises on exercises.condominium_id = condominia.id
    SQL
  end

  def down
  	execute <<-SQL2
DROP VIEW V_OWNERSHIPS_USE
    SQL2
  end
end
