using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class SeeRoom : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindRoomData(); // استدعاء دالة لربط بيانات الغرف
            }
        }

        private void BindRoomData()
        {
            string roomFile = Server.MapPath("addroomfile.txt"); // مسار ملف الغرف
            string[] roomData = File.ReadAllLines(roomFile); // قراءة بيانات الغرف

            string reservationFile = Server.MapPath("reserveroom.txt"); // مسار ملف الحجوزات
            string[] reservationData = File.Exists(reservationFile) ? File.ReadAllLines(reservationFile) : new string[0]; // قراءة بيانات الحجوزات إذا كان الملف موجودًا

            string tableContent = ""; // متغير لتخزين محتوى الجدول

            foreach (var line in roomData) // التكرار على كل غرفة
            {
                string[] roomLine = line.Split(','); // تقسيم بيانات الغرفة
                string roomID = roomLine[0]; // الحصول على Room ID
                string status = "Free to Book"; // الحالة الافتراضية

                // التحقق من حالة الحجز
                foreach (var resLine in reservationData) // التكرار على كل حجز
                {
                    string[] resData = resLine.Split(','); // تقسيم بيانات الحجز
                    if (resData[0] == roomID && resData.Length > 4 && resData[4] == "Approved") // إذا كان الحجز معتمدًا
                    {
                        status = "Booked"; // تغيير الحالة إلى Booked
                        break;
                    }
                }

                // إضافة زر Delete مع Room ID كمعامل
                tableContent += $"<tr><th>{roomLine[0]}</th><td>{roomLine[1]}</td><td>{roomLine[2]}</td><td>{roomLine[3]}</td><td>{status}</td><td><asp:Button ID='btnDelete_{roomLine[0]}' runat='server' Text='Delete' OnClick='btnDelete_Click' CommandArgument='{roomLine[0]}' /></td></tr>";
            }

            table1.InnerHtml = tableContent; // تعيين محتوى الجدول
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender; // الحصول على الزر الذي تم النقر عليه
            string roomID = btn.CommandArgument; // الحصول على Room ID من CommandArgument

            DeleteRoomData(roomID); // حذف بيانات الغرفة
            BindRoomData(); // إعادة تحميل البيانات
        }

        private void DeleteRoomData(string roomID)
        {
            string roomFile = Server.MapPath("addroomfile.txt"); // مسار ملف الغرف
            string[] roomData = File.ReadAllLines(roomFile); // قراءة بيانات الغرف

            string reservationFile = Server.MapPath("reserveroom.txt"); // مسار ملف الحجوزات
            string[] reservationData = File.Exists(reservationFile) ? File.ReadAllLines(reservationFile) : new string[0]; // قراءة بيانات الحجوزات

            // حذف بيانات الغرفة من ملف الغرف
            List<string> updatedRoomData = new List<string>();
            foreach (var line in roomData)
            {
                string[] roomLine = line.Split(',');
                if (roomLine[0] != roomID) // إذا لم يكن Room ID مطابقًا
                {
                    updatedRoomData.Add(line); // إضافة البيانات إلى القائمة الجديدة
                }
            }

            // حفظ البيانات المحدثة في ملف الغرف
            File.WriteAllLines(roomFile, updatedRoomData);

            // حذف بيانات الحجز المرتبطة بالغرفة من ملف الحجوزات
            List<string> updatedReservationData = new List<string>();
            foreach (var line in reservationData)
            {
                string[] resData = line.Split(',');
                if (resData[0] != roomID) // إذا لم يكن Room ID مطابقًا
                {
                    updatedReservationData.Add(line); // إضافة البيانات إلى القائمة الجديدة
                }
            }

            // حفظ البيانات المحدثة في ملف الحجوزات
            File.WriteAllLines(reservationFile, updatedReservationData);
        }
    }
    }
