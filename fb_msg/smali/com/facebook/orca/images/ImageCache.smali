.class public Lcom/facebook/orca/images/ImageCache;
.super Lcom/facebook/orca/media/MediaCache;
.source "ImageCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/media/MediaCache",
        "<",
        "Lcom/facebook/orca/images/ImageCacheKey;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# instance fields
.field private final a:Lcom/facebook/orca/attachments/MediaAttachmentFactory;

.field private final b:Lcom/facebook/orca/attachments/ImageAttachmentDecoder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/orca/attachments/MediaAttachmentFactory;Lcom/facebook/orca/attachments/ImageAttachmentDecoder;Lcom/facebook/orca/common/util/Clock;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-static {p5}, Lcom/facebook/orca/images/ImageCache;->a(I)Lcom/facebook/orca/media/MediaCacheParams;

    move-result-object v0

    invoke-direct {p0, p1, p4, v0}, Lcom/facebook/orca/media/MediaCache;-><init>(Landroid/content/Context;Lcom/facebook/orca/common/util/Clock;Lcom/facebook/orca/media/MediaCacheParams;)V

    .line 55
    iput-object p2, p0, Lcom/facebook/orca/images/ImageCache;->a:Lcom/facebook/orca/attachments/MediaAttachmentFactory;

    .line 56
    iput-object p3, p0, Lcom/facebook/orca/images/ImageCache;->b:Lcom/facebook/orca/attachments/ImageAttachmentDecoder;

    .line 57
    return-void
.end method

.method private static a(I)Lcom/facebook/orca/media/MediaCacheParams;
    .locals 4
    .parameter

    .prologue
    const/16 v2, 0x20

    .line 91
    const/16 v0, 0x40

    if-lt p0, v0, :cond_0

    const/high16 v0, 0x80

    move v1, v0

    .line 96
    :goto_0
    if-lt p0, v2, :cond_2

    const/high16 v0, 0x10

    sub-int v0, v1, v0

    .line 101
    :goto_1
    new-instance v2, Lcom/facebook/orca/media/MediaCacheParams;

    invoke-direct {v2}, Lcom/facebook/orca/media/MediaCacheParams;-><init>()V

    const-string v3, "image"

    invoke-virtual {v2, v3}, Lcom/facebook/orca/media/MediaCacheParams;->a(Ljava/lang/String;)Lcom/facebook/orca/media/MediaCacheParams;

    move-result-object v2

    const-string v3, ".image"

    invoke-virtual {v2, v3}, Lcom/facebook/orca/media/MediaCacheParams;->b(Ljava/lang/String;)Lcom/facebook/orca/media/MediaCacheParams;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/facebook/orca/media/MediaCacheParams;->a(I)Lcom/facebook/orca/media/MediaCacheParams;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/facebook/orca/media/MediaCacheParams;->b(I)Lcom/facebook/orca/media/MediaCacheParams;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/media/MediaCacheParams;->a(Z)Lcom/facebook/orca/media/MediaCacheParams;

    move-result-object v0

    return-object v0

    .line 91
    :cond_0
    if-lt p0, v2, :cond_1

    const/high16 v0, 0x40

    move v1, v0

    goto :goto_0

    :cond_1
    const/high16 v0, 0x20

    move v1, v0

    goto :goto_0

    .line 96
    :cond_2
    const/high16 v0, 0x8

    sub-int v0, v1, v0

    goto :goto_1
.end method


# virtual methods
.method protected a(Landroid/graphics/Bitmap;)I
    .locals 2
    .parameter

    .prologue
    .line 87
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x4

    return v0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 28
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/facebook/orca/images/ImageCache;->a(Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method

.method protected a(Lcom/facebook/orca/images/ImageCacheKey;Ljava/io/File;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 61
    invoke-virtual {p1}, Lcom/facebook/orca/images/ImageCacheKey;->a()Lcom/facebook/orca/images/ImageCacheKey$Options;

    move-result-object v0

    iget-boolean v0, v0, Lcom/facebook/orca/images/ImageCacheKey$Options;->a:Z

    if-eqz v0, :cond_0

    .line 62
    invoke-static {p2}, Lcom/facebook/orca/media/MediaResource;->a(Ljava/io/File;)Lcom/facebook/orca/media/MediaResource;

    move-result-object v0

    .line 63
    iget-object v1, p0, Lcom/facebook/orca/images/ImageCache;->a:Lcom/facebook/orca/attachments/MediaAttachmentFactory;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/attachments/MediaAttachmentFactory;->b(Lcom/facebook/orca/media/MediaResource;)Lcom/facebook/orca/attachments/MediaAttachment;

    move-result-object v0

    .line 64
    iget-object v1, p0, Lcom/facebook/orca/images/ImageCache;->b:Lcom/facebook/orca/attachments/ImageAttachmentDecoder;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/attachments/ImageAttachmentDecoder;->a(Lcom/facebook/orca/attachments/MediaAttachment;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 66
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic a(Lcom/facebook/orca/media/MediaCacheKey;Ljava/io/File;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 28
    check-cast p1, Lcom/facebook/orca/images/ImageCacheKey;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/orca/images/ImageCache;->a(Lcom/facebook/orca/images/ImageCacheKey;Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/facebook/orca/images/ImageCacheKey;Landroid/graphics/Bitmap;Ljava/io/File;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 73
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 75
    :try_start_0
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p2, v0, v2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    :goto_0
    invoke-static {v1}, Lcom/google/common/io/Closeables;->a(Ljava/io/Closeable;)V

    .line 83
    return-void

    .line 78
    :cond_0
    :try_start_1
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x5f

    invoke-virtual {p2, v0, v2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 81
    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/google/common/io/Closeables;->a(Ljava/io/Closeable;)V

    throw v0
.end method

.method protected bridge synthetic a(Lcom/facebook/orca/media/MediaCacheKey;Ljava/lang/Object;Ljava/io/File;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 28
    check-cast p1, Lcom/facebook/orca/images/ImageCacheKey;

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/orca/images/ImageCache;->a(Lcom/facebook/orca/images/ImageCacheKey;Landroid/graphics/Bitmap;Ljava/io/File;)V

    return-void
.end method
