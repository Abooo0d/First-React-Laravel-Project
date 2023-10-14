import { useRef,useState } from "react";
import {Link} from "react-router-dom";
import axiosClinte from "../Axios-clinte";
import { useStateContext } from "../Context/ContextProvider";
export default function SignUp() {
  const nameRef = useRef();
  const emailRef = useRef();
  const passwordRef = useRef();
  const confirmationRef = useRef();
  const [errors,setErrors] = useState();
  const {setToken,setUser} = useStateContext();
  const onSubmit = (ev) => {
    ev.preventDefault();
    const payload = {
      name:nameRef.current.value,
      email:emailRef.current.value,
      password:passwordRef.current.value,
      password_confirmation:confirmationRef.current.value
    };
    axiosClinte.post("/signup",payload)
    .then(({data}) => {
      setUser(data.user);
      setToken(data.token);
    })
    .catch(err => {
      const response = err.response;
      if(response && response.status === 422){
        setErrors(response.data.errors);
      }
    });
  };
  return(
    <div className="login-signup-form animated fadeInDown">
      <div className="form">
        <form onSubmit={onSubmit}>
          <h1 className="title">SignUp For Free</h1>
          {
            errors && <div className="alert">
              {Object.keys(errors).map(key=> (
                <p key={key}>{errors[key][0]}</p>
              ))}
            </div>
          }
          <input ref={nameRef} placeholder="Full Name" />
          <input ref={emailRef} type="email" placeholder="Email Address" />
          <input ref={passwordRef} type="password" placeholder="Password" />
          <input ref={confirmationRef} type="password" placeholder="Password Conformation" />
          <button className="btn btn-block">SignUp</button>
          <p className="message">
            Already Registered? <Link to="/login">Sign In</Link>
          </p>
        </form>
      </div>
    </div>
  );
};
