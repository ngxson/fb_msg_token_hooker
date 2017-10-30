.class public Lcom/facebook/orca/attachments/ImageAttachmentDecoder;
.super Ljava/lang/Object;
.source "ImageAttachmentDecoder.java"


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/facebook/orca/attachments/ImageAttachmentDecoder;->a:Landroid/content/Context;

    .line 35
    return-void
.end method

.method private a(IIII)I
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, -0x1

    const/4 v1, -0x2

    .line 167
    if-ne p2, v1, :cond_2

    .line 168
    iget-object v0, p0, Lcom/facebook/orca/attachments/ImageAttachmentDecoder;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget p2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 173
    :cond_0
    :goto_0
    if-ne p1, v1, :cond_3

    .line 174
    iget-object v0, p0, Lcom/facebook/orca/attachments/ImageAttachmentDecoder;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget p1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 182
    :cond_1
    :goto_1
    mul-int v0, p4, p3

    mul-int/lit8 v1, v0, 0x4

    .line 183
    mul-int/lit8 v0, p2, 0x11

    mul-int/2addr v0, p1

    mul-int/lit8 v0, v0, 0x4

    div-int/lit8 v2, v0, 0xa

    .line 184
    const/4 v0, 0x1

    .line 185
    :goto_2
    if-le v1, v2, :cond_4

    .line 186
    mul-int/lit8 v0, v0, 0x2

    .line 187
    div-int/lit8 v1, v1, 0x4

    goto :goto_2

    .line 169
    :cond_2
    if-ne p2, v2, :cond_0

    move p2, p4

    .line 170
    goto :goto_0

    .line 175
    :cond_3
    if-ne p1, v2, :cond_1

    move p1, p3

    .line 176
    goto :goto_1

    .line 189
    :cond_4
    return v0
.end method

.method static synthetic a(Lcom/facebook/orca/attachments/ImageAttachmentDecoder;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/facebook/orca/attachments/ImageAttachmentDecoder;->a:Landroid/content/Context;

    return-object v0
.end method

.method private a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v6, 0x1

    const/high16 v4, 0x3f80

    const/high16 v3, -0x4080

    .line 135
    if-ne p2, v6, :cond_0

    .line 161
    :goto_0
    return-object p1

    .line 139
    :cond_0
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 140
    const/4 v2, 0x2

    if-ne p2, v2, :cond_3

    .line 141
    invoke-virtual {v5, v4, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    move p2, v6

    .line 154
    :cond_1
    :goto_1
    if-ne p2, v0, :cond_6

    .line 155
    const/high16 v0, 0x4334

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 161
    :cond_2
    :goto_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move-object v0, p1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    .line 143
    :cond_3
    const/4 v2, 0x4

    if-ne p2, v2, :cond_4

    .line 144
    invoke-virtual {v5, v4, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    move p2, v0

    .line 145
    goto :goto_1

    .line 146
    :cond_4
    const/4 v2, 0x7

    if-ne p2, v2, :cond_5

    .line 147
    invoke-virtual {v5, v4, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 148
    const/4 p2, 0x6

    goto :goto_1

    .line 149
    :cond_5
    const/4 v2, 0x5

    if-ne p2, v2, :cond_1

    .line 150
    invoke-virtual {v5, v4, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 151
    const/16 p2, 0x8

    goto :goto_1

    .line 156
    :cond_6
    const/4 v0, 0x6

    if-ne p2, v0, :cond_7

    .line 157
    const/high16 v0, 0x42b4

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto :goto_2

    .line 158
    :cond_7
    const/16 v0, 0x8

    if-ne p2, v0, :cond_2

    .line 159
    const/high16 v0, 0x4387

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto :goto_2
.end method

.method private b(Lcom/facebook/orca/attachments/MediaAttachment;)I
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 110
    invoke-virtual {p1}, Lcom/facebook/orca/attachments/MediaAttachment;->a()Lcom/facebook/orca/media/MediaResource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/media/MediaResource;->c()Landroid/net/Uri;

    move-result-object v0

    .line 112
    const-string v1, "file"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "temp-rotate_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 115
    iget-object v1, p0, Lcom/facebook/orca/attachments/ImageAttachmentDecoder;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 117
    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/orca/attachments/MediaAttachment;->c()Lcom/google/common/io/InputSupplier;

    move-result-object v0

    new-instance v2, Lcom/facebook/orca/attachments/ImageAttachmentDecoder$1;

    invoke-direct {v2, p0, v1}, Lcom/facebook/orca/attachments/ImageAttachmentDecoder$1;-><init>(Lcom/facebook/orca/attachments/ImageAttachmentDecoder;Ljava/io/File;)V

    invoke-static {v0, v2}, Lcom/google/common/io/ByteStreams;->a(Lcom/google/common/io/InputSupplier;Lcom/google/common/io/OutputSupplier;)J

    .line 123
    new-instance v0, Landroid/media/ExifInterface;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 124
    const-string v2, "Orientation"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 126
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 130
    :goto_0
    return v0

    .line 126
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    throw v0

    .line 129
    :cond_0
    new-instance v1, Landroid/media/ExifInterface;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 130
    const-string v0, "Orientation"

    invoke-virtual {v1, v0, v3}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/facebook/orca/attachments/MediaAttachment;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter

    .prologue
    .line 44
    const/4 v0, -0x2

    invoke-virtual {p0, p1, v0}, Lcom/facebook/orca/attachments/ImageAttachmentDecoder;->a(Lcom/facebook/orca/attachments/MediaAttachment;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/facebook/orca/attachments/MediaAttachment;I)Landroid/graphics/Bitmap;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 57
    invoke-virtual {p0, p1, p2, p2}, Lcom/facebook/orca/attachments/ImageAttachmentDecoder;->a(Lcom/facebook/orca/attachments/MediaAttachment;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/facebook/orca/attachments/MediaAttachment;II)Landroid/graphics/Bitmap;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v5, -0x1

    const/4 v1, 0x0

    .line 63
    :try_start_0
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 64
    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 65
    invoke-virtual {p1}, Lcom/facebook/orca/attachments/MediaAttachment;->b()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 67
    const/4 v4, 0x0

    :try_start_1
    invoke-static {v3, v4, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    :try_start_2
    invoke-static {v3}, Lcom/google/common/io/Closeables;->a(Ljava/io/Closeable;)V

    .line 73
    if-ne p2, v5, :cond_0

    if-ne p3, v5, :cond_0

    .line 81
    :goto_0
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 82
    iput v0, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 83
    invoke-virtual {p1}, Lcom/facebook/orca/attachments/MediaAttachment;->b()Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v3

    .line 86
    const/4 v0, 0x0

    :try_start_3
    invoke-static {v3, v0, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v0

    .line 88
    :try_start_4
    invoke-static {v3}, Lcom/google/common/io/Closeables;->a(Ljava/io/Closeable;)V

    .line 90
    if-nez v0, :cond_1

    move-object v0, v1

    .line 106
    :goto_1
    return-object v0

    .line 69
    :catchall_0
    move-exception v0

    invoke-static {v3}, Lcom/google/common/io/Closeables;->a(Ljava/io/Closeable;)V

    throw v0

    .line 103
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 106
    goto :goto_1

    .line 77
    :cond_0
    iget v0, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v2, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-direct {p0, p2, p3, v0, v2}, Lcom/facebook/orca/attachments/ImageAttachmentDecoder;->a(IIII)I

    move-result v0

    goto :goto_0

    .line 88
    :catchall_1
    move-exception v0

    invoke-static {v3}, Lcom/google/common/io/Closeables;->a(Ljava/io/Closeable;)V

    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 96
    :cond_1
    :try_start_5
    invoke-direct {p0, p1}, Lcom/facebook/orca/attachments/ImageAttachmentDecoder;->b(Lcom/facebook/orca/attachments/MediaAttachment;)I

    move-result v1

    .line 97
    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/attachments/ImageAttachmentDecoder;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    move-result-object v0

    goto :goto_1

    .line 98
    :catch_1
    move-exception v1

    goto :goto_1
.end method
