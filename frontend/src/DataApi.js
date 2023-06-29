
export class Api {
    constructor() {
      this.base_url = 'http://127.0.0.1:5001/';
    }
  
    async fetchData(endpoint) {
      try {
        const result = await fetch(this.base_url + endpoint);
        const json = await result.json();
        console.log('get json:', json)
        return json;
      } catch (error) {
        console.error('Error fetching data:', error);
        return [];
      }
    }
  
    async getMarksCount() {
      return this.fetchData('count_marks');
    }
  
    async getModelsCount() {
      return this.fetchData('count_models');
    }
  
    async getMarksPrice() {
      return this.fetchData('marks_price');
    }
  }
  