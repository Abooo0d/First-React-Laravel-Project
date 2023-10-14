import { Navigate, Outlet } from "react-router";
import {Link} from "react-router-dom";
import { useStateContext } from "../Context/ContextProvider";
import { useEffect } from "react";
import axiosClinte from "../Axios-clinte";

export default function DefaultLayout () {
  const {user,token,notify,setUser,setToken} = useStateContext ();
  if(!token){
    return <Navigate to="/login" />
  }
  const onLogout = (ev) => {
    ev.preventDefault();
    axiosClinte.post("/logout")
    .then(()=> {
      setUser({});
      setToken(null);
    });
  };
  useEffect(() => {
    axiosClinte.get("/user")
    .then(({data}) => {
      setUser(data);
    })
  },[]);
  return(
    <div id="defaultLayout">
      <aside>
        <Link to="/dashboard">Dashboard</Link>
        <Link to ="/users">Users</Link>
      </aside>
      <div className="content">
        <header>
          <div>
            Header
          </div>
          <div>
            {user.name}
            <a className="btn-logout" href="#" onClick={onLogout}>Logout</a>
          </div>
        </header>
        <main>
          <Outlet />
        </main>
      </div>
      {notify &&<div className="notification">{notify}</div> }
    </div>
  );
};
