package com.admin.firstedu.pay.model.service;

import java.util.List;

import com.admin.firstedu.pay.model.dto.PayDTO;
import com.admin.firstedu.pay.model.dto.PayListDTO;

public interface PayService {

	List<PayListDTO> selectPayList();

	int insertPay(PayDTO pay);

	int deletePay(PayDTO pay);

}
