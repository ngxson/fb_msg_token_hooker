.class public Landroid_src/mms/pdu/SendReq;
.super Landroid_src/mms/pdu/MultimediaMessagePdu;
.source "SendReq.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 28
    invoke-direct {p0}, Landroid_src/mms/pdu/MultimediaMessagePdu;-><init>()V

    .line 31
    const/16 v0, 0x80

    :try_start_0
    invoke-virtual {p0, v0}, Landroid_src/mms/pdu/SendReq;->a(I)V

    .line 32
    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Landroid_src/mms/pdu/SendReq;->b(I)V

    .line 35
    const-string v0, "application/vnd.wap.multipart.related"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid_src/mms/pdu/SendReq;->a([B)V

    .line 36
    new-instance v0, Landroid_src/mms/pdu/EncodedStringValue;

    const-string v1, "insert-address-token"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {v0, v1}, Landroid_src/mms/pdu/EncodedStringValue;-><init>([B)V

    invoke-virtual {p0, v0}, Landroid_src/mms/pdu/SendReq;->a(Landroid_src/mms/pdu/EncodedStringValue;)V

    .line 37
    invoke-direct {p0}, Landroid_src/mms/pdu/SendReq;->c()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid_src/mms/pdu/SendReq;->c([B)V
    :try_end_0
    .catch Landroid_src/mms/InvalidHeaderValueException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    return-void

    .line 38
    :catch_0
    move-exception v0

    .line 40
    const-string v1, "SendReq"

    const-string v2, "Unexpected InvalidHeaderValueException."

    invoke-static {v1, v2, v0}, Lcom/facebook/orca/debug/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 41
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method constructor <init>(Landroid_src/mms/pdu/PduHeaders;Landroid_src/mms/pdu/PduBody;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Landroid_src/mms/pdu/MultimediaMessagePdu;-><init>(Landroid_src/mms/pdu/PduHeaders;Landroid_src/mms/pdu/PduBody;)V

    .line 89
    return-void
.end method

.method private c()[B
    .locals 3

    .prologue
    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "T"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 47
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a([B)V
    .locals 2
    .parameter

    .prologue
    .line 165
    iget-object v0, p0, Landroid_src/mms/pdu/SendReq;->a:Landroid_src/mms/pdu/PduHeaders;

    const/16 v1, 0x84

    invoke-virtual {v0, p1, v1}, Landroid_src/mms/pdu/PduHeaders;->a([BI)V

    .line 166
    return-void
.end method

.method public a([Landroid_src/mms/pdu/EncodedStringValue;)V
    .locals 2
    .parameter

    .prologue
    .line 275
    iget-object v0, p0, Landroid_src/mms/pdu/SendReq;->a:Landroid_src/mms/pdu/PduHeaders;

    const/16 v1, 0x97

    invoke-virtual {v0, p1, v1}, Landroid_src/mms/pdu/PduHeaders;->a([Landroid_src/mms/pdu/EncodedStringValue;I)V

    .line 276
    return-void
.end method

.method public b(J)V
    .locals 2
    .parameter

    .prologue
    .line 205
    iget-object v0, p0, Landroid_src/mms/pdu/SendReq;->a:Landroid_src/mms/pdu/PduHeaders;

    const/16 v1, 0x88

    invoke-virtual {v0, p1, p2, v1}, Landroid_src/mms/pdu/PduHeaders;->a(JI)V

    .line 206
    return-void
.end method

.method public b([B)V
    .locals 2
    .parameter

    .prologue
    .line 246
    iget-object v0, p0, Landroid_src/mms/pdu/SendReq;->a:Landroid_src/mms/pdu/PduHeaders;

    const/16 v1, 0x8a

    invoke-virtual {v0, p1, v1}, Landroid_src/mms/pdu/PduHeaders;->a([BI)V

    .line 247
    return-void
.end method

.method public b()[B
    .locals 2

    .prologue
    .line 284
    iget-object v0, p0, Landroid_src/mms/pdu/SendReq;->a:Landroid_src/mms/pdu/PduHeaders;

    const/16 v1, 0x98

    invoke-virtual {v0, v1}, Landroid_src/mms/pdu/PduHeaders;->b(I)[B

    move-result-object v0

    return-object v0
.end method

.method public c([B)V
    .locals 2
    .parameter

    .prologue
    .line 294
    iget-object v0, p0, Landroid_src/mms/pdu/SendReq;->a:Landroid_src/mms/pdu/PduHeaders;

    const/16 v1, 0x98

    invoke-virtual {v0, p1, v1}, Landroid_src/mms/pdu/PduHeaders;->a([BI)V

    .line 295
    return-void
.end method

.method public d(I)V
    .locals 2
    .parameter

    .prologue
    .line 184
    iget-object v0, p0, Landroid_src/mms/pdu/SendReq;->a:Landroid_src/mms/pdu/PduHeaders;

    const/16 v1, 0x86

    invoke-virtual {v0, p1, v1}, Landroid_src/mms/pdu/PduHeaders;->a(II)V

    .line 185
    return-void
.end method

.method public e(I)V
    .locals 2
    .parameter

    .prologue
    .line 265
    iget-object v0, p0, Landroid_src/mms/pdu/SendReq;->a:Landroid_src/mms/pdu/PduHeaders;

    const/16 v1, 0x90

    invoke-virtual {v0, p1, v1}, Landroid_src/mms/pdu/PduHeaders;->a(II)V

    .line 266
    return-void
.end method
