*** Settings ***
Library  RequestsLibrary
Library  Collections
Library  FakerLibrary    locale=pt_BR
Library  String
Library  OperatingSystem
Library  ${EXECDIR}/resources/library/user.py
Library  ${EXECDIR}/resources/library/login.py
Library  ${EXECDIR}/resources/library/municipios.py
Library  ${EXECDIR}/resources/library/send.py
Library  ${EXECDIR}/resources/library/resend.py

Resource  ${EXECDIR}/resources/routes/routes.robot
Resource  ${EXECDIR}/resources/common/common.robot