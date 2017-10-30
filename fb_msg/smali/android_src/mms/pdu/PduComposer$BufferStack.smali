.class Landroid_src/mms/pdu/PduComposer$BufferStack;
.super Ljava/lang/Object;
.source "PduComposer.java"


# instance fields
.field a:I

.field final synthetic b:Landroid_src/mms/pdu/PduComposer;

.field private c:Landroid_src/mms/pdu/PduComposer$LengthRecordNode;

.field private d:Landroid_src/mms/pdu/PduComposer$LengthRecordNode;


# direct methods
.method private constructor <init>(Landroid_src/mms/pdu/PduComposer;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1056
    iput-object p1, p0, Landroid_src/mms/pdu/PduComposer$BufferStack;->b:Landroid_src/mms/pdu/PduComposer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1057
    iput-object v0, p0, Landroid_src/mms/pdu/PduComposer$BufferStack;->c:Landroid_src/mms/pdu/PduComposer$LengthRecordNode;

    .line 1058
    iput-object v0, p0, Landroid_src/mms/pdu/PduComposer$BufferStack;->d:Landroid_src/mms/pdu/PduComposer$LengthRecordNode;

    .line 1060
    const/4 v0, 0x0

    iput v0, p0, Landroid_src/mms/pdu/PduComposer$BufferStack;->a:I

    return-void
.end method

.method synthetic constructor <init>(Landroid_src/mms/pdu/PduComposer;Landroid_src/mms/pdu/PduComposer$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1056
    invoke-direct {p0, p1}, Landroid_src/mms/pdu/PduComposer$BufferStack;-><init>(Landroid_src/mms/pdu/PduComposer;)V

    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    .prologue
    .line 1069
    iget-object v0, p0, Landroid_src/mms/pdu/PduComposer$BufferStack;->d:Landroid_src/mms/pdu/PduComposer$LengthRecordNode;

    if-eqz v0, :cond_0

    .line 1070
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "BUG: Invalid newbuf() before copy()"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1073
    :cond_0
    new-instance v0, Landroid_src/mms/pdu/PduComposer$LengthRecordNode;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid_src/mms/pdu/PduComposer$LengthRecordNode;-><init>(Landroid_src/mms/pdu/PduComposer$1;)V

    .line 1075
    iget-object v1, p0, Landroid_src/mms/pdu/PduComposer$BufferStack;->b:Landroid_src/mms/pdu/PduComposer;

    iget-object v1, v1, Landroid_src/mms/pdu/PduComposer;->a:Ljava/io/ByteArrayOutputStream;

    iput-object v1, v0, Landroid_src/mms/pdu/PduComposer$LengthRecordNode;->a:Ljava/io/ByteArrayOutputStream;

    .line 1076
    iget-object v1, p0, Landroid_src/mms/pdu/PduComposer$BufferStack;->b:Landroid_src/mms/pdu/PduComposer;

    iget v1, v1, Landroid_src/mms/pdu/PduComposer;->b:I

    iput v1, v0, Landroid_src/mms/pdu/PduComposer$LengthRecordNode;->b:I

    .line 1078
    iget-object v1, p0, Landroid_src/mms/pdu/PduComposer$BufferStack;->c:Landroid_src/mms/pdu/PduComposer$LengthRecordNode;

    iput-object v1, v0, Landroid_src/mms/pdu/PduComposer$LengthRecordNode;->c:Landroid_src/mms/pdu/PduComposer$LengthRecordNode;

    .line 1079
    iput-object v0, p0, Landroid_src/mms/pdu/PduComposer$BufferStack;->c:Landroid_src/mms/pdu/PduComposer$LengthRecordNode;

    .line 1081
    iget v0, p0, Landroid_src/mms/pdu/PduComposer$BufferStack;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid_src/mms/pdu/PduComposer$BufferStack;->a:I

    .line 1083
    iget-object v0, p0, Landroid_src/mms/pdu/PduComposer$BufferStack;->b:Landroid_src/mms/pdu/PduComposer;

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v1, v0, Landroid_src/mms/pdu/PduComposer;->a:Ljava/io/ByteArrayOutputStream;

    .line 1084
    iget-object v0, p0, Landroid_src/mms/pdu/PduComposer$BufferStack;->b:Landroid_src/mms/pdu/PduComposer;

    const/4 v1, 0x0

    iput v1, v0, Landroid_src/mms/pdu/PduComposer;->b:I

    .line 1085
    return-void
.end method

.method b()V
    .locals 4

    .prologue
    .line 1091
    iget-object v0, p0, Landroid_src/mms/pdu/PduComposer$BufferStack;->b:Landroid_src/mms/pdu/PduComposer;

    iget-object v0, v0, Landroid_src/mms/pdu/PduComposer;->a:Ljava/io/ByteArrayOutputStream;

    .line 1092
    iget-object v1, p0, Landroid_src/mms/pdu/PduComposer$BufferStack;->b:Landroid_src/mms/pdu/PduComposer;

    iget v1, v1, Landroid_src/mms/pdu/PduComposer;->b:I

    .line 1094
    iget-object v2, p0, Landroid_src/mms/pdu/PduComposer$BufferStack;->b:Landroid_src/mms/pdu/PduComposer;

    iget-object v3, p0, Landroid_src/mms/pdu/PduComposer$BufferStack;->c:Landroid_src/mms/pdu/PduComposer$LengthRecordNode;

    iget-object v3, v3, Landroid_src/mms/pdu/PduComposer$LengthRecordNode;->a:Ljava/io/ByteArrayOutputStream;

    iput-object v3, v2, Landroid_src/mms/pdu/PduComposer;->a:Ljava/io/ByteArrayOutputStream;

    .line 1095
    iget-object v2, p0, Landroid_src/mms/pdu/PduComposer$BufferStack;->b:Landroid_src/mms/pdu/PduComposer;

    iget-object v3, p0, Landroid_src/mms/pdu/PduComposer$BufferStack;->c:Landroid_src/mms/pdu/PduComposer$LengthRecordNode;

    iget v3, v3, Landroid_src/mms/pdu/PduComposer$LengthRecordNode;->b:I

    iput v3, v2, Landroid_src/mms/pdu/PduComposer;->b:I

    .line 1097
    iget-object v2, p0, Landroid_src/mms/pdu/PduComposer$BufferStack;->c:Landroid_src/mms/pdu/PduComposer$LengthRecordNode;

    iput-object v2, p0, Landroid_src/mms/pdu/PduComposer$BufferStack;->d:Landroid_src/mms/pdu/PduComposer$LengthRecordNode;

    .line 1100
    iget-object v2, p0, Landroid_src/mms/pdu/PduComposer$BufferStack;->c:Landroid_src/mms/pdu/PduComposer$LengthRecordNode;

    iget-object v2, v2, Landroid_src/mms/pdu/PduComposer$LengthRecordNode;->c:Landroid_src/mms/pdu/PduComposer$LengthRecordNode;

    iput-object v2, p0, Landroid_src/mms/pdu/PduComposer$BufferStack;->c:Landroid_src/mms/pdu/PduComposer$LengthRecordNode;

    .line 1101
    iget v2, p0, Landroid_src/mms/pdu/PduComposer$BufferStack;->a:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid_src/mms/pdu/PduComposer$BufferStack;->a:I

    .line 1103
    iget-object v2, p0, Landroid_src/mms/pdu/PduComposer$BufferStack;->d:Landroid_src/mms/pdu/PduComposer$LengthRecordNode;

    iput-object v0, v2, Landroid_src/mms/pdu/PduComposer$LengthRecordNode;->a:Ljava/io/ByteArrayOutputStream;

    .line 1104
    iget-object v0, p0, Landroid_src/mms/pdu/PduComposer$BufferStack;->d:Landroid_src/mms/pdu/PduComposer$LengthRecordNode;

    iput v1, v0, Landroid_src/mms/pdu/PduComposer$LengthRecordNode;->b:I

    .line 1105
    return-void
.end method

.method c()V
    .locals 4

    .prologue
    .line 1111
    iget-object v0, p0, Landroid_src/mms/pdu/PduComposer$BufferStack;->b:Landroid_src/mms/pdu/PduComposer;

    iget-object v1, p0, Landroid_src/mms/pdu/PduComposer$BufferStack;->d:Landroid_src/mms/pdu/PduComposer$LengthRecordNode;

    iget-object v1, v1, Landroid_src/mms/pdu/PduComposer$LengthRecordNode;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Landroid_src/mms/pdu/PduComposer$BufferStack;->d:Landroid_src/mms/pdu/PduComposer$LengthRecordNode;

    iget v3, v3, Landroid_src/mms/pdu/PduComposer$LengthRecordNode;->b:I

    invoke-virtual {v0, v1, v2, v3}, Landroid_src/mms/pdu/PduComposer;->a([BII)V

    .line 1114
    const/4 v0, 0x0

    iput-object v0, p0, Landroid_src/mms/pdu/PduComposer$BufferStack;->d:Landroid_src/mms/pdu/PduComposer$LengthRecordNode;

    .line 1115
    return-void
.end method

.method d()Landroid_src/mms/pdu/PduComposer$PositionMarker;
    .locals 3

    .prologue
    .line 1121
    new-instance v0, Landroid_src/mms/pdu/PduComposer$PositionMarker;

    iget-object v1, p0, Landroid_src/mms/pdu/PduComposer$BufferStack;->b:Landroid_src/mms/pdu/PduComposer;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid_src/mms/pdu/PduComposer$PositionMarker;-><init>(Landroid_src/mms/pdu/PduComposer;Landroid_src/mms/pdu/PduComposer$1;)V

    .line 1123
    iget-object v1, p0, Landroid_src/mms/pdu/PduComposer$BufferStack;->b:Landroid_src/mms/pdu/PduComposer;

    iget v1, v1, Landroid_src/mms/pdu/PduComposer;->b:I

    invoke-static {v0, v1}, Landroid_src/mms/pdu/PduComposer$PositionMarker;->a(Landroid_src/mms/pdu/PduComposer$PositionMarker;I)I

    .line 1124
    iget v1, p0, Landroid_src/mms/pdu/PduComposer$BufferStack;->a:I

    invoke-static {v0, v1}, Landroid_src/mms/pdu/PduComposer$PositionMarker;->b(Landroid_src/mms/pdu/PduComposer$PositionMarker;I)I

    .line 1126
    return-object v0
.end method
