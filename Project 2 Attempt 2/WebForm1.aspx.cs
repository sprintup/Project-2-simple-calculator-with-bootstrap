﻿using System;
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
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            if (IsPostBack)
            {
                System.Diagnostics.Debug.WriteLine($"In postback with numberX: {numberX}, numberY: {numberY}, name: {name}, result: {result}");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            label_results.Text = "";
            if (IsValid)
            {
                //number X 
                if (input_numberX.Text == "") // not empty
                {
                    
                }

                try
                {
                    numberX = Convert.ToInt32(input_numberX.Text);
                }
                catch (Exception)
                {
                    input_numberX.Text = "";
                    //display error
                }

                try
                {
                    numberY = Convert.ToInt32(input_numberY.Text);
                }
                catch (Exception)
                {
                    input_numberY.Text = "";
                    //display error
                }

                //name validation
                name = input_name.Text;

                //reset form
                //clearInput();

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
            label_results.Text = "";
        }

        protected void input_numberX_TextChanged(object sender, EventArgs e)
        {

        }
    }
}