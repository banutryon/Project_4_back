class Location
DB = PG.connect({:host=>"localhost", :port => 5432, :dbname => 'locations_development'})

def self.all
    results = DB.exec("SELECT * FROM locations;")
    return results.each do |result|
        {
        "id" => result["id"].to_i,
        "name" => result["name"]
        }
        
    end
end
    def self.find(id)
    results = DB.exec("SELECT * FROM locations WHERE id=#{id};")
    return {
        "id" => results.first["id"].to_i,
        "name" => results.first["name"]
    }
    end
    def self.create(opts)
        results = DB.exec(
            <<-SQL
                INSERT INTO locations (name, street, city, state, zipcode, img1, img2, img3, description)
                VALUES ( '#{opts["name"]}', #{new["street"]}, #{new["city"]}, #{new["state"]}, #{new["zipcode"]}, #{new["img1"]}, #{new["img2"]}, #{new["img3"]}, #{new["description"]} )
                RETURNING id, name, street, city, state, zipcode, img1, img2, img3, description;
            SQL
        )
        return {
            "id" => results.first["id"].to_i,
            "name" => results.first["name"],
            "street" => results.first["street"],
            "city" => results.first["city"],
            "state" => results.first["state"],
            "zipcode" => results.first["zipcode"].to_i,
            "img1" => results.first["img1"],
            "img2" => results.first["img2"],
            "img3" => results.first["img3"],
            "description" => results.first["description"] 
        }
    end
    def self.delete(id)
    results = DB.exec("DELETE FROM locations WHERE id=#{id};")
    return { "deleted" => true }
    end
    def self.update(id, opts)
        results = DB.exec(
            <<-SQL
            UPDATE locations
            SET name='#{opts["name"]}', #{new["street"]}, #{new["city"]}, #{new["state"]}, #{new["zipcode"]}, #{new["img1"]}, #{new["img2"]}, #{new["img3"]}, #{new["description"]}
            WHERE id=#{id}
            RETURNING id, name, street, city, state, zipcode, img1, img2, img3, description;
        SQL
    )
    return {
        "id" => results.first["id"].to_i,
        "name" => results.first["name"],
        "street" => results.first["street"],
        "city" => results.first["city"],
        "state" => results.first["state"],
        "zipcode" => results.first["zipcode"].to_i,
        "img1" => results.first["img1"],
        "img2" => results.first["img2"],
        "img3" => results.first["img3"],
        "description" => results.first["description"]
    }
end

end
