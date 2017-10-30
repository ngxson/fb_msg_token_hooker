.class public Landroid_src/mms/pdu/NotifyRespInd;
.super Landroid_src/mms/pdu/GenericPdu;
.source "NotifyRespInd.java"


# direct methods
.method public constructor <init>(I[BI)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct {p0}, Landroid_src/mms/pdu/GenericPdu;-><init>()V

    .line 40
    const/16 v0, 0x83

    invoke-virtual {p0, v0}, Landroid_src/mms/pdu/NotifyRespInd;->a(I)V

    .line 41
    invoke-virtual {p0, p1}, Landroid_src/mms/pdu/NotifyRespInd;->b(I)V

    .line 42
    invoke-virtual {p0, p2}, Landroid_src/mms/pdu/NotifyRespInd;->a([B)V

    .line 43
    invoke-virtual {p0, p3}, Landroid_src/mms/pdu/NotifyRespInd;->c(I)V

    .line 44
    return-void
.end method

.method constructor <init>(Landroid_src/mms/pdu/PduHeaders;)V
    .locals 0
    .parameter

    .prologue
    .line 52
    invoke-direct {p0, p1}, Landroid_src/mms/pdu/GenericPdu;-><init>(Landroid_src/mms/pdu/PduHeaders;)V

    .line 53
    return-void
.end method


# virtual methods
.method public a([B)V
    .locals 2
    .parameter

    .prologue
    .line 112
    iget-object v0, p0, Landroid_src/mms/pdu/NotifyRespInd;->a:Landroid_src/mms/pdu/PduHeaders;

    const/16 v1, 0x98

    invoke-virtual {v0, p1, v1}, Landroid_src/mms/pdu/PduHeaders;->a([BI)V

    .line 113
    return-void
.end method

.method public c(I)V
    .locals 2
    .parameter

    .prologue
    .line 83
    iget-object v0, p0, Landroid_src/mms/pdu/NotifyRespInd;->a:Landroid_src/mms/pdu/PduHeaders;

    const/16 v1, 0x95

    invoke-virtual {v0, p1, v1}, Landroid_src/mms/pdu/PduHeaders;->a(II)V

    .line 84
    return-void
.end method
