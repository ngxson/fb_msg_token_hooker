.class Lcom/facebook/orca/threadlist/ThreadListLoader$2;
.super Lcom/facebook/orca/ops/OperationResultFutureCallback;
.source "ThreadListLoader.java"


# instance fields
.field final synthetic a:Lcom/facebook/orca/threadlist/ThreadListLoader;


# direct methods
.method constructor <init>(Lcom/facebook/orca/threadlist/ThreadListLoader;)V
    .locals 0
    .parameter

    .prologue
    .line 393
    iput-object p1, p0, Lcom/facebook/orca/threadlist/ThreadListLoader$2;->a:Lcom/facebook/orca/threadlist/ThreadListLoader;

    invoke-direct {p0}, Lcom/facebook/orca/ops/OperationResultFutureCallback;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/facebook/orca/ops/ServiceException;)V
    .locals 2
    .parameter

    .prologue
    .line 402
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListLoader$2;->a:Lcom/facebook/orca/threadlist/ThreadListLoader;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/orca/threadlist/ThreadListLoader;->b(Lcom/facebook/orca/threadlist/ThreadListLoader;Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 403
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListLoader$2;->a:Lcom/facebook/orca/threadlist/ThreadListLoader;

    invoke-static {v0, p1}, Lcom/facebook/orca/threadlist/ThreadListLoader;->b(Lcom/facebook/orca/threadlist/ThreadListLoader;Lcom/facebook/orca/ops/ServiceException;)V

    .line 404
    return-void
.end method

.method public a(Lcom/facebook/orca/server/OperationResult;)V
    .locals 2
    .parameter

    .prologue
    .line 396
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListLoader$2;->a:Lcom/facebook/orca/threadlist/ThreadListLoader;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/orca/threadlist/ThreadListLoader;->b(Lcom/facebook/orca/threadlist/ThreadListLoader;Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 397
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListLoader$2;->a:Lcom/facebook/orca/threadlist/ThreadListLoader;

    invoke-static {v0, p1}, Lcom/facebook/orca/threadlist/ThreadListLoader;->b(Lcom/facebook/orca/threadlist/ThreadListLoader;Lcom/facebook/orca/server/OperationResult;)V

    .line 398
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 393
    check-cast p1, Lcom/facebook/orca/server/OperationResult;

    invoke-virtual {p0, p1}, Lcom/facebook/orca/threadlist/ThreadListLoader$2;->a(Lcom/facebook/orca/server/OperationResult;)V

    return-void
.end method
