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
using System.Security.Cryptography;

namespace E_Vatandas
{

    public partial class login : Form
    {
        public string GenerateAPassword()
        {
            int length = 9;
            int maxl = 12;
            string[] parts = new string[] { "abcdefghjkmnpqrstuvwxyz", "ABCDEFGHJKLMNPQRSTUVWXYZ", "23456789", "*&^%$#@!" };

            if (length < parts.Length + 1)
            {
                return "invalid length";
            }

            //
            if (maxl > 0)
            {
                length = rngNumber(length, maxl);
            }
            StringBuilder pass = new StringBuilder();
            while (0 < length--)
            {
                pass.Append(string.Join("", parts)[rngNumber(0, string.Join("", parts).Length - 1)]);
            }
            //check of parts of password exist
            foreach (string part in parts)
            {
                if (pass.ToString().IndexOfAny(part.ToCharArray()) == -1)
                {
                    return GenerateAPassword();
                }
            }
            return pass.ToString();
        }

        private static readonly RNGCryptoServiceProvider rng = new RNGCryptoServiceProvider();

        public static int rngNumber(int min, int max)
        {
            byte[] randomNumber = new byte[1];
            rng.GetBytes(randomNumber);
            return (int)(min + (Math.Floor(Math.Max(0, ((Convert.ToDouble(randomNumber[0])) / 255d) - 0.00000000001d) * (max - min + 1))));
        }

        public static string toMD5(string sifre)
        {
            MD5CryptoServiceProvider md5 = new MD5CryptoServiceProvider();
            byte[] dizi = Encoding.UTF8.GetBytes(sifre);
            dizi = md5.ComputeHash(dizi);
            StringBuilder sb = new StringBuilder();
            foreach (byte ba in dizi)
            {
                sb.Append(ba.ToString("x2").ToLower());
            }
            return sb.ToString();
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


        public login()
        {
            InitializeComponent();
            textBox1.Text = E_Vatandas.Properties.Settings.Default.tc;
            textBox2.Text = E_Vatandas.Properties.Settings.Default.sifre;
        }

        private void login_Load(object sender, EventArgs e)
        {
        }

        private void button5_Click(object sender, EventArgs e)
        {
            this.WindowState = FormWindowState.Minimized;
        }

        private void button3_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn1 = new SqlConnection("Data Source=.;Initial Catalog=e_vatandas;Integrated Security=True");
            conn1.Open();
            SqlCommand retrievePass = new SqlCommand("SELECT sifre FROM vatandaslar WHERE tc=@tc",conn1);
            retrievePass.Parameters.AddWithValue("tc", textBox1.Text);
            SqlDataReader readPass;
            readPass = retrievePass.ExecuteReader();
            readPass.Read();
            try {
                SqlConnection conn2 = new SqlConnection("Data Source=.;Initial Catalog=e_vatandas;Integrated Security=True");
                conn2.Open();
                int column = readPass.GetOrdinal("sifre");
                if (readPass.IsDBNull(column) == true & textBox2.Text == "")
                {
                    string tempPass = GenerateAPassword();
                    SqlCommand writePass = new SqlCommand("UPDATE vatandaslar SET sifre=@pass WHERE tc=@tc", conn2);
                    writePass.Parameters.AddWithValue("pass", toMD5(tempPass));
                    writePass.Parameters.AddWithValue("tc", textBox1.Text);
                    writePass.ExecuteReader();
                    MessageBox.Show("Geçici şifreniz: " + tempPass + " olarak ayarlanmış ve panoya kopyalanmıştır. Lütfen şifrenizi not alın.","Bilgilendirme",MessageBoxButtons.OK,MessageBoxIcon.Information);
                    Clipboard.SetText(tempPass);
                    conn2.Close();
                    return;
                }
                else if (toMD5(textBox2.Text) == readPass["sifre"].ToString())
                {
                     ui ui = new ui(textBox1.Text);
                     ui.Show();
                     this.Hide();
                     conn1.Close();
                }
                else
                {
                     MessageBox.Show("Şifre Hatalı!", "Hata", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
            catch (InvalidOperationException)
            {
                MessageBox.Show("Bu T.C. ile alakalı kullanıcı bulunamadı", "Hata", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }

        }

        private void textBox1_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (!char.IsControl(e.KeyChar) && !char.IsDigit(e.KeyChar) &&
                (e.KeyChar != '.'))
            {
                e.Handled = true;
            }

            if ((e.KeyChar == '.') && ((sender as TextBox).Text.IndexOf('.') > -1))
            {
                e.Handled = true;
            }
        }

        private void checkBox1_CheckedChanged(object sender, EventArgs e)
        {
            if (checkBox1.Checked == true)
            {
                E_Vatandas.Properties.Settings.Default.tc = textBox1.Text;
                E_Vatandas.Properties.Settings.Default.sifre = textBox2.Text;
                E_Vatandas.Properties.Settings.Default.Save();
            }
            else
            {
                E_Vatandas.Properties.Settings.Default.tc = null;
                E_Vatandas.Properties.Settings.Default.sifre = null;
                E_Vatandas.Properties.Settings.Default.Save();
            }
        }

        private void checkBox2_CheckedChanged(object sender, EventArgs e)
        {
            if (checkBox2.Checked == true)
                textBox2.PasswordChar = '\0';
            else
                textBox2.PasswordChar = '*';
        }

        private void button2_Click(object sender, EventArgs e)
        {
            forgotPass forgot = new forgotPass();
            forgot.ShowDialog();
        }
    }
}
