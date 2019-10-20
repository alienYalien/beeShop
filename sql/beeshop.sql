/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50561
Source Host           : localhost:3306
Source Database       : beeshop

Target Server Type    : MYSQL
Target Server Version : 50561
File Encoding         : 65001

Date: 2019-10-19 22:47:40
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `adminname` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `isadmin` bit(1) DEFAULT NULL,
  `isvalidate` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username_UNIQUE` (`adminname`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'jh', 'jh@qq.com', '123', '管理员测试账户', '110', '中国', '', '\0');

-- ----------------------------
-- Table structure for car
-- ----------------------------
DROP TABLE IF EXISTS `car`;
CREATE TABLE `car` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `goods_id` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fk_user_id_idx` (`user_id`),
  KEY `fk_goods_id_idx` (`goods_id`),
  CONSTRAINT `fk_car_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `fk__car_goods_id` FOREIGN KEY (`goods_id`) REFERENCES `goods` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of car
-- ----------------------------
INSERT INTO `car` VALUES ('66', '2', '11', '1');
INSERT INTO `car` VALUES ('67', '1', '11', '2');
INSERT INTO `car` VALUES ('68', '1', '1', '1');
INSERT INTO `car` VALUES ('69', '1', '2', '1');

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `cover` varchar(45) DEFAULT NULL,
  `image1` varchar(45) DEFAULT NULL,
  `image2` varchar(45) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `intro` varchar(300) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `type_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_type_id_idx` (`type_id`),
  CONSTRAINT `fk_type_id` FOREIGN KEY (`type_id`) REFERENCES `type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('1', '木偶人', '/picture/banner/banner1.jpg', '/picture/banner/banner1.jpg', '/picture/banner/banner1.jpg', '1.11', '奥勒姆·伊普苏姆·多洛（Lorem ipsum dolor sit amet）是一位杰出的献身者，他是一位临时的艺术家。', '100', '1');
INSERT INTO `goods` VALUES ('2', '星球特战队', '/picture/banner/banner2.jpg', '/picture/banner/banner2.jpg', '/picture/banner/banner2.jpg', '2.22', '奥勒姆·伊普苏姆·多洛（Lorem ipsum dolor sit amet）是一位杰出的献身者，他是一位临时的艺术家。', '200', '1');
INSERT INTO `goods` VALUES ('3', '来自星星的你', '/picture/banner/banner3.jpg', '/picture/banner/banner3.jpg', '/picture/banner/banner3.jpg', '3.33', '奥勒姆·伊普苏姆·多洛（Lorem ipsum dolor sit amet）是一位杰出的献身者，他是一位临时的艺术家。', '800', '1');
INSERT INTO `goods` VALUES ('4', '哈喽小羊多恩', '/picture/banner/banner4.jpg', '/picture/banner/banner4.jpg', '/picture/banner/banner4.jpg', '4.44', '奥勒姆·伊普苏姆·多洛（Lorem ipsum dolor sit amet）是一位杰出的献身者，他是一位临时的艺术家。', '800', '1');
INSERT INTO `goods` VALUES ('5', '迪士尼的世界', '/picture/banner/banner5.jpg', '/picture/banner/banner5.jpg', '/picture/banner/banner5.jpg', '5.55', '奥勒姆·伊普苏姆·多洛（Lorem ipsum dolor sit amet）是一位杰出的献身者，他是一位临时的艺术家。', '800', '1');
INSERT INTO `goods` VALUES ('6', '小萝莉奥妮', '/picture/banner/banner6.jpg', '/picture/banner/banner6.jpg', '/picture/banner/banner6.jpg', '6.66', '奥勒姆·伊普苏姆·多洛（Lorem ipsum dolor sit amet）是一位杰出的献身者，他是一位临时的艺术家。', '800', '1');
INSERT INTO `goods` VALUES ('7', '整理柜', '/picture/product/cabinet.jpg', '/picture/product/cabinet.jpg', '/picture/product/cabinet.jpg', '7.77', '《大树小虫》写的很尖锐很真实，上一代抱着为你好的心态做着一切，我们这一代有时候真的是无限感激，但却无法接受所有，毕竟人生是自己的，它不能也不应被安排。', '800', '2');
INSERT INTO `goods` VALUES ('8', '摇摇椅', '/picture/product/chair.jpg', '/picture/product/chair.jpg', '/picture/product/chair.jpg', '8.88', '帮助我们解析我们为什么有情绪化本能，同时针对每一种本能都给出了具体可行的解决方案。比如将全球分为发展中和发达国家的想法，汉斯提出按照人均日收入的不同，搭建四级收入阶梯的模型。也正是这个模型受到比尔·盖茨的好评。 \r\n——亚马逊读者', '800', '2');
INSERT INTO `goods` VALUES ('9', '可爱的玩偶', '/picture/product/puppet2.jpg', '/picture/product/puppet2.jpg', '/picture/product/puppet2.jpg', '9.99', '从地理环境上看，英国并不适合种棉花，却借助工业资本主义和战争资本主义，一度控制了全球的棉花产业。通过残酷吸血，换来巨额利润。这种技术文明和野蛮暴力的交融，在资本主义的发展过程中，会不断上演。 \r\n——读者 红白', '800', '2');
INSERT INTO `goods` VALUES ('10', '连体T恤', '/picture/product/t_shirt.jpg', '/picture/product/t_shirt.jpg', '/picture/product/t_shirt.jpg', '10', '看完书才发现，与其说是“愚蠢奥斯卡”倒不如说是“伪科学诺贝尔”。1分钟看完一个愚蠢现象，10分钟查找相关信息，1小时自我反思，然后我不禁在想：做了这些动作的自己，会不会是另一个愚蠢现象的主人公呢？ \r\n——读者fengfeng', '800', '2');
INSERT INTO `goods` VALUES ('11', '书架', '/picture/product/bookshelf.jpg', '/picture/product/bookshelf.jpg', '/picture/product/bookshelf.jpg', '11.11', '原来一直以为村上春树是那种特别文学的，这本让我改变了对村上的认识，是一个萌萌的可爱大叔，书中的内容非常好看，不知不觉就让人感动其中，那句：不爱说话的人啊，请努力生活。我也在背后无言地支援你。瞬间治愈，强烈推荐。 \r\n——读者ZHYYY', '800', '1');
INSERT INTO `goods` VALUES ('12', '婴儿床', '/picture/product/bed.jpg', '/picture/product/bed.jpg', '/picture/product/bed.jpg', '12.12', '《大树小虫》写的很尖锐很真实，上一代抱着为你好的心态做着一切，我们这一代有时候真的是无限感激，但却无法接受所有，毕竟人生是自己的，它不能也不应被安排。', '800', '1');
INSERT INTO `goods` VALUES ('13', '沙发', '/picture/product/sofa.jpg', '/picture/product/sofa.jpg', '/picture/product/sofa.jpg', '13.13', '帮助我们解析我们为什么有情绪化本能，同时针对每一种本能都给出了具体可行的解决方案。比如将全球分为发展中和发达国家的想法，汉斯提出按照人均日收入的不同，搭建四级收入阶梯的模型。也正是这个模型受到比尔·盖茨的好评。 \r\n——亚马逊读者', '800', '1');
INSERT INTO `goods` VALUES ('14', '毛绒的兔子', '/picture/product/rabbit.jpg', '/picture/product/rabbit.jpg', '/picture/product/rabbit.jpg', '14.14', '从地理环境上看，英国并不适合种棉花，却借助工业资本主义和战争资本主义，一度控制了全球的棉花产业。通过残酷吸血，换来巨额利润。这种技术文明和野蛮暴力的交融，在资本主义的发展过程中，会不断上演。 \r\n——读者 红白', '800', '1');
INSERT INTO `goods` VALUES ('15', '小羊', '/picture/product/puppet1.jpg', '/picture/product/puppet1.jpg', '/picture/product/puppet1.jpg', '15.15', '看完书才发现，与其说是“愚蠢奥斯卡”倒不如说是“伪科学诺贝尔”。1分钟看完一个愚蠢现象，10分钟查找相关信息，1小时自我反思，然后我不禁在想：做了这些动作的自己，会不会是另一个愚蠢现象的主人公呢？ \r\n——读者fengfeng', '800', '1');
INSERT INTO `goods` VALUES ('16', '粉色的连衣裙', '/picture/product/dress.jpg', '/picture/product/dress.jpg', '/picture/product/dress.jpg', '16.16', '原来一直以为村上春树是那种特别文学的，这本让我改变了对村上的认识，是一个萌萌的可爱大叔，书中的内容非常好看，不知不觉就让人感动其中，那句：不爱说话的人啊，请努力生活。我也在背后无言地支援你。瞬间治愈，强烈推荐。 \r\n——读者ZHYYY', '800', '1');
INSERT INTO `goods` VALUES ('17', '多功能婴儿车', '/picture/product/shopcar.jpg', '/picture/product/shopcar.jpg', '/picture/product/shopcar.jpg', '17.17', '《大树小虫》写的很尖锐很真实，上一代抱着为你好的心态做着一切，我们这一代有时候真的是无限感激，但却无法接受所有，毕竟人生是自己的，它不能也不应被安排。', '800', '1');
INSERT INTO `goods` VALUES ('18', '糖果色的背包', '/picture/product/bag.jpg', '/picture/product/bag.jpg', '/picture/product/bag.jpg', '18.18', '帮助我们解析我们为什么有情绪化本能，同时针对每一种本能都给出了具体可行的解决方案。比如将全球分为发展中和发达国家的想法，汉斯提出按照人均日收入的不同，搭建四级收入阶梯的模型。也正是这个模型受到比尔·盖茨的好评。 \r\n——亚马逊读者', '800', '1');
INSERT INTO `goods` VALUES ('26', '整理柜', '/picture/product/cabinet.jpg', '/picture/product/cabinet.jpg', '/picture/product/cabinet.jpg', '7.77', '《大树小虫》写的很尖锐很真实，上一代抱着为你好的心态做着一切，我们这一代有时候真的是无限感激，但却无法接受所有，毕竟人生是自己的，它不能也不应被安排。', '800', '3');
INSERT INTO `goods` VALUES ('27', '摇摇椅', '/picture/product/chair.jpg', '/picture/product/chair.jpg', '/picture/product/chair.jpg', '8.88', '帮助我们解析我们为什么有情绪化本能，同时针对每一种本能都给出了具体可行的解决方案。比如将全球分为发展中和发达国家的想法，汉斯提出按照人均日收入的不同，搭建四级收入阶梯的模型。也正是这个模型受到比尔·盖茨的好评。 \r\n——亚马逊读者', '800', '3');
INSERT INTO `goods` VALUES ('28', '可爱的玩偶', '/picture/product/puppet2.jpg', '/picture/product/puppet2.jpg', '/picture/product/puppet2.jpg', '9.99', '从地理环境上看，英国并不适合种棉花，却借助工业资本主义和战争资本主义，一度控制了全球的棉花产业。通过残酷吸血，换来巨额利润。这种技术文明和野蛮暴力的交融，在资本主义的发展过程中，会不断上演。 \r\n——读者 红白', '800', '3');
INSERT INTO `goods` VALUES ('29', '连体T恤', '/picture/product/t_shirt.jpg', '/picture/product/t_shirt.jpg', '/picture/product/t_shirt.jpg', '10', '看完书才发现，与其说是“愚蠢奥斯卡”倒不如说是“伪科学诺贝尔”。1分钟看完一个愚蠢现象，10分钟查找相关信息，1小时自我反思，然后我不禁在想：做了这些动作的自己，会不会是另一个愚蠢现象的主人公呢？ \r\n——读者fengfeng', '800', '3');
INSERT INTO `goods` VALUES ('30', '书架', '/picture/product/bookshelf.jpg', '/picture/product/bookshelf.jpg', '/picture/product/bookshelf.jpg', '11.11', '原来一直以为村上春树是那种特别文学的，这本让我改变了对村上的认识，是一个萌萌的可爱大叔，书中的内容非常好看，不知不觉就让人感动其中，那句：不爱说话的人啊，请努力生活。我也在背后无言地支援你。瞬间治愈，强烈推荐。 \r\n——读者ZHYYY', '800', '3');
INSERT INTO `goods` VALUES ('31', '婴儿床', '/picture/product/bed.jpg', '/picture/product/bed.jpg', '/picture/product/bed.jpg', '12.12', '《大树小虫》写的很尖锐很真实，上一代抱着为你好的心态做着一切，我们这一代有时候真的是无限感激，但却无法接受所有，毕竟人生是自己的，它不能也不应被安排。', '800', '3');
INSERT INTO `goods` VALUES ('32', '沙发', '/picture/product/sofa.jpg', '/picture/product/sofa.jpg', '/picture/product/sofa.jpg', '13.13', '帮助我们解析我们为什么有情绪化本能，同时针对每一种本能都给出了具体可行的解决方案。比如将全球分为发展中和发达国家的想法，汉斯提出按照人均日收入的不同，搭建四级收入阶梯的模型。也正是这个模型受到比尔·盖茨的好评。 \r\n——亚马逊读者', '800', '3');
INSERT INTO `goods` VALUES ('33', '毛绒的兔子', '/picture/product/rabbit.jpg', '/picture/product/rabbit.jpg', '/picture/product/rabbit.jpg', '14.14', '从地理环境上看，英国并不适合种棉花，却借助工业资本主义和战争资本主义，一度控制了全球的棉花产业。通过残酷吸血，换来巨额利润。这种技术文明和野蛮暴力的交融，在资本主义的发展过程中，会不断上演。 \r\n——读者 红白', '800', '3');
INSERT INTO `goods` VALUES ('34', '小羊', '/picture/product/puppet1.jpg', '/picture/product/puppet1.jpg', '/picture/product/puppet1.jpg', '15.15', '看完书才发现，与其说是“愚蠢奥斯卡”倒不如说是“伪科学诺贝尔”。1分钟看完一个愚蠢现象，10分钟查找相关信息，1小时自我反思，然后我不禁在想：做了这些动作的自己，会不会是另一个愚蠢现象的主人公呢？ \r\n——读者fengfeng', '800', '3');
INSERT INTO `goods` VALUES ('35', '粉色的连衣裙', '/picture/product/dress.jpg', '/picture/product/dress.jpg', '/picture/product/dress.jpg', '16.16', '原来一直以为村上春树是那种特别文学的，这本让我改变了对村上的认识，是一个萌萌的可爱大叔，书中的内容非常好看，不知不觉就让人感动其中，那句：不爱说话的人啊，请努力生活。我也在背后无言地支援你。瞬间治愈，强烈推荐。 \r\n——读者ZHYYY', '800', '4');
INSERT INTO `goods` VALUES ('36', '多功能婴儿车', '/picture/product/shopcar.jpg', '/picture/product/shopcar.jpg', '/picture/product/shopcar.jpg', '17.17', '《大树小虫》写的很尖锐很真实，上一代抱着为你好的心态做着一切，我们这一代有时候真的是无限感激，但却无法接受所有，毕竟人生是自己的，它不能也不应被安排。', '800', '4');
INSERT INTO `goods` VALUES ('37', '糖果色的背包', '/picture/product/bag.jpg', '/picture/product/bag.jpg', '/picture/product/bag.jpg', '18.18', '帮助我们解析我们为什么有情绪化本能，同时针对每一种本能都给出了具体可行的解决方案。比如将全球分为发展中和发达国家的想法，汉斯提出按照人均日收入的不同，搭建四级收入阶梯的模型。也正是这个模型受到比尔·盖茨的好评。 \r\n——亚马逊读者', '800', '5');
INSERT INTO `goods` VALUES ('38', '整理柜', '/picture/product/cabinet.jpg', '/picture/product/cabinet.jpg', '/picture/product/cabinet.jpg', '7.77', '《大树小虫》写的很尖锐很真实，上一代抱着为你好的心态做着一切，我们这一代有时候真的是无限感激，但却无法接受所有，毕竟人生是自己的，它不能也不应被安排。', '800', '5');
INSERT INTO `goods` VALUES ('39', '摇摇椅', '/picture/product/chair.jpg', '/picture/product/chair.jpg', '/picture/product/chair.jpg', '8.88', '帮助我们解析我们为什么有情绪化本能，同时针对每一种本能都给出了具体可行的解决方案。比如将全球分为发展中和发达国家的想法，汉斯提出按照人均日收入的不同，搭建四级收入阶梯的模型。也正是这个模型受到比尔·盖茨的好评。 \r\n——亚马逊读者', '800', '5');
INSERT INTO `goods` VALUES ('40', '可爱的玩偶', '/picture/product/puppet2.jpg', '/picture/product/puppet2.jpg', '/picture/product/puppet2.jpg', '9.99', '从地理环境上看，英国并不适合种棉花，却借助工业资本主义和战争资本主义，一度控制了全球的棉花产业。通过残酷吸血，换来巨额利润。这种技术文明和野蛮暴力的交融，在资本主义的发展过程中，会不断上演。 \r\n——读者 红白', '800', '5');
INSERT INTO `goods` VALUES ('41', '连体T恤', '/picture/product/t_shirt.jpg', '/picture/product/t_shirt.jpg', '/picture/product/t_shirt.jpg', '10', '看完书才发现，与其说是“愚蠢奥斯卡”倒不如说是“伪科学诺贝尔”。1分钟看完一个愚蠢现象，10分钟查找相关信息，1小时自我反思，然后我不禁在想：做了这些动作的自己，会不会是另一个愚蠢现象的主人公呢？ \r\n——读者fengfeng', '800', '7');
INSERT INTO `goods` VALUES ('42', '书架', '/picture/product/bookshelf.jpg', '/picture/product/bookshelf.jpg', '/picture/product/bookshelf.jpg', '11.11', '原来一直以为村上春树是那种特别文学的，这本让我改变了对村上的认识，是一个萌萌的可爱大叔，书中的内容非常好看，不知不觉就让人感动其中，那句：不爱说话的人啊，请努力生活。我也在背后无言地支援你。瞬间治愈，强烈推荐。 \r\n——读者ZHYYY', '800', '7');
INSERT INTO `goods` VALUES ('43', '婴儿床', '/picture/product/bed.jpg', '/picture/product/bed.jpg', '/picture/product/bed.jpg', '12.12', '《大树小虫》写的很尖锐很真实，上一代抱着为你好的心态做着一切，我们这一代有时候真的是无限感激，但却无法接受所有，毕竟人生是自己的，它不能也不应被安排。', '800', '7');
INSERT INTO `goods` VALUES ('44', '沙发', '/picture/product/sofa.jpg', '/picture/product/sofa.jpg', '/picture/product/sofa.jpg', '13.13', '帮助我们解析我们为什么有情绪化本能，同时针对每一种本能都给出了具体可行的解决方案。比如将全球分为发展中和发达国家的想法，汉斯提出按照人均日收入的不同，搭建四级收入阶梯的模型。也正是这个模型受到比尔·盖茨的好评。 \r\n——亚马逊读者', '800', '8');
INSERT INTO `goods` VALUES ('45', '毛绒的兔子', '/picture/product/rabbit.jpg', '/picture/product/rabbit.jpg', '/picture/product/rabbit.jpg', '14.14', '从地理环境上看，英国并不适合种棉花，却借助工业资本主义和战争资本主义，一度控制了全球的棉花产业。通过残酷吸血，换来巨额利润。这种技术文明和野蛮暴力的交融，在资本主义的发展过程中，会不断上演。 \r\n——读者 红白', '800', '8');
INSERT INTO `goods` VALUES ('46', '小羊', '/picture/product/puppet1.jpg', '/picture/product/puppet1.jpg', '/picture/product/puppet1.jpg', '15.15', '看完书才发现，与其说是“愚蠢奥斯卡”倒不如说是“伪科学诺贝尔”。1分钟看完一个愚蠢现象，10分钟查找相关信息，1小时自我反思，然后我不禁在想：做了这些动作的自己，会不会是另一个愚蠢现象的主人公呢？ \r\n——读者fengfeng', '11111', '1');
INSERT INTO `goods` VALUES ('47', '粉色的连衣裙', '/picture/product/dress.jpg', '/picture/product/dress.jpg', '/picture/product/dress.jpg', '16.16', '原来一直以为村上春树是那种特别文学的，这本让我改变了对村上的认识，是一个萌萌的可爱大叔，书中的内容非常好看，不知不觉就让人感动其中，那句：不爱说话的人啊，请努力生活。我也在背后无言地支援你。瞬间治愈，强烈推荐。 \r\n——读者ZHYYY', '11111', '6');
INSERT INTO `goods` VALUES ('49', '多功能婴儿车', '/picture/product/shopcar.jpg', '/picture/product/shopcar.jpg', '/picture/product/shopcar.jpg', '17.17', '《大树小虫》写的很尖锐很真实，上一代抱着为你好的心态做着一切，我们这一代有时候真的是无限感激，但却无法接受所有，毕竟人生是自己的，它不能也不应被安排。《大树小虫》写的很尖锐很真实，上一代抱着为你好的心态做着一切，我们这一代有时候真的是无限感激，但却无法接受所有，毕竟人生是自己的，它不能也不应被安排。《大树小虫》写的很尖锐很真实，上一代抱着为你好的心态做着一切，我们这一代有时候真的是无限感激，但却无法接受所有，毕竟人生是自己的，它不能也不应被安排。《大树小虫》写的很尖锐很真实，上一代抱着为你好的心态做着一切，我们这一代有时候真的是无限感激，但却无法接受所有，毕竟人生是自己的，它不能也不应被安排。', '10', '1');

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `total` float DEFAULT NULL,
  `amount` int(6) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `paytype` tinyint(1) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `datetime` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_user_id_idx` (`user_id`),
  CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of order
-- ----------------------------
INSERT INTO `order` VALUES ('23', '15996', '4', '2', '2', '用户测试账户', '17806259318', '唐山学院', '2019-05-27 02:05:49', '1');
INSERT INTO `order` VALUES ('62', '28.86', '5', '2', '3', '小明', '321', '天津', '2019-10-19 11:46:04', '2');

-- ----------------------------
-- Table structure for orderitem
-- ----------------------------
DROP TABLE IF EXISTS `orderitem`;
CREATE TABLE `orderitem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `price` float DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `goods_id` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_goods_id_idx` (`goods_id`),
  KEY `fk_order_id_idx` (`order_id`),
  CONSTRAINT `fk_orderitem_goods_id` FOREIGN KEY (`goods_id`) REFERENCES `goods` (`id`),
  CONSTRAINT `fk_order_id` FOREIGN KEY (`order_id`) REFERENCES `order` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orderitem
-- ----------------------------
INSERT INTO `orderitem` VALUES ('30', '6499', '1', '7', '23');
INSERT INTO `orderitem` VALUES ('31', '4599', '2', '8', '23');
INSERT INTO `orderitem` VALUES ('32', '299', '1', '26', '23');
INSERT INTO `orderitem` VALUES ('80', '1.11', '2', '1', '62');
INSERT INTO `orderitem` VALUES ('81', '8.88', '3', '8', '62');

-- ----------------------------
-- Table structure for recommend
-- ----------------------------
DROP TABLE IF EXISTS `recommend`;
CREATE TABLE `recommend` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) DEFAULT NULL,
  `goods_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_goods_id_idx` (`goods_id`),
  CONSTRAINT `fk_goods_id` FOREIGN KEY (`goods_id`) REFERENCES `goods` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of recommend
-- ----------------------------
INSERT INTO `recommend` VALUES ('1', '0', '1');
INSERT INTO `recommend` VALUES ('2', '0', '2');
INSERT INTO `recommend` VALUES ('3', '0', '3');
INSERT INTO `recommend` VALUES ('4', '0', '4');
INSERT INTO `recommend` VALUES ('5', '0', '5');
INSERT INTO `recommend` VALUES ('6', '0', '6');
INSERT INTO `recommend` VALUES ('7', '2', '7');
INSERT INTO `recommend` VALUES ('8', '2', '8');
INSERT INTO `recommend` VALUES ('9', '2', '9');
INSERT INTO `recommend` VALUES ('10', '2', '10');
INSERT INTO `recommend` VALUES ('11', '2', '11');
INSERT INTO `recommend` VALUES ('12', '2', '12');
INSERT INTO `recommend` VALUES ('13', '2', '13');
INSERT INTO `recommend` VALUES ('14', '2', '14');
INSERT INTO `recommend` VALUES ('15', '2', '15');
INSERT INTO `recommend` VALUES ('16', '2', '16');
INSERT INTO `recommend` VALUES ('17', '3', '18');
INSERT INTO `recommend` VALUES ('18', '3', '17');
INSERT INTO `recommend` VALUES ('19', '3', '16');
INSERT INTO `recommend` VALUES ('20', '3', '15');
INSERT INTO `recommend` VALUES ('21', '3', '14');
INSERT INTO `recommend` VALUES ('22', '3', '13');
INSERT INTO `recommend` VALUES ('23', '3', '12');
INSERT INTO `recommend` VALUES ('24', '3', '11');
INSERT INTO `recommend` VALUES ('25', '3', '10');
INSERT INTO `recommend` VALUES ('26', '3', '9');
INSERT INTO `recommend` VALUES ('27', '4', '7');
INSERT INTO `recommend` VALUES ('28', '4', '8');
INSERT INTO `recommend` VALUES ('29', '4', '9');
INSERT INTO `recommend` VALUES ('30', '4', '10');
INSERT INTO `recommend` VALUES ('31', '4', '11');
INSERT INTO `recommend` VALUES ('43', '1', '17');
INSERT INTO `recommend` VALUES ('44', '1', '16');
INSERT INTO `recommend` VALUES ('45', '1', '15');
INSERT INTO `recommend` VALUES ('46', '1', '14');
INSERT INTO `recommend` VALUES ('47', '1', '13');
INSERT INTO `recommend` VALUES ('48', '1', '12');
INSERT INTO `recommend` VALUES ('49', '1', '11');
INSERT INTO `recommend` VALUES ('50', '1', '10');
INSERT INTO `recommend` VALUES ('51', '1', '9');
INSERT INTO `recommend` VALUES ('52', '1', '8');
INSERT INTO `recommend` VALUES ('53', '1', '7');

-- ----------------------------
-- Table structure for type
-- ----------------------------
DROP TABLE IF EXISTS `type`;
CREATE TABLE `type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `typename` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of type
-- ----------------------------
INSERT INTO `type` VALUES ('1', '书');
INSERT INTO `type` VALUES ('2', '小说');
INSERT INTO `type` VALUES ('3', '科幻书');
INSERT INTO `type` VALUES ('4', '计算机/编程');
INSERT INTO `type` VALUES ('5', '历史');
INSERT INTO `type` VALUES ('6', '应用书籍');
INSERT INTO `type` VALUES ('7', '考研');
INSERT INTO `type` VALUES ('8', '考古');
INSERT INTO `type` VALUES ('9', 'tools');
INSERT INTO `type` VALUES ('19', 'English1');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `isadmin` bit(1) DEFAULT NULL,
  `isvalidate` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username_UNIQUE` (`username`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'long', 'long@qq.com', '123', '用户测试账户', '01234567890', '中国学院', '\0', '\0');
INSERT INTO `user` VALUES ('2', 'admin', 'admin@qq.com', '321', '小明', '119', '天津', '\0', '\0');
INSERT INTO `user` VALUES ('3', 'sina', 'admin@sina.com', '123', '小黑', '110', 'a', '\0', '\0');
INSERT INTO `user` VALUES ('4', '哪吒', '123@11.com', '123', '哪吒', '999', '肚子里', '\0', '\0');
INSERT INTO `user` VALUES ('7', 'test1', 'test1@qq.com', '1', 'test1', '01234567890', '中国学院', '\0', '\0');
INSERT INTO `user` VALUES ('8', 'f', 'f', 'f', 'f', 'f', 'f', '\0', '\0');
INSERT INTO `user` VALUES ('10', 'h', 'h', 'h', 'h', 'h', 'h', '\0', '\0');
INSERT INTO `user` VALUES ('11', 'i', 'i', 'i', 'i', 'i', 'i', '\0', '\0');
INSERT INTO `user` VALUES ('12', 'j', 'j', 'j', 'j', 'j', 'j', '\0', '\0');
INSERT INTO `user` VALUES ('13', 'k', 'k', 'k', 'k', 'k', 'k', '\0', '\0');
INSERT INTO `user` VALUES ('14', 'l', 'l', 'l', '', '', '', '\0', '\0');
INSERT INTO `user` VALUES ('15', 'm', 'm', 'm', '', '', '', '\0', '\0');
INSERT INTO `user` VALUES ('16', 'n', 'n', 'n', 'n', 'n', '', '\0', '\0');
INSERT INTO `user` VALUES ('17', 'odolgtt', 'odolgtt@sina.com', '123456', '123', '123', '123', '\0', '\0');
INSERT INTO `user` VALUES ('18', 'odolgtt111', '111', '111', '', '', '', '\0', '\0');
INSERT INTO `user` VALUES ('19', 'odolgttt', '123', '123', '2', '2', '222', '\0', '\0');
INSERT INTO `user` VALUES ('20', 'jiang', 'l254353385@163.com', '123', 'sun', '123', '中国', '\0', '\0');
INSERT INTO `user` VALUES ('21', 'z', 'z', '123', 'sun', '123', '中国', '\0', '\0');
