.class Lcom/facebook/orca/attachments/AudioPlayerView$3;
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
    .line 109
    iput-object p1, p0, Lcom/facebook/orca/attachments/AudioPlayerView$3;->a:Lcom/facebook/orca/attachments/AudioPlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioPlayerView$3;->a:Lcom/facebook/orca/attachments/AudioPlayerView;

    invoke-static {v0}, Lcom/facebook/orca/attachments/AudioPlayerView;->e(Lcom/facebook/orca/attachments/AudioPlayerView;)V

    .line 116
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioPlayerView$3;->a:Lcom/facebook/orca/attachments/AudioPlayerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/orca/attachments/AudioPlayerView;->setClickable(Z)V

    .line 117
    return-void
.end method
