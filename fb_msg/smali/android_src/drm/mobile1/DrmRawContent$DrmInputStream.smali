.class Landroid_src/drm/mobile1/DrmRawContent$DrmInputStream;
.super Ljava/io/InputStream;
.source "DrmRawContent.java"


# instance fields
.field final synthetic a:Landroid_src/drm/mobile1/DrmRawContent;

.field private b:Z

.field private c:I

.field private d:[B


# virtual methods
.method public available()I
    .locals 2

    .prologue
    .line 284
    iget-object v0, p0, Landroid_src/drm/mobile1/DrmRawContent$DrmInputStream;->a:Landroid_src/drm/mobile1/DrmRawContent;

    invoke-static {v0}, Landroid_src/drm/mobile1/DrmRawContent;->a(Landroid_src/drm/mobile1/DrmRawContent;)I

    move-result v0

    .line 286
    const/4 v1, -0x1

    if-ne v1, v0, :cond_0

    .line 287
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 290
    :cond_0
    const/4 v1, -0x3

    if-ne v1, v0, :cond_2

    .line 291
    const/4 v0, 0x0

    .line 297
    :cond_1
    return v0

    .line 293
    :cond_2
    iget v1, p0, Landroid_src/drm/mobile1/DrmRawContent$DrmInputStream;->c:I

    sub-int/2addr v0, v1

    .line 294
    if-gez v0, :cond_1

    .line 295
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 378
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid_src/drm/mobile1/DrmRawContent$DrmInputStream;->b:Z

    .line 379
    return-void
.end method

.method public mark(I)V
    .locals 0
    .parameter

    .prologue
    .line 358
    return-void
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 351
    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v0, -0x1

    .line 306
    iget-object v1, p0, Landroid_src/drm/mobile1/DrmRawContent$DrmInputStream;->d:[B

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v3, v2}, Landroid_src/drm/mobile1/DrmRawContent$DrmInputStream;->read([BII)I

    move-result v1

    .line 308
    if-ne v0, v1, :cond_0

    .line 311
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid_src/drm/mobile1/DrmRawContent$DrmInputStream;->d:[B

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    goto :goto_0
.end method

.method public read([B)I
    .locals 2
    .parameter

    .prologue
    .line 318
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Landroid_src/drm/mobile1/DrmRawContent$DrmInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 325
    if-nez p1, :cond_0

    .line 326
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 327
    :cond_0
    if-ltz p2, :cond_1

    if-ltz p3, :cond_1

    add-int v1, p2, p3

    array-length v2, p1

    if-le v1, v2, :cond_2

    .line 328
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 329
    :cond_2
    const/4 v1, 0x1

    iget-boolean v2, p0, Landroid_src/drm/mobile1/DrmRawContent$DrmInputStream;->b:Z

    if-ne v1, v2, :cond_3

    .line 330
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 332
    :cond_3
    if-nez p3, :cond_5

    .line 333
    const/4 v0, 0x0

    .line 344
    :cond_4
    :goto_0
    return v0

    .line 335
    :cond_5
    iget-object v1, p0, Landroid_src/drm/mobile1/DrmRawContent$DrmInputStream;->a:Landroid_src/drm/mobile1/DrmRawContent;

    iget v2, p0, Landroid_src/drm/mobile1/DrmRawContent$DrmInputStream;->c:I

    invoke-static {v1, p1, p2, p3, v2}, Landroid_src/drm/mobile1/DrmRawContent;->a(Landroid_src/drm/mobile1/DrmRawContent;[BIII)I

    move-result v1

    .line 337
    if-ne v0, v1, :cond_6

    .line 338
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 339
    :cond_6
    const/4 v2, -0x2

    if-eq v2, v1, :cond_4

    .line 342
    iget v0, p0, Landroid_src/drm/mobile1/DrmRawContent$DrmInputStream;->c:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid_src/drm/mobile1/DrmRawContent$DrmInputStream;->c:I

    move v0, v1

    .line 344
    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 364
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
.end method

.method public skip(J)J
    .locals 2
    .parameter

    .prologue
    .line 371
    const-wide/16 v0, 0x0

    return-wide v0
.end method
