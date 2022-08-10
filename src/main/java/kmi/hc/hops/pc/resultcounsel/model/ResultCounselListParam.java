package kmi.hc.hops.pc.resultcounsel.model;

public class ResultCounselListParam {
		
	private	String userId;
			
	private	int pageNo;
	private	String listSize;
	private String rvArray;
	private int amount;
	private int skip;	
	private	int BLOCK_SCALE;
	private	int count;
	private	int totPage;
	private	int totBlock;
	private	int curBlock;
	private	int blockBegin;
	private	int blockEnd;
	private	int prevPage;
	private	int nextPage;
	
	public ResultCounselListParam() {
		
	}

	public ResultCounselListParam(String userId, int pageNo, String listSize, String rvArray, int amount, int skip,
			int bLOCK_SCALE, int count, int totPage, int totBlock, int curBlock, int blockBegin, int blockEnd,
			int prevPage, int nextPage) {
		super();
		this.userId = userId;
		this.pageNo = pageNo;
		this.listSize = listSize;
		this.rvArray = rvArray;
		this.amount = amount;
		this.skip = skip;
		BLOCK_SCALE = bLOCK_SCALE;
		this.count = count;
		this.totPage = totPage;
		this.totBlock = totBlock;
		this.curBlock = curBlock;
		this.blockBegin = blockBegin;
		this.blockEnd = blockEnd;
		this.prevPage = prevPage;
		this.nextPage = nextPage;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}
	
	public int getPageNo() {
		return pageNo;
	}

	public void setPageNo(int pageNo) {
		this.pageNo = pageNo;
	}
	
	public String getListSize() {
		return listSize;
	}

	public void setListSize(String listSize) {
		this.listSize = listSize;
	}

	public String getRvArray() {
		return rvArray;
	}

	public void setRvArray(String rvArray) {
		this.rvArray = rvArray;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}

	public int getSkip() {
		return skip;
	}

	public void setSkip(int skip) {
		this.skip = skip;
	}

	public int getBLOCK_SCALE() {
		return BLOCK_SCALE;
	}

	public void setBLOCK_SCALE(int bLOCK_SCALE) {
		BLOCK_SCALE = bLOCK_SCALE;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public int getTotPage() {
		return totPage;
	}

	public void setTotPage(int totPage) {
		this.totPage = totPage;
	}

	public int getTotBlock() {
		return totBlock;
	}

	public void setTotBlock(int totBlock) {
		this.totBlock = totBlock;
	}

	public int getCurBlock() {
		return curBlock;
	}

	public void setCurBlock(int curBlock) {
		this.curBlock = curBlock;
	}

	public int getBlockBegin() {
		return blockBegin;
	}

	public void setBlockBegin(int blockBegin) {
		this.blockBegin = blockBegin;
	}

	public int getBlockEnd() {
		return blockEnd;
	}

	public void setBlockEnd(int blockEnd) {
		this.blockEnd = blockEnd;
	}

	public int getPrevPage() {
		return prevPage;
	}

	public void setPrevPage(int prevPage) {
		this.prevPage = prevPage;
	}

	public int getNextPage() {
		return nextPage;
	}

	public void setNextPage(int nextPage) {
		this.nextPage = nextPage;
	}

	@Override
	public String toString() {
		return "ResultCounselParam [userId=" + userId + ", pageNo=" + pageNo + ", listSize=" + listSize + ", rvArray="
				+ rvArray + ", amount=" + amount + ", skip=" + skip + ", BLOCK_SCALE=" + BLOCK_SCALE + ", count="
				+ count + ", totPage=" + totPage + ", totBlock=" + totBlock + ", curBlock=" + curBlock + ", blockBegin="
				+ blockBegin + ", blockEnd=" + blockEnd + ", prevPage=" + prevPage + ", nextPage=" + nextPage + "]";
	}

	
	

				

	
	
	

}
