import { useEffect, useState } from "react";
import axiosClinte from "../Axios-clinte";
import { Link } from "react-router-dom";
import UserForm from "./UserForm";
import { useStateContext } from "../Context/ContextProvider";
export default function Users() {
  const [users, setUsers] = useState();
  const [loading, setLoading] = useState(false);
  const {setNotify} = useStateContext();
  useEffect(() => {
    getUsers();
  }, []);
  function getUsers() {
    setLoading(true);
    axiosClinte
      .get("/users")
      .then(({ data }) => {
        setLoading(false);
        setUsers(data.data);
      })
      .catch((e) => {
        setLoading(false);
        console.log("Error");
      })
      .finally(() => {
        setLoading(false);
      });
  }
  function onDelete(u) {
    if (!window.confirm("Are You Sure You Want To Delete This User")) {
      return;
    } else {
      axiosClinte.delete(`/users/${u.id}`).then(() => {
        getUsers();
      });
      setNotify(`${u.name} Was Successfully Deleted`);
    }
  }
  return (
    <div>
      <div
        style={{
          display: "flex",
          justifyContent: "space-between",
          alignItems: "center",
        }}
      >
        <h1>Users</h1>
        <Link to="/users/new" className="btn-add">
          Add New
        </Link>
      </div>
      <div className="card animated fadeInDown">
        <table>
          <thead>
            <tr>
              <th>ID</th>
              <th>Name</th>
              <th>Email</th>
              <th>Created Data</th>
              <th>Actions</th>
            </tr>
          </thead>
          {loading && (
            <tbody>
              <tr>
                <td colSpan="5" className="text-center"> ...Loading</td>
              </tr>
            </tbody>
          )}
          {users ? (
            <tbody>
              {users.map((u) => (
                <tr key={u.id}>
                  <td>{u.id}</td>
                  <td>{u.name}</td>
                  <td>{u.email}</td>
                  <td>{u.created_at}</td>
                  <td>
                    <Link to={"/users/"+ u.id} className="btn-edit">
                      Edit
                    </Link>
                    <button
                      onClick={(ev) => onDelete(u)}
                      className="btn-delete">
                      Delete
                    </button>
                  </td>
                </tr>
              ))}
            </tbody>
          ) : (
            <tbody></tbody>
          )}
        </table>
      </div>
    </div>
  );
}
