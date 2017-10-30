.class final enum Lcom/facebook/orca/attachments/AudioPlayerView$SetAudioLengthTaskResult;
.super Ljava/lang/Enum;
.source "AudioPlayerView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/orca/attachments/AudioPlayerView$SetAudioLengthTaskResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/orca/attachments/AudioPlayerView$SetAudioLengthTaskResult;

.field public static final enum ERROR:Lcom/facebook/orca/attachments/AudioPlayerView$SetAudioLengthTaskResult;

.field public static final enum SUCCESS:Lcom/facebook/orca/attachments/AudioPlayerView$SetAudioLengthTaskResult;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 60
    new-instance v0, Lcom/facebook/orca/attachments/AudioPlayerView$SetAudioLengthTaskResult;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v2}, Lcom/facebook/orca/attachments/AudioPlayerView$SetAudioLengthTaskResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/orca/attachments/AudioPlayerView$SetAudioLengthTaskResult;->SUCCESS:Lcom/facebook/orca/attachments/AudioPlayerView$SetAudioLengthTaskResult;

    .line 61
    new-instance v0, Lcom/facebook/orca/attachments/AudioPlayerView$SetAudioLengthTaskResult;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v3}, Lcom/facebook/orca/attachments/AudioPlayerView$SetAudioLengthTaskResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/orca/attachments/AudioPlayerView$SetAudioLengthTaskResult;->ERROR:Lcom/facebook/orca/attachments/AudioPlayerView$SetAudioLengthTaskResult;

    .line 59
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/facebook/orca/attachments/AudioPlayerView$SetAudioLengthTaskResult;

    sget-object v1, Lcom/facebook/orca/attachments/AudioPlayerView$SetAudioLengthTaskResult;->SUCCESS:Lcom/facebook/orca/attachments/AudioPlayerView$SetAudioLengthTaskResult;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/orca/attachments/AudioPlayerView$SetAudioLengthTaskResult;->ERROR:Lcom/facebook/orca/attachments/AudioPlayerView$SetAudioLengthTaskResult;

    aput-object v1, v0, v3

    sput-object v0, Lcom/facebook/orca/attachments/AudioPlayerView$SetAudioLengthTaskResult;->$VALUES:[Lcom/facebook/orca/attachments/AudioPlayerView$SetAudioLengthTaskResult;

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
    .line 59
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/orca/attachments/AudioPlayerView$SetAudioLengthTaskResult;
    .locals 1
    .parameter

    .prologue
    .line 59
    const-class v0, Lcom/facebook/orca/attachments/AudioPlayerView$SetAudioLengthTaskResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/attachments/AudioPlayerView$SetAudioLengthTaskResult;

    return-object v0
.end method

.method public static values()[Lcom/facebook/orca/attachments/AudioPlayerView$SetAudioLengthTaskResult;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/facebook/orca/attachments/AudioPlayerView$SetAudioLengthTaskResult;->$VALUES:[Lcom/facebook/orca/attachments/AudioPlayerView$SetAudioLengthTaskResult;

    invoke-virtual {v0}, [Lcom/facebook/orca/attachments/AudioPlayerView$SetAudioLengthTaskResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/orca/attachments/AudioPlayerView$SetAudioLengthTaskResult;

    return-object v0
.end method
