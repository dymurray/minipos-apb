FROM ansibleplaybookbundle/apb-base

LABEL "com.redhat.apb.spec"=\
"dmVyc2lvbjogMS4wCm5hbWU6IG1pbmlwb3MtYXBiCmRlc2NyaXB0aW9uOiBUaGlzIGlzIGEgc2Ft\
cGxlIGFwcGxpY2F0aW9uIGdlbmVyYXRlZCBieSBhcGIgaW5pdApiaW5kYWJsZTogRmFsc2UKYXN5\
bmM6IG9wdGlvbmFsCm1ldGFkYXRhOgogIGRpc3BsYXlOYW1lOiBtaW5pcG9zCiAgZGVwZW5kZW5j\
aWVzOiBbXQpwbGFuczoKICAtIG5hbWU6IGRlZmF1bHQKICAgIGRlc2NyaXB0aW9uOiBUaGlzIGRl\
ZmF1bHQgcGxhbiBkZXBsb3lzIG1pbmlwb3MtYXBiCiAgICBmcmVlOiBUcnVlCiAgICBtZXRhZGF0\
YToge30KICAgIHBhcmFtZXRlcnM6CiAgICAgIC0gbmFtZTogeHB1YgogICAgICAgIHRpdGxlOiB4\
UHViIEtleQogICAgICAgIHR5cGU6IHN0cmluZwogICAgICAgIHJlcXVpcmVkOiB0cnVlCiAgICAg\
IC0gbmFtZTogZW1haWxfYWRkcmVzcwogICAgICAgIHRpdGxlOiBFbWFpbCBhZGRyZXNzIHRvIHNl\
bmQgaW52b2ljZSBsaXN0CiAgICAgICAgdHlwZTogc3RyaW5nCg=="



COPY playbooks /opt/apb/actions
COPY roles /opt/ansible/roles
RUN chmod -R g=u /opt/{ansible,apb}
USER apb
