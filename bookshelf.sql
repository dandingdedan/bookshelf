/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50703
Source Host           : localhost:3306
Source Database       : bookshelf

Target Server Type    : MYSQL
Target Server Version : 50703
File Encoding         : 65001

Date: 2018-11-02 21:18:23
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `book`
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `price` float(11,2) NOT NULL,
  `state` int(11) NOT NULL DEFAULT '0',
  `ISBN` varchar(50) NOT NULL,
  `coursecode` varchar(50) NOT NULL,
  `picturepath` varchar(100) NOT NULL,
  `ownerid` int(11) DEFAULT NULL,
  `filename` varchar(100) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of book
-- ----------------------------
INSERT INTO `book` VALUES ('33', 'Crazy Rich Asians', '25.00', '0', '9780804171588', '1', '5\\10', '1', 'KNODFYUVK2TFNPBIU3DUJ9G37CZ6YUZ0.jpg', 'Crazy Rich Asians is the outrageously funny debut novel about three super-rich, pedigreed Chinese families and the gossip, backbiting, and scheming that occurs when the heir to one of the most massive fortunes in Asia brings home his ABC (American-born Chinese) girlfriend to the wedding of the season.');
INSERT INTO `book` VALUES ('35', 'China Rich Girlfriend', '16.04', '0', '9781101973394', '1', '2\\11', '1', 'D4AFKLG8PYV8X74MO1UQ9LQWI7VKQYZM.jpg', 'On the eve of her wedding to Nicholas Young, heir to one of the greatest fortunes in Asia, Rachel should be over the moon. She has a flawless Asscher-cut diamond from JAR, a wedding dress she loves more than anything found in the salons of Paris, and a fianc� willing to sacrifice his entire inheritance in order to marry her. ');
INSERT INTO `book` VALUES ('36', 'Killing Commendatore', '17.08', '0', '9781787300194', '1', '2\\14', '1', '7IDP2XVGQJE64YSHITR4LV1ALWTS5GXK.jpg', 'In Killing Commendatore, a thirty-something portrait painter in Tokyo is abandoned by his wife and finds himself holed up in the mountain home of a famous artist, Tomohiko Amada. When he discovers a strange painting in the attic, he unintentionally opens a circle of mysterious circumstances. ');
INSERT INTO `book` VALUES ('37', 'Rich People Problems', '13.55', '0', '9780385542326 ', '1', '10\\13', '1', 'CSY3UNGKRYGLRJMBS4P411CYCI6NTM4I.jpg', 'When Nicholas Young hears that his grandmother, Su Yi, is on her deathbed, he rushes to be by her bedside � but he�s not alone. It seems the entire Shang-Young clan has convened from all corners of the globe, ostensibly to care for their matriarch, but truly to stake claim on the massive fortune that Su Yi controls. ');
INSERT INTO `book` VALUES ('38', 'Pachinko', '9.99', '0', '9781786691378', '1', '11\\9', '1', 'D2W2L1ZGJ8GGMR2VB0J2X6XTGIAVPKC7.jpg', 'Pachinko follows one Korean family through the generations, beginning in early 1900s Korea with Sunja, the prized daughter of a poor yet proud family, whose unplanned pregnancy threatens to shame them all. Deserted by her lover, Sunja is saved when a young tubercular minister offers to marry and bring her to Japan.');
INSERT INTO `book` VALUES ('40', 'Milkman', '16.58', '0', '9780571338757 ', '1', '3\\3', '1', '2KQUFZM5CUOGX4ZSLYTEL1IA9HL0X255.jpg', 'In this unnamed city, to be interesting is dangerous. Middle sister, our protagonist, is busy attempting to keep her mother from discovering her maybe-boyfriend and to keep everyone in the dark about her encounter with Milkman. But when first brother-in-law sniffs out her struggle, and rumours start to swell, middle sister becomes �interesting�.');
INSERT INTO `book` VALUES ('41', 'The Lantern�s Ember', '16.99', '0', '9780399555725', '1', '4\\3', '1', '4VC592SH14A8Z5CTUN6JVR4GKG2TTSKK.jpg', 'Five hundred years ago, Jack made a deal with the devil. It�s difficult for him to remember much about his mortal days. So, he focuses on fulfilling his sentence as a Lantern � one of the watchmen who guard the portals to the Otherworld, a realm crawling with every nightmarish creature imaginable. ');
INSERT INTO `book` VALUES ('42', 'The Fall Of Gondolin', '26.65', '0', '9780008302757', '1', '5\\11', '1', 'PIIP270BIEIESMC8U25UAZKJX7DQNZQH.jpg', 'In the Tale of The Fall of Gondolin are two of the greatest powers in the world. There is Morgoth of the uttermost evil, unseen in this story but ruling over a vast military power from his fortress of Angband. Deeply opposed to Morgoth is Ulmo, second in might only to Manw�, chief of the Valar.');
INSERT INTO `book` VALUES ('43', 'A Spark Of Light', '17.70', '0', '9781984817310', '1', '8\\9', '1', 'M15005U3S6O3U6H60HGQWXFKSWTW3FWB.jpg', 'The warm fall day starts like any other at the Center � a women�s reproductive health services clinic � its staff offering care to anyone who passes through its doors. Then, in late morning, a desperate and distraught gunman bursts in and opens fire, taking all inside hostage.');
INSERT INTO `book` VALUES ('44', 'Billion Dollar Whale', '30.10', '0', '9780316453479', '1', '12\\7', '1', 'HJHK8GL63OCGYL3Q9ZY7QPQDK4A8681X.jpg', 'The definitive inside account of the �extraordinary� (Financial Times) 1MDB scandal, �a true life thriller� (Ben Mezrich) about a �modern Gatsby� who managed to swindle over $5 billion with the aid of Goldman Sachs and others � a �must read� (Booklist) �epic tale� (Publishers Weekly) that exposes the secret nexus of elite wealth, banking, Hollywood, and politics from two award-winning Wall Street Journal reporters.');
INSERT INTO `book` VALUES ('45', 'Batman: White Knight', '20.13', '0', '9781401279592', '1', '3\\3', '1', 'ADLQ5841MWW1NRW5SZSB28FDK1XB9XGP.jpg', 'After years of epic battles, the Dark Knight finally finds a way to cure the twisted mind of his archenemy. The Joker�is now sane. The Clown Prince of Crime has now changed his ways, fighting for good in Gotham City, and it may just cause Batman to go over the edge of his own sanity.');
INSERT INTO `book` VALUES ('47', 'Tall Order', '25.55', '0', '9789813276130', '1', '3\\7', '1', 'KQ9ILCS5M3W85I3T92N88UC5ZUPX8APG.jpg', 'Goh Chok Tong was an improbable Prime Minister for an unlikely country. He had neither the connections nor the cunning to rise to the top, and was even once famously derided by his mentor Lee Kuan Yew for being �wooden� in his communication skills. Except for an imposing height most unusual in this part of the world, he was an ordinary man. He lost his father at a young age, lived in a two-bedroom public flat with his mother .');
INSERT INTO `book` VALUES ('48', 'The Apprentice', '14.20', '0', '9780008325756', '1', '1\\8', '1', 'KGXVQ021Y5U6R94QRIQ3TK7UCIEJ0M10.jpg', 'It has been called the political crime of the century: a foreign government, led by a brutal authoritarian leader, secretly interfering with the American presidential election to help elect the candidate of its choice. Now two-time Pulitzer Prize�winning Washington Post national security reporter Greg Miller investigates the truth about the Kremlin�s covert attempt to destroy Hillary Clinton and help Donald Trump win the presidency');
INSERT INTO `book` VALUES ('49', 'The Fifth Risk', '16.66', '0', '9780241380673', '1', '8\\11', '1', 'J4HEF9UAJAGBI4W2PVXU4C9N6I372WAE.jpg', '�The election happened,� remembers Elizabeth Sherwood-Randall, then deputy secretary of the Department of Energy. �And then there was radio silence.� Across all departments, similar stories were playing out: Trump appointees were few and far between; those that did show up were shockingly uninformed about the functions of their new workplace. Some even threw away the briefing books that had been prepared for them.');
INSERT INTO `book` VALUES ('51', 'Educated', '16.98', '0', '9780525510673', '2', '12\\13', '1', 'LCI5UK4P36EFHB1FKMRHLL5XDE2CCPCJ.jpg', 'Tara Westover was seventeen the first time she set foot in a classroom. Born to survivalists in the mountains of Idaho, she prepared for the end of the world by stockpiling home-canned peaches and sleeping with her �head-for-the-hills� bag. In the summer she stewed herbs for her mother, a midwife and healer, and in the winter she salvaged metal in her father�s junkyard.');
INSERT INTO `book` VALUES ('52', 'Asking Why', '15.23', '0', '9789814827003', '2', '4\\5', '1', 'CSYYZNT2X2SRUDGUBNUTBLT1YQHQOAS7.jpg', 'Asking Why is a collection of eclectic speeches and writings by prominent entrepreneur Ho Kwon Ping during his life so far, from schooldays through to a career in journalism and as a public intellectual, over a period of over 40 years.');
INSERT INTO `book` VALUES ('53', 'Fear', '15.36', '0', '9781501175510', '2', '11\\15', '1', 'I5D11KVXB3JADT31941CP62T215WNS2T.jpg', 'With authoritative reporting honed through eight presidencies from Nixon to Obama, author Bob Woodward reveals in unprecedented detail the harrowing life inside President Donald Trump�s White House and precisely how he makes decisions on major foreign and domestic policies. Woodward draws from hundreds of hours of interviews with firsthand sources, meeting notes, personal diaries, files and documents. ');

-- ----------------------------
-- Table structure for `cart`
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `bookID` int(10) NOT NULL,
  `userID` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cart
-- ----------------------------

-- ----------------------------
-- Table structure for `likebook`
-- ----------------------------
DROP TABLE IF EXISTS `likebook`;
CREATE TABLE `likebook` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `bookID` int(10) NOT NULL,
  `userID` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of likebook
-- ----------------------------
INSERT INTO `likebook` VALUES ('1', '1', '1');

-- ----------------------------
-- Table structure for `userinfo`
-- ----------------------------
DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo` (
  `name` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `phonenumber` varchar(50) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `emailaddress` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userinfo
-- ----------------------------
INSERT INTO `userinfo` VALUES ('zhangbin', '123', '123', '1', '');
INSERT INTO `userinfo` VALUES ('d', 'asdf', '123', '2', '');
INSERT INTO `userinfo` VALUES ('z', 'asd', '156', '3', '');
INSERT INTO `userinfo` VALUES ('z', 'asd', '156', '4', '');
INSERT INTO `userinfo` VALUES ('a', 'a', 'a', '9', '');
INSERT INTO `userinfo` VALUES ('b', 'b', 'b', '10', '');
INSERT INTO `userinfo` VALUES ('null', 'null', 'null', '11', '');
INSERT INTO `userinfo` VALUES ('zhang', '1', '123', '12', '');
INSERT INTO `userinfo` VALUES ('bin', '1', '13213', '13', '');
INSERT INTO `userinfo` VALUES ('wang', 'asd', '456', '14', '913604843@qq.com');
INSERT INTO `userinfo` VALUES ('li', '123', '12321233', '15', 'asdf@w.con');
INSERT INTO `userinfo` VALUES ('wangpin', '123', '12321233', '16', 'asdf@w.con');
INSERT INTO `userinfo` VALUES ('wanbin', '123', '12321233', '17', 'asdf@w.con');
INSERT INTO `userinfo` VALUES ('wangping', '123', '12341324', '18', '913604843@qq.com');
INSERT INTO `userinfo` VALUES ('hkjhk', '123', '13241234', '19', '913604843@qq.com');

-- ----------------------------
-- Table structure for `userorder`
-- ----------------------------
DROP TABLE IF EXISTS `userorder`;
CREATE TABLE `userorder` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `buyerID` int(10) DEFAULT NULL,
  `payment` decimal(10,2) DEFAULT NULL,
  `createDate` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userorder
-- ----------------------------
INSERT INTO `userorder` VALUES ('1', '1', '10.00', '2018-10-19 14:06:44');
INSERT INTO `userorder` VALUES ('2', '1', '10.00', '2018-10-19 14:06:44');
INSERT INTO `userorder` VALUES ('3', '1', '10.00', '2018-10-19 14:06:44');
INSERT INTO `userorder` VALUES ('4', '3', '20.00', '2018-10-19 14:34:39');
