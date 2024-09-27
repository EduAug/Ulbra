function Logo({logo1, logo2}){
    return(
        <div>
        <a href="https://vitejs.dev" target="_blank">
          <img src={logo1} className="logo" alt="Vite logo" />
        </a>
        <a href="https://react.dev" target="_blank">
          <img src={logo2} className="logo react" alt="React logo" />
        </a>
      </div>
    );
}
export default Logo;