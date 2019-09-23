using System;

namespace TokoEmasAppNET
{
    public enum UserRole
    {
        Administrator = 1,
        Owner = 2,
        Employee = 3,
        Guest = 4
    }

    public class UserClass
    {
        public string username;
        public string password;
        public UserRole role;

        public UserClass()
        {
        }
    }
}
