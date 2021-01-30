class Location < ApplicationRecord

    if ENV["DATABASE_URL"]
        PG.connect(ENV['DATABASE_URL'])
      elsif
        DB = PG.connect({ :port => 5432, :dbname => 'locations_development'})
      end
    # DB = PG.connect({ :port => 5432, :dbname => 'locations_development' })

    def self.all
        results = DB.exec("SELECT * FROM locations;")
        return results.each do |result|
            {
                :id => result["id"].to_i,
                :name => result["name"],
                :street => result["street"],
                :city => result["city"],
                :state => result["state"],
                :zipcode => result["zipcode"].to_i,
                :img1 => result["img1"],
                :img2 => result["img2"],
                :img3 => result["img3"],
                :description => result["description"]
            }
        end
    end

    def self.find(id)
        results = DB.exec("SELECT * FROM locations WHERE id=#{id};")
        return {
            :id => results.first["id"].to_i,
            :name => results.first["name"],
            :street => results.first["street"],
            :city => results.first["city"],
            :state => results.first["state"],
            :zipcode => results.first["zipcode"].to_i,
            :img1 => results.first["img1"],
            :img2 => results.first["img2"],
            :img3 => results.first["img3"],
            :description => results.first["description"]
        }
    end    
    
    def self.create(new)
        results = DB.exec(
            <<-SQL
                INSERT INTO locations (
                    name,
                    street,
                    city,
                    state,
                    zipcode,
                    img1,
                    img2,
                    img3,
                    description
                )
                VALUES (
                    '#{new["name"]}',
                    '#{new["street"]}',
                    '#{new["city"]}',
                    '#{new["state"]}',
                    #{new["zipcode"]},
                    '#{new["img1"]}',
                    '#{new["img2"]}',
                    '#{new["img3"]}',
                    '#{new["description"]}'
                )
                RETURNING id, name, street, city, state, zipcode, img1, img2, img3, description;
            SQL
        )
        return {
            :id => results.first["id"].to_i,
            :name => results.first["name"],
            :street => results.first["street"],
            :city => results.first["city"],
            :state => results.first["state"],
            :zipcode => results.first["zipcode"].to_i,
            :img1 => results.first["img1"],
            :img2 => results.first["img2"],
            :img3 => results.first["img3"],
            :description => results.first["description"] 
        }
    
    end

    def self.delete(id)
        results = DB.exec("DELETE FROM locations WHERE id=#{id}")
        return { "deleted" => true}
    end

    def self.update(id, new)
        results = DB.exec(
            <<-SQL
                UPDATE locations
                SET
                    name='#{new["name"]}',
                    street='#{new["street"]}',
                    city='#{new["city"]}',
                    state='#{new["state"]}',
                    zipcode='#{new["zipcode"]}',
                    img1='#{new["img1"]}',
                    img2='#{new["img2"]}',
                    img3='#{new["img3"]}',
                    description='#{new["description"]}'
                WHERE id=#{id}
                RETURNING id, name, street, city, state, zipcode, img1, img2, img3, description;    
            SQL
        )
        return {
            :id => results.first["id"].to_i,
            :name => results.first["name"],
            :street => results.first["street"],
            :city => results.first["city"],
            :state => results.first["state"],
            :zipcode => results.first["zipcode"].to_i,
            :img1 => results.first["img1"],
            :img2 => results.first["img2"],
            :img3 => results.first["img3"],
            :description => results.first["description"] 
        }
    end
end
