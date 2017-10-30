.class Lcom/facebook/orca/images/FetchImageExecutor$1;
.super Ljava/lang/Object;
.source "FetchImageExecutor.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/FutureCallback",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/util/concurrent/SettableFuture;

.field final synthetic b:Lcom/facebook/orca/images/FetchImageParams;

.field final synthetic c:Lcom/facebook/orca/images/FetchImageExecutor;


# direct methods
.method constructor <init>(Lcom/facebook/orca/images/FetchImageExecutor;Lcom/google/common/util/concurrent/SettableFuture;Lcom/facebook/orca/images/FetchImageParams;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/facebook/orca/images/FetchImageExecutor$1;->c:Lcom/facebook/orca/images/FetchImageExecutor;

    iput-object p2, p0, Lcom/facebook/orca/images/FetchImageExecutor$1;->a:Lcom/google/common/util/concurrent/SettableFuture;

    iput-object p3, p0, Lcom/facebook/orca/images/FetchImageExecutor$1;->b:Lcom/facebook/orca/images/FetchImageParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter

    .prologue
    .line 74
    if-eqz p1, :cond_0

    .line 76
    iget-object v0, p0, Lcom/facebook/orca/images/FetchImageExecutor$1;->a:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/SettableFuture;->a(Ljava/lang/Object;)Z

    .line 92
    :goto_0
    return-void

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/images/FetchImageExecutor$1;->c:Lcom/facebook/orca/images/FetchImageExecutor;

    iget-object v1, p0, Lcom/facebook/orca/images/FetchImageExecutor$1;->b:Lcom/facebook/orca/images/FetchImageParams;

    invoke-static {v0, v1}, Lcom/facebook/orca/images/FetchImageExecutor;->a(Lcom/facebook/orca/images/FetchImageExecutor;Lcom/facebook/orca/images/FetchImageParams;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 80
    new-instance v1, Lcom/facebook/orca/images/FetchImageExecutor$1$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/images/FetchImageExecutor$1$1;-><init>(Lcom/facebook/orca/images/FetchImageExecutor$1;)V

    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->a()Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/common/util/concurrent/Futures;->a(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;Ljava/util/concurrent/Executor;)V

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/facebook/orca/images/FetchImageExecutor$1;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 1
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lcom/facebook/orca/images/FetchImageExecutor$1;->a:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/SettableFuture;->a(Ljava/lang/Throwable;)Z

    .line 98
    return-void
.end method
