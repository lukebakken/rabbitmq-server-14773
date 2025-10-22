#!/bin/sh

openssl s_client -connect localhost:5671 -CAfile ./ca_certificate.pem
