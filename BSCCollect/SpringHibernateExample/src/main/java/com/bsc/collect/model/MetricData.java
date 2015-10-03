package com.bsc.collect.model;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Size;

@Entity
@Table(name = "data")
public class MetricData implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int data_id;
    
    @Size(min = 1, max = 45)
    @Column(name = "metric_id", nullable = false)
    private int metric_id;

	
	

}
