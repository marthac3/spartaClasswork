require_relative '../lib/punkapi'
require 'date'

describe PunkApiCall do

  before(:all) do
  @beers = PunkApiCall.new
  end

  describe "All ID Tests" do
    context "When requesting the id's" do
      it 'returns an array of ids as numbers' do
        integer_check = true
        @beers.all_of_type('id').each do |id|
            integer_check = false  if !id.is_a? Integer
        end
        expect(integer_check).to be true
        expect(@beers.all_of_type('id')).to be_instance_of Array
      end
    end
    context "When requesting the names" do
      it 'returns an array of names as strings' do
        string_check = true
        @beers.all_of_type('name').each do |name|
            string_check = false  if !name.is_a? String
        end
        expect(string_check).to be true
        expect(@beers.all_of_type('name')).to be_instance_of Array
      end
    end
    context "When requesting the taglines" do
      it 'returns an array of taglines as strings' do
        string_check = true
        @beers.all_of_type('tagline').each do |tagline|
            string_check = false  if !tagline.is_a? String
        end
        expect(string_check).to be true
        expect(@beers.all_of_type('tagline')).to be_instance_of Array
      end
    end
    context "When requesting the first_brewed dates" do
      it 'returns an array of first_brewed dates as dates' do
        date_check = true
        @beers.all_of_type('first_brewed').each do |first_brewed|
            date_check = false  if !DateTime.strptime(first_brewed, "%m/%y").is_a? DateTime
        end
        expect(date_check).to be true
        expect(@beers.all_of_type('first_brewed')).to be_instance_of Array
      end
    end
    context "When requesting the descriptions" do
      it 'returns an array of descriptions as strings' do
        string_check = true
        @beers.all_of_type('description').each do |description|
            string_check = false  if !description.is_a? String
        end
        expect(string_check).to be true
        expect(@beers.all_of_type('description')).to be_instance_of Array
      end
    end
    context "When requesting the image_urls" do
      it 'returns an array of image_urls as strings' do
        string_check = true
        @beers.all_of_type('image_url').each do |image_url|
            string_check = false  if !image_url.is_a? String
        end
        expect(string_check).to be true
        expect(@beers.all_of_type('image_url')).to be_instance_of Array
      end
    end
    context "When requesting the abvs" do
      it 'returns an array of abvs as floats' do
        float_check = true
        @beers.all_of_type('abv').each do |abv|
            float_check = false  if !abv.to_f.is_a? Float
        end
        expect(float_check).to be true
        expect(@beers.all_of_type('abv')).to be_instance_of Array
      end
    end
    context "When requesting the ibus" do
			it 'returns an array of ibus as floats' do
				float_check = true
				@beers.all_of_type('ibu').each do |ibu|
					float_check = false if !ibu.to_f.is_a? Float
				end
				expect(float_check).to be true
				expect(@beers.all_of_type('ibu')).to be_instance_of Array
			end
		end
		context "When requesting the target_fgs" do
			it 'returns an array of target_fgs as floats' do
				float_check = true
				@beers.all_of_type('target_fg').each do |target_fg|
					float_check = false if !target_fg.to_f.is_a? Float
				end
				expect(float_check).to be true
				expect(@beers.all_of_type('target_fg')).to be_instance_of Array
			end
		end
		context "When requesting the target_ogs" do
			it 'returns an array of target_ogs as floats' do
				float_check = true
				@beers.all_of_type('target_og').each do |target_og|
					float_check = false if !target_og.to_f.is_a? Float
				end
				expect(float_check).to be true
				expect(@beers.all_of_type('target_og')).to be_instance_of Array
			end
		end
		context "When requesting the ebcs" do
			it 'returns an array of ebcs as floats' do
				float_check = true
					@beers.all_of_type('ebc').each do |ebc|
				float_check = false if !ebc.to_f.is_a? Float
				end
				expect(float_check).to be true
				expect(@beers.all_of_type('ebc')).to be_instance_of Array
			end
		end
		context "When requesting the srms" do
			it 'returns an array of srms as floats' do
				float_check = true
					@beers.all_of_type('srm').each do |srm|
				float_check = false if !srm.to_f.is_a? Float
				end
				expect(float_check).to be true
				expect(@beers.all_of_type('srm')).to be_instance_of Array
			end
		end
		context "When requesting the phs" do
			it 'returns an array of phs as floats' do
				float_check = true
					@beers.all_of_type('ph').each do |ph|
				float_check = false if !ph.to_f.is_a? Float
				end
				expect(float_check).to be true
				expect(@beers.all_of_type('ph')).to be_instance_of Array
			end
		end
		context "When requesting the attenuation_levels" do
			it 'returns array of attenuation_levels as floats' do
				float_check = true
					@beers.all_of_type('attenuation_level').each do |attenuation_level|
				float_check = false if !attenuation_level.to_f.is_a? Float
				end
				expect(float_check).to be true
				expect(@beers.all_of_type('attenuation_level')).to be_instance_of Array
				end
		end
		context "When requesting the volume" do
			it 'returns array of volumes as hashes' do
				hash_check = true
				@beers.all_of_type('volume').each do |volume|
					hash_check = false if !volume.is_a? Hash
				end
				expect(hash_check).to be true
				expect(@beers.all_of_type('volume')).to be_instance_of Array
			end
			it 'returns volume values as 20' do
				integer_check = true
				value_check = true
				@beers.all_of_nested_type('volume', 'value').each do |value|
					integer_check = false if !value.to_i.is_a? Integer
					value_check = false if value.to_i != 20
				end
				expect(integer_check).to be true
				expect(value_check).to be true
			end
			it 'returns volume units as "liters"' do
				string_check = true
				unit_check = true
				@beers.all_of_nested_type('volume', 'unit').each do |unit|
					string_check = false if !unit.is_a? String
					unit_check = false if unit != "liters"
				end
				expect(string_check).to be true
				expect(unit_check).to be true
			end
		end
		context "When requesting the boil volume" do
      it 'returns array of boil volumes as hashes' do
        hash_check = true
        @beers.all_of_type('boil_volume').each do |boil_volume|
            hash_check = false  if !boil_volume.is_a? Hash
        end
        expect(hash_check).to be true
        expect(@beers.all_of_type('boil_volume')).to be_instance_of Array
      end
      it 'returns boil volume values as 20' do
        integer_check = true
        value_check = true
        @beers.all_of_nested_type('boil_volume', 'value').each do |value|
            integer_check = false if !value.to_i.is_a? Integer
            value_check = false if value.to_i != 25
        end
        expect(integer_check).to be true
        expect(value_check).to be true
      end
      it 'returns boil volume units as "liters"' do
        string_check = true
        unit_check = true
        @beers.all_of_nested_type('boil_volume', 'unit').each do |unit|
            string_check = false if !unit.is_a? String
            unit_check = false if unit != "liters"
        end
        expect(string_check).to be true
        expect(unit_check).to be true
      end
    end

    context 'when requesting methods' do
    	it 'returns mash temp as array' do
	    	all_array_check = true
	    	@beers.all_of_nested_type('method', 'mash_temp').each do |mash_temp|
	    		all_array_check = false if !mash_temp.is_a? Array
	    	end
	    	expect(all_array_check).to be true
	    	expect(@beers.all_of_type('mash_temp')).to be_instance_of Array
    	end
    	it 'returns mash_temp temp as hash' do
    		hash_check = true
    		@beers.all_of_nested_type('method', 'mash_temp')[0].each do |temp|
    			hash_check = false if !temp.is_a? Hash
    		end
    		expect(hash_check).to be true
    	end
    	it 'returns mash_temp duration as int' do
    		integer_check = true
    		@beers.all_of_nested_type('method', 'mash_temp')[1].each do |duration|
    			hash_check = false if !duration.is_a? Integer
    		end
    		expect(integer_check).to be true
    	end

    	it 'returns fermentation as hash' do
	    	hash_check = true
	    	@beers.all_of_nested_type('method', 'fermentation').each do |fermentation|
	    		all_array_check = false if !fermentation.is_a? Hash
	    	end
	    	expect(hash_check).to be true
	    	expect(@beers.all_of_type('fermentation')).to be_instance_of Array
    	end

    	it 'returns twist as string' do
	    	string_check = true
	    	@beers.all_of_nested_type('method', 'twist').each do |twist|
	    		all_array_check = false if !twist.is_a? String
	    	end
	    	expect(string_check).to be true
	    	expect(@beers.all_of_type('twist')).to be_instance_of Array
    	end
    	
    end



    context 'when requesting the food pairings' do
      it 'returns an array of the food pairings as individual arrays' do
        all_array_check = true
        @beers.all_of_type('food_pairing').each do |food_pairing|
            all_array_check = false  if !food_pairing.is_a? Array
        end
        expect(all_array_check).to be true
        expect(@beers.all_of_type('food_pairing')).to be_instance_of Array
      end
      it 'returns the pairings as strings' do
        string_check = true
        @beers.all_of_type('food_pairing').each do |food_pairing|
          for pairing in food_pairing
            string_check = false if !pairing.is_a? String
          end
        end
        expect(string_check).to be true
      end
    end
    context "When requesting the brewers tips" do
      it 'returns an array of brewers tips as strings' do
        string_check = true
        @beers.all_of_type('brewers_tips').each do |brewers_tips|
            string_check = false  if !brewers_tips.is_a? String
        end
        expect(string_check).to be true
        expect(@beers.all_of_type('brewers_tips')).to be_instance_of Array
      end
    end
    context "When requesting the contributions" do
      it 'returns an array of contributions as strings' do
        string_check = true
        @beers.all_of_type('contributed_by').each do |contributed_by|
            string_check = false  if !contributed_by.is_a? String
        end
        expect(string_check).to be true
        expect(@beers.all_of_type('contributed_by')).to be_instance_of Array
      end
    end
    context 'When requesting a single beer by id 192' do
    	it 'returns an array length 1' do
    		array_length = @beers.get_beer(192).length
    		expect(@beers.get_beer(192)).to be_instance_of Array
    		expect(array_length).to eql(1)
			end
			it 'returns the beer with id 192' do
				expect(@beers.get_beer(192)[0]['id']).to eql(192)
			end
    end
    context 'When requesting a page listing the first two beers' do
    	it 'returns an array length 2' do
    		array_length = @beers.get_pages_of_beers(1, 2).length
    		expect(@beers.get_pages_of_beers(1, 2)).to be_instance_of Array
    		expect(array_length).to eql(2)
    	end
    	it 'returns the ids 1 and 2' do
    		expect(@beers.get_pages_of_beers(1, 2)[0]['id']).to eql(1)
    		expect(@beers.get_pages_of_beers(1, 2)[1]['id']).to eql(2)
    	end
    end
	end
end