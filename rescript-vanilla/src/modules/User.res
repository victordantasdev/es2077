// open User_Types
// module Types = User_Types
include User_Types

let sayHello = user => Js.log(`Hello ${user.name}`)
