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
      Venue firstVenue = new Venue("ShowBox");
      Venue secondVenue = new Venue("ShowBox");

      //Assert
      Assert.Equal(firstVenue, secondVenue);
    }

    [Fact]
    public void Test_Save_SavesVenueToDatabase()
    {
      //Arrange
      Venue testVenue = new Venue("ShowBox");
      testVenue.Save();

      //Act
      List<Venue> result = Venue.GetAll();
      List<Venue> testList = new List<Venue>{testVenue};

      //Assert
      Assert.Equal(testList, result);
    }

    public void Dispose()
    {
      Venue.DeleteAll();
    }
  }
}
