.class public Lcom/facebook/orca/attachments/AudioAttachmentPlayer;
.super Ljava/lang/Object;
.source "AudioAttachmentPlayer.java"


# static fields
.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private b:Z

.field private final c:Landroid/content/Context;

.field private final d:Lcom/facebook/orca/common/util/AndroidThreadUtil;

.field private final e:Landroid/media/AudioManager;

.field private final f:Lcom/facebook/orca/attachments/AudioAttachmentPlayer$FocusChangeListener;

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Landroid/media/MediaPlayer;

.field private m:Landroid/media/ToneGenerator;

.field private n:Lcom/facebook/orca/threads/Message;

.field private o:Lcom/facebook/orca/attachments/AudioAttachmentPlayer$InitAudioTask;

.field private p:Landroid/media/MediaPlayer$OnCompletionListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;

    sput-object v0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->a:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/orca/common/util/AndroidThreadUtil;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->c:Landroid/content/Context;

    .line 62
    iput-object p2, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->d:Lcom/facebook/orca/common/util/AndroidThreadUtil;

    .line 63
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->e:Landroid/media/AudioManager;

    .line 64
    new-instance v0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer$FocusChangeListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/orca/attachments/AudioAttachmentPlayer$FocusChangeListener;-><init>(Lcom/facebook/orca/attachments/AudioAttachmentPlayer;Lcom/facebook/orca/attachments/AudioAttachmentPlayer$1;)V

    iput-object v0, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->f:Lcom/facebook/orca/attachments/AudioAttachmentPlayer$FocusChangeListener;

    .line 65
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/attachments/AudioAttachmentPlayer;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    iput-object p1, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->l:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic a(Lcom/facebook/orca/attachments/AudioAttachmentPlayer;Landroid/media/ToneGenerator;)Landroid/media/ToneGenerator;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    iput-object p1, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->m:Landroid/media/ToneGenerator;

    return-object p1
.end method

.method static synthetic a(Lcom/facebook/orca/attachments/AudioAttachmentPlayer;Lcom/facebook/orca/attachments/AudioAttachmentPlayer$InitAudioTask;)Lcom/facebook/orca/attachments/AudioAttachmentPlayer$InitAudioTask;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    iput-object p1, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->o:Lcom/facebook/orca/attachments/AudioAttachmentPlayer$InitAudioTask;

    return-object p1
.end method

.method static synthetic a(Lcom/facebook/orca/attachments/AudioAttachmentPlayer;)Lcom/facebook/orca/common/util/AndroidThreadUtil;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->d:Lcom/facebook/orca/common/util/AndroidThreadUtil;

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/orca/attachments/AudioAttachmentPlayer;Lcom/facebook/orca/threads/Message;)Lcom/facebook/orca/threads/Message;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    iput-object p1, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->n:Lcom/facebook/orca/threads/Message;

    return-object p1
.end method

.method static synthetic a(Lcom/facebook/orca/attachments/AudioAttachmentPlayer;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->g:Z

    return p1
.end method

.method static synthetic b(Lcom/facebook/orca/attachments/AudioAttachmentPlayer;)Z
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->j:Z

    return v0
.end method

.method static synthetic b(Lcom/facebook/orca/attachments/AudioAttachmentPlayer;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->h:Z

    return p1
.end method

.method static synthetic c(Lcom/facebook/orca/attachments/AudioAttachmentPlayer;)Landroid/media/ToneGenerator;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->m:Landroid/media/ToneGenerator;

    return-object v0
.end method

.method static synthetic c(Lcom/facebook/orca/attachments/AudioAttachmentPlayer;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->k:Z

    return p1
.end method

.method static synthetic d(Lcom/facebook/orca/attachments/AudioAttachmentPlayer;)Z
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->g:Z

    return v0
.end method

.method static synthetic d(Lcom/facebook/orca/attachments/AudioAttachmentPlayer;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->b:Z

    return p1
.end method

.method static synthetic e(Lcom/facebook/orca/attachments/AudioAttachmentPlayer;)Z
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->h:Z

    return v0
.end method

.method static synthetic f(Lcom/facebook/orca/attachments/AudioAttachmentPlayer;)Lcom/facebook/orca/attachments/AudioAttachmentPlayer$FocusChangeListener;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->f:Lcom/facebook/orca/attachments/AudioAttachmentPlayer$FocusChangeListener;

    return-object v0
.end method

.method static synthetic g(Lcom/facebook/orca/attachments/AudioAttachmentPlayer;)Landroid/media/AudioManager;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->e:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic h(Lcom/facebook/orca/attachments/AudioAttachmentPlayer;)Landroid/media/MediaPlayer;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->l:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic i()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->a:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic i(Lcom/facebook/orca/attachments/AudioAttachmentPlayer;)Z
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->i:Z

    return v0
.end method

.method static synthetic j(Lcom/facebook/orca/attachments/AudioAttachmentPlayer;)Z
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->b:Z

    return v0
.end method

.method static synthetic k(Lcom/facebook/orca/attachments/AudioAttachmentPlayer;)Landroid/media/MediaPlayer$OnCompletionListener;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->p:Landroid/media/MediaPlayer$OnCompletionListener;

    return-object v0
.end method

.method static synthetic l(Lcom/facebook/orca/attachments/AudioAttachmentPlayer;)Lcom/facebook/orca/attachments/AudioAttachmentPlayer$InitAudioTask;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->o:Lcom/facebook/orca/attachments/AudioAttachmentPlayer$InitAudioTask;

    return-object v0
.end method

.method static synthetic m(Lcom/facebook/orca/attachments/AudioAttachmentPlayer;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->c:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 145
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->d:Lcom/facebook/orca/common/util/AndroidThreadUtil;

    invoke-interface {v0}, Lcom/facebook/orca/common/util/AndroidThreadUtil;->a()V

    .line 146
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->o:Lcom/facebook/orca/attachments/AudioAttachmentPlayer$InitAudioTask;

    if-eqz v0, :cond_1

    .line 148
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->o:Lcom/facebook/orca/attachments/AudioAttachmentPlayer$InitAudioTask;

    invoke-virtual {v0, v2}, Lcom/facebook/orca/attachments/AudioAttachmentPlayer$InitAudioTask;->cancel(Z)Z

    .line 149
    invoke-virtual {p0}, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->c()V

    .line 150
    iget-boolean v0, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->i:Z

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->p:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->j:Z

    .line 153
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->p:Landroid/media/MediaPlayer$OnCompletionListener;

    iget-object v1, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->l:Landroid/media/MediaPlayer;

    invoke-interface {v0, v1}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    .line 155
    :cond_0
    iput-object v3, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->o:Lcom/facebook/orca/attachments/AudioAttachmentPlayer$InitAudioTask;

    .line 156
    iput-boolean v2, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->i:Z

    .line 158
    :cond_1
    iput-object v3, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->p:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 159
    iput-boolean v2, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->b:Z

    .line 160
    iput-boolean v2, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->i:Z

    .line 161
    return-void
.end method

.method public a(I)V
    .locals 1
    .parameter

    .prologue
    .line 201
    iget-boolean v0, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->i:Z

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 202
    iget-boolean v0, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->k:Z

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 203
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->l:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 204
    return-void
.end method

.method public a(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 2
    .parameter

    .prologue
    .line 105
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    new-instance v0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer$1;

    invoke-direct {v0, p0, p1}, Lcom/facebook/orca/attachments/AudioAttachmentPlayer$1;-><init>(Lcom/facebook/orca/attachments/AudioAttachmentPlayer;Landroid/media/MediaPlayer$OnCompletionListener;)V

    iput-object v0, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->p:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 135
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->l:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->p:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 136
    return-void
.end method

.method public a(Landroid/net/Uri;Lcom/facebook/orca/threads/Message;Ljava/lang/Runnable;Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 81
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->d:Lcom/facebook/orca/common/util/AndroidThreadUtil;

    invoke-interface {v0}, Lcom/facebook/orca/common/util/AndroidThreadUtil;->a()V

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->h:Z

    .line 88
    invoke-virtual {p0}, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->a()V

    .line 89
    iput-boolean v1, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->h:Z

    .line 90
    iput-boolean v1, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->b:Z

    .line 91
    iput-boolean v1, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->j:Z

    .line 92
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->l:Landroid/media/MediaPlayer;

    .line 93
    invoke-virtual {p0, p4}, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->a(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 94
    new-instance v0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer$InitAudioTask;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/facebook/orca/attachments/AudioAttachmentPlayer$InitAudioTask;-><init>(Lcom/facebook/orca/attachments/AudioAttachmentPlayer;Landroid/net/Uri;Lcom/facebook/orca/threads/Message;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->o:Lcom/facebook/orca/attachments/AudioAttachmentPlayer$InitAudioTask;

    .line 95
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->o:Lcom/facebook/orca/attachments/AudioAttachmentPlayer$InitAudioTask;

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/attachments/AudioAttachmentPlayer$InitAudioTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 96
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 207
    iget-boolean v0, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->k:Z

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 208
    iget-boolean v0, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->i:Z

    return v0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->o:Lcom/facebook/orca/attachments/AudioAttachmentPlayer$InitAudioTask;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    iget-boolean v0, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->k:Z

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 218
    iget-boolean v0, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->i:Z

    if-eqz v0, :cond_1

    .line 233
    :cond_0
    :goto_0
    return-void

    .line 221
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->i:Z

    .line 224
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->l:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->l:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->l:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 229
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->i:Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 230
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public d()V
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->o:Lcom/facebook/orca/attachments/AudioAttachmentPlayer$InitAudioTask;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->l:Landroid/media/MediaPlayer;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    iget-boolean v0, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->k:Z

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 242
    iget-boolean v0, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->i:Z

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 243
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->i:Z

    .line 244
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->l:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 245
    return-void
.end method

.method public e()I
    .locals 1

    .prologue
    .line 248
    iget-boolean v0, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->k:Z

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 249
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->l:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    return v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 253
    iget-boolean v0, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->k:Z

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 254
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->l:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    return v0
.end method

.method public g()Lcom/facebook/orca/threads/Message;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->n:Lcom/facebook/orca/threads/Message;

    return-object v0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->o:Lcom/facebook/orca/attachments/AudioAttachmentPlayer$InitAudioTask;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
