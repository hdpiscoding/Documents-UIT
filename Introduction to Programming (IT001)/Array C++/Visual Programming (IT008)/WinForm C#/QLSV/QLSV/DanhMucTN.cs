using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace QLSV
{
    public partial class DanhMucTN : Form
    {
        public DanhMucTN()
        {
            InitializeComponent();
        }


        private void DanhMucTN_Load(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            this.Hide();
            NhapSV nhapsv = new NhapSV();
            nhapsv.ShowDialog();
            this.Show();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            this.Hide();
            TimKiemSV tiemKiem = new TimKiemSV();
            tiemKiem.ShowDialog();
            this.Show();
        }
    }
}
