import React, { useState } from 'react';

function DropdownCheckboxes({ options }){
  console.log('options', options)
  const [selectedValues, setSelectedValues] = useState([]);
  if(!options) return;

  const handleCheckboxChange = (event) => {
    const { value, checked } = event.target;

    if (checked) {
      setSelectedValues((prevSelectedValues) => [...prevSelectedValues, value]);
    } else {
      setSelectedValues((prevSelectedValues) =>
        prevSelectedValues.filter((selectedValue) => selectedValue !== value)
      );
    }
  };

  const handleSelectAllChange = (event) => {
    const { checked } = event.target;

    if (checked) {
      setSelectedValues(options.map((option) => option.value));
    } else {
      setSelectedValues([]);
    }
  };
  
  const renderOptions = options.map((option) => (
    <option key={option.mark_name} value={option.mark_id}>
      {option.mark_name}
    </option>
  ));

   return (
    <div>
      <select multiple value={selectedValues} onChange={handleCheckboxChange}>
        {renderOptions}
      </select>
      <label>
        <input
          type="checkbox"
          checked={selectedValues.length === options.length}
          onChange={handleSelectAllChange}
        />
        Select All
      </label>
    </div>
  );
};


export function Filters({data, setNew}){
  const minObject = data.reduce((min, current) => {
    if (current.count < min.count) {
      return current;
    }
    return min;
  });
  const maxObject = data.reduce((max, current) => {
    if (current.count > max.count) {
      return current;
    }
    return max;
  });
  const logNewMin = (event) => {
    const value = document.querySelector("#value");
    value.textContent = event.target.value;
    const newData = data.filter((item) => item.count >= event.target.value)
    console.log('newData', newData)
    setNew( {marksCount: newData})
  }
  return (
    <div>
      <DropdownCheckboxes options={data}></DropdownCheckboxes>
      <div>
        <input type='range' id="mark_count"  min={minObject.count} max={maxObject.count} onChange={logNewMin} step={1}></input>
        <p>Value: <output id="value"></output></p>
      </div>
    </div>
  )
}