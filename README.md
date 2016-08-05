## _Band Tracker with C#, Nancy, and Razor_

## _Project Specifications_

#### By _**Shokouh Farvid**_

## Description/Specs

Create an app to track bands and the venues where they've played concerts.

** Clone this repository, and on your computer, run "DNU restore" at the PowerShell prompt in the top directory of the cloned repository. Then type in "DNX Kestrel" at the same prompt and a local instance of the kestrel server will boot. Navigate in your browser to "LocalHost:5004" to view the homepage.

** Creat database and tables:
* CREATE DATABASE band_tracker;
* GO
* USE band_tracker;
* GO
* CREATE TABLE vanues (id INT IDENTITY(1,1), name VARCHAR(255));
* CREATE TABLE bands (id INT IDENTITY(1,1), name VARCHAR(255));
* CREATE TABLE venues_bands (id INT IDENTITY(1,1), venue_id INT, band_id INT);
* GO

## Known Bugs

## Support and contact details
Please contact the authors if you have any questions or comments.

## Technologies Used
This webpage was written using C#, Nancy, Razor, CSS, and Bootstrap.

### License
Copyright (c) 2016 _**Shokouh Farvid **_

This software is licensed under the MIT license.
