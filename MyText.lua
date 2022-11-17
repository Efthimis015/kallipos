function Image(img)
    if img.classes:find('MyTextt',1) then
      local f = io.open("Technology/" .. img.src, 'r')
      local doc = pandoc.read(f:read('*a'))
      f:close()
      local caption = pandoc.utils.stringify(doc.meta.caption) 
      local name = pandoc.utils.stringify(doc.meta.name)
      local am = pandoc.utils.stringify(doc.meta.id)
      local content = "> " .. caption .. "  \n>" .. "Τζιάλλας Ευθύμιος" .. name .. "\nΠ2018015:" .. am
      return pandoc.RawInline('markdown',content)
    end
end