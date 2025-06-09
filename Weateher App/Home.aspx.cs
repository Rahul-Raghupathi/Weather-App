using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.IO;
using System.Web.Script.Serialization;

namespace Weateher_App
{
    public partial class Home : Login
    {
        private void GetWeather(string city) //Getting weather method
        {
            string apiKey = "643e62bc3c11979f623af587c6e0b0ec";

            string url = ($"https://api.openweathermap.org/data/2.5/weather?q={city}&appid={apiKey}&units=metric");

            WebClient client = new WebClient();
            {
                try
                {
                    string json = client.DownloadString(url); //downdoad data from url and convert to string

                    // Deserialize JSON
                    JavaScriptSerializer js = new JavaScriptSerializer();
                    dynamic data = js.Deserialize<dynamic>(json);

                    string temp = data["main"]["temp"].ToString();
                    string desc = data["weather"][0]["description"];
                    string icon = data["weather"][0]["icon"];

                    Image1.ImageUrl = ($"https://openweathermap.org/img/wn/{icon}@2x.png");
                    Image1.Visible = true;

                    string GetWeatherEmoji(string condition)
                    {
                        condition = condition.ToLower();

                        if (condition.Contains("clear")) return "🌞";
                        if (condition.Contains("cloud")) return "☁️";
                        if (condition.Contains("rain")) return "🌧️";
                        if (condition.Contains("storm")) return "⛈️";
                        if (condition.Contains("snow")) return "❄️";
                        if (condition.Contains("mist") || condition.Contains("fog")) return "🌫️";

                        return "🌡️"; // default

                    }

                    Label2.Text = city;
                    Label1.Text = ($"{GetWeatherEmoji(desc)} {temp}°C - {desc}");

                    string feelsLike = data["main"]["feels_like"].ToString();
                    string pressure = data["main"]["pressure"].ToString();
                    string humidity = data["main"]["humidity"].ToString();
                    string wind = data["wind"]["speed"].ToString();
                    string country = data["sys"]["country"];
                    string cityName = data["name"];

                    Label3.Text = $"📍 Location: {cityName}, {country}";
                    Label4.Text = $"🤗 Feels Like: {feelsLike}°C";
                    Label5.Text = $"🔽 Pressure: {pressure} hPa";
                    Label6.Text = $"💧 Humidity: {humidity}%";
                    Label7.Text = $"🌬️ Wind: {wind} m/s";

                }
                catch (WebException)
                {
                    Label1.Text = "Incorrect City Name !";
                    Label1.ForeColor = System.Drawing.Color.Red;
                }
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["CityName"] != null)
                {
                    string city = Session["CityName"].ToString();
                    GetWeather(city);
                }
                else
                {
                    Label1.Text = "⚠️ No city provided. Please go back and enter a city.";
                }
            }
        }
    }
}