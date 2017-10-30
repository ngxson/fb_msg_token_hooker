.class Lcom/facebook/orca/attachments/AudioPlayerView$SetAudioLengthTask;
.super Landroid/os/AsyncTask;
.source "AudioPlayerView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/facebook/orca/attachments/AudioPlayerView$SetAudioLengthTaskResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/attachments/AudioPlayerView;

.field private final b:Landroid/net/Uri;

.field private c:I


# direct methods
.method public constructor <init>(Lcom/facebook/orca/attachments/AudioPlayerView;Landroid/net/Uri;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 397
    iput-object p1, p0, Lcom/facebook/orca/attachments/AudioPlayerView$SetAudioLengthTask;->a:Lcom/facebook/orca/attachments/AudioPlayerView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 398
    iput-object p2, p0, Lcom/facebook/orca/attachments/AudioPlayerView$SetAudioLengthTask;->b:Landroid/net/Uri;

    .line 399
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lcom/facebook/orca/attachments/AudioPlayerView$SetAudioLengthTaskResult;
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 408
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    .line 410
    :try_start_0
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/facebook/orca/attachments/AudioPlayerView$SetAudioLengthTask;->b:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 415
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/io/File;->setReadable(ZZ)Z

    .line 417
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2

    .line 420
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 421
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 423
    :try_start_2
    invoke-static {v3}, Lcom/google/common/io/Closeables;->a(Ljava/io/Closeable;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2

    .line 432
    :goto_0
    if-nez v0, :cond_0

    .line 433
    invoke-static {}, Lcom/facebook/orca/attachments/AudioPlayerView;->d()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "Error getting duration of audio"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->e(Ljava/lang/Class;Ljava/lang/String;)V

    .line 434
    sget-object v0, Lcom/facebook/orca/attachments/AudioPlayerView$SetAudioLengthTaskResult;->ERROR:Lcom/facebook/orca/attachments/AudioPlayerView$SetAudioLengthTaskResult;

    .line 439
    :goto_1
    return-object v0

    .line 423
    :catchall_0
    move-exception v0

    :try_start_3
    invoke-static {v3}, Lcom/google/common/io/Closeables;->a(Ljava/io/Closeable;)V

    throw v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_2

    .line 425
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 431
    goto :goto_0

    .line 427
    :catch_1
    move-exception v0

    move-object v0, v1

    .line 431
    goto :goto_0

    .line 429
    :catch_2
    move-exception v0

    move-object v0, v1

    .line 430
    goto :goto_0

    .line 436
    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    iput v1, p0, Lcom/facebook/orca/attachments/AudioPlayerView$SetAudioLengthTask;->c:I

    .line 437
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 438
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 439
    sget-object v0, Lcom/facebook/orca/attachments/AudioPlayerView$SetAudioLengthTaskResult;->SUCCESS:Lcom/facebook/orca/attachments/AudioPlayerView$SetAudioLengthTaskResult;

    goto :goto_1
.end method

.method protected a(Lcom/facebook/orca/attachments/AudioPlayerView$SetAudioLengthTaskResult;)V
    .locals 2
    .parameter

    .prologue
    .line 444
    invoke-static {}, Lcom/facebook/orca/attachments/AudioPlayerView;->d()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "Not setting the length because SetAudioLengthTask cancelled"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 445
    return-void
.end method

.method protected b(Lcom/facebook/orca/attachments/AudioPlayerView$SetAudioLengthTaskResult;)V
    .locals 2
    .parameter

    .prologue
    .line 449
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioPlayerView$SetAudioLengthTask;->a:Lcom/facebook/orca/attachments/AudioPlayerView;

    invoke-static {v0}, Lcom/facebook/orca/attachments/AudioPlayerView;->h(Lcom/facebook/orca/attachments/AudioPlayerView;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/orca/attachments/AudioPlayerView$SetAudioLengthTask;->b:Landroid/net/Uri;

    if-ne v0, v1, :cond_0

    .line 450
    sget-object v0, Lcom/facebook/orca/attachments/AudioPlayerView$SetAudioLengthTaskResult;->SUCCESS:Lcom/facebook/orca/attachments/AudioPlayerView$SetAudioLengthTaskResult;

    if-ne p1, v0, :cond_1

    .line 451
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioPlayerView$SetAudioLengthTask;->a:Lcom/facebook/orca/attachments/AudioPlayerView;

    iget v1, p0, Lcom/facebook/orca/attachments/AudioPlayerView$SetAudioLengthTask;->c:I

    invoke-static {v0, v1}, Lcom/facebook/orca/attachments/AudioPlayerView;->a(Lcom/facebook/orca/attachments/AudioPlayerView;I)V

    .line 456
    :cond_0
    :goto_0
    return-void

    .line 452
    :cond_1
    sget-object v0, Lcom/facebook/orca/attachments/AudioPlayerView$SetAudioLengthTaskResult;->ERROR:Lcom/facebook/orca/attachments/AudioPlayerView$SetAudioLengthTaskResult;

    if-ne p1, v0, :cond_0

    .line 453
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioPlayerView$SetAudioLengthTask;->a:Lcom/facebook/orca/attachments/AudioPlayerView;

    invoke-virtual {v0}, Lcom/facebook/orca/attachments/AudioPlayerView;->c()V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 392
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/facebook/orca/attachments/AudioPlayerView$SetAudioLengthTask;->a([Ljava/lang/Void;)Lcom/facebook/orca/attachments/AudioPlayerView$SetAudioLengthTaskResult;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 392
    check-cast p1, Lcom/facebook/orca/attachments/AudioPlayerView$SetAudioLengthTaskResult;

    invoke-virtual {p0, p1}, Lcom/facebook/orca/attachments/AudioPlayerView$SetAudioLengthTask;->a(Lcom/facebook/orca/attachments/AudioPlayerView$SetAudioLengthTaskResult;)V

    return-void
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 392
    check-cast p1, Lcom/facebook/orca/attachments/AudioPlayerView$SetAudioLengthTaskResult;

    invoke-virtual {p0, p1}, Lcom/facebook/orca/attachments/AudioPlayerView$SetAudioLengthTask;->b(Lcom/facebook/orca/attachments/AudioPlayerView$SetAudioLengthTaskResult;)V

    return-void
.end method
