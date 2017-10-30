.class public Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;
.super Lcom/facebook/widget/CustomViewGroup;
.source "ThreadViewAudioAttachmentView.java"


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
.field private b:Lcom/facebook/orca/attachments/AudioPlayerView;

.field private c:Lcom/facebook/orca/attachments/AttachmentDataFactory;

.field private d:Lcom/facebook/orca/threads/Message;

.field private e:Landroid/net/Uri;

.field private f:Lcom/facebook/orca/audio/AudioCache;

.field private g:Lcom/facebook/common/util/UiThreadExecutor;

.field private h:Landroid/net/Uri;

.field private i:Lcom/facebook/orca/audio/FetchAudioExecutor;

.field private j:Lcom/facebook/orca/audio/FetchCachedAudioUriTask;

.field private k:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;

    sput-object v0, Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;->a:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/facebook/widget/CustomViewGroup;-><init>(Landroid/content/Context;)V

    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/facebook/widget/CustomViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;->e:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic a(Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;)Lcom/facebook/orca/threads/Message;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;->d:Lcom/facebook/orca/threads/Message;

    return-object v0
.end method

.method static synthetic a()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;->a:Ljava/lang/Class;

    return-object v0
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 70
    invoke-static {p1}, Lcom/facebook/orca/inject/FbInjector;->a(Landroid/content/Context;)Lcom/facebook/orca/inject/FbInjector;

    move-result-object v1

    .line 71
    const-class v0, Lcom/facebook/orca/attachments/AttachmentDataFactory;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/attachments/AttachmentDataFactory;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;->c:Lcom/facebook/orca/attachments/AttachmentDataFactory;

    .line 72
    const-class v0, Lcom/facebook/orca/audio/AudioCache;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/audio/AudioCache;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;->f:Lcom/facebook/orca/audio/AudioCache;

    .line 73
    const-class v0, Lcom/facebook/orca/audio/FetchAudioExecutor;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/audio/FetchAudioExecutor;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;->i:Lcom/facebook/orca/audio/FetchAudioExecutor;

    .line 74
    const-class v0, Lcom/facebook/common/util/UiThreadExecutor;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/common/util/UiThreadExecutor;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;->g:Lcom/facebook/common/util/UiThreadExecutor;

    .line 75
    sget v0, Lcom/facebook/R$layout;->orca_audio_message_item:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;->setContentView(I)V

    .line 76
    sget v0, Lcom/facebook/R$id;->orca_audio_player:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/attachments/AudioPlayerView;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;->b:Lcom/facebook/orca/attachments/AudioPlayerView;

    .line 77
    return-void
.end method

.method private a(Lcom/facebook/orca/audio/AudioCacheKey;)V
    .locals 3
    .parameter

    .prologue
    .line 152
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;->i:Lcom/facebook/orca/audio/FetchAudioExecutor;

    new-instance v1, Lcom/facebook/orca/audio/FetchAudioParams;

    invoke-virtual {p1}, Lcom/facebook/orca/audio/AudioCacheKey;->a()Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/orca/audio/FetchAudioParams;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/audio/FetchAudioExecutor;->a(Lcom/facebook/orca/audio/FetchAudioParams;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;->k:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 153
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;->k:Lcom/google/common/util/concurrent/ListenableFuture;

    new-instance v1, Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView$2;

    invoke-direct {v1, p0}, Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView$2;-><init>(Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;)V

    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;->g:Lcom/facebook/common/util/UiThreadExecutor;

    invoke-static {v0, v1, v2}, Lcom/google/common/util/concurrent/Futures;->a(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;Ljava/util/concurrent/Executor;)V

    .line 166
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;Lcom/facebook/orca/audio/AudioCacheKey;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;->a(Lcom/facebook/orca/audio/AudioCacheKey;)V

    return-void
.end method

.method static synthetic b(Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;)Landroid/net/Uri;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;->e:Landroid/net/Uri;

    return-object v0
.end method

.method private b()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 107
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;->k:Lcom/google/common/util/concurrent/ListenableFuture;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;->k:Lcom/google/common/util/concurrent/ListenableFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/common/util/concurrent/ListenableFuture;->cancel(Z)Z

    .line 109
    iput-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;->k:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;->j:Lcom/facebook/orca/audio/FetchCachedAudioUriTask;

    if-eqz v0, :cond_1

    .line 112
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;->j:Lcom/facebook/orca/audio/FetchCachedAudioUriTask;

    invoke-virtual {v0}, Lcom/facebook/orca/audio/FetchCachedAudioUriTask;->a()V

    .line 113
    iput-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;->j:Lcom/facebook/orca/audio/FetchCachedAudioUriTask;

    .line 115
    :cond_1
    return-void
.end method

.method static synthetic c(Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;)Lcom/facebook/orca/attachments/AudioPlayerView;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;->b:Lcom/facebook/orca/attachments/AudioPlayerView;

    return-object v0
.end method

.method private c()V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;->b:Lcom/facebook/orca/attachments/AudioPlayerView;

    invoke-virtual {v0}, Lcom/facebook/orca/attachments/AudioPlayerView;->b()V

    .line 119
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;->d()V

    .line 120
    return-void
.end method

.method static synthetic d(Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;)Landroid/net/Uri;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;->h:Landroid/net/Uri;

    return-object v0
.end method

.method private d()V
    .locals 4

    .prologue
    .line 123
    new-instance v0, Lcom/facebook/orca/audio/AudioCacheKey;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;->h:Landroid/net/Uri;

    invoke-direct {v0, v1}, Lcom/facebook/orca/audio/AudioCacheKey;-><init>(Landroid/net/Uri;)V

    .line 127
    new-instance v1, Lcom/facebook/orca/audio/FetchCachedAudioUriTask;

    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;->f:Lcom/facebook/orca/audio/AudioCache;

    new-instance v3, Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView$1;

    invoke-direct {v3, p0, v0}, Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView$1;-><init>(Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;Lcom/facebook/orca/audio/AudioCacheKey;)V

    invoke-direct {v1, v2, v3}, Lcom/facebook/orca/audio/FetchCachedAudioUriTask;-><init>(Lcom/facebook/orca/audio/AudioCache;Lcom/facebook/orca/audio/FetchCachedAudioUriTask$OnCompletedCallback;)V

    iput-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;->j:Lcom/facebook/orca/audio/FetchCachedAudioUriTask;

    .line 148
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;->j:Lcom/facebook/orca/audio/FetchCachedAudioUriTask;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/facebook/orca/audio/AudioCacheKey;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/facebook/orca/audio/FetchCachedAudioUriTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 149
    return-void
.end method

.method static synthetic e(Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;->c()V

    return-void
.end method


# virtual methods
.method public getMessage()Lcom/facebook/orca/threads/Message;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;->d:Lcom/facebook/orca/threads/Message;

    return-object v0
.end method

.method public setMessage(Lcom/facebook/orca/threads/Message;)V
    .locals 3
    .parameter

    .prologue
    .line 84
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;->d:Lcom/facebook/orca/threads/Message;

    if-ne v0, p1, :cond_0

    .line 103
    :goto_0
    return-void

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;->b:Lcom/facebook/orca/attachments/AudioPlayerView;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/attachments/AudioPlayerView;->setMessage(Lcom/facebook/orca/threads/Message;)V

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;->e:Landroid/net/Uri;

    .line 93
    iput-object p1, p0, Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;->d:Lcom/facebook/orca/threads/Message;

    .line 94
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;->c:Lcom/facebook/orca/attachments/AttachmentDataFactory;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/attachments/AttachmentDataFactory;->d(Lcom/facebook/orca/threads/Message;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 95
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 96
    sget-object v0, Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;->a:Ljava/lang/Class;

    const-string v1, "we only support list with audio number = 1"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->e(Ljava/lang/Class;Ljava/lang/String;)V

    .line 97
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;->setVisibility(I)V

    goto :goto_0

    .line 100
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/attachments/OtherAttachmentData;

    invoke-virtual {v0}, Lcom/facebook/orca/attachments/OtherAttachmentData;->c()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;->h:Landroid/net/Uri;

    .line 101
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;->b()V

    .line 102
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;->c()V

    goto :goto_0
.end method
