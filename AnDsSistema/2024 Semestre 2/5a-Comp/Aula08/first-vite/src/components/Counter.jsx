import { useState } from 'react'
function Counter({counterStart}){
    const [count, setCount] = useState(counterStart)
    return(
        <div className="card">
        <button onClick={() => setCount((count) => count + 1)}>
          count is {count}
        </button>
      </div>
    );
}
export default Counter;