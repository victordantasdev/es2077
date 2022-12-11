import React from 'react'
import ReactDOM from 'react-dom/client'
import { make as App } from '../lib/es6/src/App.bs.js'

ReactDOM.createRoot(document.getElementById('root')).render(
  <React.StrictMode>
    <App />
  </React.StrictMode>,
)
