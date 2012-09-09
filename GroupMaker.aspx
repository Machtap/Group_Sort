<%@ Page Language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    public void buttonClick(object sender, EventArgs e)
    {
        string print = "";
        int h = 0;
        int s = 1;
        int j = 2;
        int k = 3;
        int l = 4;
        
        // For each 
        for (int i = 0; i < 12; i++, j++, h++, l++, s++, k++)
        {
            if (h == 5)
            {
                h = 0;
            }

            if (s == 5)
            {
                s = 0;
            }

            if (j == 5)
            {
                j = 0;
            }

            if (k == 5)
            {
                k = 0;
            }

            if (l == 5)
            {
                l = 0;
            }

            string[] values = new string[5];
            {
                values[0] = name1.Text;
                values[1] = name2.Text;
                values[2] = name3.Text;
                values[3] = name4.Text;
                values[4] = name5.Text;
            }

            string Group1 = "";
            string Group2 = "";

            if (i < 4)
            {
                Group1 = values[h] + ", " + values[s];
                Group2 = values[j] + ", " + values[k] + ", " + values[l];
            }
            if (i >= 4 && i < 8)
            {
                Group1 = values[k] + ", " + values[l];
                Group2 = values[h] + ", " + values[j] + ", " + values[s];
            }
            if (i >= 8)
            {
                Group1 = values[j] + ", " + values[l];
                Group2 = values[h] + ", " + values[k] + ", " + values[s];
            }

            string groups = " (Group One: " + Group1 + ") - (" + "Group Two: " + Group2 + ") <br />";

            print += "Homework #" + (i + 1) + groups;
        }

        Label1.Text = print;

    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    To Generate Groups Enter names and press start!<br />

        <asp:textbox runat="server" ID="name1" text="Ryan Kroll"></asp:textbox><br />
        <asp:textbox runat="server" ID="name2" text="Andrew Macht"></asp:textbox><br />
        <asp:textbox runat="server" ID="name3" text="Ryyan Maki"></asp:textbox><br />
        <asp:textbox runat="server" ID="name4" text="Nicole Kor"></asp:textbox><br />
        <asp:textbox runat="server" ID="name5" text="Nick Johnson"></asp:textbox><br />

        <asp:Button runat="server" ID="button1" OnClick="buttonClick" text="Start!"/><br />


        <asp:Label runat="server" ID="Label1"></asp:Label>


    </div>
    </form>
</body>
</html>
