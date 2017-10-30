.class public Lcom/facebook/orca/audio/FetchAudioExecutor;
.super Ljava/lang/Object;
.source "FetchAudioExecutor.java"


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
.field private final b:Lcom/facebook/orca/audio/AudioCache;

.field private final c:Lcom/facebook/orca/audio/AudioMediaDownloader;

.field private final d:Lcom/facebook/orca/common/async/KeyedExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/facebook/orca/audio/FetchAudioExecutor;

    sput-object v0, Lcom/facebook/orca/audio/FetchAudioExecutor;->a:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/orca/audio/AudioCache;Lcom/facebook/orca/common/async/KeyedExecutor;Lcom/facebook/orca/audio/AudioMediaDownloader;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/facebook/orca/audio/FetchAudioExecutor;->b:Lcom/facebook/orca/audio/AudioCache;

    .line 41
    iput-object p3, p0, Lcom/facebook/orca/audio/FetchAudioExecutor;->c:Lcom/facebook/orca/audio/AudioMediaDownloader;

    .line 42
    iput-object p2, p0, Lcom/facebook/orca/audio/FetchAudioExecutor;->d:Lcom/facebook/orca/common/async/KeyedExecutor;

    .line 43
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/audio/FetchAudioExecutor;Lcom/facebook/orca/audio/FetchAudioParams;)Landroid/net/Uri;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/facebook/orca/audio/FetchAudioExecutor;->b(Lcom/facebook/orca/audio/FetchAudioParams;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private b(Lcom/facebook/orca/audio/FetchAudioParams;)Landroid/net/Uri;
    .locals 4
    .parameter
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 68
    invoke-virtual {p1}, Lcom/facebook/orca/audio/FetchAudioParams;->b()Lcom/facebook/orca/audio/AudioCacheKey;

    move-result-object v1

    .line 69
    iget-object v0, p0, Lcom/facebook/orca/audio/FetchAudioExecutor;->b:Lcom/facebook/orca/audio/AudioCache;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/audio/AudioCache;->a(Lcom/facebook/orca/media/MediaCacheKey;)Landroid/net/Uri;

    move-result-object v0

    .line 70
    if-eqz v0, :cond_0

    .line 80
    :goto_0
    return-object v0

    .line 74
    :cond_0
    sget-object v0, Lcom/facebook/orca/audio/FetchAudioExecutor;->a:Ljava/lang/Class;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Miss to hit the audio cache. Start downloading "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/facebook/orca/audio/AudioCacheKey;->a()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 75
    invoke-direct {p0, p1}, Lcom/facebook/orca/audio/FetchAudioExecutor;->c(Lcom/facebook/orca/audio/FetchAudioParams;)Ljava/io/File;

    move-result-object v0

    .line 77
    if-eqz v0, :cond_1

    .line 78
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 80
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Lcom/facebook/orca/audio/FetchAudioParams;)Ljava/io/File;
    .locals 9
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 84
    invoke-virtual {p1}, Lcom/facebook/orca/audio/FetchAudioParams;->b()Lcom/facebook/orca/audio/AudioCacheKey;

    move-result-object v2

    .line 85
    iget-object v1, p0, Lcom/facebook/orca/audio/FetchAudioExecutor;->b:Lcom/facebook/orca/audio/AudioCache;

    invoke-virtual {v1, v2}, Lcom/facebook/orca/audio/AudioCache;->f(Lcom/facebook/orca/media/MediaCacheKey;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 133
    :cond_0
    :goto_0
    return-object v0

    .line 91
    :cond_1
    :try_start_0
    const-string v1, "Download audio"

    invoke-static {v1}, Lcom/facebook/orca/debug/Tracer;->a(Ljava/lang/String;)Lcom/facebook/orca/debug/Tracer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-result-object v3

    .line 93
    :try_start_1
    invoke-virtual {p1}, Lcom/facebook/orca/audio/FetchAudioParams;->a()Landroid/net/Uri;

    move-result-object v4

    .line 94
    iget-object v1, p0, Lcom/facebook/orca/audio/FetchAudioExecutor;->c:Lcom/facebook/orca/audio/AudioMediaDownloader;

    invoke-virtual {p1}, Lcom/facebook/orca/audio/FetchAudioParams;->a()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/facebook/orca/audio/AudioMediaDownloader;->a(Landroid/net/Uri;)Lcom/facebook/orca/media/MediaDownloader$DownloadResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 95
    :try_start_2
    invoke-virtual {v1}, Lcom/facebook/orca/media/MediaDownloader$DownloadResult;->a()Lcom/facebook/orca/media/MediaDownloader$DownloadResultCode;

    move-result-object v5

    sget-object v6, Lcom/facebook/orca/media/MediaDownloader$DownloadResultCode;->UNSUPPORTED_URI:Lcom/facebook/orca/media/MediaDownloader$DownloadResultCode;

    if-ne v5, v6, :cond_2

    .line 96
    sget-object v2, Lcom/facebook/orca/audio/FetchAudioExecutor;->a:Ljava/lang/Class;

    const-string v5, "All audio clip URLs should be using http or https: %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    invoke-static {v2, v5, v6}, Lcom/facebook/orca/debug/BLog;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 100
    :try_start_3
    invoke-virtual {v3}, Lcom/facebook/orca/debug/Tracer;->a()J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 132
    if-eqz v1, :cond_0

    .line 133
    invoke-virtual {v1}, Lcom/facebook/orca/media/MediaDownloader$DownloadResult;->c()V

    goto :goto_0

    .line 100
    :cond_2
    :try_start_4
    invoke-virtual {v3}, Lcom/facebook/orca/debug/Tracer;->a()J

    .line 103
    const-string v3, "Insert into cache"

    invoke-static {v3}, Lcom/facebook/orca/debug/Tracer;->a(Ljava/lang/String;)Lcom/facebook/orca/debug/Tracer;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v3

    .line 105
    :try_start_5
    sget-object v4, Lcom/facebook/orca/audio/FetchAudioExecutor$2;->a:[I

    invoke-virtual {v1}, Lcom/facebook/orca/media/MediaDownloader$DownloadResult;->a()Lcom/facebook/orca/media/MediaDownloader$DownloadResultCode;

    move-result-object v5

    invoke-virtual {v5}, Lcom/facebook/orca/media/MediaDownloader$DownloadResultCode;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 125
    iget-object v4, p0, Lcom/facebook/orca/audio/FetchAudioExecutor;->b:Lcom/facebook/orca/audio/AudioCache;

    const-wide/16 v5, 0x4e20

    invoke-virtual {v4, v2, v5, v6}, Lcom/facebook/orca/audio/AudioCache;->a(Lcom/facebook/orca/media/MediaCacheKey;J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 129
    :try_start_6
    invoke-virtual {v3}, Lcom/facebook/orca/debug/Tracer;->a()J
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 132
    if-eqz v1, :cond_0

    .line 133
    invoke-virtual {v1}, Lcom/facebook/orca/media/MediaDownloader$DownloadResult;->c()V

    goto :goto_0

    .line 100
    :catchall_0
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    :goto_1
    :try_start_7
    invoke-virtual {v3}, Lcom/facebook/orca/debug/Tracer;->a()J

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 132
    :catchall_1
    move-exception v0

    :goto_2
    if-eqz v1, :cond_3

    .line 133
    invoke-virtual {v1}, Lcom/facebook/orca/media/MediaDownloader$DownloadResult;->c()V

    :cond_3
    throw v0

    .line 108
    :pswitch_0
    :try_start_8
    iget-object v4, p0, Lcom/facebook/orca/audio/FetchAudioExecutor;->b:Lcom/facebook/orca/audio/AudioCache;

    invoke-virtual {v1}, Lcom/facebook/orca/media/MediaDownloader$DownloadResult;->b()Ljava/io/InputStream;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lcom/facebook/orca/audio/AudioCache;->a(Lcom/facebook/orca/media/MediaCacheKey;Ljava/io/InputStream;)Ljava/io/File;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    move-result-object v0

    .line 129
    :try_start_9
    invoke-virtual {v3}, Lcom/facebook/orca/debug/Tracer;->a()J
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 132
    if-eqz v1, :cond_0

    .line 133
    invoke-virtual {v1}, Lcom/facebook/orca/media/MediaDownloader$DownloadResult;->c()V

    goto :goto_0

    .line 109
    :catch_0
    move-exception v2

    .line 110
    :try_start_a
    sget-object v4, Lcom/facebook/orca/audio/FetchAudioExecutor;->a:Ljava/lang/Class;

    const-string v5, "Failed to insert into cache"

    invoke-static {v4, v5, v2}, Lcom/facebook/orca/debug/BLog;->d(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 129
    :try_start_b
    invoke-virtual {v3}, Lcom/facebook/orca/debug/Tracer;->a()J
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 132
    if-eqz v1, :cond_0

    .line 133
    invoke-virtual {v1}, Lcom/facebook/orca/media/MediaDownloader$DownloadResult;->c()V

    goto/16 :goto_0

    .line 115
    :pswitch_1
    :try_start_c
    iget-object v4, p0, Lcom/facebook/orca/audio/FetchAudioExecutor;->b:Lcom/facebook/orca/audio/AudioCache;

    const-wide/32 v5, 0x493e0

    invoke-virtual {v4, v2, v5, v6}, Lcom/facebook/orca/audio/AudioCache;->a(Lcom/facebook/orca/media/MediaCacheKey;J)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 129
    :try_start_d
    invoke-virtual {v3}, Lcom/facebook/orca/debug/Tracer;->a()J
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 132
    if-eqz v1, :cond_0

    .line 133
    invoke-virtual {v1}, Lcom/facebook/orca/media/MediaDownloader$DownloadResult;->c()V

    goto/16 :goto_0

    .line 119
    :pswitch_2
    :try_start_e
    iget-object v4, p0, Lcom/facebook/orca/audio/FetchAudioExecutor;->b:Lcom/facebook/orca/audio/AudioCache;

    const-wide/32 v5, 0x36ee80

    invoke-virtual {v4, v2, v5, v6}, Lcom/facebook/orca/audio/AudioCache;->a(Lcom/facebook/orca/media/MediaCacheKey;J)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 129
    :try_start_f
    invoke-virtual {v3}, Lcom/facebook/orca/debug/Tracer;->a()J
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 132
    if-eqz v1, :cond_0

    .line 133
    invoke-virtual {v1}, Lcom/facebook/orca/media/MediaDownloader$DownloadResult;->c()V

    goto/16 :goto_0

    .line 129
    :catchall_2
    move-exception v0

    :try_start_10
    invoke-virtual {v3}, Lcom/facebook/orca/debug/Tracer;->a()J

    throw v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 132
    :catchall_3
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_2

    .line 100
    :catchall_4
    move-exception v0

    goto :goto_1

    .line 105
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public a(Lcom/facebook/orca/audio/FetchAudioParams;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/orca/audio/FetchAudioParams;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    invoke-virtual {p1}, Lcom/facebook/orca/audio/FetchAudioParams;->b()Lcom/facebook/orca/audio/AudioCacheKey;

    move-result-object v1

    .line 47
    iget-object v0, p0, Lcom/facebook/orca/audio/FetchAudioExecutor;->d:Lcom/facebook/orca/common/async/KeyedExecutor;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/async/KeyedExecutor;->a(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 48
    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcom/facebook/orca/audio/FetchAudioExecutor$1;

    invoke-direct {v0, p0, p1}, Lcom/facebook/orca/audio/FetchAudioExecutor$1;-><init>(Lcom/facebook/orca/audio/FetchAudioExecutor;Lcom/facebook/orca/audio/FetchAudioParams;)V

    .line 57
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "audio-message-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/facebook/orca/audio/AudioCacheKey;->a()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->hashCode()I

    move-result v3

    rem-int/lit8 v3, v3, 0x3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 59
    sget-object v3, Lcom/facebook/orca/audio/FetchAudioExecutor;->a:Ljava/lang/Class;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Create async task for downloading "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/Class;Ljava/lang/String;)V

    .line 60
    invoke-virtual {p1}, Lcom/facebook/orca/audio/FetchAudioParams;->a()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    .line 61
    iget-object v4, p0, Lcom/facebook/orca/audio/FetchAudioExecutor;->d:Lcom/facebook/orca/common/async/KeyedExecutor;

    invoke-virtual {v4, v2, v1, v0, v3}, Lcom/facebook/orca/common/async/KeyedExecutor;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/Callable;Ljava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 63
    :cond_0
    return-object v0
.end method
