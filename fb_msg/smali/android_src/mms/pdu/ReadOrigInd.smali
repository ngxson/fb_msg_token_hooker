.class public Landroid_src/mms/pdu/ReadOrigInd;
.super Landroid_src/mms/pdu/GenericPdu;
.source "ReadOrigInd.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid_src/mms/pdu/GenericPdu;-><init>()V

    .line 33
    const/16 v0, 0x88

    invoke-virtual {p0, v0}, Landroid_src/mms/pdu/ReadOrigInd;->a(I)V

    .line 34
    return-void
.end method

.method constructor <init>(Landroid_src/mms/pdu/PduHeaders;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid_src/mms/pdu/GenericPdu;-><init>(Landroid_src/mms/pdu/PduHeaders;)V

    .line 43
    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Landroid_src/mms/pdu/ReadOrigInd;->a:Landroid_src/mms/pdu/PduHeaders;

    const/16 v1, 0x85

    invoke-virtual {v0, v1}, Landroid_src/mms/pdu/PduHeaders;->e(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(Landroid_src/mms/pdu/EncodedStringValue;)V
    .locals 2
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Landroid_src/mms/pdu/ReadOrigInd;->a:Landroid_src/mms/pdu/PduHeaders;

    const/16 v1, 0x89

    invoke-virtual {v0, p1, v1}, Landroid_src/mms/pdu/PduHeaders;->a(Landroid_src/mms/pdu/EncodedStringValue;I)V

    .line 82
    return-void
.end method

.method public b()[B
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Landroid_src/mms/pdu/ReadOrigInd;->a:Landroid_src/mms/pdu/PduHeaders;

    const/16 v1, 0x8b

    invoke-virtual {v0, v1}, Landroid_src/mms/pdu/PduHeaders;->b(I)[B

    move-result-object v0

    return-object v0
.end method

.method public c()I
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Landroid_src/mms/pdu/ReadOrigInd;->a:Landroid_src/mms/pdu/PduHeaders;

    const/16 v1, 0x9b

    invoke-virtual {v0, v1}, Landroid_src/mms/pdu/PduHeaders;->a(I)I

    move-result v0

    return v0
.end method

.method public d()[Landroid_src/mms/pdu/EncodedStringValue;
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Landroid_src/mms/pdu/ReadOrigInd;->a:Landroid_src/mms/pdu/PduHeaders;

    const/16 v1, 0x97

    invoke-virtual {v0, v1}, Landroid_src/mms/pdu/PduHeaders;->d(I)[Landroid_src/mms/pdu/EncodedStringValue;

    move-result-object v0

    return-object v0
.end method

.method public h()Landroid_src/mms/pdu/EncodedStringValue;
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Landroid_src/mms/pdu/ReadOrigInd;->a:Landroid_src/mms/pdu/PduHeaders;

    const/16 v1, 0x89

    invoke-virtual {v0, v1}, Landroid_src/mms/pdu/PduHeaders;->c(I)Landroid_src/mms/pdu/EncodedStringValue;

    move-result-object v0

    return-object v0
.end method
