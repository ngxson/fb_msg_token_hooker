.class Landroid_src/mms/pdu/PduComposer$LengthRecordNode;
.super Ljava/lang/Object;
.source "PduComposer.java"


# instance fields
.field a:Ljava/io/ByteArrayOutputStream;

.field public b:I

.field public c:Landroid_src/mms/pdu/PduComposer$LengthRecordNode;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1025
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1026
    iput-object v1, p0, Landroid_src/mms/pdu/PduComposer$LengthRecordNode;->a:Ljava/io/ByteArrayOutputStream;

    .line 1027
    const/4 v0, 0x0

    iput v0, p0, Landroid_src/mms/pdu/PduComposer$LengthRecordNode;->b:I

    .line 1029
    iput-object v1, p0, Landroid_src/mms/pdu/PduComposer$LengthRecordNode;->c:Landroid_src/mms/pdu/PduComposer$LengthRecordNode;

    return-void
.end method

.method synthetic constructor <init>(Landroid_src/mms/pdu/PduComposer$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1025
    invoke-direct {p0}, Landroid_src/mms/pdu/PduComposer$LengthRecordNode;-><init>()V

    return-void
.end method
