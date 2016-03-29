class Book
    attr_accessor :title
    
    def title
        exceptions = ["the", "a", "an","and","in","of","at"]
       
        @title[0] = @title[0].capitalize
        title_array = @title.split
        
        title_array.each do |a|
          if !exceptions.include?(a)
            a[0]=a[0].capitalize
          end
        end
        
        return title_array.join(' ')
    end
end