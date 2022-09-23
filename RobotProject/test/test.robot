*** Settings ***
Library    SSHLibrary
Library    CryptoLibrary    variable_decryption=True
Suite Setup            Open Connection And Log In
Suite Teardown         SSHLibrary.Close All Connections

*** Variables ***
${HOST}            192.168.1.130   
${USERNAME}        pi
${PASSWORD}        crypt:LO3wCxZPltyviM8gEyBkRylToqtWm+hvq9mMVEPxtn0BXB65v/5wxUu7EqicpOgGhgNZVgFjY0o=

*** Test Cases ***
Test Cases
    ${output}=    Execute Command   uname -m
    Log    ${output}


*** Keywords ***
Open Connection And Log In
   Open Connection     ${HOST}
   Login               ${USERNAME}        ${PASSWORD}
