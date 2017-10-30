.class public Landroid_src/mms/pdu/RetrieveConf;
.super Landroid_src/mms/pdu/MultimediaMessagePdu;
.source "RetrieveConf.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid_src/mms/pdu/MultimediaMessagePdu;-><init>()V

    .line 36
    const/16 v0, 0x84

    invoke-virtual {p0, v0}, Landroid_src/mms/pdu/RetrieveConf;->a(I)V

    .line 37
    return-void
.end method

.method constructor <init>(Landroid_src/mms/pdu/PduHeaders;Landroid_src/mms/pdu/PduBody;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Landroid_src/mms/pdu/MultimediaMessagePdu;-><init>(Landroid_src/mms/pdu/PduHeaders;Landroid_src/mms/pdu/PduBody;)V

    .line 56
    return-void
.end method


# virtual methods
.method public a(Landroid_src/mms/pdu/EncodedStringValue;)V
    .locals 2
    .parameter

    .prologue
    .line 133
    iget-object v0, p0, Landroid_src/mms/pdu/RetrieveConf;->a:Landroid_src/mms/pdu/PduHeaders;

    const/16 v1, 0x89

    invoke-virtual {v0, p1, v1}, Landroid_src/mms/pdu/PduHeaders;->a(Landroid_src/mms/pdu/EncodedStringValue;I)V

    .line 134
    return-void
.end method

.method public b()[B
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Landroid_src/mms/pdu/RetrieveConf;->a:Landroid_src/mms/pdu/PduHeaders;

    const/16 v1, 0x84

    invoke-virtual {v0, v1}, Landroid_src/mms/pdu/PduHeaders;->b(I)[B

    move-result-object v0

    return-object v0
.end method

.method public c()[B
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Landroid_src/mms/pdu/RetrieveConf;->a:Landroid_src/mms/pdu/PduHeaders;

    const/16 v1, 0x8b

    invoke-virtual {v0, v1}, Landroid_src/mms/pdu/PduHeaders;->b(I)[B

    move-result-object v0

    return-object v0
.end method

.method public d()[B
    .locals 2

    .prologue
    .line 239
    iget-object v0, p0, Landroid_src/mms/pdu/RetrieveConf;->a:Landroid_src/mms/pdu/PduHeaders;

    const/16 v1, 0x98

    invoke-virtual {v0, v1}, Landroid_src/mms/pdu/PduHeaders;->b(I)[B

    move-result-object v0

    return-object v0
.end method

.method public h()Landroid_src/mms/pdu/EncodedStringValue;
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Landroid_src/mms/pdu/RetrieveConf;->a:Landroid_src/mms/pdu/PduHeaders;

    const/16 v1, 0x89

    invoke-virtual {v0, v1}, Landroid_src/mms/pdu/PduHeaders;->c(I)Landroid_src/mms/pdu/EncodedStringValue;

    move-result-object v0

    return-object v0
.end method
