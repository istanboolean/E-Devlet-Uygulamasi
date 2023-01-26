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

    public partial class ui : Form
    {
        public string vid;
        public ui(string tc)
        {
            InitializeComponent();
            SqlConnection conn1 = new SqlConnection("Data Source=.;Initial Catalog=e_vatandas;Integrated Security=True");
            conn1.Open();
            SqlCommand retrieveUser = new SqlCommand("SELECT vid,isim,soyisim FROM vatandaslar WHERE tc=@tc", conn1);
            retrieveUser.Parameters.AddWithValue("tc", tc);
            SqlDataReader readUser;
            readUser = retrieveUser.ExecuteReader();
            readUser.Read();
            vid = readUser["vid"].ToString();
            user.Text = String.Format("{0} {1}", readUser["isim"].ToString(), readUser["soyisim"].ToString());
            user.TextAlign = ContentAlignment.MiddleCenter;
            date.Text = DateTime.Now.ToString();
            date.Location = new Point(this.Size.Width / 2 - date.Size.Width / 2, date.Location.Y);
            user.Location = new Point(this.Size.Width / 2 - user.Size.Width / 2, user.Location.Y);
        }

        protected override void WndProc(ref Message m)
        {
            base.WndProc(ref m);
            if (m.Msg == WM_NCHITTEST)
                m.Result = (IntPtr)(HT_CAPTION);
        }

        private const int WM_NCHITTEST = 0x84;
        private const int HT_CLIENT = 0x1;
        private const int HT_CAPTION = 0x2;
    

    private void ui_Load(object sender, EventArgs e) 
        {
        }

        private void button1_Click(object sender, EventArgs e)
        {
            Environment.Exit(0);
        }

        private void button2_Click(object sender, EventArgs e)
        {
            this.WindowState = FormWindowState.Minimized;
        }

        private void button3_Click(object sender, EventArgs e)
        {
            adli adli = new adli(vid);
            adli.ShowDialog();
        }

        private void button4_Click(object sender, EventArgs e)
        {
            askerlik askerlik = new askerlik(vid);
            askerlik.ShowDialog();
        }

        private void button14_Click(object sender, EventArgs e)
        {
            emeklilik emeklilik = new emeklilik(vid);
            emeklilik.ShowDialog();
        }

        private void button12_Click(object sender, EventArgs e)
        {
            egitim egitim = new egitim(vid);
            egitim.ShowDialog();
        }

        private void button6_Click(object sender, EventArgs e)
        {
            ehliyet ehliyet = new ehliyet(vid);
            ehliyet.ShowDialog();
        }

        private void button5_Click(object sender, EventArgs e)
        {
            evcil_hayvan evcil_hayvan = new evcil_hayvan(vid);
            evcil_hayvan.ShowDialog();
        }

        private void button13_Click(object sender, EventArgs e)
        {
            pasaport pasaport = new pasaport(vid);
            pasaport.ShowDialog();
        }

        private void button10_Click(object sender, EventArgs e)
        {
            saglik saglik = new saglik(vid);
            saglik.ShowDialog();
        }

        private void button7_Click(object sender, EventArgs e)
        {
            secim secim = new secim(vid);
            secim.ShowDialog();
        }

        private void timer1_Tick(object sender, EventArgs e)
        {
            date.Text = DateTime.Now.ToString();
            date.Location = new Point(this.Size.Width / 2 - date.Size.Width / 2, date.Location.Y);
        }
    }
}
