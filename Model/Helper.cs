using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LoginPage
{
    public static class Helper
    {
        public static string CnnVal(string DB01)
        {
            return ConfigurationManager.ConnectionStrings[DB01].ConnectionString;
        }
    }
}
