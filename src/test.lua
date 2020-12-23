local tinyxmlwriter = require 'tinyxmlwriter'

local xml = tinyxmlwriter.new()


xml:startDocument("1.0", "utf-8")

xml:startElement("data")

xml:startElement("entries")

xml:startElement("member")
xml:addAttribut("status", "client")
xml:writeElement("message", "Hello <b>John Doe</b>", tinyxmlwriter.CDATA)
xml:closeElement("member")

xml:startElement("member")
xml:addAttribut("status", "new")
xml:writeElement("name", "John Doe & Jane Doe")
xml:closeElement("member")

xml:closeElement("entries")

xml:closeElement("data")

output = xml:get(tinyxmlwriter.FORMAT_LINEBREAKS)
print(output)

-- only needed if you want to start a new document
xml:flush()



