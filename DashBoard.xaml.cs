using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;
using System.Data.Common;
using System.Data.SqlClient;
using System.Data;

namespace LoginPage
{

    
    /// <summary>
    /// Interaction logic for DashBoard.xaml
    /// </summary>
    public partial class DashBoard : Window
    {
        DataTable dt = new DataTable();

        List<FriendList> friendLists = new List<FriendList>();
        List<string> nameString = new List<string>();
        //List<FriendList> friends = new List<FriendList>();
        private string summonerBox;
        private string Region;
        public DashBoard(string summoner, string region)
        {
            summonerBox = summoner;
            Region = region;
            InitializeComponent();
            Profile_Name.HorizontalContentAlignment = HorizontalAlignment.Center;
            Profile_Name.Content = summonerBox.ToString() + "        " +  Region.ToString();
            
            //Friend_ListBox.DisplayMemberPath = "FullInfo";
        }


        private void Refresh_Btn_Click(object sender, RoutedEventArgs e)
        {

            string cn = Properties.Settings.Default.Connection_String;


            using (SqlConnection con = new SqlConnection(cn))
            {
                SqlCommand cmd = new SqlCommand("SELECT top 300 * FROM FriendsList where first_name is not NULL", con);
                cmd.CommandType = CommandType.Text;
                con.Open();

                SqlDataReader rdr = cmd.ExecuteReader();
                while (rdr.Read())
                {
                    string firstName = rdr["first_name"].ToString();

                    nameString.Add(firstName);

                    
                        Friend_ListBox.Items.Add(firstName);
                    
                }
            }
        }

        private void AddBtn_Click(object sender, RoutedEventArgs e)
        {
            string cn = Properties.Settings.Default.Connection_String;
            string firstName = FirstNameBox.Text.ToString();
            string lastName = LastNameBox.Text.ToString();
            string emailAddress = EmailBox.Text.ToString();
            string gender = GenderComBox.SelectedItem.ToString();

            using(SqlConnection con = new SqlConnection(cn))
            {
                SqlCommand cmd = new SqlCommand("INSERT INTO FriendsList(first_name, last_name, email, gender) VALUES( :firstName, :lastName, :email, :gender)" , con);
                cmd.CommandType = CommandType.Text;
                con.Open();

                //SqlParameter parm = new SqlParameter();
                cmd.Parameters.Add(":firstName", SqlDbType.VarChar);
                cmd.Parameters.Add(":lastName", SqlDbType.VarChar);
                cmd.Parameters.Add(":email", SqlDbType.VarChar);
                cmd.Parameters.Add(":gender", SqlDbType.VarChar);

                cmd.Parameters[":firstName"].Value = firstName;
                cmd.Parameters[":lastName"].Value = lastName;
                cmd.Parameters[":email"].Value = emailAddress;
                cmd.Parameters[":gender"].Value = gender;

              
                string run = cmd.ExecuteNonQuery().ToString();
                //MessageBox.Show(run);

                
            }
        }

        private void Profile_Name_Loaded(object sender, RoutedEventArgs e)
        {

        }

        private void web_Navigating(object sender, System.Windows.Navigation.NavigatingCancelEventArgs e)
        {
            System.Diagnostics.Process.Start("https://localhost:5001");
        }

        private void web_PreviewDragOver(object sender, DragEventArgs e)
        {
            System.Diagnostics.Process.Start("https://localhost:5001");
        }
    }
}
