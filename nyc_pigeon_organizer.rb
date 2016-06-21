require 'pry'

def nyc_pigeon_organizer(data)
  # write your code here!
  final = {}

  data.each do |k,v|
    v.each do |k2, v2|
        v2.each do |x|
            if final.has_key?(x)
                if final[x].has_key?(k)
                    final[x][k] << k2.to_s
                else
                    final[x][k] = [k2.to_s]
                end                
            else
                final[x] = {k => [k2.to_s]}
            end
        end 
    end
  end
  final
end