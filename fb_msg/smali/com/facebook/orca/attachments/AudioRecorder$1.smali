.class Lcom/facebook/orca/attachments/AudioRecorder$1;
.super Ljava/lang/Object;
.source "AudioRecorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/facebook/orca/attachments/AudioRecorder;


# direct methods
.method constructor <init>(Lcom/facebook/orca/attachments/AudioRecorder;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/facebook/orca/attachments/AudioRecorder$1;->b:Lcom/facebook/orca/attachments/AudioRecorder;

    iput-object p2, p0, Lcom/facebook/orca/attachments/AudioRecorder$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 70
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioRecorder$1;->b:Lcom/facebook/orca/attachments/AudioRecorder;

    invoke-static {v0}, Lcom/facebook/orca/attachments/AudioRecorder;->b(Lcom/facebook/orca/attachments/AudioRecorder;)Lcom/facebook/orca/attachments/AudioRecorder$RecordingCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/orca/attachments/AudioRecorder$1;->b:Lcom/facebook/orca/attachments/AudioRecorder;

    invoke-static {v1}, Lcom/facebook/orca/attachments/AudioRecorder;->a(Lcom/facebook/orca/attachments/AudioRecorder;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/facebook/orca/attachments/AudioRecorder$RecordingCallback;->a(Landroid/net/Uri;Z)V

    .line 71
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioRecorder$1;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/facebook/orca/attachments/AudioRecorder$1;->a:Landroid/content/Context;

    sget v2, Lcom/facebook/R$string;->audio_recorder_maximum_length_notification:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 75
    return-void
.end method
