import axios from "axios";
const axiosClinte = axios.create({
  baseURL: `${import.meta.env.VITE_API_BASE_URL}/api`,
});
axiosClinte.interceptors.request.use((config) => {
  const token = localStorage.getItem("ACCESS_TOKEN");
  config.headers.Authorization = `Bearer ${token}`;
  return config;
});
axiosClinte.interceptors.response.use(
  (response) => {
    return response;
  },
  (error) => {
    const { response } = error;
    if (response.status === 401) {
      localStorage.removeItem("ACCESS_TOKEN");
    }
    throw error;
  }
);
export default axiosClinte;
