using QLRamenWPF.DTO;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QLRamenWPF.DAO
{
    public class FoodDAO
    {
        private static FoodDAO instance;

        public static FoodDAO Instance
        {
            get { if (instance == null) instance = new FoodDAO(); return FoodDAO.instance; }
            private set { FoodDAO.instance = value; }
        }

        private FoodDAO() { }

        public List<Food> GetFoodByCategoryID(int id)
        {
            List<Food> list = new List<Food>();

            string query = "SELECT * FROM TBL_FOOD WHERE CATEGORY_ID = " + id;
            DataTable data = DataProvider.Instance.ExecuteQuery(query);

            foreach (DataRow item in data.Rows)
            {
                Food food = new Food(item);
                list.Add(food);
            }

            return list;
        }

        public List<Food> GetListFood()
        {
            List<Food> list = new List<Food>();

            string query = "SELECT * FROM TBL_FOOD";
            DataTable data = DataProvider.Instance.ExecuteQuery(query);

            foreach (DataRow item in data.Rows)
            {
                Food food = new Food(item);
                list.Add(food);
            }

            return list;
        }

        public bool AddFood(string foodname, int idcategory, float price)
        {
            string query = string.Format("INSERT TBL_FOOD (FOOD_NAME, CATEGORY_ID, PRICE) VALUES ('{0}', {1}, {2})", foodname, idcategory, price);
            int result = DataProvider.Instance.ExecuteNonQuery(query);

            return result > 0;
        }

        public bool UpdateFood(int idFood, string foodname, int idcategory, float price)
        {
            string query = string.Format("UPDATE TBL_FOOD SET FOOD_NAME = '{0}', CATEGORY_ID = {1}, PRICE = {2} WHERE FOOD_ID = {3}", foodname, idcategory, price, idFood);
            int result = DataProvider.Instance.ExecuteNonQuery(query);

            return result > 0;
        }

        public bool RemoveFood(int idFood)
        {
            BillInfoDAO.Instance.RemoveBillInfoByFoodID(idFood);
            string query = string.Format("DELETE TBL_FOOD WHERE FOOD_ID = {0}", idFood);
            int result = DataProvider.Instance.ExecuteNonQuery(query);

            return result > 0;
        }
    }
}
