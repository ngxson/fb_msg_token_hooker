.class final enum Lcom/facebook/orca/attachments/AudioRecorder$RecordResult;
.super Ljava/lang/Enum;
.source "AudioRecorder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/orca/attachments/AudioRecorder$RecordResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/orca/attachments/AudioRecorder$RecordResult;

.field public static final enum ERROR:Lcom/facebook/orca/attachments/AudioRecorder$RecordResult;

.field public static final enum INTERRUPTED:Lcom/facebook/orca/attachments/AudioRecorder$RecordResult;

.field public static final enum SUCCESS:Lcom/facebook/orca/attachments/AudioRecorder$RecordResult;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 39
    new-instance v0, Lcom/facebook/orca/attachments/AudioRecorder$RecordResult;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v2}, Lcom/facebook/orca/attachments/AudioRecorder$RecordResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/orca/attachments/AudioRecorder$RecordResult;->SUCCESS:Lcom/facebook/orca/attachments/AudioRecorder$RecordResult;

    .line 40
    new-instance v0, Lcom/facebook/orca/attachments/AudioRecorder$RecordResult;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v3}, Lcom/facebook/orca/attachments/AudioRecorder$RecordResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/orca/attachments/AudioRecorder$RecordResult;->ERROR:Lcom/facebook/orca/attachments/AudioRecorder$RecordResult;

    .line 41
    new-instance v0, Lcom/facebook/orca/attachments/AudioRecorder$RecordResult;

    const-string v1, "INTERRUPTED"

    invoke-direct {v0, v1, v4}, Lcom/facebook/orca/attachments/AudioRecorder$RecordResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/orca/attachments/AudioRecorder$RecordResult;->INTERRUPTED:Lcom/facebook/orca/attachments/AudioRecorder$RecordResult;

    .line 38
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/facebook/orca/attachments/AudioRecorder$RecordResult;

    sget-object v1, Lcom/facebook/orca/attachments/AudioRecorder$RecordResult;->SUCCESS:Lcom/facebook/orca/attachments/AudioRecorder$RecordResult;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/orca/attachments/AudioRecorder$RecordResult;->ERROR:Lcom/facebook/orca/attachments/AudioRecorder$RecordResult;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/orca/attachments/AudioRecorder$RecordResult;->INTERRUPTED:Lcom/facebook/orca/attachments/AudioRecorder$RecordResult;

    aput-object v1, v0, v4

    sput-object v0, Lcom/facebook/orca/attachments/AudioRecorder$RecordResult;->$VALUES:[Lcom/facebook/orca/attachments/AudioRecorder$RecordResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/orca/attachments/AudioRecorder$RecordResult;
    .locals 1
    .parameter

    .prologue
    .line 38
    const-class v0, Lcom/facebook/orca/attachments/AudioRecorder$RecordResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/attachments/AudioRecorder$RecordResult;

    return-object v0
.end method

.method public static values()[Lcom/facebook/orca/attachments/AudioRecorder$RecordResult;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/facebook/orca/attachments/AudioRecorder$RecordResult;->$VALUES:[Lcom/facebook/orca/attachments/AudioRecorder$RecordResult;

    invoke-virtual {v0}, [Lcom/facebook/orca/attachments/AudioRecorder$RecordResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/orca/attachments/AudioRecorder$RecordResult;

    return-object v0
.end method
