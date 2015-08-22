using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Lab2Topicos.Models.DataAccess
{
    public class Costumers
    {
        public IEnumerable<dynamic> GetCostumerInfo()
        {
            using (var context = new lab2Entities())
            {

                return
                context.Customers.Join(context.Addresses, C => new
                {
                    AddressID = Convert.ToInt32(C.AddressID)
                },
                      A => new { AddressID = A.AddressID },
                      (C, A) => new
                         {
                             CustomerID = C.CustomerID,
                             StoreID = C.StoreID,
                             TerritoryID = C.TerritoryID,
                             AccountNumber = C.AccountNumber,
                             ModifiedDate = C.ModifiedDate,
                             PersonType = C.PersonType,
                             NameStyle = C.NameStyle,
                             Title = C.Title,
                             FirstName = C.FirstName,
                             MiddleName = C.MiddleName,
                             LastName = C.LastName,
                             Suffix = C.Suffix,
                             EmailPromotion = C.EmailPromotion,
                             AddressID = C.AddressID,
                             Column1 = A.AddressID,
                             AddressLine1 = A.AddressLine1,
                             AddressLine2 = A.AddressLine2,
                             City = A.City,
                             PostalCode = A.PostalCode,
                             StateProvince = A.StateProvince,
                             StateProvinceCode = A.StateProvinceCode,
                             CountryRegionCode = A.CountryRegionCode
                         }
                   ).ToList();
            }
        }
    }
}