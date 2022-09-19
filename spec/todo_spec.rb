require 'todo'

RSpec. describe 'todo check for "#TODO"' do
    it 'rtns false if the string is empty' do
    expect(todo_check("")).to eq (false)
    end

    it 'rtns false if the string does not contain "#TODO"' do
     expect(todo_check("walk the dog")).to eq (false)
    end

    it 'rtns true if the string does not contain "#TODO"' do
     expect(todo_check("go to the gym '#TODO")).to eq (true)
    end
    
end