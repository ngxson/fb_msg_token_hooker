.class public Lcom/facebook/orca/images/FetchImageDecodingExecutor;
.super Ljava/lang/Object;
.source "FetchImageDecodingExecutor.java"


# annotations
.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# instance fields
.field private final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final b:Lcom/facebook/orca/images/FetchImageHelper;

.field private final c:Lcom/google/common/util/concurrent/ListeningExecutorService;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/images/FetchImageHelper;)V
    .locals 3
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-class v0, Lcom/facebook/orca/images/FetchImageDecodingExecutor;

    iput-object v0, p0, Lcom/facebook/orca/images/FetchImageDecodingExecutor;->a:Ljava/lang/Class;

    .line 36
    iput-object p1, p0, Lcom/facebook/orca/images/FetchImageDecodingExecutor;->b:Lcom/facebook/orca/images/FetchImageHelper;

    .line 37
    const/4 v0, 0x2

    new-instance v1, Lcom/facebook/concurrent/NamedThreadFactory;

    const-string v2, "image-decoding-"

    invoke-direct {v1, v2}, Lcom/facebook/concurrent/NamedThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/util/concurrent/MoreExecutors;->a(Ljava/util/concurrent/ExecutorService;)Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/images/FetchImageDecodingExecutor;->c:Lcom/google/common/util/concurrent/ListeningExecutorService;

    .line 41
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/images/FetchImageDecodingExecutor;)Lcom/facebook/orca/images/FetchImageHelper;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/facebook/orca/images/FetchImageDecodingExecutor;->b:Lcom/facebook/orca/images/FetchImageHelper;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/facebook/orca/images/FetchImageParams;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
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
    .line 54
    iget-object v0, p0, Lcom/facebook/orca/images/FetchImageDecodingExecutor;->c:Lcom/google/common/util/concurrent/ListeningExecutorService;

    new-instance v1, Lcom/facebook/orca/images/FetchImageDecodingExecutor$1;

    invoke-direct {v1, p0, p1}, Lcom/facebook/orca/images/FetchImageDecodingExecutor$1;-><init>(Lcom/facebook/orca/images/FetchImageDecodingExecutor;Lcom/facebook/orca/images/FetchImageParams;)V

    invoke-interface {v0, v1}, Lcom/google/common/util/concurrent/ListeningExecutorService;->a(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method
