.class Lcom/facebook/orca/attachments/AudioRecorder$PrepareAndStartRecorderTask;
.super Landroid/os/AsyncTask;
.source "AudioRecorder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/facebook/orca/attachments/AudioRecorder$RecordResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/attachments/AudioRecorder;

.field private b:Landroid/media/MediaRecorder;

.field private c:Ljava/io/File;

.field private d:Z

.field private e:Z


# direct methods
.method private constructor <init>(Lcom/facebook/orca/attachments/AudioRecorder;)V
    .locals 0
    .parameter

    .prologue
    .line 197
    iput-object p1, p0, Lcom/facebook/orca/attachments/AudioRecorder$PrepareAndStartRecorderTask;->a:Lcom/facebook/orca/attachments/AudioRecorder;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/attachments/AudioRecorder;Lcom/facebook/orca/attachments/AudioRecorder$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 197
    invoke-direct {p0, p1}, Lcom/facebook/orca/attachments/AudioRecorder$PrepareAndStartRecorderTask;-><init>(Lcom/facebook/orca/attachments/AudioRecorder;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/attachments/AudioRecorder$PrepareAndStartRecorderTask;)V
    .locals 0
    .parameter

    .prologue
    .line 197
    invoke-direct {p0}, Lcom/facebook/orca/attachments/AudioRecorder$PrepareAndStartRecorderTask;->b()V

    return-void
.end method

.method private b()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 270
    .line 272
    monitor-enter p0

    .line 273
    :try_start_0
    iget-boolean v2, p0, Lcom/facebook/orca/attachments/AudioRecorder$PrepareAndStartRecorderTask;->d:Z

    if-nez v2, :cond_0

    .line 275
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/orca/attachments/AudioRecorder$PrepareAndStartRecorderTask;->d:Z

    move v0, v1

    .line 277
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 279
    if-eqz v0, :cond_2

    .line 281
    :try_start_1
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioRecorder$PrepareAndStartRecorderTask;->b:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    .line 282
    iget-boolean v0, p0, Lcom/facebook/orca/attachments/AudioRecorder$PrepareAndStartRecorderTask;->e:Z

    if-eqz v0, :cond_1

    .line 283
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioRecorder$PrepareAndStartRecorderTask;->a:Lcom/facebook/orca/attachments/AudioRecorder;

    invoke-static {v0}, Lcom/facebook/orca/attachments/AudioRecorder;->d(Lcom/facebook/orca/attachments/AudioRecorder;)Landroid/media/AudioManager;

    move-result-object v0

    iget-object v2, p0, Lcom/facebook/orca/attachments/AudioRecorder$PrepareAndStartRecorderTask;->a:Lcom/facebook/orca/attachments/AudioRecorder;

    invoke-static {v2}, Lcom/facebook/orca/attachments/AudioRecorder;->c(Lcom/facebook/orca/attachments/AudioRecorder;)Lcom/facebook/orca/attachments/AudioRecorder$FocusChangeListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 285
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/orca/attachments/AudioRecorder$PrepareAndStartRecorderTask;->e:Z

    .line 288
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioRecorder$PrepareAndStartRecorderTask;->b:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 294
    :cond_2
    :goto_0
    return-void

    .line 277
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 289
    :catch_0
    move-exception v0

    .line 291
    const-string v1, "orca:AudioRecorder"

    const-string v2, "Error in resetting and releasing recorder."

    invoke-static {v1, v2, v0}, Lcom/facebook/orca/debug/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lcom/facebook/orca/attachments/AudioRecorder$RecordResult;
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 207
    new-instance v0, Landroid/media/MediaRecorder;

    invoke-direct {v0}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v0, p0, Lcom/facebook/orca/attachments/AudioRecorder$PrepareAndStartRecorderTask;->b:Landroid/media/MediaRecorder;

    .line 211
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "orca-audio-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/facebook/orca/common/util/SystemClock;->b()Lcom/facebook/orca/common/util/SystemClock;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/orca/common/util/SystemClock;->a()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".mp4"

    invoke-static {v0, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/attachments/AudioRecorder$PrepareAndStartRecorderTask;->c:Ljava/io/File;

    .line 212
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioRecorder$PrepareAndStartRecorderTask;->b:Landroid/media/MediaRecorder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 213
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioRecorder$PrepareAndStartRecorderTask;->b:Landroid/media/MediaRecorder;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 214
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioRecorder$PrepareAndStartRecorderTask;->b:Landroid/media/MediaRecorder;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 215
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioRecorder$PrepareAndStartRecorderTask;->b:Landroid/media/MediaRecorder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    .line 216
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioRecorder$PrepareAndStartRecorderTask;->b:Landroid/media/MediaRecorder;

    const/16 v1, 0x1f40

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    .line 217
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioRecorder$PrepareAndStartRecorderTask;->b:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/facebook/orca/attachments/AudioRecorder$PrepareAndStartRecorderTask;->c:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 218
    invoke-virtual {p0}, Lcom/facebook/orca/attachments/AudioRecorder$PrepareAndStartRecorderTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    sget-object v0, Lcom/facebook/orca/attachments/AudioRecorder$RecordResult;->INTERRUPTED:Lcom/facebook/orca/attachments/AudioRecorder$RecordResult;

    .line 237
    :goto_0
    return-object v0

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioRecorder$PrepareAndStartRecorderTask;->b:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->prepare()V

    .line 222
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioRecorder$PrepareAndStartRecorderTask;->a:Lcom/facebook/orca/attachments/AudioRecorder;

    invoke-static {v0}, Lcom/facebook/orca/attachments/AudioRecorder;->d(Lcom/facebook/orca/attachments/AudioRecorder;)Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/orca/attachments/AudioRecorder$PrepareAndStartRecorderTask;->a:Lcom/facebook/orca/attachments/AudioRecorder;

    invoke-static {v1}, Lcom/facebook/orca/attachments/AudioRecorder;->c(Lcom/facebook/orca/attachments/AudioRecorder;)Lcom/facebook/orca/attachments/AudioRecorder$FocusChangeListener;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    .line 226
    if-eq v0, v4, :cond_1

    .line 227
    sget-object v0, Lcom/facebook/orca/attachments/AudioRecorder$RecordResult;->ERROR:Lcom/facebook/orca/attachments/AudioRecorder$RecordResult;

    goto :goto_0

    .line 229
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/orca/attachments/AudioRecorder$PrepareAndStartRecorderTask;->e:Z

    .line 230
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioRecorder$PrepareAndStartRecorderTask;->b:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->start()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    sget-object v0, Lcom/facebook/orca/attachments/AudioRecorder$RecordResult;->SUCCESS:Lcom/facebook/orca/attachments/AudioRecorder$RecordResult;

    goto :goto_0

    .line 231
    :catch_0
    move-exception v0

    .line 233
    const-string v1, "orca:AudioRecorder"

    const-string v2, "Recording initialization failed"

    invoke-static {v1, v2, v0}, Lcom/facebook/orca/debug/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 234
    sget-object v0, Lcom/facebook/orca/attachments/AudioRecorder$RecordResult;->ERROR:Lcom/facebook/orca/attachments/AudioRecorder$RecordResult;

    goto :goto_0
.end method

.method a()Ljava/io/File;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioRecorder$PrepareAndStartRecorderTask;->c:Ljava/io/File;

    return-object v0
.end method

.method protected a(Lcom/facebook/orca/attachments/AudioRecorder$RecordResult;)V
    .locals 4
    .parameter

    .prologue
    .line 247
    sget-object v0, Lcom/facebook/orca/attachments/AudioRecorder$RecordResult;->SUCCESS:Lcom/facebook/orca/attachments/AudioRecorder$RecordResult;

    if-ne p1, v0, :cond_1

    .line 248
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioRecorder$PrepareAndStartRecorderTask;->a:Lcom/facebook/orca/attachments/AudioRecorder;

    invoke-static {v0}, Lcom/facebook/orca/attachments/AudioRecorder;->b(Lcom/facebook/orca/attachments/AudioRecorder;)Lcom/facebook/orca/attachments/AudioRecorder$RecordingCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/orca/attachments/AudioRecorder$PrepareAndStartRecorderTask;->b:Landroid/media/MediaRecorder;

    invoke-interface {v0, v1}, Lcom/facebook/orca/attachments/AudioRecorder$RecordingCallback;->a(Landroid/media/MediaRecorder;)V

    .line 249
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioRecorder$PrepareAndStartRecorderTask;->a:Lcom/facebook/orca/attachments/AudioRecorder;

    invoke-static {v0}, Lcom/facebook/orca/attachments/AudioRecorder;->f(Lcom/facebook/orca/attachments/AudioRecorder;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/orca/attachments/AudioRecorder$PrepareAndStartRecorderTask;->a:Lcom/facebook/orca/attachments/AudioRecorder;

    invoke-static {v1}, Lcom/facebook/orca/attachments/AudioRecorder;->e(Lcom/facebook/orca/attachments/AudioRecorder;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 251
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioRecorder$PrepareAndStartRecorderTask;->a:Lcom/facebook/orca/attachments/AudioRecorder;

    invoke-static {v0}, Lcom/facebook/orca/attachments/AudioRecorder;->g(Lcom/facebook/orca/attachments/AudioRecorder;)Landroid/media/ToneGenerator;

    move-result-object v0

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroid/media/ToneGenerator;->startTone(I)Z

    .line 263
    :cond_0
    :goto_0
    return-void

    .line 252
    :cond_1
    sget-object v0, Lcom/facebook/orca/attachments/AudioRecorder$RecordResult;->ERROR:Lcom/facebook/orca/attachments/AudioRecorder$RecordResult;

    if-ne p1, v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioRecorder$PrepareAndStartRecorderTask;->a:Lcom/facebook/orca/attachments/AudioRecorder;

    invoke-static {v0}, Lcom/facebook/orca/attachments/AudioRecorder;->h(Lcom/facebook/orca/attachments/AudioRecorder;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/orca/attachments/AudioRecorder$PrepareAndStartRecorderTask;->a:Lcom/facebook/orca/attachments/AudioRecorder;

    invoke-static {v1}, Lcom/facebook/orca/attachments/AudioRecorder;->h(Lcom/facebook/orca/attachments/AudioRecorder;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/facebook/R$string;->audio_recorder_initialization_error:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 258
    invoke-direct {p0}, Lcom/facebook/orca/attachments/AudioRecorder$PrepareAndStartRecorderTask;->b()V

    .line 259
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioRecorder$PrepareAndStartRecorderTask;->a:Lcom/facebook/orca/attachments/AudioRecorder;

    invoke-static {v0}, Lcom/facebook/orca/attachments/AudioRecorder;->i(Lcom/facebook/orca/attachments/AudioRecorder;)Lcom/facebook/orca/attachments/AudioRecorder$PrepareAndStartRecorderTask;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioRecorder$PrepareAndStartRecorderTask;->a:Lcom/facebook/orca/attachments/AudioRecorder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/orca/attachments/AudioRecorder;->a(Lcom/facebook/orca/attachments/AudioRecorder;Lcom/facebook/orca/attachments/AudioRecorder$PrepareAndStartRecorderTask;)Lcom/facebook/orca/attachments/AudioRecorder$PrepareAndStartRecorderTask;

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 197
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/facebook/orca/attachments/AudioRecorder$PrepareAndStartRecorderTask;->a([Ljava/lang/Void;)Lcom/facebook/orca/attachments/AudioRecorder$RecordResult;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 0

    .prologue
    .line 242
    invoke-direct {p0}, Lcom/facebook/orca/attachments/AudioRecorder$PrepareAndStartRecorderTask;->b()V

    .line 243
    return-void
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 197
    check-cast p1, Lcom/facebook/orca/attachments/AudioRecorder$RecordResult;

    invoke-virtual {p0, p1}, Lcom/facebook/orca/attachments/AudioRecorder$PrepareAndStartRecorderTask;->a(Lcom/facebook/orca/attachments/AudioRecorder$RecordResult;)V

    return-void
.end method
