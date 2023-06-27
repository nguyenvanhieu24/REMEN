using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QLRamenWPF.DTO
{
    public class Bill
    {
        public Bill(int id, int tableID, int status)
        {
            this.ID = id;
            this.TableID = tableID;
            this.Status = status;
        }

        public Bill(DataRow row)
        {
            this.ID = (int)row["BILL_ID"];
            this.TableID = (int)row["TABLE_ID"];
            this.Status = (int)row["STATUS"];
        }

        private int iD;
        private int tableID;
        private int status;

        public int ID { get => iD; set => iD = value; }
        public int Status { get => status; set => status = value; }
        public int TableID { get => tableID; set => tableID = value; }
    }
}
