let root = ReactDOM.querySelector("#root")

switch root {
| None => Js.Exn.raiseError("no root element found :/")
| Some(element) => ReactDOM.render(<App />, element)
}
