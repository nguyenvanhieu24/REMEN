using QLRamenWPF.DTO;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QLRamenWPF.DAO
{
    public class MenuDAO
    {
        private static MenuDAO instance;

        public static MenuDAO Instance
        {
            get { if (instance == null) instance = new MenuDAO(); return MenuDAO.instance; }
            private set { MenuDAO.instance = value; }
        }

        private MenuDAO() { }

        public List<Menu> GetListMenuByTable(int id)
        {
            List<Menu> listMenu = new List<Menu>();

            string query = "SELECT Food.FOOD_NAME, BillInfo.COUNT, Food.PRICE, Food.PRICE * BillInfo.COUNT AS totalPrice FROM TBL_BILLINFO as BillInfo, TBL_BILL as Bill, TBL_FOOD as Food WHERE BillInfo.BILL_ID = Bill.BILL_ID AND BillInfo.FOOD_ID = Food.FOOD_ID AND Bill.STATUS = 0 AND Bill.TABLE_ID = " + id;
            DataTable data = DataProvider.Instance.ExecuteQuery(query);

            foreach (DataRow item in data.Rows)
            {
                Menu menu = new Menu(item);
                listMenu.Add(menu);
            }

            return listMenu;
        }
    }
}
