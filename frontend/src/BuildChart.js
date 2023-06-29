export class BuildChart{

    constructor(data){
        this.data = data
    }

    markCount(){
        const filteredData = this.data?.marksCount?.filter(item => item.count > 100)
        console.log('this.data', this.data)

        console.log('markCount filteredData', filteredData)
        if(!filteredData){
            return {}
        }
        const labels = filteredData.map(item => item.mark_name)

        const markCountData = {
            labels: labels,
            datasets: [
                {
                    data: filteredData.map(item => item.count),
                    backgroundColor: 'rgba(255, 99, 132, 0.5)',
                }
            ]
        }
        return markCountData
    }

    modelCount(){

        const filteredModels = this.data?.modelsCount?.filter(item => item.mark_id === 24)
        if(!filteredModels){
            return {}
        }
        const modelLables = filteredModels.map(item => item.model_name);
        const modelCountData = {
            labels: modelLables,
            datasets: [
                {
                    label: '# count autos: ',
                    data: filteredModels.map(item => item.count),
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
        return modelCountData

    }

    markCountByPrice(){
        const filteredPrice = this.data?.marksPrice?.filter(
            item => item.avg_price >= 10000 && item.avg_price <= 35000
        )
        if(!filteredPrice){
            return {}
        }
        const modelLablesPrice = filteredPrice.map(item => item.mark_name);
        const markCountDataPrice = {
            labels: modelLablesPrice,
            datasets: [
                {
                    legend: modelLablesPrice,
                    data: filteredPrice?.map(item => item.avg_price),
                    backgroundColor: 'rgba(255, 99, 132, 0.5)',
                },
            ],
        }
        return markCountDataPrice
    }

}

