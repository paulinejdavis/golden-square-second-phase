require 'say_hello.rb'

RSpec.describe 'say_hello method' do
    it 'should returnn "hello Kay' do
        expect(say_hello("Kay")).to eq("hello Kay")
    end
end