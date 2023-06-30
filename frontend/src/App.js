import React, { useState, useEffect } from 'react';
import { Bar } from 'react-chartjs-2';
import { Chart, CategoryScale, LinearScale, BarElement, Title, Tooltip, Legend } from 'chart.js';
import { BuildChart } from './BuildChart';
import { Api } from './DataApi';
import { DropdownCheckboxes, Filters } from './DropdownCheckboxes';

Chart.register(CategoryScale, LinearScale, BarElement, Title, Tooltip, Legend);

// function MarkCountFilter(data){
//   const [marks, setMarks] = useState(data)

//   const handleCheckboxChange = (event) => {
//     const { value, checked } = event.target;

//     if (checked) {
//       setSelectedValues((prevSelectedValues) => [...prevSelectedValues, value]);
//     } else {
//       setSelectedValues((prevSelectedValues) =>
//         prevSelectedValues.filter((selectedValue) => selectedValue !== value)
//       );
//     }
//   };

//   const handleSelectAllChange = (event) => {
//     const { checked } = event.target;

//     if (checked) {
//       setSelectedValues(options.map((option) => option.value));
//     } else {
//       setSelectedValues([]);
//     }
//   };

//   const renderOptions = options.map((option) => (
//     <option key={option.value} value={option.value}>
//       {option.label}
//     </option>
//   ));

//   return (
//     <div>
//       <span>Filters:</span>
//       <select multiple value={selectedValues} onChange={onChange}>
//         {renderOptions}
//       </select>
//     </div>
//   )
// }

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

  if (!data) return <div>Loading...</div>

  const chartBuilder = new BuildChart(data);

  const markCountData = chartBuilder.markCount();
  const modelCountData = chartBuilder.modelCount();
  const markCountByPriceData = chartBuilder.markCountByPrice();

  
  const options = {
    responsive: true,
    plugins: {
      legend: {
        display: false,
      },
    },
    scales: {
      y: {
        beginAtZero: true,
        ticks: {
          precision: 0, // Ensure integer ticks on the y-axis
        },
      },
    },
  };

  return (
    // глобальный див для чарта
    <div>
      {/* див дл чарта */}
      <div>
        <span>Count of marks on the market</span>
        <Bar data={markCountData} options={options} id='marksCount'/>
      </div>
      {/* див для фильров */}
      <Filters data={data.marksCount} setNew={setData}> </Filters>

    </div>
  );
}

export default App;
