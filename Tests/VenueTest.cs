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
    public void Test3_Save_SavesVenueToDatabase()
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

    [Fact]
    public void Test4_Save_AssignsIdToVenueObject()
    {
      //Arrange
      Venue testVenue = new Venue("ShowBox");
      testVenue.Save();

      //Act
      Venue savedVenue = Venue.GetAll()[0];

      int result = savedVenue.GetId();
      int testId = testVenue.GetId();

      //Assert
      Assert.Equal(testId, result);
    }

    [Fact]
    public void Test5_Find_FindsVenueInDatabase()
    {
      //Arrange
      Venue testVenue = new Venue("ShowBox");
      testVenue.Save();

      //Act
      Venue foundVenue = Venue.Find(testVenue.GetId());

      //Assert
      Assert.Equal(testVenue, foundVenue);
    }

    [Fact]
    public void Test6_Delete_DeletesVenueFromDatabase()
    {
      //Arrange
      string name1 = "Stage1";
      Venue testVenue1 = new Venue(name1);
      testVenue1.Save();

      string name2 = "Stage2";
      Venue testVenue2 = new Venue(name2);
      testVenue2.Save();

      //Act
      testVenue1.Delete();
      List<Venue> resultVenues = Venue.GetAll();
      List<Venue> testVenueList = new List<Venue> {testVenue2};

      //Assert
      Assert.Equal(testVenueList, resultVenues);
    }

    [Fact]
    public void Test7_AddBand_AddsBandToVenue()
    {
      //Arrange
      Venue testVenue = new Venue("Stage1");
      testVenue.Save();

      Band testBand1 = new Band("The Music");
      testBand1.Save();

      Band testBand2 = new Band("Jazz");
      testBand2.Save();

      //Act
      testVenue.AddBand(testBand1);
      testVenue.AddBand(testBand2);

      List<Band> result = testVenue.GetBands();
      List<Band> testList = new List<Band>{testBand1, testBand2};

      //Assert
      Assert.Equal(testList, result);
    }

    [Fact]
    public void Test8_GetBands_ReturnsAllVenueBands()
    {
      //Arrange
      Venue testVenue = new Venue("Stage1");
      testVenue.Save();

      Band testBand1 = new Band("The Music");
      testBand1.Save();

      Band testBand2 = new Band("Jazz");
      testBand2.Save();

      //Act
      testVenue.AddBand(testBand1);
      List<Band> savedBands = testVenue.GetBands();
      List<Band> testList = new List<Band> {testBand1};

      //Assert
      Assert.Equal(testList, savedBands);
    }

    [Fact]
    public void Test9_Delete_DeletesVenueAssociationsFromDatabase()
    {
      //Arrange
      Band testBand = new Band("The Music");
      testBand.Save();

      Venue testVenue = new Venue("Stage1");
      testVenue.Save();

      //Act
      testVenue.AddBand(testBand);
      testVenue.Delete();

      List<Venue> resultBandVenues = testBand.GetVenues();
      List<Venue> testBandVenues = new List<Venue> {};
      // Console.WriteLine(tresultBandVenues.GetName());

      //Assert
      Assert.Equal(testBandVenues, resultBandVenues);
    }

    [Fact]
    public void Test10_Update_UpdatesVenueInDatabase()
    {
      //Arrange
      string name = "Stage1";
      Venue testVenue = new Venue(name);
      testVenue.Save();
      string newName = "Stage2";

      //Act
      testVenue.Update(newName);

      string result = testVenue.GetName();

      //Assert
      Assert.Equal(newName, result);
    }

    public void Dispose()
    {
      Venue.DeleteAll();
      Band.DeleteAll();
    }
  }
}
