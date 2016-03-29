require_relative 'entry'
 require "csv"

 class AddressBook
   attr_reader :entries
     end
     entries.insert(index, Entry.new(name, phone_number, email))
   end

   def import_from_csv(file_name)
     # Implementation goes here
     csv_text = File.read(file_name)
     csv = CSV.parse(csv_text, headers: true, skip_blanks: true)

     csv.each do |row|
       row_hash = row.to_hash
       add_entry(row_hash["name"], row_hash["phone_number"], row_hash["email"])
     end
   end

   # Search AddressBook for a specific entry by name
   def binary_search(name)
     # #1
     lower = 0
     upper = entries.length - 1

     # #2
       while lower <= upper
         # #3
         mid = (lower + upper) / 2
         mid_name = entries[mid].name

         # #4
         if name == mid_name
           return entries[mid]
         elsif name < mid_name
           upper = mid - 1
         elsif name > mid_name
           lower = mid + 1
         end
       end

       # #5
       return nil
   end

   def iterative_search(name, array)
  i = 0

  while i <= (array.length - 1)
    if array[i] == name
      return array[i]
    else
      i += 1
    end
  end

  return nil

  end
end
