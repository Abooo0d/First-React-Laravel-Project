import {createBrowserRouter, Navigate} from "react-router-dom";
import SignUp from "./Views/SignUp";
import Login from "./Views/Login";
import Users from "./Views/Users";
import NotFound from "./Views/NotFound";
import GustLayout from "./Components/GusteLayout";
import DefaultLayout from "./Components/DefaultLayout";
import DashBoard from "./Views/DashBoard";
import UserForm from "./Views/UserForm";
const router = createBrowserRouter([
  {
    path:"/",
    element:<DefaultLayout/>,
    children:[
      {
        path:"/",
        element:<Navigate to="/users" />
      },
      {
        path:"/users",
        element:<Users/>
      },
      {
        path:"/users/new",
        element:<UserForm key="userCreate"/>
      },
      {
        path:"/users/:id",
        element:<UserForm key="userUpdate"/>
      },
      {
        path:"/dashboard",
        element:<DashBoard/>
      }
    ]
  },
  {
    path:"/",
    element:<GustLayout/>,
    children:[
      {
        path:"/login",
        element:<Login/>
      },
      {
        path:"/signup",
        element:<SignUp/>
      }
    ]
  },
  {
    path:"*",
    element:<NotFound/>
  }
]);
export default router;



