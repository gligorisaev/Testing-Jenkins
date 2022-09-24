*** Settings ***
Library    SSHLibrary
Library    CryptoLibrary    variable_decryption=True
Library    OperatingSystem
Suite Setup            Open Connection And Log In
Suite Teardown         SSHLibrary.Close All Connections

*** Variables ***
${HOST}            192.168.1.130   
${USERNAME}        pi
${PASSWORD}        crypt:x890wZWbaKGFohMJzvB9OzE9roBpUnVf82D4GLK/vTpPOpjKil0SBXMwSJs0Y/cR6OffBVJFBYk=

*** Test Cases ***

Change user
    Run    command
Test Cases
    ${output}=    Execute Command   uname -m
    Log    ${output}


*** Keywords ***
Open Connection And Log In
   Open Connection     ${HOST}
   Login               ${USERNAME}        ${PASSWORD}
