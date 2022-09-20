require 'task_tracker.rb'

RSpec.describe Todolist do
    context "no tasks given" do
        it "has an empty list" do
            todo_list = Todolist.new
            expect(todo_list.list).to eq []
        end
    end
    context 'when two tasks are added' do
        it 'holds task in list' do
            todo_list = Todolist.new
            todo_list.add("Go to the gym")
            expect(todo_list.list).to eq ["Go to the gym"]
        end
    end

    context 'complete a task' do
        it 'removes task from list' do
            todo_list = Todolist.new
            todo_list.add("Go to the gym")
            todo_list.add("Go to the bank")
            todo_list.complete("Go to the gym")
            expect(todo_list.list).to eq ["Go to the bank"]
        end
    end
    context 'when we try to complete a non existent task' do
        it 'fails' do
            todo_list = Todolist.new
            todo_list.add("Go to the gym")
            expect{ todo_list.complete ("Go to the Paris") }.to raise_error "No such task"
        end
    end
end