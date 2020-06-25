-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 26, 2020 at 03:53 AM
-- Server version: 5.7.30-0ubuntu0.18.04.1
-- PHP Version: 7.2.24-0ubuntu0.18.04.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `scrap_industry_data`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_scraping_data`
--

CREATE TABLE `tbl_scraping_data` (
  `scrap_id` int(11) NOT NULL,
  `scrap_data` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_scraping_data`
--

INSERT INTO `tbl_scraping_data` (`scrap_id`, `scrap_data`) VALUES
(1, '<a href=\"/industry/section/G\"\">Wholesale and retail trade; repair of motor vehicles and motorcycles</a>'),
(2, '<a href=\"/industry/section/F\"\">Construction</a>'),
(3, '<a href=\"/industry/section/I\"\">Accommodation and Food service activities</a>'),
(4, '<a href=\"/industry/section/H\"\">Transportation and storage</a>'),
(5, '<a href=\"/industry/section/K\"\">Financial and insurance activities</a>'),
(6, '<a href=\"/industry/section/J\"\">Information and communication</a>'),
(7, '<a href=\"/industry/section/M\"\">Professional, scientific and technical activities</a>'),
(8, '<a href=\"/industry/section/L\"\">Real estate activities</a>'),
(9, '<a href=\"/industry/section/O\"\">Public administration and defence; compulsory social security</a>'),
(10, '<a href=\"/industry/section/N\"\">Administrative and support service activities</a>'),
(11, '<a href=\"/industry/section/Q\"\">Human health and social work activities</a>'),
(12, '<a href=\"/industry/section/P\"\">Education</a>'),
(13, '<a href=\"/industry/section/A\"\">Agriculture, forestry and fishing</a>'),
(14, '<a href=\"/industry/section/C\"\">Manufacturing</a>'),
(15, '<a href=\"/industry/section/B\"\">Mining and quarrying</a>'),
(16, '<a href=\"/industry/section/E\"\">Water supply; sewerage, waste management and remediation activities</a>'),
(17, '<a href=\"/industry/section/D\"\">Electricity, gas, steam and air conditioning supply</a>');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_scrap_company`
--

CREATE TABLE `tbl_scrap_company` (
  `scrap_company_id` int(11) NOT NULL,
  `scrap_id` int(11) DEFAULT NULL,
  `scrap_comany_data` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_scrap_company`
--

INSERT INTO `tbl_scrap_company` (`scrap_company_id`, `scrap_id`, `scrap_comany_data`) VALUES
(1, 3, '<table class=\"table table-bordered\"><tbody>                             <tr><th>CIN</th><th>Company Name</th><th>Class</th><th>Status</th></tr>                                                          <tr><td>L60100MH1999PLC121903</td><td><a href=\"/business/jhanu-logistics-limited\">JHANU LOGISTICS LIMITED</a></td><td>Public Company</td><td>Not available for efiling</td></tr>                                                          <tr><td>L60200DL2010PLC198327</td><td><a href=\"/business/avg-logistics-limited\">AVG LOGISTICS LIMITED</a></td><td>Public Company</td><td>Active</td></tr>                                                          <tr><td>L60200GJ1986PLC083845</td><td><a href=\"/business/suryakrupa-finance-limited-1\">SURYAKRUPA FINANCE LIMITED</a></td><td>Public Company</td><td>Active</td></tr>                                                          <tr><td>L60200MH1980PLC022303</td><td><a href=\"/business/pazel-international-limited\">PAZEL INTERNATIONAL LIMITED</a></td><td>Public Company</td><td>Active</td></tr>                                                          <tr><td>L60200MH2000NPL123514</td><td><a href=\"/business/mumbai-parivahan-mitra-mandal\">MUMBAI PARIVAHAN MITRA MANDAL</a></td><td>Public Company</td><td>Active</td></tr>                                                          <tr><td>L60210DL2006PTC151505</td><td><a href=\"/business/kingston-travels-private-limited\">KINGSTON TRAVELS PRIVATE LIMITED</a></td><td>Private Company</td><td>Amalgamated</td></tr>                                                          <tr><td>L60210KA1983PLC005247</td><td><a href=\"/business/vrl-logistics-limited-1\">VRL LOGISTICS LIMITED</a></td><td>Public Company</td><td>Active</td></tr>                                                          <tr><td>L60210MH1995PLC086099</td><td><a href=\"/business/katakataria-transportand-heavy-industries-limited\">KATAKATARIA TRANSPORTAND HEAVY INDUSTRIE S LIMITED</a></td><td>Public Company</td><td>Strike Off</td></tr>                                                          <tr><td>L60210WB1985PLC038478</td><td><a href=\"/business/containerway-international-ltd\">CONTAINERWAY INTERNATIONAL LTD</a></td><td>Public Company</td><td>Active</td></tr>                                                          <tr><td>L60210WB1993PLC059296</td><td><a href=\"/business/balurghat-technologies-limited\">BALURGHAT TECHNOLOGIES LIMITED</a></td><td>Public Company</td><td>Active</td></tr>                                                          <tr><td>L60220MH1999PLC122099</td><td><a href=\"/business/hariom-aerial-ropeways-limited\">HARIOM AERIAL ROPEWAYS LIMITED</a></td><td>Public Company</td><td>Active</td></tr>                                                          <tr><td>L60220TN1979PLC007970</td><td><a href=\"/business/sanco-trans-limited\">SANCO TRANS LIMITED</a></td><td>Public Company</td><td>Active</td></tr>                                                          <tr><td>L60230WB1994PLC012147</td><td><a href=\"/business/central-dooars-motor-syndicate-limited\">CENTRAL DOOARS MOTOR SYNDICATE LIMITED</a></td><td>Public Company</td><td>Liquidated</td></tr>                                                          <tr><td>L60231KA1963PLC004604</td><td><a href=\"/business/ser-industries-limited-1\">SER INDUSTRIES LIMITED</a></td><td>Public Company</td><td>Active</td></tr>                                                          <tr><td>L60231UP2008PLC069245</td><td><a href=\"/business/jitf-infralogistics-limited\">JITF INFRALOGISTICS LIMITED</a></td><td>Public Company</td><td>Active</td></tr>                                                      </tbody></table>'),
(2, 4, '<table class=\"table table-bordered\"><tbody>                             <tr><th>CIN</th><th>Company Name</th><th>Class</th><th>Status</th></tr>                                                          <tr><td>L55100GJ1982PLC005408</td><td><a href=\"/business/gujarat-hotels-limited\">GUJARAT HOTELS LIMITED</a></td><td>Public Company</td><td>Active</td></tr>                                                          <tr><td>L55100GJ1985PLC008264</td><td><a href=\"/business/lords-ishwar-hotels-limited\">LORDS ISHWAR HOTELS LIMITED</a></td><td>Public Company</td><td>Active</td></tr>                                                          <tr><td>L55100GJ1991PLC015839</td><td><a href=\"/business/royale-manor-hotels-and-industries-limited\">ROYALE MANOR HOTELS AND INDUSTRIES LIMITED</a></td><td>Public Company</td><td>Active</td></tr>                                                          <tr><td>L55100GJ1991PLC016766</td><td><a href=\"/business/river-front-hotels-limited\">RIVER FRONT HOTELS LIMITED</a></td><td>Public Company</td><td>Active</td></tr>                                                          <tr><td>L55100GJ1994PLC021627</td><td><a href=\"/business/pan-india-resorts-and-land-development-limited\">PAN INDIA RESORTS AND LAND DEVELOPMENT LIMITED</a></td><td>Public Company</td><td>Active</td></tr>                                                          <tr><td>L55100GJ1999PLC036830</td><td><a href=\"/business/tgb-banquets-and-hotels-limited\">TGB BANQUETS AND HOTELS LIMITED</a></td><td>Public Company</td><td>Active</td></tr>                                                          <tr><td>L55100MH1989PLC053417</td><td><a href=\"/business/h-s-india-limited\">H S INDIA LIMITED</a></td><td>Public Company</td><td>Active</td></tr>                                                          <tr><td>L55100MH1998PLC113348</td><td><a href=\"/business/sukhsagar-amusements-and-resorts-limited\">SUKHSAGAR AMUSEMENTS AND RESORTS LIMITED</a></td><td>Public Company</td><td>Active</td></tr>                                                          <tr><td>L55100MH2000PLC124695</td><td><a href=\"/business/chemist-hospital-and-research-centre-limited\">CHEMIST HOSPITAL AND RESEARCH CENTRE LIMITED</a></td><td>Public Company</td><td>Active</td></tr>                                                          <tr><td>L55100TG1985PLC045963</td><td><a href=\"/business/ces-limited-1\">CES LIMITED.</a></td><td>Public Company</td><td>Active</td></tr>                                                          <tr><td>L55101CH1980PLC004249</td><td><a href=\"/business/james-hotels-limited\">JAMES HOTELS LIMITED</a></td><td>Public Company</td><td>Under Liquidation</td></tr>                                                          <tr><td>L55101DL1961PLC017307</td><td><a href=\"/business/u-p-hotels-limited\">U P HOTELS LIMITED</a></td><td>Public Company</td><td>Active</td></tr>                                                          <tr><td>L55101DL1972PLC006079</td><td><a href=\"/business/itc-hotels-limited\">ITC HOTELS LIMITED</a></td><td>Public Company</td><td>Amalgamated</td></tr>                                                          <tr><td>L55101DL1979PLC009498</td><td><a href=\"/business/chl-limited\">CHL LIMITED</a></td><td>Public Company</td><td>Active</td></tr>                                                          <tr><td>L55101DL1980PLC011037</td><td><a href=\"/business/asian-hotels-north-limited\">ASIAN HOTELS (NORTH) LIMITED</a></td><td>Public Company</td><td>Active</td></tr>                                                      </tbody></table>');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_scrap_company_info`
--

CREATE TABLE `tbl_scrap_company_info` (
  `scrap_company_info_id` int(11) NOT NULL,
  `scrap_info_data` text NOT NULL,
  `company_name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_scrap_company_info`
--

INSERT INTO `tbl_scrap_company_info` (`scrap_company_info_id`, `scrap_info_data`, `company_name`) VALUES
(1, '<div class=\"roomy-20\"> 						<div id=\"companyinformation\"> 							<h2><b class=\"greenishcolor\">Company Information:</b></h2> 							<table class=\"table table-responsive table-bordered\"><tbody> 								<tr><td><b>Corporate Identification Number</b></td><td>L60210MH1995PLC086099</td></tr> 								<tr><td><b>Company Name</b></td><td>KATAKATARIA TRANSPORTAND HEAVY INDUSTRIE S LIMITED</td></tr> 								<tr><td><b>Company Status</b></td><td>Strike Off</td></tr> 								<tr><td><b>Age (Date of Incorporation)</b></td><td><span class=\"company_age\"></span> (06-03-1995)<br><a href=\"/date/06-03-1995\">See other companies incorporated on 06-03-1995</a></td></tr> 								<tr><td><b>Registration Number</b></td><td>86099</td></tr> 								<tr><td><b>Company Category</b></td><td>Company limited by Shares<br><a href=\"/find/?code=Company-limited-by-Shares&option=category\">See other companies with same Category</a></td></tr> 								<tr><td><b>Company Subcategory</b></td><td>Indian Non-Government Company<br><a href=\"/find/?code=Indian-Non-Government-Company&option=subcat\">See other companies with same SubCategory</a></td></tr> 								<tr><td><b>Class of Company</b></td><td>Public Company<br><a href=\"/find/?code=Public-Company&option=class\">See other companies with same Class</a></td></tr> 								<tr><td><b>ROC Code</b></td><td>RoC-Mumbai<br><a href=\"/find/?code=RoC-Mumbai&option=rocode\">See other companies with same RoC-Mumbai Code</a></td></tr> 								<tr><td><b>Number of Members (Applicable only in case of company without Share Capital)</b></td><td>0</td></tr> 							</tbody></table> 							 								<div class=\"adcenter\"> 									<script async src=\"//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js\"></script> 									<!-- mycorporateinfo ad 2 --> 									<ins class=\"adsbygoogle\" style=\"display:block\" data-ad-client=\"ca-pub-9617510296953802\" data-ad-slot=\"1959317035\" data-ad-format=\"auto\"></ins> 									<script> (adsbygoogle = window.adsbygoogle || []).push({});</script> 								</div> 							 						</div> 						                     </div>', 'KATAKATARIA TRANSPORTAND HEAVY INDUSTRIE S LIMITED');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_scraping_data`
--
ALTER TABLE `tbl_scraping_data`
  ADD PRIMARY KEY (`scrap_id`);

--
-- Indexes for table `tbl_scrap_company`
--
ALTER TABLE `tbl_scrap_company`
  ADD PRIMARY KEY (`scrap_company_id`),
  ADD KEY `fb_k` (`scrap_id`);

--
-- Indexes for table `tbl_scrap_company_info`
--
ALTER TABLE `tbl_scrap_company_info`
  ADD PRIMARY KEY (`scrap_company_info_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_scraping_data`
--
ALTER TABLE `tbl_scraping_data`
  MODIFY `scrap_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `tbl_scrap_company`
--
ALTER TABLE `tbl_scrap_company`
  MODIFY `scrap_company_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
--
-- AUTO_INCREMENT for table `tbl_scrap_company_info`
--
ALTER TABLE `tbl_scrap_company_info`
  MODIFY `scrap_company_info_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_scrap_company`
--
ALTER TABLE `tbl_scrap_company`
  ADD CONSTRAINT `fb_k` FOREIGN KEY (`scrap_id`) REFERENCES `tbl_scraping_data` (`scrap_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
