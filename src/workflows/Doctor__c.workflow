<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <rules>
        <fullName>sddddd</fullName>
        <active>false</active>
        <criteriaItems>
            <field>Doctor__c.Email__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Doctor__c.Specialization__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onCreateOnly</triggerType>
    </rules>
</Workflow>
