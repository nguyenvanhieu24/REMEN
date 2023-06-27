using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QLRamenWPF.DTO
{
    public class Table
    {
        public Table(int id, string name, string status) 
        {
            this.ID = id;
            this.Name = name;
            this.Status = status;
        }

        public Table(DataRow row)
        {
            this.ID = (int)row["TABLE_ID"];
            this.Name = row["TABLE_NAME"].ToString();
            this.status = row["STATUS"].ToString();
        }

        private int iD;
        private string name;
        private string status;

        public int ID { get => iD; set => iD = value; }
        public string Name { get => name; set => name = value; }
        public string Status { get => status; set => status = value; }
    }
}
