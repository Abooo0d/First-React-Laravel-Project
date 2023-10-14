import { useRef, useState } from "react";
import {Link} from "react-router-dom";
import axiosClinte from "../Axios-clinte";
import { useStateContext } from "../Context/ContextProvider";
export default function Login() {
  const emailRef = useRef();
  const passRef = useRef();
  const [errors,setErrors] = useState();
  const {setToken,setUser} = useStateContext();
  const onSubmit = (ev) => {
    ev.preventDefault();
    const payload = {
      email: emailRef.current.value,
      password: passRef.current.value
    };
    setErrors(null);
    axiosClinte.post("/login",payload)
    .then(({data}) => {
      setUser(data.user);
      setToken(data.token);
    })
    .catch(err => {
      const response = err.response;
      if(response && response.status === 422){
        if(response.data.errors){
          setErrors(response.data.errors);
        }else{
          setErrors({
            email: [response.data.message]
          });
        }
      }
    });
  };
  return(
    <div className="login-signup-form animated fadeInDown">
      <div className="form">
        <form onSubmit={onSubmit}>
          <h1 className="title">Login Into Your Account</h1>
          {
            errors && <div className="alert">
              {Object.keys(errors).map(key=> (
                <p key={key}>{errors[key][0]}</p>
              ))}
            </div>
          }
          <input ref={emailRef} type="email" placeholder="Email" />
          <input ref={passRef} type="password" placeholder="Password" />
          <button className="btn btn-block">Login</button>
          <p className="message">
            Not Registered? <Link to="/signup">Create An Account</Link>
          </p>
        </form>
      </div>
    </div>
  );
};
