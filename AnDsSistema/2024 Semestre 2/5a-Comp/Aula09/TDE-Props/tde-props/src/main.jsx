import { createRoot } from 'react-dom/client'
import './index.css'
import Gallery from './Components/Gallery.jsx'

createRoot(document.getElementById('root')).render(
  <Gallery title="Notable Scientists" />
)
