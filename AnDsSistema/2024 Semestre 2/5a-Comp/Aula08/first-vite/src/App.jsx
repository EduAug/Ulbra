import './App.css'
import Logo from './components/Logo'
import Counter from './components/Counter'
import Text from './components/Text'
import Titulo from './components/Titulo'

import reactLogo from './assets/react.svg'
import viteLogo from '../public/vite.svg'


function App() {

  return (
    <>
      <Logo logo1={ viteLogo } logo2={ reactLogo }/>
      <Titulo title={"Vite + React"} hasTitulo={true}/>
      <Counter counterStart={100}/>
      <Text texto={"Click on the Vite and React logos to learn more"}/>
    </>
  )
}

export default App
