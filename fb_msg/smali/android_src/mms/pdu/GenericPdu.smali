.class public Landroid_src/mms/pdu/GenericPdu;
.super Ljava/lang/Object;
.source "GenericPdu.java"


# instance fields
.field a:Landroid_src/mms/pdu/PduHeaders;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Landroid_src/mms/pdu/GenericPdu;->a:Landroid_src/mms/pdu/PduHeaders;

    .line 32
    new-instance v0, Landroid_src/mms/pdu/PduHeaders;

    invoke-direct {v0}, Landroid_src/mms/pdu/PduHeaders;-><init>()V

    iput-object v0, p0, Landroid_src/mms/pdu/GenericPdu;->a:Landroid_src/mms/pdu/PduHeaders;

    .line 33
    return-void
.end method

.method constructor <init>(Landroid_src/mms/pdu/PduHeaders;)V
    .locals 1
    .parameter

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Landroid_src/mms/pdu/GenericPdu;->a:Landroid_src/mms/pdu/PduHeaders;

    .line 41
    iput-object p1, p0, Landroid_src/mms/pdu/GenericPdu;->a:Landroid_src/mms/pdu/PduHeaders;

    .line 42
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Landroid_src/mms/pdu/GenericPdu;->a:Landroid_src/mms/pdu/PduHeaders;

    const/16 v1, 0x8c

    invoke-virtual {v0, p1, v1}, Landroid_src/mms/pdu/PduHeaders;->a(II)V

    .line 71
    return-void
.end method

.method public a(Landroid_src/mms/pdu/EncodedStringValue;)V
    .locals 2
    .parameter

    .prologue
    .line 111
    iget-object v0, p0, Landroid_src/mms/pdu/GenericPdu;->a:Landroid_src/mms/pdu/PduHeaders;

    const/16 v1, 0x89

    invoke-virtual {v0, p1, v1}, Landroid_src/mms/pdu/PduHeaders;->a(Landroid_src/mms/pdu/EncodedStringValue;I)V

    .line 112
    return-void
.end method

.method public b(I)V
    .locals 2
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Landroid_src/mms/pdu/GenericPdu;->a:Landroid_src/mms/pdu/PduHeaders;

    const/16 v1, 0x8d

    invoke-virtual {v0, p1, v1}, Landroid_src/mms/pdu/PduHeaders;->a(II)V

    .line 91
    return-void
.end method

.method e()Landroid_src/mms/pdu/PduHeaders;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Landroid_src/mms/pdu/GenericPdu;->a:Landroid_src/mms/pdu/PduHeaders;

    return-object v0
.end method

.method public f()I
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Landroid_src/mms/pdu/GenericPdu;->a:Landroid_src/mms/pdu/PduHeaders;

    const/16 v1, 0x8c

    invoke-virtual {v0, v1}, Landroid_src/mms/pdu/PduHeaders;->a(I)I

    move-result v0

    return v0
.end method

.method public g()I
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Landroid_src/mms/pdu/GenericPdu;->a:Landroid_src/mms/pdu/PduHeaders;

    const/16 v1, 0x8d

    invoke-virtual {v0, v1}, Landroid_src/mms/pdu/PduHeaders;->a(I)I

    move-result v0

    return v0
.end method

.method public h()Landroid_src/mms/pdu/EncodedStringValue;
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Landroid_src/mms/pdu/GenericPdu;->a:Landroid_src/mms/pdu/PduHeaders;

    const/16 v1, 0x89

    invoke-virtual {v0, v1}, Landroid_src/mms/pdu/PduHeaders;->c(I)Landroid_src/mms/pdu/EncodedStringValue;

    move-result-object v0

    return-object v0
.end method
