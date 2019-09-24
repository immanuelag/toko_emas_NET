using System;

namespace TokoEmasAppNET
{
    public enum UserRole
    {
        Administrator = 1,
        Owner = 2,
        Employee = 3
    }

    public class UserClass
    {
        public string username;
        public string password;
        public UserRole role;

        public UserClass(string _username, string _password)
        {
            username = _username;
            password = _password;
            role = UserRole.Employee;
        }

        public UserClass(string _user, string _pass, int _role)
        {
            username = _user;
            password = _pass;

            switch (_role)
            {
                case 1: role = UserRole.Administrator; break;
                case 2: role = UserRole.Owner; break;
                case 3: 
                default: role = UserRole.Employee; break;
            }
            
        }
    }
}
