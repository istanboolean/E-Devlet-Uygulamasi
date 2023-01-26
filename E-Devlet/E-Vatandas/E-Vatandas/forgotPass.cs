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
    public partial class forgotPass : Form
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

        public forgotPass()
        {
            InitializeComponent();
        }

        private void button3_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void button5_Click(object sender, EventArgs e)
        {
            this.WindowState = FormWindowState.Minimized;
        }

        private void button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn1 = new SqlConnection("Data Source=.;Initial Catalog=e_vatandas;Integrated Security=True");
            conn1.Open();
            SqlCommand retrieveQuest = new SqlCommand("SELECT guvenlik_sorusu, guvenlik_sorusu_cevap FROM vatandaslar WHERE tc=@tc", conn1);
            retrieveQuest.Parameters.AddWithValue("tc", textBox1.Text);
            SqlDataReader readQuest;
            readQuest = retrieveQuest.ExecuteReader();
            readQuest.Read();
            
            try { 
            if (textBox2.Text.ToLower() == readQuest["guvenlik_sorusu_cevap"].ToString().ToLower() & comboBox1.Text == readQuest["guvenlik_sorusu"].ToString())
            {
                SqlConnection conn2 = new SqlConnection("Data Source=.;Initial Catalog=e_vatandas;Integrated Security=True");
                conn2.Open();
                MessageBox.Show("Şifreniz başarıyla sıfırlanmıştır. Lütfen tekrar giriş yapın.", "Bilgilendirme", MessageBoxButtons.OK, MessageBoxIcon.Information);
                SqlCommand writePass = new SqlCommand("UPDATE vatandaslar SET sifre=NULL WHERE tc=@tc", conn2);
                writePass.Parameters.AddWithValue("tc", textBox1.Text);
                writePass.ExecuteReader();
                this.Close();
            } else
            {
                MessageBox.Show("Güvenlik sorusu veya cevabı yanlış!", "Bilgilendirme", MessageBoxButtons.OK, MessageBoxIcon.Error);

            }
            } catch (InvalidOperationException)
            {
                MessageBox.Show("Bu T.C. ile alakalı kullanıcı bulunamadı", "Hata", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }

        }
    }
}
