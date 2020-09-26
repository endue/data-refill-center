CREATE TABLE `coupon_activity` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '注解ID',
  `data_package_id` int(11) NOT NULL COMMENT '流量套餐ID',
  `coupon_amount` double NOT NULL COMMENT '流量券金额',
  `status` tinyint(4) DEFAULT NULL COMMENT '优惠活动状态 1未开始 2进行中 3已结束',
  `start_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '优惠活动开始时间',
  `end_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '优惠活动结束时间',
  `created_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `modified_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='送流量券活动表';

CREATE TABLE `promotion_activity` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `data_package_id` int(11) NOT NULL COMMENT '流量套餐ID',
  `discount_price` double NOT NULL COMMENT '优惠价',
  `status` tinyint(4) DEFAULT NULL COMMENT '优惠活动状态 1未开始 2进行中 3已结束',
  `start_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '优惠活动开始时间',
  `end_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '优惠活动结束时间',
  `created_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `modified_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='优惠活动表';

CREATE TABLE `coupon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_account_Id` int(11) NOT NULL COMMENT '用户账号ID',
  `coupon_amount` double(10,0) NOT NULL COMMENT '流量券金额',
  `status` int(1) NOT NULL COMMENT '状态',
  `start_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '开始时间',
  `end_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '结束时间',
  `created_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='优惠券';

CREATE TABLE `credit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_account_id` double DEFAULT NULL COMMENT '用户账号ID',
  `point` decimal(10,2) DEFAULT NULL COMMENT '积分',
  `locked_point` decimal(10,2) DEFAULT NULL COMMENT '锁定积分',
  `start_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `end_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='积分表';

CREATE TABLE `account_amount` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_account_id` bigint(20) DEFAULT NULL COMMENT '用户账号ID',
  `amount` decimal(10,2) DEFAULT NULL COMMENT '账号金额',
  `locked_amount` decimal(10,2) DEFAULT NULL COMMENT '账号锁定金额',
  `start_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `end_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='账户金额表';

CREATE TABLE `lottery_draw` (
  `id` int(11) NOT NULL,
  `user_account_id` bigint(20) DEFAULT NULL COMMENT '用户账号id',
  `lottery_draw_count` int(11) DEFAULT NULL COMMENT '抽奖次数',
  `locked_lottery_draw_count` int(11) DEFAULT NULL COMMENT '冻结抽奖次数',
  `start_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `end_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='抽奖机会表';


CREATE TABLE `refill_order` (
  `id` int(11) NOT NULL,
  `order_no` varchar(20) DEFAULT NULL COMMENT '订单号',
  `user_account_id` bigint(20) DEFAULT NULL COMMENT '用户账号id',
  `business_account_id` bigint(20) DEFAULT NULL COMMENT '商户账号id',
  `business_name` varchar(20) DEFAULT NULL COMMENT '商户名称',
  `amount` double DEFAULT NULL COMMENT '支付金额',
  `title` varchar(20) DEFAULT NULL COMMENT '订单标题',
  `type` varchar(255) DEFAULT NULL COMMENT '订单分类',
  `status` int(11) DEFAULT NULL COMMENT '订单状态',
  `pay_type` int(11) DEFAULT NULL COMMENT '支付方式类型',
  `refill_comment` varchar(255) DEFAULT NULL COMMENT '充值说明',
  `refill_phone_number` varchar(255) DEFAULT NULL COMMENT '充值手机号码',
  `refill_data` bigint(20) DEFAULT NULL COMMENT '充值流量',
  `credit` double DEFAULT NULL COMMENT '赠送积分',
  `created_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `modified_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='充值订单表';


CREATE TABLE `data_package` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '注解ID',
  `price` double NOT NULL COMMENT '价格',
  `data` int(11) NOT NULL COMMENT '流量，单位MB',
  `type` tinyint(4) NOT NULL COMMENT '类型，1省内 2全国 3国外',
  `comment` varchar(200) NOT NULL COMMENT '说明备注',
  `created_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='流量套餐表';