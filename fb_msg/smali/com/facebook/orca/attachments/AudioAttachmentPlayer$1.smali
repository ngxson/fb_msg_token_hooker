.class Lcom/facebook/orca/attachments/AudioAttachmentPlayer$1;
.super Ljava/lang/Object;
.source "AudioAttachmentPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field final synthetic a:Landroid/media/MediaPlayer$OnCompletionListener;

.field final synthetic b:Lcom/facebook/orca/attachments/AudioAttachmentPlayer;


# direct methods
.method constructor <init>(Lcom/facebook/orca/attachments/AudioAttachmentPlayer;Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer$1;->b:Lcom/facebook/orca/attachments/AudioAttachmentPlayer;

    iput-object p2, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer$1;->a:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 110
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer$1;->b:Lcom/facebook/orca/attachments/AudioAttachmentPlayer;

    invoke-static {v0}, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->a(Lcom/facebook/orca/attachments/AudioAttachmentPlayer;)Lcom/facebook/orca/common/util/AndroidThreadUtil;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/common/util/AndroidThreadUtil;->a()V

    .line 111
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer$1;->b:Lcom/facebook/orca/attachments/AudioAttachmentPlayer;

    invoke-static {v0}, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->b(Lcom/facebook/orca/attachments/AudioAttachmentPlayer;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 114
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer$1;->b:Lcom/facebook/orca/attachments/AudioAttachmentPlayer;

    invoke-static {v0}, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->c(Lcom/facebook/orca/attachments/AudioAttachmentPlayer;)Landroid/media/ToneGenerator;

    move-result-object v0

    if-nez v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer$1;->b:Lcom/facebook/orca/attachments/AudioAttachmentPlayer;

    new-instance v1, Landroid/media/ToneGenerator;

    const/4 v2, 0x5

    const/16 v3, 0x64

    invoke-direct {v1, v2, v3}, Landroid/media/ToneGenerator;-><init>(II)V

    invoke-static {v0, v1}, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->a(Lcom/facebook/orca/attachments/AudioAttachmentPlayer;Landroid/media/ToneGenerator;)Landroid/media/ToneGenerator;

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer$1;->b:Lcom/facebook/orca/attachments/AudioAttachmentPlayer;

    invoke-static {v0}, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->c(Lcom/facebook/orca/attachments/AudioAttachmentPlayer;)Landroid/media/ToneGenerator;

    move-result-object v0

    const/16 v1, 0x19

    invoke-virtual {v0, v1}, Landroid/media/ToneGenerator;->startTone(I)Z

    .line 119
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer$1;->a:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-interface {v0, p1}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    .line 120
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer$1;->b:Lcom/facebook/orca/attachments/AudioAttachmentPlayer;

    invoke-static {v0}, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->d(Lcom/facebook/orca/attachments/AudioAttachmentPlayer;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer$1;->b:Lcom/facebook/orca/attachments/AudioAttachmentPlayer;

    invoke-static {v0}, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->e(Lcom/facebook/orca/attachments/AudioAttachmentPlayer;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 121
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer$1;->b:Lcom/facebook/orca/attachments/AudioAttachmentPlayer;

    invoke-static {v0}, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->g(Lcom/facebook/orca/attachments/AudioAttachmentPlayer;)Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer$1;->b:Lcom/facebook/orca/attachments/AudioAttachmentPlayer;

    invoke-static {v1}, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->f(Lcom/facebook/orca/attachments/AudioAttachmentPlayer;)Lcom/facebook/orca/attachments/AudioAttachmentPlayer$FocusChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 122
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer$1;->b:Lcom/facebook/orca/attachments/AudioAttachmentPlayer;

    invoke-static {v0, v4}, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->a(Lcom/facebook/orca/attachments/AudioAttachmentPlayer;Z)Z

    .line 126
    :cond_2
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer$1;->b:Lcom/facebook/orca/attachments/AudioAttachmentPlayer;

    invoke-static {v0, v4}, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->b(Lcom/facebook/orca/attachments/AudioAttachmentPlayer;Z)Z

    .line 127
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer$1;->b:Lcom/facebook/orca/attachments/AudioAttachmentPlayer;

    invoke-static {v0}, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->h(Lcom/facebook/orca/attachments/AudioAttachmentPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 128
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer$1;->b:Lcom/facebook/orca/attachments/AudioAttachmentPlayer;

    invoke-static {v0}, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->h(Lcom/facebook/orca/attachments/AudioAttachmentPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 129
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer$1;->b:Lcom/facebook/orca/attachments/AudioAttachmentPlayer;

    iget-object v1, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer$1;->b:Lcom/facebook/orca/attachments/AudioAttachmentPlayer;

    invoke-static {v1, v5}, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->a(Lcom/facebook/orca/attachments/AudioAttachmentPlayer;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->a(Lcom/facebook/orca/attachments/AudioAttachmentPlayer;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 130
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer$1;->b:Lcom/facebook/orca/attachments/AudioAttachmentPlayer;

    invoke-static {v0, v5}, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->a(Lcom/facebook/orca/attachments/AudioAttachmentPlayer;Lcom/facebook/orca/threads/Message;)Lcom/facebook/orca/threads/Message;

    .line 131
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer$1;->b:Lcom/facebook/orca/attachments/AudioAttachmentPlayer;

    invoke-static {v0, v4}, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->c(Lcom/facebook/orca/attachments/AudioAttachmentPlayer;Z)Z

    .line 132
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer$1;->b:Lcom/facebook/orca/attachments/AudioAttachmentPlayer;

    invoke-static {v0, v5}, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->a(Lcom/facebook/orca/attachments/AudioAttachmentPlayer;Lcom/facebook/orca/attachments/AudioAttachmentPlayer$InitAudioTask;)Lcom/facebook/orca/attachments/AudioAttachmentPlayer$InitAudioTask;

    .line 133
    return-void
.end method
