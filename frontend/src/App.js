import React, { useState, useEffect } from 'react';
import { Bar, Pie } from 'react-chartjs-2';
import { CategoryScale, LinearScale, BarElement, Title, Tooltip, Legend } from 'chart.js';
import { Chart as ChartJS } from 'chart.js/auto'
ChartJS.register(CategoryScale, LinearScale, BarElement, Title, Tooltip, Legend);

class Api {
  constructor() {
    this.base_url = 'http://127.0.0.1:5001/';
  }

  async fetchData(endpoint) {
    try {
      const result = await fetch(this.base_url + endpoint);
      const json = await result.json();
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

function App() {
  const api = new Api();
  const [data, setData] = useState({});

  useEffect(() => {
    const fetchData = async () => {
      const [marksCount, marksPrice, modelsCount] = await Promise.all([
        api.getMarksCount(),
        api.getMarksPrice(),
        api.getModelsCount(),
      ]);

      setData({
        marksCount: marksCount,
        marksPrice: marksPrice,
        modelsCount: modelsCount,
      });
    };

    fetchData();
  }, []);

  const options = {
    responsive: true,
    plugins: {
      legend: {
        display: false,
      },
    },
  };

  const filteredData = data.marksCount?.filter(item => item.count > 100);
  const labels = filteredData?.map(item => item.mark_name);
  const markCountData = {
    labels: labels,
    datasets: [
      {
        data: filteredData?.map(item => item.count),
        backgroundColor: 'rgba(255, 99, 132, 0.5)',
      },
    ],
  };


  const filteredModels = data.modelsCount?.filter(item => item.mark_id === 24)
  const modelLables = filteredModels?.map(item => item.model_name);
  const pieData = {
    labels: modelLables,
    datasets: [
      {
        label: '# count autos: ',
        data: filteredModels?.map(item => item.count),
        backgroundColor: [
          'rgba(255, 99, 132, 0.2)',
          'rgba(54, 162, 235, 0.2)',
          'rgba(255, 206, 86, 0.2)',
          'rgba(75, 192, 192, 0.2)',
          'rgba(153, 102, 255, 0.2)',
          'rgba(255, 159, 64, 0.2)',
        ],
        borderColor: [
          'rgba(255, 99, 132, 1)',
          'rgba(54, 162, 235, 1)',
          'rgba(255, 206, 86, 1)',
          'rgba(75, 192, 192, 1)',
          'rgba(153, 102, 255, 1)',
          'rgba(255, 159, 64, 1)',
        ],
        borderWidth: 1,
      },
    ],
  };

  const filteredPrice = data.marksPrice?.filter(item => item.avg_price >= 10000 && item.avg_price <= 35000)
  const modelLablesPrice = filteredPrice?.map(item => item.mark_name);
  console.log('filteredPrice', filteredPrice)
  console.log('modelLablesPrice', modelLablesPrice)
  const markCountDataPrice = {
    labels: modelLablesPrice,
    datasets: [
      {
        legend: modelLablesPrice,
        data: filteredPrice?.map(item => item.avg_price),
        backgroundColor: 'rgba(255, 99, 132, 0.5)',
      },
    ],
  };
  return (
    <div>
      <div>
        <h1>Графики</h1>
        <Bar data={markCountDataPrice} options={options}/>;
        <Pie data={pieData} />;
        <Bar data={markCountData} options={options}/>;
      </div>
    </div>
    
  );
}

export default App;
