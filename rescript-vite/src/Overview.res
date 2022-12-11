let value = 12

// shadowing
let value' = "12"

// int
let valueInt = 12

// float
let valueFloat = 12.0

let _res = valueInt + valueFloat->Belt.Float.toInt

// string
let _str = "12"

// char
let charS = 'a'

// interpolation
let strInterpolation = `Hello ${valueInt->Belt.Int.toString}`

// boolean
let isTrue = true
let isFalse = !(!true) && false

// array
let arr = [1, 2, 3]

// tuple
let tuple = (1, 2, 3)

// ref -> is a mutable variable
let myRef = ref(2)
myRef.contents = 3

// ======== User defined types ========

// open ProfileTypes
// or
// let userProfile: ProfileTypes.profile<int> = {
//   name: "Victor",
//   age: 23,
//   source: 23,
// }

type profile = {
  name: string,
  age: int,
}

let userProfile: profile = {
  name: "Victor",
  age: 23,
}

// spread operator
let anotherProfile = {
  ...userProfile,
  age: 20,
}

// Phanton type
type t

// ADT, Algebraic Data Types
type person = User(profile) | Admin(profile) | Person(profile)

let me = User({
  name: "V",
  age: 23,
})

let hello = (~person: person, ~isSpecial=false, ()) => {
  // unboxing
  switch person {
  | User({name: "Victor"}) if isSpecial => "Hello VICTOR special"
  | User({name}) => `Hello ${name}`
  | Admin({name}) => `Hello ${name}`
  | Person({name}) => `Hello ${name}`
  }
}

// less error-prone
let msg = hello(~person=me, ())

// polyvariant
// type role = [#admin | #user | #masteradmin]
let myProfileRole = #admin
let myProfileUserRole = #user

let hello = role => {
  switch role {
  | #admin => "Hello admin"
  | #role => "Hello master"
  }
}

let _ = hello(myProfileRole)

let _res = response => {
  switch response {
  | #ok => 200
  | #error => 404
  }
}

// unit
let () = {
  // window()
  ()
}

let _ = user => {
  <div>
    {
      let u = user->Js.String.toLowerCase
      true ? `Hello ${u}`->React.string : React.null
    }
  </div>
}

// data first pipe
// ->
let sumX = (str, ~isSpecial) => isSpecial ? `${str}-special` : `${str}-non-special`
let sumY = str => `${str}-y`
let sumZ = str => `${str}-z`

let str = "Victor"
let res = sumZ(sumY(sumX(str, ~isSpecial=false)))
let resWithPipe = sumX(str, ~isSpecial=false)->sumY->sumZ
let anotherRes = str->Js.String2.includes("v")

// pattern matching
type obj = {
  name: string,
  color: string,
  width: int,
  height: int,
}

let position = (~obj, cords) => {
  switch (obj, cords) {
  | (obj, (0.0, 0.0)) => `${obj.name} is at initial point`
  | (obj, (2.0, 2.0)) => `${obj.name} isn't at initial point`
  | _ => "Err" // catch-all
  }
}

// optionals
type user = {
  name?: string, // option<string>
  age: int,
}

let handleName = user => {
  switch user {
  | Some(name) => `Hello ${name}`
  | None => `User has no name`
  }
}

let someName = Some("name")
let _ = someName->Belt.Option.getWithDefault("")
