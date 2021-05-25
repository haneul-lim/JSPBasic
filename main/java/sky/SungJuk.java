package sky;

import java.io.Serializable;

public class SungJuk implements Serializable{
	private String name;
	private int kor;
	private int eng;
	private int mat;
	private int tot;
	private double avg;
	private char grd;
	
	public SungJuk() {
		
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getKor() {
		return kor;
	}

	public void setKor(int kor) {
		this.kor = kor;
	}

	public int getEng() {
		return eng;
	}

	public void setEng(int eng) {
		this.eng = eng;
	}

	public int getMat() {
		return mat;
	}

	public void setMat(int mat) {
		this.mat = mat;
	}

	public int getTot() {
		tot = kor + eng + mat;
		return tot;
	}

	public void setTot(int tot) {
		this.tot = tot;
	}

	public double getAvg() {
		getTot();
		avg = (double)tot / 3;
		return avg;
	}

	public void setAvg(double avg) {
		this.avg = avg;
	}

	public char getGrd() {
		return grd;
	}

	public void setGrd(char grd) {
		this.grd = grd;
	}
}
