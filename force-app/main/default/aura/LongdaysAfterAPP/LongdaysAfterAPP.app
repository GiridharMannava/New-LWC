<aura:application extends="force:slds">
    <aura:attribute name="OpenRegistrationForm" type="boolean" default="false"/>
    <aura:attribute name="ButtonLabel" type="string" default="Open Registration Form"/>
    <lightning:button variant="brand" label="{!v.ButtonLabel}" onclick="{!c.OpenRegistrationForm}" />
    
    <aura:if isTrue="{!v.OpenRegistrationForm}">
    <c:LongdaysAfter />
    </aura:if>
    
</aura:application>