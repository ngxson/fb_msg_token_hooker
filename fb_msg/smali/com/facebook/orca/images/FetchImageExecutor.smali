.class public Lcom/facebook/orca/images/FetchImageExecutor;
.super Ljava/lang/Object;
.source "FetchImageExecutor.java"


# instance fields
.field private final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final b:Lcom/facebook/orca/images/ImageCache;

.field private final c:Lcom/facebook/orca/common/async/KeyedExecutor;

.field private final d:Lcom/facebook/orca/images/FetchImageHelper;

.field private final e:Lcom/facebook/orca/images/FetchImageDecodingExecutor;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/images/ImageCache;Lcom/facebook/orca/common/async/KeyedExecutor;Lcom/facebook/orca/images/FetchImageHelper;Lcom/facebook/orca/images/FetchImageDecodingExecutor;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-class v0, Lcom/facebook/orca/images/FetchImageExecutor;

    iput-object v0, p0, Lcom/facebook/orca/images/FetchImageExecutor;->a:Ljava/lang/Class;

    .line 39
    iput-object p1, p0, Lcom/facebook/orca/images/FetchImageExecutor;->b:Lcom/facebook/orca/images/ImageCache;

    .line 40
    iput-object p2, p0, Lcom/facebook/orca/images/FetchImageExecutor;->c:Lcom/facebook/orca/common/async/KeyedExecutor;

    .line 41
    iput-object p3, p0, Lcom/facebook/orca/images/FetchImageExecutor;->d:Lcom/facebook/orca/images/FetchImageHelper;

    .line 42
    iput-object p4, p0, Lcom/facebook/orca/images/FetchImageExecutor;->e:Lcom/facebook/orca/images/FetchImageDecodingExecutor;

    .line 43
    return-void
.end method

.method private a(Landroid/net/Uri;I)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 155
    invoke-virtual {p1}, Landroid/net/Uri;->hashCode()I

    move-result v0

    rem-int/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/facebook/orca/images/FetchImageExecutor;)Lcom/facebook/orca/images/FetchImageHelper;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/facebook/orca/images/FetchImageExecutor;->d:Lcom/facebook/orca/images/FetchImageHelper;

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/orca/images/FetchImageExecutor;Lcom/facebook/orca/images/FetchImageParams;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/facebook/orca/images/FetchImageExecutor;->c(Lcom/facebook/orca/images/FetchImageParams;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method private c(Lcom/facebook/orca/images/FetchImageParams;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/orca/images/FetchImageParams;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x3

    .line 110
    invoke-virtual {p1}, Lcom/facebook/orca/images/FetchImageParams;->c()Lcom/facebook/orca/images/ImageCacheKey;

    move-result-object v1

    .line 111
    iget-object v0, p0, Lcom/facebook/orca/images/FetchImageExecutor;->c:Lcom/facebook/orca/common/async/KeyedExecutor;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/async/KeyedExecutor;->a(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 112
    if-nez v0, :cond_1

    .line 114
    const/4 v0, 0x0

    .line 115
    invoke-virtual {p1}, Lcom/facebook/orca/images/FetchImageParams;->b()Lcom/facebook/orca/images/UrlImageProcessor;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 116
    invoke-virtual {p1}, Lcom/facebook/orca/images/FetchImageParams;->d()Lcom/facebook/orca/images/ImageCacheKey;

    move-result-object v2

    .line 117
    iget-object v3, p0, Lcom/facebook/orca/images/FetchImageExecutor;->b:Lcom/facebook/orca/images/ImageCache;

    invoke-virtual {v3, v2}, Lcom/facebook/orca/images/ImageCache;->c(Lcom/facebook/orca/media/MediaCacheKey;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 118
    const/4 v0, 0x1

    .line 122
    :cond_0
    new-instance v2, Lcom/facebook/orca/images/FetchImageExecutor$2;

    invoke-direct {v2, p0, p1}, Lcom/facebook/orca/images/FetchImageExecutor$2;-><init>(Lcom/facebook/orca/images/FetchImageExecutor;Lcom/facebook/orca/images/FetchImageParams;)V

    .line 135
    if-eqz v0, :cond_2

    .line 136
    const-string v0, "fetch-image-task-processing"

    .line 147
    :goto_0
    invoke-virtual {p1}, Lcom/facebook/orca/images/FetchImageParams;->a()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    .line 148
    iget-object v4, p0, Lcom/facebook/orca/images/FetchImageExecutor;->c:Lcom/facebook/orca/common/async/KeyedExecutor;

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/facebook/orca/common/async/KeyedExecutor;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/Callable;Ljava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 151
    :cond_1
    return-object v0

    .line 138
    :cond_2
    invoke-virtual {p1}, Lcom/facebook/orca/images/FetchImageParams;->a()Landroid/net/Uri;

    move-result-object v0

    .line 139
    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    const-string v4, "api."

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 140
    invoke-direct {p0, v0, v5}, Lcom/facebook/orca/images/FetchImageExecutor;->a(Landroid/net/Uri;I)I

    move-result v0

    .line 141
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fetch-image-api-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 143
    :cond_3
    invoke-direct {p0, v0, v5}, Lcom/facebook/orca/images/FetchImageExecutor;->a(Landroid/net/Uri;I)I

    move-result v0

    .line 144
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fetch-image-other-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/facebook/orca/images/FetchImageParams;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/facebook/orca/images/FetchImageExecutor;->d:Lcom/facebook/orca/images/FetchImageHelper;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/images/FetchImageHelper;->b(Lcom/facebook/orca/images/FetchImageParams;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/facebook/orca/images/FetchImageParams;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/orca/images/FetchImageParams;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    invoke-virtual {p1}, Lcom/facebook/orca/images/FetchImageParams;->c()Lcom/facebook/orca/images/ImageCacheKey;

    move-result-object v0

    .line 58
    if-eqz v0, :cond_1

    .line 59
    iget-object v1, p0, Lcom/facebook/orca/images/FetchImageExecutor;->b:Lcom/facebook/orca/images/ImageCache;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/images/ImageCache;->f(Lcom/facebook/orca/media/MediaCacheKey;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Cached image failure"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->a(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 100
    :goto_0
    return-object v0

    .line 62
    :cond_0
    iget-object v1, p0, Lcom/facebook/orca/images/FetchImageExecutor;->b:Lcom/facebook/orca/images/ImageCache;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/images/ImageCache;->b(Lcom/facebook/orca/media/MediaCacheKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 63
    if-eqz v0, :cond_1

    .line 64
    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->a(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    goto :goto_0

    .line 69
    :cond_1
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->c()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    .line 70
    iget-object v1, p0, Lcom/facebook/orca/images/FetchImageExecutor;->e:Lcom/facebook/orca/images/FetchImageDecodingExecutor;

    invoke-virtual {v1, p1}, Lcom/facebook/orca/images/FetchImageDecodingExecutor;->a(Lcom/facebook/orca/images/FetchImageParams;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    .line 71
    new-instance v2, Lcom/facebook/orca/images/FetchImageExecutor$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/facebook/orca/images/FetchImageExecutor$1;-><init>(Lcom/facebook/orca/images/FetchImageExecutor;Lcom/google/common/util/concurrent/SettableFuture;Lcom/facebook/orca/images/FetchImageParams;)V

    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->a()Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/google/common/util/concurrent/Futures;->a(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;Ljava/util/concurrent/Executor;)V

    goto :goto_0
.end method
