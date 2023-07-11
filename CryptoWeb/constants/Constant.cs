using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace CryptoWeb.constants
{
    public static class Constant
    {
        public static string conStr = "Data Source=DESKTOP-Q37V3LA;Initial Catalog=TufelDB1;Integrated Security=True";
        public static string selectQuery = "SELECT * FROM RegTable";
        public static string selectEmailPassQuery = "SELECT COUNT(*) FROM RegTable WHERE pass= @pass AND pass = @pass";
    
    }
}