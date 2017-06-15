package com.zyfz.model;

import java.util.ArrayList;
import java.util.List;

public class Datagrid {

	private Integer totalPage;
	private Long total = 0L;
	private List rows = new ArrayList();

	public Datagrid() {
		super();
	}

	public Datagrid(Long total, List rows) {
		this.total = total;
		this.rows = rows;
	}

	public Datagrid(Integer totalPage, Long total, List rows) {
		this.totalPage = totalPage;
		this.total = total;
		this.rows = rows;
	}

	public Long getTotal() {
		return total;
	}

	public List getRows() {
		return rows;
	}

	public void setTotal(Long total) {
		this.total = total;
	}

	public void setRows(List rows) {
		this.rows = rows;
	}

	public Integer getTotalPage() {
		return totalPage;
	}

	public void setTotalPage(Integer totalPage) {
		this.totalPage = totalPage;
	}
}
