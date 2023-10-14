import { Navigate, Outlet } from "react-router";
import { useStateContext } from "../Context/ContextProvider";

export default function GustLayout () {
  const {token} = useStateContext();
  if(token){
    return <Navigate to="/dashboard" />
  }
  return(
    <div>
      <Outlet />
    </div>
  );
};
