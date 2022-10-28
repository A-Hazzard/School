using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace SimpleCalculator
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button3_Click(object sender, EventArgs e)
        {

            this.label1.Text = this.label1 + ".";
        }

        private void label1_Click(object sender, EventArgs e)
        {
            this.label1.Text = "0";
        }

        private void button17_Click(object sender, EventArgs e)
        {
                /* one way to clear text in button
                this.label1.Text = ""; */

                //another way to clear text in button 
                this.label1.ResetText();
        }
        

        private void button1_Click(object sender, EventArgs e)
        {
            this.label1.Text = this.label1.Text + "0";
        }

        private void button2_Click(object sender, EventArgs e)
        {
            this.label1.Text = this.label1.Text + "1";
        }

        private void button6_Click(object sender, EventArgs e)
        {
            this.label1.Text = this.label1.Text + "2";
        }

        private void button7_Click(object sender, EventArgs e)
        {
            this.label1.Text = this.label1.Text + "3";
        }

        private void button9_Click(object sender, EventArgs e)
        {
            this.label1.Text = this.label1.Text + "4";
        }

        private void button10_Click(object sender, EventArgs e)
        {
            this.label1.Text = this.label1.Text + "5";
        }

        private void button11_Click(object sender, EventArgs e)
        {
            this.label1.Text = this.label1.Text + "6";
        }

        private void button13_Click(object sender, EventArgs e)
        {
            this.label1.Text = this.label1.Text + "7";
        }

        private void button14_Click(object sender, EventArgs e)
        {
            this.label1.Text = this.label1.Text + "8";
        }

        private void button15_Click(object sender, EventArgs e)
        {
            this.label1.Text = this.label1.Text + "9";
        }

        private void button20_Click(object sender, EventArgs e)
        {
            this.operation.Text = "÷";
            //checks to see if label is empty before assigning value to display
            if (this.label1.Text != "")
            {
                this.display.Text = this.label1.Text;
            }

            //clears content of label1
            this.label1.Text = "";
        }

        private void button5_Click(object sender, EventArgs e)
        {
            //defining variable for result
            double first_num;
            double sec_num;
            double result;

            double.TryParse(this.display.Text, out first_num);
            double.TryParse(this.display.Text, out sec_num);

            if(operation.Text == "+")
            {
                result = first_num + sec_num;
            }
            if (operation.Text == "-")
            {
                result = first_num - sec_num;
            }
            if (operation.Text == "x")
            {
                result = first_num * sec_num;
            }
            if (operation.Text == "÷")
            {
                result = first_num / sec_num;
            }
        }

        private void label2_Click(object sender, EventArgs e)
        {

        }

        private void button8_Click(object sender, EventArgs e)
        {
            this.operation.Text = "+";
            if (this.label1.Text != "")
            {
                this.display.Text = this.label1.Text;
            }
            this.label1.Text = "";
        }

        private void button12_Click(object sender, EventArgs e)
        {
            this.operation.Text = "-";
            if (this.label1.Text != "")
            {
                this.display.Text = this.label1.Text;
            }
            this.label1.Text = "";
        }

        private void button16_Click(object sender, EventArgs e)
        {
            this.operation.Text = "*";
            if (this.label1.Text != "")
            {
                this.display.Text = this.label1.Text;
            }
            this.label1.Text = "";
        }
    }
}
