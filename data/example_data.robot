*** Settings ***
Library        OperatingSystem

*** Variables ***

# Variables
${INI_NAMA_BUDI}        Budi Siregar
${INI_NAMA_SITI}        Siti Siregar

# Lists
@{LIST_NAMA_SISWA}        Budi  Siti  Andi

# Dictionary
&{DICTIONARY_EXAMPLE}        username=user1  password=user1test


*** Test Cases ***
Example Test
    [Tags]  @sample_call_var
    Log        ${INI_NAMA_BUDI}
    Log        ${INI_NAMA_SITI}
    Log        ${LIST_NAMA_SISWA}[0]
    Log        ${LIST_NAMA_SISWA}[1]
    Log        ${LIST_NAMA_SISWA}[2]
    Log        ${DICTIONARY_EXAMPLE}[username]
    Log        ${DICTIONARY_EXAMPLE}[password]