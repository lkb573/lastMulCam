package com.sds.emp.view.paging;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspTagException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;


public class PageNavigatorTag extends TagSupport {		
	private String firstImg ="/images/ct_btn_pre.gif";
	private String prevImg = "/images/ct_btn_pre01.gif";
	private String lastImg = "/images/ct_btn_next.gif";
	private String nextImg = "/images/ct_btn_next01.gif";
	private String imgHeight = "13";
	private String imgWidth = "15";
	private String numClass = "page";
	private String clickNumClass = "page_s";
	private String formName = "forms[0]";
	private String linkUrl = "";
	private Page pages = Page.EMPTY_PAGE;
	private int currentPage = 1;

	public int doStartTag() throws JspException {
		try {
			JspWriter out = pageContext.getOut();
			String page_num_script = "javascript:document." + getFormName()
					+ ".pageIndex.value=";

			out.print("<table border='0' cellspacing='0' cellpadding='0'><tr>");
			if (pages.hasPreviousPageUnit()) {
				out.print("<td><a href='" + page_num_script
						+ pages.getPageOfPreviousPageUnit() + ";" + linkUrl
						+ "'>");
				out.print("<img src='" + firstImg + "' width='" + imgWidth
						+ "' height='" + imgHeight + "' border='0' ></a></td>");
			} else {
				out.print("<td><img diabled src='" + firstImg + "' width='"
						+ imgWidth + "' height='" + imgHeight
						+ "' border='0' ></td>");
			}
			out.print("<td width='3'></td>");
			if (pages.hasPreviousPage()) {
				out.print("<td width='28'><a href='" + page_num_script
						+ pages.getPreviousPage() + ";" + linkUrl + "'>");
				out.print("<img src='" + prevImg + "' border='0' ></a></td>");
			} else {
				out.print("<td width='28'><img src='" + prevImg
						+ "' border='0' ></td>");
			}
			out.print("<td width='3'></td>");
			if (pages.isEmptyPage()) {
				out.print("<td class='" + numClass + "'>1</td>");
			} else {
				out.print("<td class='" + numClass + "'>");
				for (int i = pages.getBeginUnitPage(); i <= pages
						.getEndListPage(); i++) {
					if (i == pages.getCurrentPage()) {
						out.print(" <font class='" + clickNumClass + "'>" + i
								+ "</font>" + "&nbsp;&nbsp;&nbsp;");
					} else {
						out.print("<a href='" + page_num_script + i + ";"
								+ linkUrl + "'>");
						out.print(i + "</a>&nbsp;&nbsp;&nbsp;");
					}
				}
				out.print("</td>");
			}

			if (pages.hasNextPage()) {
				out.print("<td width='28' align='right'><a href='"
						+ page_num_script + pages.getNextPage() + ";" + linkUrl
						+ "'>");
				out.print("<img src='" + nextImg + "' border='0' ></a></td>");
			} else {
				out.print("<td width='28' align='right'><img src='" + nextImg
						+ "' border='0' ></td>");
			}
			out.print("<td width='3'></td>");

			if (pages.hasNextPageUnit()) {
				out.print("<td width='20' ><a href='" + page_num_script
						+ pages.getPageOfNextPageUnit() + ";" + linkUrl + "'>");
				out.print("<img src='" + lastImg + "' width='" + imgWidth
						+ "' height='" + imgHeight + "' border='0' ></a></td>");
			} else {
				out.print("<td width='20' ><img src='" + lastImg + "' width='"
						+ imgWidth + "' height='" + imgHeight
						+ "' border='0' ></a></td>");
			}

			out.print("</tr></table>");

		} catch (Exception ex) {
			throw new JspTagException(ex.getMessage());
		}
		return SKIP_BODY;
	}

	public String getClickNumClass() {
		return clickNumClass;
	}

	public String getFirstImg() {
		return firstImg;
	}

	public String getImgHeight() {
		return imgHeight;
	}

	public String getImgWidth() {
		return imgWidth;
	}

	public String getLastImg() {
		return lastImg;
	}

	public String getLinkUrl() {
		return linkUrl;
	}

	public String getNextImg() {
		return nextImg;
	}

	public String getNumClass() {
		return numClass;
	}

	public String getPrevImg() {
		return prevImg;
	}

	public void setClickNumClass(String string) {
		clickNumClass = string;
	}

	public void setFirstImg(String string) {
		firstImg = string;
	}

	public void setImgHeight(String string) {
		imgHeight = string;
	}

	public void setImgWidth(String string) {
		imgWidth = string;
	}

	public void setLastImg(String string) {
		lastImg = string;
	}

	public void setLinkUrl(String string) {
		linkUrl = string;
	}

	public void setNextImg(String string) {
		nextImg = string;
	}

	public void setNumClass(String string) {
		numClass = string;
	}

	public void setPrevImg(String string) {
		prevImg = string;
	}

	public Page getPages() {
		return pages;
	}

	public void setCurrentPage(int i) {
		currentPage = i;
	}

	public void setPages(Page page) {
		pages = page;
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public String getFormName() {
		return formName;
	}

	public void setFormName(String string) {
		formName = string;
	}
}
