.class Lcom/facebook/orca/threadview/ThreadViewLoader$2;
.super Lcom/facebook/orca/ops/OperationResultFutureCallback;
.source "ThreadViewLoader.java"


# instance fields
.field final synthetic a:Lcom/facebook/orca/threadview/ThreadViewLoader;


# direct methods
.method constructor <init>(Lcom/facebook/orca/threadview/ThreadViewLoader;)V
    .locals 0
    .parameter

    .prologue
    .line 375
    iput-object p1, p0, Lcom/facebook/orca/threadview/ThreadViewLoader$2;->a:Lcom/facebook/orca/threadview/ThreadViewLoader;

    invoke-direct {p0}, Lcom/facebook/orca/ops/OperationResultFutureCallback;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/facebook/orca/ops/ServiceException;)V
    .locals 2
    .parameter

    .prologue
    .line 384
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewLoader$2;->a:Lcom/facebook/orca/threadview/ThreadViewLoader;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/orca/threadview/ThreadViewLoader;->b(Lcom/facebook/orca/threadview/ThreadViewLoader;Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 385
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewLoader$2;->a:Lcom/facebook/orca/threadview/ThreadViewLoader;

    invoke-static {v0, p1}, Lcom/facebook/orca/threadview/ThreadViewLoader;->b(Lcom/facebook/orca/threadview/ThreadViewLoader;Lcom/facebook/orca/ops/ServiceException;)V

    .line 386
    return-void
.end method

.method public a(Lcom/facebook/orca/server/OperationResult;)V
    .locals 2
    .parameter

    .prologue
    .line 378
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewLoader$2;->a:Lcom/facebook/orca/threadview/ThreadViewLoader;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/orca/threadview/ThreadViewLoader;->b(Lcom/facebook/orca/threadview/ThreadViewLoader;Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 379
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewLoader$2;->a:Lcom/facebook/orca/threadview/ThreadViewLoader;

    invoke-static {v0, p1}, Lcom/facebook/orca/threadview/ThreadViewLoader;->b(Lcom/facebook/orca/threadview/ThreadViewLoader;Lcom/facebook/orca/server/OperationResult;)V

    .line 380
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 375
    check-cast p1, Lcom/facebook/orca/server/OperationResult;

    invoke-virtual {p0, p1}, Lcom/facebook/orca/threadview/ThreadViewLoader$2;->a(Lcom/facebook/orca/server/OperationResult;)V

    return-void
.end method
