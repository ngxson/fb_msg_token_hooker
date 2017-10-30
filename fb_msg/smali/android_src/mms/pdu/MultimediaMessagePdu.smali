.class public Landroid_src/mms/pdu/MultimediaMessagePdu;
.super Landroid_src/mms/pdu/GenericPdu;
.source "MultimediaMessagePdu.java"


# instance fields
.field private b:Landroid_src/mms/pdu/PduBody;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid_src/mms/pdu/GenericPdu;-><init>()V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid_src/mms/pdu/PduHeaders;Landroid_src/mms/pdu/PduBody;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-direct {p0, p1}, Landroid_src/mms/pdu/GenericPdu;-><init>(Landroid_src/mms/pdu/PduHeaders;)V

    .line 46
    iput-object p2, p0, Landroid_src/mms/pdu/MultimediaMessagePdu;->b:Landroid_src/mms/pdu/PduBody;

    .line 47
    return-void
.end method


# virtual methods
.method public a()Landroid_src/mms/pdu/PduBody;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Landroid_src/mms/pdu/MultimediaMessagePdu;->b:Landroid_src/mms/pdu/PduBody;

    return-object v0
.end method

.method public a(J)V
    .locals 2
    .parameter

    .prologue
    .line 148
    iget-object v0, p0, Landroid_src/mms/pdu/MultimediaMessagePdu;->a:Landroid_src/mms/pdu/PduHeaders;

    const/16 v1, 0x85

    invoke-virtual {v0, p1, p2, v1}, Landroid_src/mms/pdu/PduHeaders;->a(JI)V

    .line 149
    return-void
.end method

.method public a(Landroid_src/mms/pdu/PduBody;)V
    .locals 0
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Landroid_src/mms/pdu/MultimediaMessagePdu;->b:Landroid_src/mms/pdu/PduBody;

    .line 74
    return-void
.end method

.method public c(I)V
    .locals 2
    .parameter

    .prologue
    .line 130
    iget-object v0, p0, Landroid_src/mms/pdu/MultimediaMessagePdu;->a:Landroid_src/mms/pdu/PduHeaders;

    const/16 v1, 0x8f

    invoke-virtual {v0, p1, v1}, Landroid_src/mms/pdu/PduHeaders;->a(II)V

    .line 131
    return-void
.end method
