﻿using System;
using System.Collections.Generic;
using System.Text;

namespace OOP3
{
    //Method Injection
    class BasvuruManager
    {
        public void BasvuruYap(IKrediManager krediManager, List<ILoggerService> loggerServices)
        {
            //Başvuru bilgilerini değerlendirme
            //...
            krediManager.Hesapla();
            foreach (var loggerService in loggerServices)
            {
                loggerService.Log();
            }
        }

        public void KrediOnBilgiilendirmesiYap(List<IKrediManager> krediler )
        {
            foreach (var kredi in krediler)
            {
                kredi.Hesapla();
            }
        }

    }
}
