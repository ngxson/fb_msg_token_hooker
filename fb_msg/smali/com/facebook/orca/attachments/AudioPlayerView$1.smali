.class Lcom/facebook/orca/attachments/AudioPlayerView$1;
.super Ljava/lang/Object;
.source "AudioPlayerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/facebook/orca/attachments/AudioPlayerView;


# direct methods
.method constructor <init>(Lcom/facebook/orca/attachments/AudioPlayerView;)V
    .locals 0
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/facebook/orca/attachments/AudioPlayerView$1;->a:Lcom/facebook/orca/attachments/AudioPlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 95
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioPlayerView$1;->a:Lcom/facebook/orca/attachments/AudioPlayerView;

    invoke-static {v0}, Lcom/facebook/orca/attachments/AudioPlayerView;->b(Lcom/facebook/orca/attachments/AudioPlayerView;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/orca/attachments/AudioPlayerView$1;->a:Lcom/facebook/orca/attachments/AudioPlayerView;

    invoke-static {v1}, Lcom/facebook/orca/attachments/AudioPlayerView;->a(Lcom/facebook/orca/attachments/AudioPlayerView;)Lcom/facebook/orca/attachments/AudioAttachmentPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->e()I

    move-result v1

    mul-int/lit8 v1, v1, 0x64

    iget-object v2, p0, Lcom/facebook/orca/attachments/AudioPlayerView$1;->a:Lcom/facebook/orca/attachments/AudioPlayerView;

    invoke-static {v2}, Lcom/facebook/orca/attachments/AudioPlayerView;->a(Lcom/facebook/orca/attachments/AudioPlayerView;)Lcom/facebook/orca/attachments/AudioAttachmentPlayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->f()I

    move-result v2

    div-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 96
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioPlayerView$1;->a:Lcom/facebook/orca/attachments/AudioPlayerView;

    invoke-static {v0}, Lcom/facebook/orca/attachments/AudioPlayerView;->c(Lcom/facebook/orca/attachments/AudioPlayerView;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x19

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 97
    return-void
.end method
