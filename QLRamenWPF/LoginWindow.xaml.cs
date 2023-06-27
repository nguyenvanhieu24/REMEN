using QLRamenWPF.DAO;
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

namespace QLRamenWPF
{
    /// <summary>
    /// Interaction logic for LoginWindow.xaml
    /// </summary>
    public partial class LoginWindow : Window
    {
        public LoginWindow()
        {
            InitializeComponent();
        }

        private void btnLogin_Click(object sender, RoutedEventArgs e)
        {
            string username = txbUsername.Text;
            string password = txbPassword.Password.ToString();

            if (AccountDAO.Instance.Login(username, password))
            {
                MainWindow main = new MainWindow();
                this.Hide();
                main.ShowDialog();
                this.Show();
            }
            else
                MessageBox.Show("Username or Password is incorrect.");
        }
    }
}
