using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace ProjectExample
{
    public partial class Form1 : Form
    {
        Registration registration = new Registration();

        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            
        }

        private void button1_Click_1(object sender, EventArgs e)
        {
            //MessageBox.Show("Registration Form");
            registration.Show();
        }

        private void button1_Click_2(object sender, EventArgs e)
        {

        }

        private void Items_btn_Click(object sender, EventArgs e)
        {

        }

        private void Invoice_btn_Click(object sender, EventArgs e)
        {

        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {

        }

        private void exitToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Environment.Exit(0);   
        }
    }
}
