class Array

    def my_bsearch(value)
        return nil if self.length == 0
        mid_i = self.length / 2
        return mid_i if self[mid_i] == value 

        if self[mid_i] > value 
            my_bsearch(self[0...mid_i])
        else  
            result = my_bsearch(self[mid_i + 1..-1])
            if result 
                return mid_i + result + 1
            else 
                return nil  
            end        
        end        
    end    

  
end    