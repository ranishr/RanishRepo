
delimiter  $$

CREATE TABLE `dim_M4_Customer_Scheduled_to_Deliver_Date` (
  `dim_Customer_Scheduled_to_Deliver_Date` datetime DEFAULT NULL,
  `dim_Customer_Scheduled_to_Deliver_Date_Key` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`dim_Customer_Scheduled_to_Deliver_Date_Key`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 $$

delimiter  $$

CREATE TABLE `dim_M4_Line` (
  `dim_Line` int(11) DEFAULT NULL,
  `dim_Line_Status` varchar(10) DEFAULT NULL,
  `dim_Line_Key` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`dim_Line_Key`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 $$

delimiter  $$

CREATE TABLE `dim_M4_Location` (
  `dim_Country` varchar(4) DEFAULT NULL,
  `dim_State_Province` varchar(50) DEFAULT NULL,
  `dim_city` varchar(100) DEFAULT NULL,
  `dim_Location_Key` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`dim_Location_Key`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 $$


delimiter  $$

CREATE TABLE `dim_M4_Request_Id` (
  `dim_Request_Id` varchar(100) DEFAULT NULL,
  `dim_Line` varchar(10) DEFAULT NULL,
  `dim_Customer_RMA_Reference` varchar(200) DEFAULT NULL,
  `dim_Order_Received_Customer_Date_Time` datetime DEFAULT NULL,
  `dim_Order_Created_Date_Time` datetime DEFAULT NULL,
  `dim_System_Ship_Date` datetime DEFAULT NULL,
  `dim_Shipping_Dock_Date` datetime DEFAULT NULL,
  `dim_POD_Date` datetime DEFAULT NULL,
  `dim_Customer_Scheduled_Due_Date` datetime DEFAULT NULL,
  `dim_Receiving_Dock_Date` datetime DEFAULT NULL,
  `dim_Receiving_Pickup_Date` datetime DEFAULT NULL,
  `dim_Warranty_Date` datetime DEFAULT NULL,
  `dim_Warranty_Void_Type` varchar(100) DEFAULT NULL,
  `dim_Received_Date` datetime DEFAULT NULL,
  `dim_Request_Contact` varchar(100) DEFAULT NULL,
  `dim_Line_Status` varchar(5) DEFAULT NULL,
  `dim_Request_Id_Key` int(11) NOT NULL DEFAULT '0',
  `dim_Contract` varchar(100) DEFAULT NULL,
  `dim_Return_Reason` varchar(100) DEFAULT NULL,
  `dim_RMA_Status` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`dim_Request_Id_Key`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 $$

delimiter  $$

CREATE TABLE `dim_M4_Transaction_Place` (
  `dim_Place_Id_Key` int(11) NOT NULL DEFAULT '0',
  `dim_Place_ID` varchar(100) DEFAULT NULL,
  `dim_Place_Name` varchar(400) DEFAULT NULL,
  `dim_Customer_Name` varchar(600) DEFAULT NULL,
  PRIMARY KEY (`dim_Place_Id_Key`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 $$

delimiter  $$

CREATE TABLE `fact_M4_Transactions` (
  `dim_Request_Id_Key` int(11) DEFAULT NULL,
  `dim_Place_Id_Key` int(11) DEFAULT NULL,
  `dim_Customer_RMA_Reference` varchar(200) DEFAULT NULL,
  `Delivery_Time` double DEFAULT NULL,
  `dim_Order_Received_Customer_Date_Time` datetime DEFAULT NULL,
  `dim_Order_Created_Date_Time` datetime DEFAULT NULL,
  `dim_System_Ship_Date` datetime DEFAULT NULL,
  `dim_Location_Key` int(11) DEFAULT NULL,
  `Delivery _On_Time` varchar(2) DEFAULT NULL,
  `dim_date_key` int(11) DEFAULT NULL,
  `sf_effectiveperiod` datetime DEFAULT NULL,
  `dim_Line_Key` int(11) DEFAULT NULL,
  `dim_Line` int(11) DEFAULT NULL,
  `dim_Shipping_Dock_Date` datetime DEFAULT NULL,
  `dim_POD_Date` datetime DEFAULT NULL,
  `dim_Customer_Scheduled_Due_Date` datetime DEFAULT NULL,
  `dim_Receiving_Dock_Date` datetime DEFAULT NULL,
  `dim_Receiving_Pickup_Date` datetime DEFAULT NULL,
  `dim_Warranty_Date` datetime DEFAULT NULL,
  `dim_Warranty_Void_Type` varchar(200) DEFAULT NULL,
  `dim_Received_Date` date DEFAULT NULL,
  `dim_Request_Contact` varchar(100) DEFAULT NULL,
  `dim_Line_Status` varchar(10) DEFAULT NULL,
  `dim_RMA_Status` varchar(100) DEFAULT NULL,
  `dim_Contract` varchar(100) DEFAULT NULL,
  `dim_Return_Reason` varchar(300) DEFAULT NULL,
  `Delivery_Time_Status` varchar(70) DEFAULT NULL,
  `dim_Global_Name` varchar(100) DEFAULT NULL,
  `dim_Request_Id` varchar(100) DEFAULT NULL,
  `dim_Customer_Scheduled_to_Deliver_Date_Key` int(11) DEFAULT NULL,
  `dim_Received_Time` varchar(50) DEFAULT NULL,
  KEY `idx_fact_M4_Transaction_RequestID` (`dim_Request_Id_Key`,`dim_Place_Id_Key`,`dim_Location_Key`,`dim_Line_Key`,`dim_date_key`,`dim_Request_Id`,`dim_Line`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1  $$


