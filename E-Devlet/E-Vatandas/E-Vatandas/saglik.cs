using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;

namespace E_Vatandas
{
    public partial class saglik : Form
    {
        protected override void WndProc(ref Message m)
        {
            base.WndProc(ref m);
            if (m.Msg == WM_NCHITTEST)
                m.Result = (IntPtr)(HT_CAPTION);
        }

        private const int WM_NCHITTEST = 0x84;
        private const int HT_CLIENT = 0x1;
        private const int HT_CAPTION = 0x2;

        public saglik(string vid)
        {
            InitializeComponent();
            SqlConnection conn1 = new SqlConnection("Data Source=.;Initial Catalog=e_vatandas;Integrated Security=True");
            conn1.Open();
            SqlCommand retrieve = new SqlCommand("SELECT * FROM saglik_bilgileri WHERE vid=@vid", conn1);
            retrieve.Parameters.AddWithValue("vid", vid);
            SqlDataReader read;
            read = retrieve.ExecuteReader();
            DataTable dt = new DataTable();
            dt.Columns.Add("Kan Grubu");
            dt.Columns.Add("Yaş");
            dt.Columns.Add("Boy");
            dt.Columns.Add("Kilo");
            dt.Columns.Add("Vücut Kitle İndeksi");
            dt.Columns.Add("Sağlık Ocağı");
            dt.Columns.Add("Yaptırılan Aşılar");
            dt.Columns.Add("Aile Hekimi");
            while (read.Read())
            {
                DataRow row = dt.NewRow();
                row["Kan Grubu"] = read["kan_grubu"];
                row["Yaş"] = read["yas"];
                row["Boy"] = read["boy"];
                row["Kilo"] = read["kilo"];
                row["Vücut Kitle İndeksi"] = read["vki"];
                row["Sağlık Ocağı"] = read["saglik_ocagi"];
                row["Yaptırılan Aşılar"] = read["asi_id"];
                row["Aile Hekimi"] = read["aile_hekimi"];
                dt.Rows.Add(row);
            }
            dataGridView1.DataSource = dt;
            conn1.Close();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            this.WindowState = FormWindowState.Minimized;
        }

        private void saglik_Load(object sender, EventArgs e)
        {
            dataGridView1.AllowUserToAddRows = false;
            dataGridView1.AllowUserToDeleteRows = false;
            dataGridView1.ReadOnly = true;
        }
    }
}
