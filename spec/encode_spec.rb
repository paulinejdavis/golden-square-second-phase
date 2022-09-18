require 'encode.rb'

RSpec. describe 'encoding method' do
    it 'should rtn ' "EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL" do
        result = encode("theswiftfoxjumpedoverthelazydog", "secretkey")
        expect(result).to eq("EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL") 
    end
end
  # Intended output:
  #
  # > encode("theswiftfoxjumpedoverthelazydog", "secretkey")
  # => "EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL"
  #
  # > decode("EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL", "secretkey")
  # => "theswiftfoxjumpedoverthelazydog"