.class public Landroid_src/mms/pdu/AcknowledgeInd;
.super Landroid_src/mms/pdu/GenericPdu;
.source "AcknowledgeInd.java"


# direct methods
.method public constructor <init>(I[B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-direct {p0}, Landroid_src/mms/pdu/GenericPdu;-><init>()V

    .line 38
    const/16 v0, 0x85

    invoke-virtual {p0, v0}, Landroid_src/mms/pdu/AcknowledgeInd;->a(I)V

    .line 39
    invoke-virtual {p0, p1}, Landroid_src/mms/pdu/AcknowledgeInd;->b(I)V

    .line 40
    invoke-virtual {p0, p2}, Landroid_src/mms/pdu/AcknowledgeInd;->a([B)V

    .line 41
    return-void
.end method

.method constructor <init>(Landroid_src/mms/pdu/PduHeaders;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    invoke-direct {p0, p1}, Landroid_src/mms/pdu/GenericPdu;-><init>(Landroid_src/mms/pdu/PduHeaders;)V

    .line 50
    return-void
.end method


# virtual methods
.method public a([B)V
    .locals 2
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Landroid_src/mms/pdu/AcknowledgeInd;->a:Landroid_src/mms/pdu/PduHeaders;

    const/16 v1, 0x98

    invoke-virtual {v0, p1, v1}, Landroid_src/mms/pdu/PduHeaders;->a([BI)V

    .line 88
    return-void
.end method
