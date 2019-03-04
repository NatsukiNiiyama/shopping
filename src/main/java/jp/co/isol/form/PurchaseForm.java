package jp.co.isol.form;

import java.io.Serializable;

import javax.validation.constraints.Max;

public class PurchaseForm implements Serializable {

	int itemId;

	@Max(value = 999)
	int count;

	public int getItemId() {
		return itemId;
	}

	public void setItemId(int itemId) {
		this.itemId = itemId;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

}
