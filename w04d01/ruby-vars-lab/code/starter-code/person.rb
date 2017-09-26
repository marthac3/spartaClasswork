class Person 

    def name
        # create a name variable
        name = "Steve"
    end 

    def age
        # create age variable here
        age = 34
    end

    def children
        # create children array here
        children = ["Abby","Bill","Charlie","Desmond"]

    end

    def address

        # create address hash here
        address = {
            house_number: 1,
            street: "First Street",
            town: "Leeds",
            county: "Yorkshire",
            postcode: "LS1 1AB",
            email_addresses: ["Steve@email.com","SteveTwo@email.com"]
        }

    end

    def password

        # do not change these variables
        favourite_things = ["motorbike" , "cat" , "travel"]
        memorable_stuff = {
          birth_year: 1983,
          mothers_name: "Eve",
          birth_town: "Richmond"
        }
        password = "#{favourite_things[1]} #{memorable_stuff[:birth_town]}"

    end

end