using Xunit;
using System.Collections.Generic;
using System;
using System.Data;
using System.Data.SqlClient;

namespace BandTracker
{
  public class VenueTest : IDisposable
  {
    public VenueTest()
    {
      DBConfiguration.ConnectionString = "Data Source=(localdb)\\mssqllocaldb;Initial Catalog=band_tracker_test;Integrated Security=SSPI;";
    }

    [Fact]
    public void Test1_VenuesEmptyAtFirst()
    {
      //Arrange, Act
      int result = Venue.GetAll().Count;

      //Assert
      Assert.Equal(0, result);
    }

    [Fact]
    public void Test2_Equal_ReturnsTrueForSameName()
    {
      //Arrange, Act
      Venue firstVenue = new Venue("Household chores");
      Venue secondVenue = new Venue("Household chores");

      //Assert
      Assert.Equal(firstVenue, secondVenue);
    }

    public void Dispose()
    {
      Venue.DeleteAll();
    }
  }
}
