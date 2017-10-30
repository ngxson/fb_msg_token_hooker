.class Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView$1;
.super Lcom/facebook/orca/audio/FetchCachedAudioUriTask$OnCompletedCallback;
.source "ThreadViewAudioAttachmentView.java"


# instance fields
.field final synthetic a:Lcom/facebook/orca/audio/AudioCacheKey;

.field final synthetic b:Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;


# direct methods
.method constructor <init>(Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;Lcom/facebook/orca/audio/AudioCacheKey;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 128
    iput-object p1, p0, Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView$1;->b:Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;

    iput-object p2, p0, Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView$1;->a:Lcom/facebook/orca/audio/AudioCacheKey;

    invoke-direct {p0}, Lcom/facebook/orca/audio/FetchCachedAudioUriTask$OnCompletedCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;)V
    .locals 3
    .parameter

    .prologue
    .line 132
    .line 133
    if-eqz p1, :cond_0

    .line 135
    invoke-static {}, Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;->a()Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView$1;->b:Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;

    invoke-static {v2}, Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;->a(Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;)Lcom/facebook/orca/threads/Message;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/orca/threads/Message;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " hit the audio cache: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView$1;->b:Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;

    invoke-static {v0, p1}, Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;->a(Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;Landroid/net/Uri;)Landroid/net/Uri;

    .line 137
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView$1;->b:Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;

    invoke-static {v0}, Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;->c(Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;)Lcom/facebook/orca/attachments/AudioPlayerView;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView$1;->b:Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;

    invoke-static {v1}, Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;->b(Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/attachments/AudioPlayerView;->setUri(Landroid/net/Uri;)V

    .line 145
    :goto_0
    return-void

    .line 142
    :cond_0
    invoke-static {}, Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;->a()Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Kick off a downloader for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView$1;->b:Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;

    invoke-static {v2}, Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;->d(Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView$1;->b:Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView$1;->a:Lcom/facebook/orca/audio/AudioCacheKey;

    invoke-static {v0, v1}, Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;->a(Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;Lcom/facebook/orca/audio/AudioCacheKey;)V

    goto :goto_0
.end method
