using QLRamenWPF.DAO;
using QLRamenWPF.DTO;
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
using System.Windows.Navigation;
using System.Windows.Shapes;
using Menu = QLRamenWPF.DTO.Menu;
using Table = QLRamenWPF.DTO.Table;

namespace QLRamenWPF
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();

            LoadTable();
            LoadCategory();
        }

        void LoadCategory()
        {
            List<Category> categories = CategoryDAO.Instance.GetListCategory();
            foreach (Category category in categories)
            {
                cbCategory.Items.Add(category);
            }
            cbCategory.DisplayMemberPath = "Name";
            cbCategory.SelectedIndex = 0;
        }

        void LoadFoodListByCategoryID(int id)
        {
            cbFood.Items.Clear();
            List<Food> listFood = FoodDAO.Instance.GetFoodByCategoryID(id);
            foreach (Food food in listFood)
            {
                cbFood.Items.Add(food);
            }
            cbFood.DisplayMemberPath = "Name";
            cbFood.SelectedIndex = 0;
        }

        void LoadTable()
        {
            flpTable.Children.Clear();
            List<Table> listTable = TableDAO.Instance.LoadTableList();

            foreach (Table item in listTable)
            {
                Button btn = new Button();
                btn.Content = item.Name + ": " + item.Status;
                btn.Width = TableDAO.TableWidth;
                btn.Height = TableDAO.TableHeight;
                btn.Margin = new Thickness(5);
                btn.Foreground = new SolidColorBrush(Colors.White);
                btn.Click += btn_Click;
                btn.Tag = item;

                switch (item.Status)
                {
                    case "Empty":
                        btn.Background = new SolidColorBrush(Color.FromRgb(60, 61, 66));
                        break;
                    default:
                        btn.Background = new SolidColorBrush(Color.FromRgb(0, 136, 169));
                        break;
                }

                flpTable.Children.Add(btn);
            }
        }

        void ShowBill(int id)
        {
            dtgvBill.Items.Clear();
            List<Menu> listBillInfo = MenuDAO.Instance.GetListMenuByTable(id);

            float totalPrice = 0;

            foreach (Menu item in listBillInfo)
            {
                totalPrice += item.TotalPrice;
                dtgvBill.Items.Add(item);
            }

            Table table = dtgvBill.Tag as Table;

            lbTotal.Text = string.Format("{0}'s Total", table.Name);
            txbTotalPrice.Text = totalPrice.ToString();
        }

        private void cbCategory_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            int id = 0;

            ComboBox cb = sender as ComboBox;

            if (cb.SelectedItem == null)
                return;

            Category selected = cb.SelectedItem as Category;
            id = selected.ID;

            LoadFoodListByCategoryID(id);
        }

        private void btn_Click(object sender, EventArgs e)
        {
            int tableID = ((sender as Button).Tag as Table).ID;
            dtgvBill.Tag = (sender as Button).Tag;
            ShowBill(tableID);
        }

        private void btnAddFood_Click(object sender, RoutedEventArgs e)
        {
            Table table = dtgvBill.Tag as Table;

            if (table == null)
            {
                MessageBox.Show("Please chose a table");
                return;
            }

            int idBill = BillDAO.Instance.GetUncheckBillIDByTableID(table.ID);
            int foodID = (cbFood.SelectedItem as Food).ID;
            int count = (int)nmFoodCount.Value;

            if (idBill == -1)
            {
                BillDAO.Instance.InsertBill(table.ID);
                BillInfoDAO.Instance.InsertBillInfo(BillDAO.Instance.GetMaxIDBill(), foodID, count);
            }
            else
            {
                BillInfoDAO.Instance.InsertBillInfo(idBill, foodID, count);
            }
            ShowBill(table.ID);

            LoadTable();
        }

        private void btnCheckOut_Click(object sender, RoutedEventArgs e)
        {
            Table table = dtgvBill.Tag as Table;

            int idBill = BillDAO.Instance.GetUncheckBillIDByTableID(table.ID);

            double total = Convert.ToDouble(txbTotalPrice.Text);

            string message = string.Format("Do you want to check out {0}?", table.Name);

            if (idBill != -1)
            {
                MessageBoxResult result = MessageBox.Show(message, "Confirmation", MessageBoxButton.OKCancel, MessageBoxImage.Question);

                if (result == MessageBoxResult.OK)
                {
                    BillDAO.Instance.CheckOut(idBill, (float)total);
                    ShowBill(table.ID);

                    LoadTable();
                }
            }
        }
    }
}
