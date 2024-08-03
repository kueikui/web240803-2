using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Text;
using System.Threading.Tasks;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


using System.Net.Http;
using System.Text;
using System.Threading.Tasks;

namespace web_1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["cAccount"] == null && Session["homeAccount"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            if (Session["ShowPanel"] != null && (bool)Session["ShowPanel"] == true)
            {
                Panel1.Visible = true;
            }
            if (!IsPostBack)
            {
                string cameraID = Request.QueryString["CameraID"];
                if (!string.IsNullOrEmpty(cameraID))
                {
                    ShowCameraView(cameraID);
                }
            }
        }
        private void ShowCameraView(string cameraID)
        {
            switch (cameraID)
            {
                case "1": // 假設cameraID為1對應Button1的影片
                    videoPlayer.Attributes["src"] = "test.mp4";
                    break;
                case "2": // 假設cameraID為2對應Button2的影片
                    videoPlayer.Attributes["src"] = "test3.mp4";
                    break;
                case "3": // 假設cameraID為3對應Button7的影片
                    videoPlayer.Attributes["src"] = "test3.mp4";
                    break;
                // 可以根據需要添加更多的cameraID對應的情況
                default:
                    //SetVideoSource("default.mp4"); // 如果沒有對應，顯示預設影片
                    break;
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            videoPlayer.Attributes["src"] = "test.mp4";
            Label1.Text = "一樓走廊-1";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            videoPlayer.Attributes["src"] = "test3.mp4";
            Label1.Text = "一樓走廊-2";
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            videoPlayer.Attributes["src"] = "test2.mp4";
            Label1.Text = "廚房";
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            videoPlayer.Attributes["src"] = "test.mp4";
            Label1.Text = "客廳";
        }

        protected void Button9_Click(object sender, EventArgs e)
        {
            videoPlayer.Attributes["src"] = "test3.mp4";
            Label1.Text = "玄關";
        }

        protected void Button10_Click(object sender, EventArgs e)
        {
            videoPlayer.Attributes["src"] = "test2.mp4";
            Label1.Text = "飯廳";
        }

        protected void Button11_Click(object sender, EventArgs e)
        {
            Panel1.Visible = true;
            Session["ShowPanel"] = true;

            /*if (Session["LoginType"] == "Home")
            {
                // 假設家屬A的User ID為 "FAMILY_MEMBER_A_USER_ID"
                string familyMemberUserId = "FAMILY_MEMBER_A_USER_ID";
                string message = "警告：監測到老人A發生跌倒，請立即查看情況！";

                // 發送通知給家屬
                NotifyFamilyMemberAsync(familyMemberUserId, message).Wait();
            } */  
        }

        /*private async Task NotifyFamilyMemberAsync(string userId, string message)
        {
            string lineAccessToken = "YOUR_LINE_ACCESS_TOKEN"; // 您的LINE存取令牌

            using (HttpClient client = new HttpClient())
            {
                client.DefaultRequestHeaders.Authorization = new System.Net.Http.Headers.AuthenticationHeaderValue("Bearer", lineAccessToken);

                var json = "{\"to\":\"" + userId + "\",\"messages\":[{\"type\":\"text\",\"text\":\"" + message + "\"}]}";
                var content = new StringContent(json, Encoding.UTF8, "application/json");

                HttpResponseMessage response = await client.PostAsync("https://api.line.me/v2/bot/message/push", content);

                if (response.IsSuccessStatusCode)
                {
                    // 發送成功
                    Console.WriteLine("Message sent successfully.");
                }
                else
                {
                    // 發送失敗
                    Console.WriteLine("Error sending message.");
                }
            }
        }*/

        protected void Button12_Click(object sender, EventArgs e)
        {
            Panel1.Visible = false;
            Session["ShowPanel"] = false;
        }
    }
} 