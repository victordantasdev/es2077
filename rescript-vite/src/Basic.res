// const App = () => <div>Hello Rescript</div>
// @react.component
// let make = () => <div> {"Hello Rescript"->React.string} </div>

// let s = React.string

// module Message = {
//   @react.component
//   let make = (~message: option<string>=?) => {
//     <div>
//       {switch message {
//       | None => ""->s
//       | Some(msg) => msg->s
//       }}
//     </div>
//   }
// }

// module Input = {
//   @react.component
//   let make = (~placeholder=?) => {
//     <input ?placeholder />
//   }
// }

// module Container = {
//   @react.component
//   let make = (~children) => {
//     <div> {children} </div>
//   }
// }

// module Loading = {
//   @react.component
//   let make = (~loading) => {
//     <div> {s(loading ? "Loading..." : "Hello")} </div>
//   }
// }

// @react.component
// let make = () =>
//   <div>
//     <Message message="Hello Rescript" />
//     <Input placeholder="your name here" />
//     <Container>
//       <div> {"Hello"->s} </div>
//     </Container>
//     <Loading loading=true />
//   </div>

// ========== lists ==========
open Render

let names = ["Victor", "John", "Doe"]

@react.component
let make = () =>
  <div>
    <ul> {names->map((name, key) => <li key={key}> {name->s} </li>)} </ul>
  </div>
