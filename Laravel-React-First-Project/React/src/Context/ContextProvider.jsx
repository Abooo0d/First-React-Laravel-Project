import { createContext, useContext, useState } from "react";

const StartContext = createContext({
  user:null,
  token:null,
  notify:"",
  setUser:()=>{},
  setToken:() => {},
  setNotify: () =>{}
});
export const ContextProvider = ({children})=> {
  const [user,setUser] = useState({});
  const [notify,_setNotify] = useState("");
  const [token,_setToken] = useState(localStorage.getItem("ACCESS_TOKEN"));
  const setNotify = (message) => {
    _setNotify(message);
    setTimeout(() => {
      _setNotify("");
    }, 5000);
  }
  const setToken = (token) => {
    _setToken(token);
    if(token) localStorage.setItem("ACCESS_TOKEN",token);
    else localStorage.removeItem("ACCESS_TOKEN");
  }
  return(
    <StartContext.Provider value={{
      user,
      token,
      setUser,
      setToken,
      notify,
      setNotify
    }}>
      {children}
    </StartContext.Provider>
  );
};
export const useStateContext = () => useContext(StartContext);
