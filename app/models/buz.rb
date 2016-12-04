class Buz < ApplicationRecord
before_save :fill_values

private
def fill_values
comeco = self.com.chomp(":00").to_i
final = self.fim.chomp(":00").to_i
casa = []
rangeraux = final - comeco

for i in 0..rangeraux
     if comeco < 10
	ho  = "0"+ comeco.to_s + ":00"
	casa.push(ho)
	comeco+=1
    else
	ho  =  comeco.to_s + ":00"
	casa.push(ho)
	comeco+=1
    end
end

self.range = casa

end

end
