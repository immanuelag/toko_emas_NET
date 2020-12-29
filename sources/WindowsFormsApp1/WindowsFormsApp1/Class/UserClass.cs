using System;
using System.Text;

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
        public string passcode;
        public UserRole role;

        public UserClass(string _username, string _password)
        {
            username = _username;
            password = _password;
            passcode = "";
            role = UserRole.Employee;
        }

        public UserClass(string _user, string _pass, int _role)
        {
            username = _user;
            password = _pass;
            passcode = "";

            switch (_role)
            {
                case 1: role = UserRole.Administrator; break;
                case 2: role = UserRole.Owner; break;
                case 3: 
                default: role = UserRole.Employee; break;
            }
            
        }

        public string GetRole()
        {
            switch (role)
            {
                case UserRole.Administrator: return "Administrator";
                case UserRole.Owner: return "Owner";
                case UserRole.Employee:
                default:
                    return "Employee";
            }
        }

        public static string CreateMD5(string input)
        {
            // Use input string to calculate MD5 hash
            using (System.Security.Cryptography.MD5 md5 = System.Security.Cryptography.MD5.Create())
            {
                byte[] inputBytes = System.Text.Encoding.ASCII.GetBytes(input);
                byte[] hashBytes = md5.ComputeHash(inputBytes);

                // Convert the byte array to hexadecimal string
                StringBuilder sb = new StringBuilder();
                for (int i = 0; i < hashBytes.Length; i++)
                {
                    sb.Append(hashBytes[i].ToString("X2"));
                }
                return sb.ToString();
            }
        }
    }
}
