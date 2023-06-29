import React, { useState, useEffect } from 'react';
import { Bar, Pie } from 'react-chartjs-2';
import { Chart } from 'chart.js';
import { CategoryScale, LinearScale, BarElement, Title, Tooltip, Legend, ArcElement } from 'chart.js';
import { BuildChart } from './BuildChart';
import { Api } from './DataApi';

Chart.register(CategoryScale, LinearScale, BarElement, Title, Tooltip, Legend, ArcElement);

function App() {
  const [data, setData] = useState(null);

  useEffect(() => {
    const fetchData = async () => {
      const api = new Api();

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

  if (!data) return <div>Loading...</div>;

  const chatBuilder = new BuildChart(data);

  const markCountData = chatBuilder.markCount();
  const modelCountData = chatBuilder.modelCount();
  const markCountByPriceData = chatBuilder.markCountByPrice();

  const options = {
    responsive: true,
    plugins: {
      legend: {
        display: false,
      },
    },
  };

  return (
    <div>
      <h1>Графики</h1>
      <div>
        <Bar data={markCountData} options={options} />
        <Pie data={modelCountData} />
        <Bar data={markCountByPriceData} options={options} />
      </div>
    </div>
  );
}

export default App;
