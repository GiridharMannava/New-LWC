import { LightningElement,track } from 'lwc';

export default class CondionalRenderingExample extends LightningElement {
    @track displayDiv = false;
    @track cityList =['Bangalore','Hyderabad','Chennai','Delhi'];
    showDivHandler(event){
      this.displayDiv = event.target.checked;  
    }
}