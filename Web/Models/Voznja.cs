using System;
using static Web.Models.Enums;

namespace Web.Models
{
    public class Voznja
    {
        public int IdVoznja { get; set; }
        public DateTime DatumVremePorudzbine { get; set; }
        public Lokacija PolaznaLokacija { get; set; }
        public TipAutomobila ZeljeniTip { get; set; }
        public Korisnik Korisnik { get; set; }
        public Lokacija OdredisnaLokacija { get; set; }
        public Dispecer Dispecer { get; set; }
        public Vozac Vozac { get; set; }
        public double Iznos { get; set; }
        public StatusVoznje Status { get; set; }
        public Komentar Komentar { get; set; }
    }
}