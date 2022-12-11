// 1. .res files are modules
// 2. .res filres (modules) shoud have unique names
// 3. Modules inside other module
// 4. Rescript does not have imports and exports
// 5. The module system do not care about localization of files/modules

// let result = Math.sum(1, 2)
// Js.log(`result: ${result->Belt.Int.toString}`)

// let result2 = Math2.sum(1, 2, 3)
// Js.log(`result2: ${result2->Belt.Int.toString}`)

// let mult_result = Math2.mult(1, 2)
// Js.log(`mult_result: ${mult_result->Belt.Int.toString}`)

// open Math
// Js.log(sum(1, 2))

// module M2 = Math2
// Js.log(M2.mult(1, 2))

// Js.log(Math.Sum.calc(1, 2))
// Js.log(Math.Mult.calc(1, 2))

// open Math
// Js.log(Sum.calc(1, 2))
// Js.log(Mult.calc(1, 2))

// let {calc: sum} = module(Math.Sum)
// Js.log(sum(1, 2))

// Js.log(Math.Sum.calc(1, 2))
// Js.log(Math.Mult.calc(1, 2))

// Js.log(Other.Sum.calc(1.0, 2.0))
// Js.log(Other.Mult.calc(1.0, 2.0))

// let profile: Profile.profile = {
//   name: "victor",
//   email: "email@email.com",
// }

// let user: User.user = {
//   name: "victor",
//   age: 23,
// }

// User.sayHello(user)
// Profile.sayHello(profile)

// ========== Module types ===========
// module type SumInterface = {
//   let sum: (int, int) => int
//   let sumFloat: (float, float) => float
// }

// module Sum: SumInterface = {
//   let sum = (a, b) => a + b
//   let sumFloat = (a, b) => a +. b
// }

// ========= Module functors =========
module type SumInterface = {
  type t
  let calc: (t, t) => t
}

module CreateSum = (M: SumInterface) => {
  type t = M.t
  let calc = M.calc
}

module SumFloat = CreateSum({
  type t = float
  let calc = (a, b) => a +. b
})

let resFloat = SumFloat.calc(1.0, 2.0)
