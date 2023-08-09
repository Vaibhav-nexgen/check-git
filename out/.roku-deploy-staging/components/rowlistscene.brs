sub init()

    m.top.backgroundURI = "pkg:/images/rsgde_bg_hd.jpg"

    rowlist = m.top.findNode("exampleRowList")

    rowlist.content = CreateObject("roSGNode", "RowListContent")
    contentNode = CreateObject("roSGNode", "ContentNode")
    m.top.setFocus(true)
    ' RowListContent = populate(content , contentNode)

    print "heeeeeeeeeeeeeeeeehhheeeeeeeeeeeeeeeeeee"
    value = content[0]
    print value.title

    

    content = [
        [
    
            { title: "Item 1" },
            { title: "Item 2" },
            { title: "Item 3" }
        ],
        [
            { title: "Item 1" },
            { title: "Item 2" },
            { title: "Item 3" }
        ]
    ]

   
end sub





function populate(contentNode as object , content as object)          
    for each rowItem in content
        rowNode = contentNode.CreateChild("ContentNode")
        for each item in rowItem
            itemNode = rowNode.CreateChild("ContentNode")
            itemNode.title = item.title
        end for
    end for
    return contentNode

end function





