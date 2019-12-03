import { LightningElement } from 'lwc';

import ACCOUNT_OBJECT from '@salesforce/schema/Account';

export default class AccountCreater extends LightningElement {
    AccountObject = ACCOUNT_OBJECT;
    handleFormSubmitted(event){
        
    }
}