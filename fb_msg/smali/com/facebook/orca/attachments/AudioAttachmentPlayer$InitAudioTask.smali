.class Lcom/facebook/orca/attachments/AudioAttachmentPlayer$InitAudioTask;
.super Landroid/os/AsyncTask;
.source "AudioAttachmentPlayer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/facebook/orca/attachments/AudioAttachmentPlayer$InitAudioResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/attachments/AudioAttachmentPlayer;

.field private final b:Landroid/net/Uri;

.field private final c:Ljava/lang/Runnable;

.field private final d:Lcom/facebook/orca/threads/Message;

.field private e:Landroid/media/MediaPlayer;


# direct methods
.method protected constructor <init>(Lcom/facebook/orca/attachments/AudioAttachmentPlayer;Landroid/net/Uri;Lcom/facebook/orca/threads/Message;Ljava/lang/Runnable;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 284
    iput-object p1, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer$InitAudioTask;->a:Lcom/facebook/orca/attachments/AudioAttachmentPlayer;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 285
    iput-object p2, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer$InitAudioTask;->b:Landroid/net/Uri;

    .line 286
    iput-object p3, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer$InitAudioTask;->d:Lcom/facebook/orca/threads/Message;

    .line 287
    iput-object p4, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer$InitAudioTask;->c:Ljava/lang/Runnable;

    .line 288
    invoke-static {p1}, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->h(Lcom/facebook/orca/attachments/AudioAttachmentPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer$InitAudioTask;->e:Landroid/media/MediaPlayer;

    .line 289
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lcom/facebook/orca/attachments/AudioAttachmentPlayer$InitAudioResult;
    .locals 7
    .parameter
    .annotation build Landroid/annotation/TargetApi;
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 294
    iget-object v2, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer$InitAudioTask;->e:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer$InitAudioTask;->a:Lcom/facebook/orca/attachments/AudioAttachmentPlayer;

    invoke-static {v3}, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->k(Lcom/facebook/orca/attachments/AudioAttachmentPlayer;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 297
    :try_start_0
    invoke-static {}, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->i()Ljava/lang/Class;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Playing the audio clip: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer$InitAudioTask;->b:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 299
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer$InitAudioTask;->b:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 304
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/io/File;->setReadable(ZZ)Z

    .line 306
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    :try_start_1
    iget-object v2, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer$InitAudioTask;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 310
    invoke-virtual {p0}, Lcom/facebook/orca/attachments/AudioAttachmentPlayer$InitAudioTask;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 311
    sget-object v0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer$InitAudioResult;->INTERRUPTED:Lcom/facebook/orca/attachments/AudioAttachmentPlayer$InitAudioResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 327
    :try_start_2
    invoke-static {v3}, Lcom/google/common/io/Closeables;->a(Ljava/io/Closeable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 331
    :goto_0
    return-object v0

    .line 313
    :cond_0
    :try_start_3
    iget-object v2, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer$InitAudioTask;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepare()V

    .line 314
    iget-object v2, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer$InitAudioTask;->a:Lcom/facebook/orca/attachments/AudioAttachmentPlayer;

    invoke-static {v2}, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->d(Lcom/facebook/orca/attachments/AudioAttachmentPlayer;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 315
    iget-object v2, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer$InitAudioTask;->a:Lcom/facebook/orca/attachments/AudioAttachmentPlayer;

    invoke-static {v2}, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->g(Lcom/facebook/orca/attachments/AudioAttachmentPlayer;)Landroid/media/AudioManager;

    move-result-object v2

    iget-object v4, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer$InitAudioTask;->a:Lcom/facebook/orca/attachments/AudioAttachmentPlayer;

    invoke-static {v4}, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->f(Lcom/facebook/orca/attachments/AudioAttachmentPlayer;)Lcom/facebook/orca/attachments/AudioAttachmentPlayer$FocusChangeListener;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x2

    invoke-virtual {v2, v4, v5, v6}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v2

    .line 319
    iget-object v4, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer$InitAudioTask;->a:Lcom/facebook/orca/attachments/AudioAttachmentPlayer;

    if-ne v2, v0, :cond_1

    :goto_1
    invoke-static {v4, v0}, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->a(Lcom/facebook/orca/attachments/AudioAttachmentPlayer;Z)Z

    .line 320
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer$InitAudioTask;->a:Lcom/facebook/orca/attachments/AudioAttachmentPlayer;

    invoke-static {v0}, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->d(Lcom/facebook/orca/attachments/AudioAttachmentPlayer;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 321
    sget-object v0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer$InitAudioResult;->ERROR:Lcom/facebook/orca/attachments/AudioAttachmentPlayer$InitAudioResult;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 327
    :try_start_4
    invoke-static {v3}, Lcom/google/common/io/Closeables;->a(Ljava/io/Closeable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 329
    :catch_0
    move-exception v0

    .line 330
    invoke-static {}, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->i()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "Error occurred during playing the audio "

    invoke-static {v1, v2, v0}, Lcom/facebook/orca/debug/BLog;->e(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 331
    sget-object v0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer$InitAudioResult;->ERROR:Lcom/facebook/orca/attachments/AudioAttachmentPlayer$InitAudioResult;

    goto :goto_0

    :cond_1
    move v0, v1

    .line 319
    goto :goto_1

    .line 324
    :cond_2
    :try_start_5
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer$InitAudioTask;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 325
    sget-object v0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer$InitAudioResult;->SUCCESS:Lcom/facebook/orca/attachments/AudioAttachmentPlayer$InitAudioResult;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 327
    :try_start_6
    invoke-static {v3}, Lcom/google/common/io/Closeables;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v3}, Lcom/google/common/io/Closeables;->a(Ljava/io/Closeable;)V

    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
.end method

.method protected a(Lcom/facebook/orca/attachments/AudioAttachmentPlayer$InitAudioResult;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 337
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer$InitAudioTask;->a:Lcom/facebook/orca/attachments/AudioAttachmentPlayer;

    invoke-static {v0}, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->d(Lcom/facebook/orca/attachments/AudioAttachmentPlayer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer$InitAudioTask;->a:Lcom/facebook/orca/attachments/AudioAttachmentPlayer;

    invoke-static {v0}, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->g(Lcom/facebook/orca/attachments/AudioAttachmentPlayer;)Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer$InitAudioTask;->a:Lcom/facebook/orca/attachments/AudioAttachmentPlayer;

    invoke-static {v1}, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->f(Lcom/facebook/orca/attachments/AudioAttachmentPlayer;)Lcom/facebook/orca/attachments/AudioAttachmentPlayer$FocusChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 339
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer$InitAudioTask;->a:Lcom/facebook/orca/attachments/AudioAttachmentPlayer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->a(Lcom/facebook/orca/attachments/AudioAttachmentPlayer;Z)Z

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer$InitAudioTask;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 342
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer$InitAudioTask;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 343
    iput-object v2, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer$InitAudioTask;->e:Landroid/media/MediaPlayer;

    .line 344
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer$InitAudioTask;->a:Lcom/facebook/orca/attachments/AudioAttachmentPlayer;

    invoke-static {v0}, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->l(Lcom/facebook/orca/attachments/AudioAttachmentPlayer;)Lcom/facebook/orca/attachments/AudioAttachmentPlayer$InitAudioTask;

    move-result-object v0

    if-ne v0, p0, :cond_1

    .line 345
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer$InitAudioTask;->a:Lcom/facebook/orca/attachments/AudioAttachmentPlayer;

    invoke-static {v0, v2}, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->a(Lcom/facebook/orca/attachments/AudioAttachmentPlayer;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 347
    :cond_1
    return-void
.end method

.method protected b(Lcom/facebook/orca/attachments/AudioAttachmentPlayer$InitAudioResult;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 351
    sget-object v0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer$InitAudioResult;->SUCCESS:Lcom/facebook/orca/attachments/AudioAttachmentPlayer$InitAudioResult;

    if-ne p1, v0, :cond_1

    .line 352
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer$InitAudioTask;->a:Lcom/facebook/orca/attachments/AudioAttachmentPlayer;

    invoke-static {v0}, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->l(Lcom/facebook/orca/attachments/AudioAttachmentPlayer;)Lcom/facebook/orca/attachments/AudioAttachmentPlayer$InitAudioTask;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer$InitAudioTask;->a:Lcom/facebook/orca/attachments/AudioAttachmentPlayer;

    iget-object v1, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer$InitAudioTask;->d:Lcom/facebook/orca/threads/Message;

    invoke-static {v0, v1}, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->a(Lcom/facebook/orca/attachments/AudioAttachmentPlayer;Lcom/facebook/orca/threads/Message;)Lcom/facebook/orca/threads/Message;

    .line 355
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer$InitAudioTask;->a:Lcom/facebook/orca/attachments/AudioAttachmentPlayer;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->c(Lcom/facebook/orca/attachments/AudioAttachmentPlayer;Z)Z

    .line 356
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer$InitAudioTask;->c:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 365
    :cond_0
    :goto_0
    return-void

    .line 358
    :cond_1
    sget-object v0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer$InitAudioResult;->ERROR:Lcom/facebook/orca/attachments/AudioAttachmentPlayer$InitAudioResult;

    if-ne p1, v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer$InitAudioTask;->a:Lcom/facebook/orca/attachments/AudioAttachmentPlayer;

    invoke-static {v0}, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->m(Lcom/facebook/orca/attachments/AudioAttachmentPlayer;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/facebook/R$string;->audio_player_error_message:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 360
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer$InitAudioTask;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 361
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer$InitAudioTask;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 362
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer$InitAudioTask;->a:Lcom/facebook/orca/attachments/AudioAttachmentPlayer;

    iput-object v3, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer$InitAudioTask;->e:Landroid/media/MediaPlayer;

    invoke-static {v0, v3}, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->a(Lcom/facebook/orca/attachments/AudioAttachmentPlayer;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 363
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioAttachmentPlayer$InitAudioTask;->a:Lcom/facebook/orca/attachments/AudioAttachmentPlayer;

    invoke-static {v0, v3}, Lcom/facebook/orca/attachments/AudioAttachmentPlayer;->a(Lcom/facebook/orca/attachments/AudioAttachmentPlayer;Lcom/facebook/orca/attachments/AudioAttachmentPlayer$InitAudioTask;)Lcom/facebook/orca/attachments/AudioAttachmentPlayer$InitAudioTask;

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 268
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/facebook/orca/attachments/AudioAttachmentPlayer$InitAudioTask;->a([Ljava/lang/Void;)Lcom/facebook/orca/attachments/AudioAttachmentPlayer$InitAudioResult;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 268
    check-cast p1, Lcom/facebook/orca/attachments/AudioAttachmentPlayer$InitAudioResult;

    invoke-virtual {p0, p1}, Lcom/facebook/orca/attachments/AudioAttachmentPlayer$InitAudioTask;->a(Lcom/facebook/orca/attachments/AudioAttachmentPlayer$InitAudioResult;)V

    return-void
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 268
    check-cast p1, Lcom/facebook/orca/attachments/AudioAttachmentPlayer$InitAudioResult;

    invoke-virtual {p0, p1}, Lcom/facebook/orca/attachments/AudioAttachmentPlayer$InitAudioTask;->b(Lcom/facebook/orca/attachments/AudioAttachmentPlayer$InitAudioResult;)V

    return-void
.end method
