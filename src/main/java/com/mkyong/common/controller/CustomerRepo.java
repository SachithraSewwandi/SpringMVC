package com.mkyong.common.controller;

import com.mkyong.common.controller.Customer;
import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.stereotype.Repository;


/**
 * Created by hsenid on 11/27/15.
 */
@Repository
public interface CustomerRepo extends MongoRepository<Customer,String> {

}
