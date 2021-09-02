require_relative '../sandwich.rb'

describe Sandwich do
    context 'when the sandwich should be vegan' do
        #let(:sandwich) {Sandwich.new(false,false,['lettuce', 'tomato', 'musturd' ])}

        it 'should not have meat' do
            expect(vegan_sandwich.meat).to eq(false)
        end
            
        it 'should not have cheese' do
            expect(vegan_sandwich.cheese).to eq(false)
        end

        it 'should not have mayonise' do
            expect(vegan_sandwich.condiments).to_not include('mayonise')
        end
    end
    context 'when the sandwich should not be vegan' do
        before(:each) do
            @sandwich = Sandwich.new(true, true, ['lettuce', 'tomato', 'mayonise'])    
        end
        it 'should have meat' do         
            expect(@sandwich.meat).to be(true)
        end

        it 'should have cheese' do
            expect(@sandwich.cheese).to be(true)
        end

        it 'shoould have mayonise' do
            expect(@sandwich.condiments).to include('mayonise')
        end
    end
end

def vegan_sandwich
    Sandwich.new(false,false,['lettuce', 'tomato', 'musturd'])
end
