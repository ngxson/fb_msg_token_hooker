.class Lcom/facebook/orca/threadlist/ThreadListLoader$1;
.super Lcom/facebook/orca/ops/OperationResultFutureCallback;
.source "ThreadListLoader.java"


# instance fields
.field final synthetic a:Lcom/facebook/orca/threadlist/ThreadListLoader;


# direct methods
.method constructor <init>(Lcom/facebook/orca/threadlist/ThreadListLoader;)V
    .locals 0
    .parameter

    .prologue
    .line 276
    iput-object p1, p0, Lcom/facebook/orca/threadlist/ThreadListLoader$1;->a:Lcom/facebook/orca/threadlist/ThreadListLoader;

    invoke-direct {p0}, Lcom/facebook/orca/ops/OperationResultFutureCallback;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/facebook/orca/ops/ServiceException;)V
    .locals 2
    .parameter

    .prologue
    .line 285
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListLoader$1;->a:Lcom/facebook/orca/threadlist/ThreadListLoader;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/orca/threadlist/ThreadListLoader;->a(Lcom/facebook/orca/threadlist/ThreadListLoader;Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 286
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListLoader$1;->a:Lcom/facebook/orca/threadlist/ThreadListLoader;

    invoke-static {v0, p1}, Lcom/facebook/orca/threadlist/ThreadListLoader;->a(Lcom/facebook/orca/threadlist/ThreadListLoader;Lcom/facebook/orca/ops/ServiceException;)V

    .line 287
    return-void
.end method

.method public a(Lcom/facebook/orca/server/OperationResult;)V
    .locals 2
    .parameter

    .prologue
    .line 279
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListLoader$1;->a:Lcom/facebook/orca/threadlist/ThreadListLoader;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/orca/threadlist/ThreadListLoader;->a(Lcom/facebook/orca/threadlist/ThreadListLoader;Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 280
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListLoader$1;->a:Lcom/facebook/orca/threadlist/ThreadListLoader;

    invoke-static {v0, p1}, Lcom/facebook/orca/threadlist/ThreadListLoader;->a(Lcom/facebook/orca/threadlist/ThreadListLoader;Lcom/facebook/orca/server/OperationResult;)V

    .line 281
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 276
    check-cast p1, Lcom/facebook/orca/server/OperationResult;

    invoke-virtual {p0, p1}, Lcom/facebook/orca/threadlist/ThreadListLoader$1;->a(Lcom/facebook/orca/server/OperationResult;)V

    return-void
.end method
