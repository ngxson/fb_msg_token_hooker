.class public Lcom/facebook/orca/audio/AudioCache;
.super Lcom/facebook/orca/media/MediaCache;
.source "AudioCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/media/MediaCache",
        "<",
        "Lcom/facebook/orca/audio/AudioCacheKey;",
        "[B>;"
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/orca/common/util/Clock;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-static {}, Lcom/facebook/orca/audio/AudioCache;->e()Lcom/facebook/orca/media/MediaCacheParams;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/orca/media/MediaCache;-><init>(Landroid/content/Context;Lcom/facebook/orca/common/util/Clock;Lcom/facebook/orca/media/MediaCacheParams;)V

    .line 27
    return-void
.end method

.method private static e()Lcom/facebook/orca/media/MediaCacheParams;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 64
    new-instance v0, Lcom/facebook/orca/media/MediaCacheParams;

    invoke-direct {v0}, Lcom/facebook/orca/media/MediaCacheParams;-><init>()V

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/media/MediaCacheParams;->a(Ljava/lang/String;)Lcom/facebook/orca/media/MediaCacheParams;

    move-result-object v0

    const-string v1, ".audio"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/media/MediaCacheParams;->b(Ljava/lang/String;)Lcom/facebook/orca/media/MediaCacheParams;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/facebook/orca/media/MediaCacheParams;->a(I)Lcom/facebook/orca/media/MediaCacheParams;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/facebook/orca/media/MediaCacheParams;->b(I)Lcom/facebook/orca/media/MediaCacheParams;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/facebook/orca/media/MediaCacheParams;->a(Z)Lcom/facebook/orca/media/MediaCacheParams;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic a(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 22
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/facebook/orca/audio/AudioCache;->a([B)I

    move-result v0

    return v0
.end method

.method protected a([B)I
    .locals 1
    .parameter

    .prologue
    .line 60
    array-length v0, p1

    return v0
.end method

.method protected bridge synthetic a(Lcom/facebook/orca/media/MediaCacheKey;Ljava/io/File;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 22
    check-cast p1, Lcom/facebook/orca/audio/AudioCacheKey;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/orca/audio/AudioCache;->a(Lcom/facebook/orca/audio/AudioCacheKey;Ljava/io/File;)[B

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/facebook/orca/audio/AudioCacheKey;[BLjava/io/File;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 47
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Ljava/io/File;->setReadable(ZZ)Z

    .line 49
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 52
    :try_start_0
    invoke-virtual {v0, p2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    invoke-static {v0}, Lcom/google/common/io/Closeables;->a(Ljava/io/Closeable;)V

    .line 56
    return-void

    .line 54
    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/google/common/io/Closeables;->a(Ljava/io/Closeable;)V

    throw v1
.end method

.method protected bridge synthetic a(Lcom/facebook/orca/media/MediaCacheKey;Ljava/lang/Object;Ljava/io/File;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 22
    check-cast p1, Lcom/facebook/orca/audio/AudioCacheKey;

    check-cast p2, [B

    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/orca/audio/AudioCache;->a(Lcom/facebook/orca/audio/AudioCacheKey;[BLjava/io/File;)V

    return-void
.end method

.method protected a(Lcom/facebook/orca/audio/AudioCacheKey;Ljava/io/File;)[B
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-static {p2}, Lcom/google/common/io/Files;->c(Ljava/io/File;)[B

    move-result-object v0

    return-object v0
.end method
