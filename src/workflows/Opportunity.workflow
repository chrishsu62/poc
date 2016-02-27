<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Opportunity_Approved</fullName>
        <description>Opportunity Approved</description>
        <protected>false</protected>
        <recipients>
            <type>creator</type>
        </recipients>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Opportunity_Approved</template>
    </alerts>
    <alerts>
        <fullName>Opportunity_Rejected</fullName>
        <description>Opportunity Rejected</description>
        <protected>false</protected>
        <recipients>
            <field>Owners_Manager_Email__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Opportunity_Rejected</template>
    </alerts>
    <fieldUpdates>
        <fullName>Set_Closed_Opp_Time</fullName>
        <field>Closed_Opp_Date_Time__c</field>
        <formula>NOW()</formula>
        <name>Set Closed Opp Time</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Set_Closed_Opps_to_Ful_Read_Only</fullName>
        <field>RecordTypeId</field>
        <lookupValue>Locked_Opp_Detail_Page</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>Set Closed Opps to Ful Read-Only</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Set_Closed_Opps_to_Full_Read_Only</fullName>
        <field>RecordTypeId</field>
        <lookupValue>Locked_Opp_Detail_Page</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>Set Closed Opps to Full Read-Only</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Set_Closed_Opps_to_Partial_Read_Only</fullName>
        <field>RecordTypeId</field>
        <lookupValue>Partial_Locked_Opp_Detail_Page</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>Set Closed Opps to Partial Read-Only</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Set_Opp_to_Full_Read_only</fullName>
        <field>RecordTypeId</field>
        <lookupValue>Locked_Opp_Detail_Page</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>Set Opp to Full Read-only</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Set_Record_Type_to_Partial_ReadOnly</fullName>
        <field>RecordTypeId</field>
        <lookupValue>Partial_Locked_Opp_Detail_Page</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>Set Record Type to Partial ReadOnly</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Set_Timestamped_Closed_Opp_Field</fullName>
        <field>Closed_Opp_Date_Time__c</field>
        <formula>NOW()</formula>
        <name>Set Timestamped Closed Opp Field</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Uncheck_Manager_Approved_checkbox</fullName>
        <field>Management_Approval__c</field>
        <literalValue>0</literalValue>
        <name>Uncheck Manager Approved checkbox</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Amount_Change_Counter</fullName>
        <field>Amount_Change_Counter__c</field>
        <formula>Amount_Change_Counter__c + 1</formula>
        <name>Update Amount Change Counter</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Initial_Amount_Field</fullName>
        <field>Initial_Opportunity_Amount__c</field>
        <formula>PRIORVALUE(Amount )</formula>
        <name>Update Initial Amount Field</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Manager_Approval_Field</fullName>
        <field>Management_Approval__c</field>
        <literalValue>1</literalValue>
        <name>Update Manager Approval Field</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Owner_Manager_Email</fullName>
        <field>Owners_Manager_Email__c</field>
        <formula>Owner.Manager.Email</formula>
        <name>Update Owner Manager Email</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <outboundMessages>
        <fullName>testoutbound1</fullName>
        <apiVersion>35.0</apiVersion>
        <endpointUrl>http://test.com</endpointUrl>
        <fields>Id</fields>
        <includeSessionId>false</includeSessionId>
        <integrationUser>chris.hsu1@salesforce.com</integrationUser>
        <name>test</name>
        <protected>false</protected>
        <useDeadLetterQueue>false</useDeadLetterQueue>
    </outboundMessages>
    <rules>
        <fullName>Populate Owner Manager Email</fullName>
        <actions>
            <name>Update_Owner_Manager_Email</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.OwnerId</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Set Closed Opps to Read-Only</fullName>
        <actions>
            <name>Set_Closed_Opp_Time</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Set_Record_Type_to_Partial_ReadOnly</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Closed Won,Closed Lost</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Set_Opp_to_Full_Read_only</name>
                <type>FieldUpdate</type>
            </actions>
            <offsetFromField>Opportunity.Closed_Opp_Date_Time__c</offsetFromField>
            <timeLength>7</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>Set Closed Opps to Read-Only v2</fullName>
        <actions>
            <name>Set_Closed_Opps_to_Partial_Read_Only</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Set_Timestamped_Closed_Opp_Field</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Closed Won,Closed Lost</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Set_Closed_Opps_to_Full_Read_Only</name>
                <type>FieldUpdate</type>
            </actions>
            <offsetFromField>Opportunity.Closed_Opp_Date_Time__c</offsetFromField>
            <timeLength>10</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>Track Initial Opportunity Amount</fullName>
        <actions>
            <name>Update_Initial_Amount_Field</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.Amount</field>
            <operation>greaterThan</operation>
            <value>USD 0</value>
        </criteriaItems>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Track Opportunity Amount Changes</fullName>
        <actions>
            <name>Update_Amount_Change_Counter</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>ISCHANGED( Amount )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>test1</fullName>
        <actions>
            <name>testoutbound1</name>
            <type>OutboundMessage</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Opportunity.Amount</field>
            <operation>greaterOrEqual</operation>
            <value>&quot;USD 1,000,000&quot;</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Closed Won</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
