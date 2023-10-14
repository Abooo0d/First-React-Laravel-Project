import { useEffect, useState } from "react";
import { useNavigate, useParams } from "react-router-dom";
import axiosClinte from "../Axios-clinte";
import { useStateContext } from "../Context/ContextProvider";

export default function UserForm() {
  const { id } = useParams();
  const navigate = useNavigate();
  const [errors, setErrors] = useState();
  const [loading, setLoading] = useState(false);
  const {setNotify,notify} = useStateContext();
  const [user, setUser] = useState({
    id: null,
    name: "",
    email: "",
    password: "",
    password_confirmation: "",
  });
  if (id) {
    useEffect(() => {
      setLoading(true);
      axiosClinte
        .get(`/users/${id}`)
        .then(({ data }) => {
          setLoading(false);
          // To Make The Incoming Data With Out A Warper We HAve To Edit The Resource File In The Backend
          //  And Give IT A False For The $wrap Property In This Case "UserResource"
          // Other Ways We Have To Take The Data From data.data
          setUser(data);
        })
        .catch(() => {
          setLoading(false);
        });
    }, []);
  }
  const onSubmit = (ev) => {
    ev.preventDefault();
    if (user.id) {
      axiosClinte
        .put(`/users/${user.id}`, user)
        .then(() => {
          setNotify(`${user.name} Was Successfully Updated`);
          navigate("/users");
        })
        .catch((err) => {
          const response = err.response;
          if (response && response.status === 422) {
            setErrors(response.data.errors);
          }
        });
    } else {
      axiosClinte
        .post(`/users`, user)
        .then(() => {
          setNotify(`${user.name} Was Successfully Created`);
          navigate("/users");
        })
        .catch((err) => {
          const response = err.response;
          if (response && response.status === 422) {
            setErrors(response.data.errors);
          }
        });
    }
  };
  return (
    <>
      {user.id && <h1 className="text-center">Update User :{user.name}</h1>}
      {!user.id && <h1 className="text-center">New User</h1>}
      <div className="card animated fedeInDown">
        {loading && <div className="text-center">...Loading</div>}
        {errors && (
          <div className="alert">
            {Object.keys(errors).map((key) => (
              <p key={key}>{errors[key][0]}</p>
            ))}
          </div>
        )}
        {!loading && (
          <form onSubmit={onSubmit}>
            <input
              value={user.name}
              onChange={(ev) => setUser({ ...user, name: ev.target.value })}
              placeholder="Name"
            />
            <input
              value={user.email}
              onChange={(ev) => setUser({ ...user, email: ev.target.value })}
              placeholder="Email"
              type="email"
            />
            <input
              onChange={(ev) => setUser({ ...user, password: ev.target.value })}
              placeholder="Password"
              type="password"
            />
            <input
              onChange={(ev) =>
                setUser({ ...user, password_confirmation: ev.target.value })
              }
              placeholder="Password Confirmation"
              type="password"
            />
            <button className="btn">Send</button>
          </form>
        )}
      </div>
    </>
  );
}
