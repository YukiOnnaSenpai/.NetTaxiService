using System;
using System.Collections.Generic;
using System.IO;
using static Web.Models.Enums;

namespace Web.Models
{
    public class Dispeceri
    {
        public static List<Dispecer> DispeceriList { get; set; } = new List<Dispecer>();

        public Dispeceri() { }
        public static void ReadFromTxt()
        {
            FileStream stream = new FileStream(@"C:\Users\Wicked Witch\source\repos\web-pr-48-2015\WebProjekat\App_Data\dispeceri.txt", FileMode.Open);
            StreamReader sr = new StreamReader(stream);
            string line = "";
            while ((line = sr.ReadLine()) != null)
            {
                string[] tokens = line.Split(',');
                Enum.TryParse(tokens[4], out Pol pol);

                Dispecer d = new Dispecer();
                d.IdKorisnik = Int32.Parse(tokens[0]);
                d.KorisnickoIme = tokens[1];
                d.Lozinka = tokens[2];
                d.Ime = tokens[3];
                d.Prezime = tokens[4];
                d.Pol = Int32.Parse(tokens[5]);
                d.Jmbg = Decimal.Parse(tokens[6]);
                d.KontaktTelefon = tokens[7];
                d.Email = tokens[8];


                DispeceriList.Add(d);
            }
            sr.Close();
            stream.Close();
        }

        public static Dispecer GetDispecer(int id)
        {
            foreach (Dispecer d in DispeceriList)
            {
                if (d.IdKorisnik == id)
                {
                    return d;
                }
            }
            return null;
        }
    }
}
}