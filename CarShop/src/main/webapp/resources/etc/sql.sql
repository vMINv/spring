CREATE TABLE `car` (
  `cid` varchar(45) NOT NULL,
  `cname` varchar(45) DEFAULT NULL,
  `cprice` varchar(45) DEFAULT NULL,
  `ccate` varchar(45) DEFAULT NULL,
  `cdesc` varchar(200) DEFAULT NULL,
  `cfilename` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) 

INSERT INTO `tlagusals`.`car` (`cid`, `cname`, `cprice`, `ccate`, `cdesc`, `cfilename`) VALUES ('c0001', 'sonata', '3000', '중형', '판매중', 'c0001.jpg');
