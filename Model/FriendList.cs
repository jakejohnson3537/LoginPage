using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LoginPage
{
    class FriendList
    {
        public string FirstName { get; set; }

        public string LastName { get; set; }


        public string FullInfo
        {
            get 
            {
                //return as "Jake Johnson"
                return $"{FirstName} {LastName}";
            }
        }

    }
}
