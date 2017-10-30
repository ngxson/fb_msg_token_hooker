.class Lcom/facebook/orca/attachments/AudioPlayerView$2;
.super Ljava/lang/Object;
.source "AudioPlayerView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field final synthetic a:Lcom/facebook/orca/attachments/AudioPlayerView;


# direct methods
.method constructor <init>(Lcom/facebook/orca/attachments/AudioPlayerView;)V
    .locals 0
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/facebook/orca/attachments/AudioPlayerView$2;->a:Lcom/facebook/orca/attachments/AudioPlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter

    .prologue
    .line 103
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioPlayerView$2;->a:Lcom/facebook/orca/attachments/AudioPlayerView;

    invoke-static {v0}, Lcom/facebook/orca/attachments/AudioPlayerView;->d(Lcom/facebook/orca/attachments/AudioPlayerView;)V

    .line 104
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioPlayerView$2;->a:Lcom/facebook/orca/attachments/AudioPlayerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/attachments/AudioPlayerView;->setClickable(Z)V

    .line 105
    return-void
.end method
