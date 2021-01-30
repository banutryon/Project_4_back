class Seller < ApplicationRecord
    if(ENV['DATABASE_URL'])
        uri = URI.parse(ENV['DATABASE_URL'])
        DB = PG.connect(uri.hostname, uri.port, nil, nil, uri.path[1..-1], uri.user, uri.password)
      else
        DB = PG.connect( port: 5432, dbname: 'locations_development')
      end
    # DB = PG.connect({ :port => 5432, :dbname => 'locations_development' })

    def self.all
        results = DB.exec("SELECT * FROM sellers;")
        return results.each do |result|
            {
                :id => result["id"].to_i,
                :name => result["name"],
                :contact => result["contact"],
                :location_id => result["location_id"].to_i
            }
        end
    end

    def self.find(id)
        results = DB.exec("SELECT * FROM sellers WHERE id=#{id};")
        return {
            :id => results.first["id"].to_i,
            :name => results.first["name"],
            :contact => results.first["contact"],
            :location_id => results.first["location_id"].to_i
        }
    end    
    
    def self.create(new)
        results = DB.exec(
            <<-SQL
                INSERT INTO sellers (
                    name,
                    contact,
                    location_id
                )
                VALUES (
                    '#{new["name"]}',
                    '#{new["contact"]}',
                    '#{new["location_id"]}'
                )
                RETURNING id, name, contact, location_id;
            SQL
        )
        return {
            :id => results.first["id"].to_i,
            :name => results.first["name"],
            :contact => results.first["contact"],
            :location_id => results.first["location_id"].to_i
        }
    
    end

    def self.delete(id)
        results = DB.exec("DELETE FROM sellers WHERE id=#{id}")
        return { 'deleted' => true}
    end

    def self.update(id, new)
        results = DB.exec(
            <<-SQL
                UPDATE sellers 
                SET
                    name='#{new["name"]}',
                    contact='#{new["contact"]}',
                    location_id='#{new["location_id"]}'
                WHERE id=#{id}
                RETURNING id, name, contact, location_id;    
            SQL
        )
        return {
            :id => results.first["id"],
            :name => results.first["name"],
            :contact => results.first["contact"],
            :location_id => results.first["location_id"]
        }
    end
end

