.class public Lcom/facebook/orca/attachments/MediaAttachmentUtil;
.super Ljava/lang/Object;
.source "MediaAttachmentUtil.java"


# instance fields
.field private final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final b:Landroid/content/Context;

.field private final c:Lcom/facebook/orca/attachments/ImageAttachmentDecoder;

.field private final d:Lcom/facebook/orca/images/ImageScalingUtil;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/orca/attachments/ImageAttachmentDecoder;Lcom/facebook/orca/images/ImageScalingUtil;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-class v0, Lcom/facebook/orca/attachments/MediaAttachmentUtil;

    iput-object v0, p0, Lcom/facebook/orca/attachments/MediaAttachmentUtil;->a:Ljava/lang/Class;

    .line 48
    iput-object p1, p0, Lcom/facebook/orca/attachments/MediaAttachmentUtil;->b:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Lcom/facebook/orca/attachments/MediaAttachmentUtil;->c:Lcom/facebook/orca/attachments/ImageAttachmentDecoder;

    .line 50
    iput-object p3, p0, Lcom/facebook/orca/attachments/MediaAttachmentUtil;->d:Lcom/facebook/orca/images/ImageScalingUtil;

    .line 51
    return-void
.end method

.method private a(Landroid/graphics/Bitmap;)Lcom/facebook/orca/protocol/base/ByteArrayBody;
    .locals 6
    .parameter

    .prologue
    .line 232
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 233
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 235
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 236
    new-instance v3, Lcom/facebook/orca/protocol/base/ByteArrayBody;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const-string v4, "image/jpeg"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v0, v4, v1}, Lcom/facebook/orca/protocol/base/ByteArrayBody;-><init>([BLjava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method private b(Lcom/facebook/orca/attachments/MediaAttachment;I)Landroid/graphics/Bitmap;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 216
    iget-object v0, p0, Lcom/facebook/orca/attachments/MediaAttachmentUtil;->c:Lcom/facebook/orca/attachments/ImageAttachmentDecoder;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/orca/attachments/ImageAttachmentDecoder;->a(Lcom/facebook/orca/attachments/MediaAttachment;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 218
    if-nez v0, :cond_0

    .line 219
    iget-object v1, p0, Lcom/facebook/orca/attachments/MediaAttachmentUtil;->a:Ljava/lang/Class;

    const-string v2, "Unable to read the original bitmap"

    invoke-static {v1, v2}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/Class;Ljava/lang/String;)V

    .line 222
    :cond_0
    return-object v0
.end method


# virtual methods
.method public a(Lcom/facebook/orca/attachments/MediaAttachment;I)Landroid/graphics/Bitmap;
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 60
    iget-object v1, p0, Lcom/facebook/orca/attachments/MediaAttachmentUtil;->b:Landroid/content/Context;

    int-to-float v2, p2

    invoke-static {v1, v2}, Lcom/facebook/orca/common/util/SizeUtil;->a(Landroid/content/Context;F)I

    move-result v1

    .line 61
    invoke-virtual {p1}, Lcom/facebook/orca/attachments/MediaAttachment;->a()Lcom/facebook/orca/media/MediaResource;

    move-result-object v2

    .line 62
    sget-object v3, Lcom/facebook/orca/attachments/MediaAttachmentUtil$1;->a:[I

    invoke-virtual {v2}, Lcom/facebook/orca/media/MediaResource;->b()Lcom/facebook/orca/media/MediaResource$Type;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/orca/media/MediaResource$Type;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 88
    iget-object v1, p0, Lcom/facebook/orca/attachments/MediaAttachmentUtil;->a:Ljava/lang/Class;

    const-string v2, "Unexpected attachment type"

    invoke-static {v1, v2}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/Class;Ljava/lang/String;)V

    .line 89
    :cond_0
    :goto_0
    :pswitch_0
    return-object v0

    .line 64
    :pswitch_1
    invoke-direct {p0, p1, v1}, Lcom/facebook/orca/attachments/MediaAttachmentUtil;->b(Lcom/facebook/orca/attachments/MediaAttachment;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 66
    if-eqz v2, :cond_0

    .line 70
    iget-object v0, p0, Lcom/facebook/orca/attachments/MediaAttachmentUtil;->d:Lcom/facebook/orca/images/ImageScalingUtil;

    invoke-virtual {v0, v2, v1}, Lcom/facebook/orca/images/ImageScalingUtil;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 73
    :pswitch_2
    invoke-virtual {v2}, Lcom/facebook/orca/media/MediaResource;->c()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 76
    if-nez v2, :cond_1

    .line 77
    iget-object v1, p0, Lcom/facebook/orca/attachments/MediaAttachmentUtil;->a:Ljava/lang/Class;

    const-string v2, "Unable to generate a thumbnail for the video"

    invoke-static {v1, v2}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/attachments/MediaAttachmentUtil;->d:Lcom/facebook/orca/images/ImageScalingUtil;

    invoke-virtual {v0, v2, v1}, Lcom/facebook/orca/images/ImageScalingUtil;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 62
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public a(Lcom/facebook/orca/attachments/MediaAttachment;)Lcom/facebook/orca/protocol/base/ContentBody;
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 100
    sget-object v0, Lcom/facebook/orca/attachments/MediaAttachmentUtil$1;->a:[I

    invoke-virtual {p1}, Lcom/facebook/orca/attachments/MediaAttachment;->a()Lcom/facebook/orca/media/MediaResource;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/orca/media/MediaResource;->b()Lcom/facebook/orca/media/MediaResource$Type;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/orca/media/MediaResource$Type;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 133
    iget-object v0, p0, Lcom/facebook/orca/attachments/MediaAttachmentUtil;->a:Ljava/lang/Class;

    const-string v2, "Unexpected attachment type"

    invoke-static {v0, v2}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/Class;Ljava/lang/String;)V

    move-object v0, v1

    .line 134
    :goto_0
    return-object v0

    .line 105
    :pswitch_0
    iget-object v0, p0, Lcom/facebook/orca/attachments/MediaAttachmentUtil;->b:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 107
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v2

    .line 108
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    .line 113
    const-wide v3, 0x3ff199999999999aL

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-double v5, v0

    mul-double v2, v3, v5

    double-to-int v0, v2

    .line 114
    invoke-direct {p0, p1, v0}, Lcom/facebook/orca/attachments/MediaAttachmentUtil;->b(Lcom/facebook/orca/attachments/MediaAttachment;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 116
    if-nez v2, :cond_0

    move-object v0, v1

    .line 117
    goto :goto_0

    .line 120
    :cond_0
    iget-object v1, p0, Lcom/facebook/orca/attachments/MediaAttachmentUtil;->d:Lcom/facebook/orca/images/ImageScalingUtil;

    invoke-virtual {v1, v2, v0}, Lcom/facebook/orca/images/ImageScalingUtil;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 121
    invoke-direct {p0, v0}, Lcom/facebook/orca/attachments/MediaAttachmentUtil;->a(Landroid/graphics/Bitmap;)Lcom/facebook/orca/protocol/base/ByteArrayBody;

    move-result-object v0

    goto :goto_0

    .line 124
    :pswitch_1
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Lcom/facebook/orca/attachments/MediaAttachment;->a()Lcom/facebook/orca/media/MediaResource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/media/MediaResource;->c()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 125
    new-instance v0, Lcom/facebook/orca/protocol/base/DataStreamBody;

    const-string v2, "video/3gpp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".3gp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/orca/protocol/base/DataStreamBody;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 128
    :pswitch_2
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Lcom/facebook/orca/attachments/MediaAttachment;->a()Lcom/facebook/orca/media/MediaResource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/media/MediaResource;->c()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 129
    const-string v0, "yyyy_MM_dd_kk_mm_ss"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-static {v0, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 130
    new-instance v0, Lcom/facebook/orca/protocol/base/DataStreamBody;

    const-string v3, "audio/MPEG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ".mp4"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v3, v2}, Lcom/facebook/orca/protocol/base/DataStreamBody;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 100
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public a(Lcom/facebook/orca/attachments/MediaAttachment;III)[B
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 156
    iget-object v0, p0, Lcom/facebook/orca/attachments/MediaAttachmentUtil;->c:Lcom/facebook/orca/attachments/ImageAttachmentDecoder;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/orca/attachments/ImageAttachmentDecoder;->a(Lcom/facebook/orca/attachments/MediaAttachment;II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 162
    const/4 v0, 0x0

    .line 163
    const/4 v2, 0x0

    move v3, v0

    .line 164
    :goto_0
    const/4 v0, 0x4

    if-ge v3, v0, :cond_7

    .line 167
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-gt v0, p3, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-le v0, p2, :cond_6

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/attachments/MediaAttachmentUtil;->d:Lcom/facebook/orca/images/ImageScalingUtil;

    invoke-virtual {v0, v1, p2, p3}, Lcom/facebook/orca/images/ImageScalingUtil;->a(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 175
    :goto_1
    const/4 v6, -0x1

    .line 176
    const/16 v5, 0x5f

    .line 177
    const v4, 0x7fffffff

    move v8, v4

    move-object v4, v2

    move v2, v8

    .line 178
    :goto_2
    if-eq v5, v6, :cond_8

    .line 179
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 180
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v0, v2, v5, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v6

    .line 181
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    .line 182
    if-eqz v2, :cond_1

    if-nez v6, :cond_2

    .line 183
    :cond_1
    const/4 v0, 0x0

    .line 205
    :goto_3
    return-object v0

    .line 185
    :cond_2
    if-gt v2, p4, :cond_3

    move v8, v2

    move-object v2, v4

    move v4, v8

    .line 192
    :goto_4
    if-gt v4, p4, :cond_4

    move-object v0, v2

    .line 202
    :goto_5
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    if-gt v1, p4, :cond_5

    .line 203
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    goto :goto_3

    .line 189
    :cond_3
    add-int/lit8 v6, v5, -0xa

    const/16 v7, 0x32

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    move v8, v6

    move v6, v5

    move v5, v8

    .line 190
    goto :goto_2

    .line 197
    :cond_4
    const-wide/high16 v4, 0x3fe8

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-double v6, v6

    mul-double/2addr v4, v6

    double-to-int p2, v4

    .line 198
    const-wide/high16 v4, 0x3fe8

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-double v6, v0

    mul-double/2addr v4, v6

    double-to-int p3, v4

    .line 199
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    .line 200
    goto :goto_0

    .line 205
    :cond_5
    const/4 v0, 0x0

    goto :goto_3

    :cond_6
    move-object v0, v1

    goto :goto_1

    :cond_7
    move-object v0, v2

    goto :goto_5

    :cond_8
    move v8, v2

    move-object v2, v4

    move v4, v8

    goto :goto_4
.end method
