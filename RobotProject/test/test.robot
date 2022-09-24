*** Settings ***
Library    SSHLibrary
Library    CryptoLibrary    variable_decryption=True
Library    OperatingSystem
Suite Setup            Open Connection And Log In
Suite Teardown         SSHLibrary.Close All Connections

*** Variables ***
${HOST}            192.168.1.130   
${USERNAME}        pi
${PASSWORD}        crypt:pm0d5ygXLzmnak3qYiRpxC79LRzigzfxtxnwavrE9HRKQXxOtbFL6JT6QJ3RcJ7pOUZnrxJVo3g=

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
