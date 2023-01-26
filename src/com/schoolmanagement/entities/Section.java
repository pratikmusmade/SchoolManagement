package com.schoolmanagement.entities;

public class Section {

		private int sectionId;
		private String section;
		
		public Section(String section) {
			this.section = section;
		}
		public Section(int sectionId, String section) {
			this.sectionId = sectionId;
			this.section = section;
		}

		

		public int getSectionId() {
			return sectionId;
		}

		public void setSectionId(int sectionId) {
			this.sectionId = sectionId;
		}

		public String getSection() {
			return section;
		}

		public void setSection(String section) {
			this.section = section;
		}

		@Override
		public String toString() {
			return "Section [sectionId=" + sectionId + ", section=" + section + "]";
		}
		
		
	
		
}
