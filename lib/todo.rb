def todo_check(string)
    if string.include?("#TODO")
        return true
    else
        return false
    end
end