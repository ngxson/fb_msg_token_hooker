.class Lcom/facebook/orca/images/FetchImageHelper;
.super Ljava/lang/Object;
.source "FetchImageHelper.java"


# static fields
.field private static a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Lcom/facebook/orca/images/ImageCache;

.field private final c:Lcom/facebook/orca/images/ImageMediaDownloader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/facebook/orca/images/FetchImageHelper;

    sput-object v0, Lcom/facebook/orca/images/FetchImageHelper;->a:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/orca/images/ImageCache;Lcom/facebook/orca/images/ImageMediaDownloader;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/facebook/orca/images/FetchImageHelper;->b:Lcom/facebook/orca/images/ImageCache;

    .line 29
    iput-object p2, p0, Lcom/facebook/orca/images/FetchImageHelper;->c:Lcom/facebook/orca/images/ImageMediaDownloader;

    .line 30
    return-void
.end method

.method private a(Lcom/facebook/orca/images/FetchImageParams;Z)Landroid/graphics/Bitmap;
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 62
    const-string v0, "fetchImage"

    invoke-static {v0}, Lcom/facebook/orca/debug/Tracer;->a(Ljava/lang/String;)Lcom/facebook/orca/debug/Tracer;

    move-result-object v1

    .line 65
    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/orca/images/FetchImageParams;->c()Lcom/facebook/orca/images/ImageCacheKey;

    move-result-object v2

    .line 66
    iget-object v0, p0, Lcom/facebook/orca/images/FetchImageHelper;->b:Lcom/facebook/orca/images/ImageCache;

    invoke-virtual {v0, v2}, Lcom/facebook/orca/images/ImageCache;->e(Lcom/facebook/orca/media/MediaCacheKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {v1}, Lcom/facebook/orca/debug/Tracer;->a()J

    :goto_0
    return-object v0

    .line 72
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/facebook/orca/images/FetchImageParams;->d()Lcom/facebook/orca/images/ImageCacheKey;

    move-result-object v0

    .line 73
    iget-object v3, p0, Lcom/facebook/orca/images/FetchImageHelper;->b:Lcom/facebook/orca/images/ImageCache;

    invoke-virtual {v3, v0}, Lcom/facebook/orca/images/ImageCache;->e(Lcom/facebook/orca/media/MediaCacheKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    if-nez v0, :cond_2

    .line 75
    if-eqz p2, :cond_1

    .line 76
    const/4 v0, 0x0

    .line 100
    invoke-virtual {v1}, Lcom/facebook/orca/debug/Tracer;->a()J

    goto :goto_0

    .line 78
    :cond_1
    :try_start_2
    invoke-direct {p0, p1}, Lcom/facebook/orca/images/FetchImageHelper;->c(Lcom/facebook/orca/images/FetchImageParams;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 82
    :cond_2
    if-eqz v0, :cond_3

    .line 83
    invoke-virtual {p1}, Lcom/facebook/orca/images/FetchImageParams;->b()Lcom/facebook/orca/images/UrlImageProcessor;

    move-result-object v3

    .line 84
    if-eqz v3, :cond_3

    .line 85
    const-string v4, "Running processor"

    invoke-static {v4}, Lcom/facebook/orca/debug/Tracer;->a(Ljava/lang/String;)Lcom/facebook/orca/debug/Tracer;

    move-result-object v4

    .line 86
    sget-object v5, Lcom/facebook/orca/images/FetchImageHelper;->a:Ljava/lang/Class;

    const-string v6, "Processing image"

    invoke-static {v5, v6}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 87
    invoke-virtual {v3, v0}, Lcom/facebook/orca/images/UrlImageProcessor;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 88
    invoke-virtual {v4}, Lcom/facebook/orca/debug/Tracer;->a()J

    .line 89
    invoke-virtual {v3}, Lcom/facebook/orca/images/UrlImageProcessor;->a()Ljava/lang/String;

    move-result-object v3

    .line 90
    if-eqz v3, :cond_3

    sget-object v4, Lcom/facebook/orca/images/UrlImageProcessor;->a:Ljava/lang/String;

    if-eq v3, v4, :cond_3

    .line 91
    const-string v3, "Inserting processed image into cache"

    invoke-static {v3}, Lcom/facebook/orca/debug/Tracer;->a(Ljava/lang/String;)Lcom/facebook/orca/debug/Tracer;

    move-result-object v3

    .line 92
    iget-object v4, p0, Lcom/facebook/orca/images/FetchImageHelper;->b:Lcom/facebook/orca/images/ImageCache;

    invoke-virtual {v4, v2, v0}, Lcom/facebook/orca/images/ImageCache;->a(Lcom/facebook/orca/media/MediaCacheKey;Ljava/lang/Object;)Ljava/io/File;

    .line 93
    invoke-virtual {v3}, Lcom/facebook/orca/debug/Tracer;->a()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 100
    :cond_3
    invoke-virtual {v1}, Lcom/facebook/orca/debug/Tracer;->a()J

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/facebook/orca/debug/Tracer;->a()J

    throw v0
.end method

.method private c(Lcom/facebook/orca/images/FetchImageParams;)Landroid/graphics/Bitmap;
    .locals 8
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 105
    invoke-virtual {p1}, Lcom/facebook/orca/images/FetchImageParams;->d()Lcom/facebook/orca/images/ImageCacheKey;

    move-result-object v0

    .line 106
    iget-object v2, p0, Lcom/facebook/orca/images/FetchImageHelper;->b:Lcom/facebook/orca/images/ImageCache;

    invoke-virtual {v2, v0}, Lcom/facebook/orca/images/ImageCache;->f(Lcom/facebook/orca/media/MediaCacheKey;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v0, v1

    .line 155
    :cond_0
    :goto_0
    return-object v0

    .line 112
    :cond_1
    :try_start_0
    const-string v2, "Download image"

    invoke-static {v2}, Lcom/facebook/orca/debug/Tracer;->a(Ljava/lang/String;)Lcom/facebook/orca/debug/Tracer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    move-result-object v3

    .line 114
    :try_start_1
    invoke-virtual {p1}, Lcom/facebook/orca/images/FetchImageParams;->a()Landroid/net/Uri;

    move-result-object v4

    .line 115
    iget-object v2, p0, Lcom/facebook/orca/images/FetchImageHelper;->c:Lcom/facebook/orca/images/ImageMediaDownloader;

    invoke-virtual {v2, v4}, Lcom/facebook/orca/images/ImageMediaDownloader;->a(Landroid/net/Uri;)Lcom/facebook/orca/media/MediaDownloader$DownloadResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 116
    :try_start_2
    invoke-virtual {v2}, Lcom/facebook/orca/media/MediaDownloader$DownloadResult;->a()Lcom/facebook/orca/media/MediaDownloader$DownloadResultCode;

    move-result-object v5

    sget-object v6, Lcom/facebook/orca/media/MediaDownloader$DownloadResultCode;->UNSUPPORTED_URI:Lcom/facebook/orca/media/MediaDownloader$DownloadResultCode;

    if-ne v5, v6, :cond_3

    .line 117
    sget-object v0, Lcom/facebook/orca/images/FetchImageHelper;->a:Ljava/lang/Class;

    const-string v5, "Unsupported scheme: %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    invoke-static {v0, v5, v6}, Lcom/facebook/orca/debug/BLog;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 121
    :try_start_3
    invoke-virtual {v3}, Lcom/facebook/orca/debug/Tracer;->a()J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 154
    if-eqz v2, :cond_2

    .line 155
    invoke-virtual {v2}, Lcom/facebook/orca/media/MediaDownloader$DownloadResult;->c()V

    :cond_2
    move-object v0, v1

    goto :goto_0

    .line 121
    :cond_3
    :try_start_4
    invoke-virtual {v3}, Lcom/facebook/orca/debug/Tracer;->a()J

    .line 124
    const-string v3, "Insert into cache"

    invoke-static {v3}, Lcom/facebook/orca/debug/Tracer;->a(Ljava/lang/String;)Lcom/facebook/orca/debug/Tracer;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-result-object v3

    .line 126
    :try_start_5
    sget-object v4, Lcom/facebook/orca/images/FetchImageHelper$1;->a:[I

    invoke-virtual {v2}, Lcom/facebook/orca/media/MediaDownloader$DownloadResult;->a()Lcom/facebook/orca/media/MediaDownloader$DownloadResultCode;

    move-result-object v5

    invoke-virtual {v5}, Lcom/facebook/orca/media/MediaDownloader$DownloadResultCode;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 147
    iget-object v4, p0, Lcom/facebook/orca/images/FetchImageHelper;->b:Lcom/facebook/orca/images/ImageCache;

    const-wide/16 v5, 0x4e20

    invoke-virtual {v4, v0, v5, v6}, Lcom/facebook/orca/images/ImageCache;->a(Lcom/facebook/orca/media/MediaCacheKey;J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 151
    :try_start_6
    invoke-virtual {v3}, Lcom/facebook/orca/debug/Tracer;->a()J
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 154
    if-eqz v2, :cond_4

    .line 155
    invoke-virtual {v2}, Lcom/facebook/orca/media/MediaDownloader$DownloadResult;->c()V

    :cond_4
    move-object v0, v1

    goto :goto_0

    .line 121
    :catchall_0
    move-exception v0

    :goto_1
    :try_start_7
    invoke-virtual {v3}, Lcom/facebook/orca/debug/Tracer;->a()J

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 154
    :catchall_1
    move-exception v0

    move-object v2, v1

    :goto_2
    if-eqz v2, :cond_5

    .line 155
    invoke-virtual {v2}, Lcom/facebook/orca/media/MediaDownloader$DownloadResult;->c()V

    :cond_5
    throw v0

    .line 129
    :pswitch_0
    :try_start_8
    iget-object v4, p0, Lcom/facebook/orca/images/FetchImageHelper;->b:Lcom/facebook/orca/images/ImageCache;

    invoke-virtual {v2}, Lcom/facebook/orca/media/MediaDownloader$DownloadResult;->b()Ljava/io/InputStream;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lcom/facebook/orca/images/ImageCache;->a(Lcom/facebook/orca/media/MediaCacheKey;Ljava/io/InputStream;)Ljava/io/File;

    .line 130
    iget-object v4, p0, Lcom/facebook/orca/images/FetchImageHelper;->b:Lcom/facebook/orca/images/ImageCache;

    invoke-virtual {v4, v0}, Lcom/facebook/orca/images/ImageCache;->e(Lcom/facebook/orca/media/MediaCacheKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    .line 151
    :try_start_9
    invoke-virtual {v3}, Lcom/facebook/orca/debug/Tracer;->a()J
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 154
    if-eqz v2, :cond_0

    .line 155
    invoke-virtual {v2}, Lcom/facebook/orca/media/MediaDownloader$DownloadResult;->c()V

    goto :goto_0

    .line 131
    :catch_0
    move-exception v0

    .line 132
    :try_start_a
    sget-object v4, Lcom/facebook/orca/images/FetchImageHelper;->a:Ljava/lang/Class;

    const-string v5, "Failed to insert into cache"

    invoke-static {v4, v5, v0}, Lcom/facebook/orca/debug/BLog;->d(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 151
    :try_start_b
    invoke-virtual {v3}, Lcom/facebook/orca/debug/Tracer;->a()J
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 154
    if-eqz v2, :cond_6

    .line 155
    invoke-virtual {v2}, Lcom/facebook/orca/media/MediaDownloader$DownloadResult;->c()V

    :cond_6
    move-object v0, v1

    goto/16 :goto_0

    .line 137
    :pswitch_1
    :try_start_c
    iget-object v4, p0, Lcom/facebook/orca/images/FetchImageHelper;->b:Lcom/facebook/orca/images/ImageCache;

    const-wide/32 v5, 0x493e0

    invoke-virtual {v4, v0, v5, v6}, Lcom/facebook/orca/images/ImageCache;->a(Lcom/facebook/orca/media/MediaCacheKey;J)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 151
    :try_start_d
    invoke-virtual {v3}, Lcom/facebook/orca/debug/Tracer;->a()J
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 154
    if-eqz v2, :cond_7

    .line 155
    invoke-virtual {v2}, Lcom/facebook/orca/media/MediaDownloader$DownloadResult;->c()V

    :cond_7
    move-object v0, v1

    goto/16 :goto_0

    .line 141
    :pswitch_2
    :try_start_e
    iget-object v4, p0, Lcom/facebook/orca/images/FetchImageHelper;->b:Lcom/facebook/orca/images/ImageCache;

    const-wide/32 v5, 0x36ee80

    invoke-virtual {v4, v0, v5, v6}, Lcom/facebook/orca/images/ImageCache;->a(Lcom/facebook/orca/media/MediaCacheKey;J)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 151
    :try_start_f
    invoke-virtual {v3}, Lcom/facebook/orca/debug/Tracer;->a()J
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    .line 154
    if-eqz v2, :cond_8

    .line 155
    invoke-virtual {v2}, Lcom/facebook/orca/media/MediaDownloader$DownloadResult;->c()V

    :cond_8
    move-object v0, v1

    goto/16 :goto_0

    .line 151
    :catchall_2
    move-exception v0

    :try_start_10
    invoke-virtual {v3}, Lcom/facebook/orca/debug/Tracer;->a()J

    throw v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    .line 154
    :catchall_3
    move-exception v0

    goto :goto_2

    :catchall_4
    move-exception v0

    move-object v2, v1

    goto :goto_2

    .line 121
    :catchall_5
    move-exception v0

    move-object v1, v2

    goto :goto_1

    .line 126
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method a(Lcom/facebook/orca/images/FetchImageParams;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter

    .prologue
    .line 41
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/facebook/orca/images/FetchImageHelper;->a(Lcom/facebook/orca/images/FetchImageParams;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method b(Lcom/facebook/orca/images/FetchImageParams;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/orca/images/FetchImageHelper;->a(Lcom/facebook/orca/images/FetchImageParams;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
