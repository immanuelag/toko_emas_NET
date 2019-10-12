using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TokoEmasAppNET
{
    public class Supplier
    {
        public int id;
        public string code;
        public string nama;

        public Supplier(int _id, string _code, string _nama)
        {
            id = _id;
            code = _code;
            nama = _nama;
        }
    }
}
