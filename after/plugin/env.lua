local loadproject = function()
    local vimrc = vim.fn.findfile('test.lua', ',;')
    if(string.len(vimrc) >= 1) then
        require(string.sub(vimrc,1,-5))
    else
        print("else1")
    end
end

loadproject()
