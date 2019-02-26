using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project_2_Attempt_2
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        public int numberX;
        public int numberY;
        public string name;
        public string result;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                System.Diagnostics.Debug.WriteLine($"In postback with numberX: {numberX}, numberY: {numberY}, name: {name}, result: {result}");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            resetLabels();
            if (IsValid)
            {
                //number X 
                if (input_numberX.Text == "") // not empty
                {
                    Label1.Text = "Please ENTER a whole number between 0 and 9999";
                }
                if (int.TryParse(input_numberX.Text, out int parsedX)) // set x number, will always be true
                {
                    numberX = parsedX;
                }
                if (numberX <= 0 || numberX >= 9999)
                {
                    Label1.Text = "Please enter a whole number BETWEEN 0 AND 9999";
                }

                //number Y
                if (input_numberY.Text == "") // not empty
                {
                    Label2.Text = "Please ENTER a whole number between 0 and 9999";
                }
                if (int.TryParse(input_numberY.Text, out int parsedY)) // will always be true
                {
                    numberY = parsedY;
                }
                if (numberY <= 0 || numberY >= 9999) //in range
                {
                    Label2.Text = "Please enter a whole number BETWEEN 0 AND 9999";
                }

                //name
                if (input_name.Text != "")
                {
                    name = input_name.Text;
                } else
                {
                    Label3.Text = "Please enter your name";
                }

                //result
                if (numberX >= 0 && numberX <= 9999 &&
                    numberY >= 0 && numberY <= 9999 &&
                    input_name.Text != "")
                {
                    label_results.Text = construct_result(name, numberX, numberY);
                } else
                {
                    label_results.Text = "Please enter all of the fields";
                }
            }

        }

        protected string construct_result(string name, int numberX, int numberY)
        {
            return $"Hi {name}, {numberX.ToString()} + {numberY.ToString()} = {(numberX+numberY).ToString()}";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            clearInput();
        }

        protected void clearInput()
        {
            input_numberX.Text = "";
            numberX = 0;
            input_numberY.Text = "";
            numberY = 0;
            input_name.Text = "";
            resetLabels();
            label_results.Text = "";
        }

        protected void resetLabels()
        {
            Label1.Text = "";
            Label2.Text = "";
            Label3.Text = "";
        }
    }
}