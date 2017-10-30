.class public Landroid_src/mms/pdu/NotificationInd;
.super Landroid_src/mms/pdu/GenericPdu;
.source "NotificationInd.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid_src/mms/pdu/GenericPdu;-><init>()V

    .line 37
    const/16 v0, 0x82

    invoke-virtual {p0, v0}, Landroid_src/mms/pdu/NotificationInd;->a(I)V

    .line 38
    return-void
.end method

.method constructor <init>(Landroid_src/mms/pdu/PduHeaders;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    invoke-direct {p0, p1}, Landroid_src/mms/pdu/GenericPdu;-><init>(Landroid_src/mms/pdu/PduHeaders;)V

    .line 47
    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Landroid_src/mms/pdu/NotificationInd;->a:Landroid_src/mms/pdu/PduHeaders;

    const/16 v1, 0xba

    invoke-virtual {v0, v1}, Landroid_src/mms/pdu/PduHeaders;->a(I)I

    move-result v0

    return v0
.end method

.method public a(Landroid_src/mms/pdu/EncodedStringValue;)V
    .locals 2
    .parameter

    .prologue
    .line 132
    iget-object v0, p0, Landroid_src/mms/pdu/NotificationInd;->a:Landroid_src/mms/pdu/PduHeaders;

    const/16 v1, 0x89

    invoke-virtual {v0, p1, v1}, Landroid_src/mms/pdu/PduHeaders;->a(Landroid_src/mms/pdu/EncodedStringValue;I)V

    .line 133
    return-void
.end method

.method public a([B)V
    .locals 2
    .parameter

    .prologue
    .line 88
    iget-object v0, p0, Landroid_src/mms/pdu/NotificationInd;->a:Landroid_src/mms/pdu/PduHeaders;

    const/16 v1, 0x83

    invoke-virtual {v0, p1, v1}, Landroid_src/mms/pdu/PduHeaders;->a([BI)V

    .line 89
    return-void
.end method

.method public b()[B
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Landroid_src/mms/pdu/NotificationInd;->a:Landroid_src/mms/pdu/PduHeaders;

    const/16 v1, 0x83

    invoke-virtual {v0, v1}, Landroid_src/mms/pdu/PduHeaders;->b(I)[B

    move-result-object v0

    return-object v0
.end method

.method public c()J
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Landroid_src/mms/pdu/NotificationInd;->a:Landroid_src/mms/pdu/PduHeaders;

    const/16 v1, 0x88

    invoke-virtual {v0, v1}, Landroid_src/mms/pdu/PduHeaders;->e(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public d()[B
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Landroid_src/mms/pdu/NotificationInd;->a:Landroid_src/mms/pdu/PduHeaders;

    const/16 v1, 0x8a

    invoke-virtual {v0, v1}, Landroid_src/mms/pdu/PduHeaders;->b(I)[B

    move-result-object v0

    return-object v0
.end method

.method public h()Landroid_src/mms/pdu/EncodedStringValue;
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Landroid_src/mms/pdu/NotificationInd;->a:Landroid_src/mms/pdu/PduHeaders;

    const/16 v1, 0x89

    invoke-virtual {v0, v1}, Landroid_src/mms/pdu/PduHeaders;->c(I)Landroid_src/mms/pdu/EncodedStringValue;

    move-result-object v0

    return-object v0
.end method

.method public i()J
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Landroid_src/mms/pdu/NotificationInd;->a:Landroid_src/mms/pdu/PduHeaders;

    const/16 v1, 0x8e

    invoke-virtual {v0, v1}, Landroid_src/mms/pdu/PduHeaders;->e(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public j()Landroid_src/mms/pdu/EncodedStringValue;
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Landroid_src/mms/pdu/NotificationInd;->a:Landroid_src/mms/pdu/PduHeaders;

    const/16 v1, 0x96

    invoke-virtual {v0, v1}, Landroid_src/mms/pdu/PduHeaders;->c(I)Landroid_src/mms/pdu/EncodedStringValue;

    move-result-object v0

    return-object v0
.end method

.method public k()[B
    .locals 2

    .prologue
    .line 203
    iget-object v0, p0, Landroid_src/mms/pdu/NotificationInd;->a:Landroid_src/mms/pdu/PduHeaders;

    const/16 v1, 0x98

    invoke-virtual {v0, v1}, Landroid_src/mms/pdu/PduHeaders;->b(I)[B

    move-result-object v0

    return-object v0
.end method

.method public l()I
    .locals 2

    .prologue
    .line 223
    iget-object v0, p0, Landroid_src/mms/pdu/NotificationInd;->a:Landroid_src/mms/pdu/PduHeaders;

    const/16 v1, 0x86

    invoke-virtual {v0, v1}, Landroid_src/mms/pdu/PduHeaders;->a(I)I

    move-result v0

    return v0
.end method
