.class public Lcom/facebook/orca/attachments/AudioRecorder;
.super Ljava/lang/Object;
.source "AudioRecorder.java"


# instance fields
.field private final a:Landroid/media/AudioManager;

.field private final b:Landroid/media/ToneGenerator;

.field private final c:Lcom/facebook/orca/attachments/MediaAttachmentFactory;

.field private final d:Landroid/content/Context;

.field private final e:Landroid/os/Handler;

.field private final f:Lcom/facebook/orca/attachments/AudioRecorder$FocusChangeListener;

.field private final g:Ljava/lang/Runnable;

.field private final h:Lcom/facebook/orca/common/util/AndroidThreadUtil;

.field private i:Lcom/facebook/orca/attachments/AudioRecorder$PrepareAndStartRecorderTask;

.field private j:Lcom/facebook/orca/attachments/AudioRecorder$RecordingCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/orca/attachments/MediaAttachmentFactory;Lcom/facebook/orca/common/util/AndroidThreadUtil;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/facebook/orca/attachments/AudioRecorder;->d:Landroid/content/Context;

    .line 61
    iput-object p2, p0, Lcom/facebook/orca/attachments/AudioRecorder;->c:Lcom/facebook/orca/attachments/MediaAttachmentFactory;

    .line 62
    iput-object p3, p0, Lcom/facebook/orca/attachments/AudioRecorder;->h:Lcom/facebook/orca/common/util/AndroidThreadUtil;

    .line 63
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/facebook/orca/attachments/AudioRecorder;->a:Landroid/media/AudioManager;

    .line 64
    new-instance v0, Landroid/media/ToneGenerator;

    const/4 v1, 0x5

    const/16 v2, 0x64

    invoke-direct {v0, v1, v2}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v0, p0, Lcom/facebook/orca/attachments/AudioRecorder;->b:Landroid/media/ToneGenerator;

    .line 65
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/facebook/orca/attachments/AudioRecorder;->e:Landroid/os/Handler;

    .line 66
    new-instance v0, Lcom/facebook/orca/attachments/AudioRecorder$FocusChangeListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/orca/attachments/AudioRecorder$FocusChangeListener;-><init>(Lcom/facebook/orca/attachments/AudioRecorder;Lcom/facebook/orca/attachments/AudioRecorder$1;)V

    iput-object v0, p0, Lcom/facebook/orca/attachments/AudioRecorder;->f:Lcom/facebook/orca/attachments/AudioRecorder$FocusChangeListener;

    .line 67
    new-instance v0, Lcom/facebook/orca/attachments/AudioRecorder$1;

    invoke-direct {v0, p0, p1}, Lcom/facebook/orca/attachments/AudioRecorder$1;-><init>(Lcom/facebook/orca/attachments/AudioRecorder;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/orca/attachments/AudioRecorder;->g:Ljava/lang/Runnable;

    .line 77
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/attachments/AudioRecorder;)Landroid/net/Uri;
    .locals 1
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/facebook/orca/attachments/AudioRecorder;->b()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/orca/attachments/AudioRecorder;Lcom/facebook/orca/attachments/AudioRecorder$PrepareAndStartRecorderTask;)Lcom/facebook/orca/attachments/AudioRecorder$PrepareAndStartRecorderTask;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    iput-object p1, p0, Lcom/facebook/orca/attachments/AudioRecorder;->i:Lcom/facebook/orca/attachments/AudioRecorder$PrepareAndStartRecorderTask;

    return-object p1
.end method

.method private b()Landroid/net/Uri;
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 143
    iget-object v3, p0, Lcom/facebook/orca/attachments/AudioRecorder;->h:Lcom/facebook/orca/common/util/AndroidThreadUtil;

    invoke-interface {v3}, Lcom/facebook/orca/common/util/AndroidThreadUtil;->a()V

    .line 145
    iget-object v3, p0, Lcom/facebook/orca/attachments/AudioRecorder;->e:Landroid/os/Handler;

    iget-object v4, p0, Lcom/facebook/orca/attachments/AudioRecorder;->g:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 146
    iput-object v2, p0, Lcom/facebook/orca/attachments/AudioRecorder;->j:Lcom/facebook/orca/attachments/AudioRecorder$RecordingCallback;

    .line 149
    iget-object v3, p0, Lcom/facebook/orca/attachments/AudioRecorder;->i:Lcom/facebook/orca/attachments/AudioRecorder$PrepareAndStartRecorderTask;

    if-eqz v3, :cond_1

    .line 150
    iget-object v3, p0, Lcom/facebook/orca/attachments/AudioRecorder;->i:Lcom/facebook/orca/attachments/AudioRecorder$PrepareAndStartRecorderTask;

    invoke-virtual {v3, v0}, Lcom/facebook/orca/attachments/AudioRecorder$PrepareAndStartRecorderTask;->cancel(Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 156
    :goto_0
    if-nez v0, :cond_2

    .line 157
    iput-object v2, p0, Lcom/facebook/orca/attachments/AudioRecorder;->i:Lcom/facebook/orca/attachments/AudioRecorder$PrepareAndStartRecorderTask;

    move-object v0, v2

    .line 167
    :goto_1
    return-object v0

    :cond_0
    move v0, v1

    .line 150
    goto :goto_0

    :cond_1
    move v0, v1

    .line 154
    goto :goto_0

    .line 161
    :cond_2
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioRecorder;->i:Lcom/facebook/orca/attachments/AudioRecorder$PrepareAndStartRecorderTask;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioRecorder;->i:Lcom/facebook/orca/attachments/AudioRecorder$PrepareAndStartRecorderTask;

    invoke-static {v0}, Lcom/facebook/orca/attachments/AudioRecorder$PrepareAndStartRecorderTask;->a(Lcom/facebook/orca/attachments/AudioRecorder$PrepareAndStartRecorderTask;)V

    .line 165
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioRecorder;->i:Lcom/facebook/orca/attachments/AudioRecorder$PrepareAndStartRecorderTask;

    invoke-virtual {v0}, Lcom/facebook/orca/attachments/AudioRecorder$PrepareAndStartRecorderTask;->a()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 166
    iput-object v2, p0, Lcom/facebook/orca/attachments/AudioRecorder;->i:Lcom/facebook/orca/attachments/AudioRecorder$PrepareAndStartRecorderTask;

    .line 167
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    goto :goto_1
.end method

.method static synthetic b(Lcom/facebook/orca/attachments/AudioRecorder;)Lcom/facebook/orca/attachments/AudioRecorder$RecordingCallback;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioRecorder;->j:Lcom/facebook/orca/attachments/AudioRecorder$RecordingCallback;

    return-object v0
.end method

.method static synthetic c(Lcom/facebook/orca/attachments/AudioRecorder;)Lcom/facebook/orca/attachments/AudioRecorder$FocusChangeListener;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioRecorder;->f:Lcom/facebook/orca/attachments/AudioRecorder$FocusChangeListener;

    return-object v0
.end method

.method static synthetic d(Lcom/facebook/orca/attachments/AudioRecorder;)Landroid/media/AudioManager;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioRecorder;->a:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic e(Lcom/facebook/orca/attachments/AudioRecorder;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioRecorder;->g:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic f(Lcom/facebook/orca/attachments/AudioRecorder;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioRecorder;->e:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic g(Lcom/facebook/orca/attachments/AudioRecorder;)Landroid/media/ToneGenerator;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioRecorder;->b:Landroid/media/ToneGenerator;

    return-object v0
.end method

.method static synthetic h(Lcom/facebook/orca/attachments/AudioRecorder;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioRecorder;->d:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic i(Lcom/facebook/orca/attachments/AudioRecorder;)Lcom/facebook/orca/attachments/AudioRecorder$PrepareAndStartRecorderTask;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioRecorder;->i:Lcom/facebook/orca/attachments/AudioRecorder$PrepareAndStartRecorderTask;

    return-object v0
.end method

.method static synthetic j(Lcom/facebook/orca/attachments/AudioRecorder;)Lcom/facebook/orca/common/util/AndroidThreadUtil;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioRecorder;->h:Lcom/facebook/orca/common/util/AndroidThreadUtil;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/net/Uri;)Lcom/facebook/orca/attachments/MediaAttachment;
    .locals 4
    .parameter

    .prologue
    .line 121
    invoke-static {p1}, Lcom/facebook/orca/media/MediaResource;->c(Landroid/net/Uri;)Lcom/facebook/orca/media/MediaResource;

    move-result-object v0

    .line 122
    iget-object v1, p0, Lcom/facebook/orca/attachments/AudioRecorder;->c:Lcom/facebook/orca/attachments/MediaAttachmentFactory;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/attachments/MediaAttachmentFactory;->b(Lcom/facebook/orca/media/MediaResource;)Lcom/facebook/orca/attachments/MediaAttachment;

    move-result-object v0

    .line 123
    if-nez v0, :cond_0

    .line 124
    const-string v1, "orca:AudioRecorder"

    const-string v2, "audio attachment null in stop"

    invoke-static {v1, v2}, Lcom/facebook/orca/debug/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    iget-object v1, p0, Lcom/facebook/orca/attachments/AudioRecorder;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/facebook/orca/attachments/AudioRecorder;->d:Landroid/content/Context;

    sget v3, Lcom/facebook/R$string;->audio_recording_attachment_error:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 131
    :cond_0
    return-object v0
.end method

.method public a(Lcom/facebook/orca/attachments/AudioRecorder$RecordingCallback;)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 109
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioRecorder;->i:Lcom/facebook/orca/attachments/AudioRecorder$PrepareAndStartRecorderTask;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 110
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioRecorder;->h:Lcom/facebook/orca/common/util/AndroidThreadUtil;

    invoke-interface {v0}, Lcom/facebook/orca/common/util/AndroidThreadUtil;->a()V

    .line 111
    iput-object p1, p0, Lcom/facebook/orca/attachments/AudioRecorder;->j:Lcom/facebook/orca/attachments/AudioRecorder$RecordingCallback;

    .line 112
    new-instance v0, Lcom/facebook/orca/attachments/AudioRecorder$PrepareAndStartRecorderTask;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/facebook/orca/attachments/AudioRecorder$PrepareAndStartRecorderTask;-><init>(Lcom/facebook/orca/attachments/AudioRecorder;Lcom/facebook/orca/attachments/AudioRecorder$1;)V

    iput-object v0, p0, Lcom/facebook/orca/attachments/AudioRecorder;->i:Lcom/facebook/orca/attachments/AudioRecorder$PrepareAndStartRecorderTask;

    .line 113
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioRecorder;->i:Lcom/facebook/orca/attachments/AudioRecorder$PrepareAndStartRecorderTask;

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/attachments/AudioRecorder$PrepareAndStartRecorderTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 114
    return-void

    :cond_0
    move v0, v1

    .line 109
    goto :goto_0
.end method

.method public a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 185
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioRecorder;->j:Lcom/facebook/orca/attachments/AudioRecorder$RecordingCallback;

    invoke-direct {p0}, Lcom/facebook/orca/attachments/AudioRecorder;->b()Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/facebook/orca/attachments/AudioRecorder$RecordingCallback;->a(Landroid/net/Uri;Z)V

    .line 186
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioRecorder;->i:Lcom/facebook/orca/attachments/AudioRecorder$PrepareAndStartRecorderTask;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
