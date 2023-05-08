%dw 2.0
output application/json
//Here i used map operator to map the given data based on  my output  Requirement Basically map function will do the operation of Transforming every item in an Array and give the new output Array 
---
{
"data": {
"type": payload[0]."type",
"attributes": {
    //if we keep primary account fixed as this [{"id": payload[0].Id, "name": payload[0].Name}] and the concatenate the secondary accounts using map operator.
"items": [{"id": payload[0].Id, "name": payload[0].Name}] ++(payload[0].ChildAccounts map ((item, index) -> {
"id": item.Id,
"name": item.Name
}))
}
}
}








