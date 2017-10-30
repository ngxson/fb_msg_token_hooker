.class Lcom/facebook/orca/server/OrcaServiceQueue$4;
.super Ljava/lang/Object;
.source "OrcaServiceQueue.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/FutureCallback",
        "<",
        "Lcom/facebook/orca/server/OperationResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;

.field final synthetic b:Lcom/facebook/orca/server/OrcaServiceQueue;


# direct methods
.method constructor <init>(Lcom/facebook/orca/server/OrcaServiceQueue;Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 261
    iput-object p1, p0, Lcom/facebook/orca/server/OrcaServiceQueue$4;->b:Lcom/facebook/orca/server/OrcaServiceQueue;

    iput-object p2, p0, Lcom/facebook/orca/server/OrcaServiceQueue$4;->a:Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/orca/server/OperationResult;)V
    .locals 4
    .parameter

    .prologue
    .line 264
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iget-object v2, p0, Lcom/facebook/orca/server/OrcaServiceQueue$4;->b:Lcom/facebook/orca/server/OrcaServiceQueue;

    invoke-static {v2}, Lcom/facebook/orca/server/OrcaServiceQueue;->a(Lcom/facebook/orca/server/OrcaServiceQueue;)Landroid/os/HandlerThread;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 265
    iget-object v0, p0, Lcom/facebook/orca/server/OrcaServiceQueue$4;->b:Lcom/facebook/orca/server/OrcaServiceQueue;

    iget-object v1, p0, Lcom/facebook/orca/server/OrcaServiceQueue$4;->a:Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;

    invoke-static {v0, v1, p1}, Lcom/facebook/orca/server/OrcaServiceQueue;->b(Lcom/facebook/orca/server/OrcaServiceQueue;Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;Lcom/facebook/orca/server/OperationResult;)V

    .line 266
    iget-object v0, p0, Lcom/facebook/orca/server/OrcaServiceQueue$4;->b:Lcom/facebook/orca/server/OrcaServiceQueue;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/orca/server/OrcaServiceQueue;->a(Lcom/facebook/orca/server/OrcaServiceQueue;Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;)Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;

    .line 267
    iget-object v0, p0, Lcom/facebook/orca/server/OrcaServiceQueue$4;->b:Lcom/facebook/orca/server/OrcaServiceQueue;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/facebook/orca/server/OrcaServiceQueue;->a(Lcom/facebook/orca/server/OrcaServiceQueue;J)V

    .line 268
    return-void

    .line 264
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 261
    check-cast p1, Lcom/facebook/orca/server/OperationResult;

    invoke-virtual {p0, p1}, Lcom/facebook/orca/server/OrcaServiceQueue$4;->a(Lcom/facebook/orca/server/OperationResult;)V

    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 4
    .parameter

    .prologue
    .line 272
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iget-object v2, p0, Lcom/facebook/orca/server/OrcaServiceQueue$4;->b:Lcom/facebook/orca/server/OrcaServiceQueue;

    invoke-static {v2}, Lcom/facebook/orca/server/OrcaServiceQueue;->a(Lcom/facebook/orca/server/OrcaServiceQueue;)Landroid/os/HandlerThread;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 273
    iget-object v0, p0, Lcom/facebook/orca/server/OrcaServiceQueue$4;->b:Lcom/facebook/orca/server/OrcaServiceQueue;

    iget-object v1, p0, Lcom/facebook/orca/server/OrcaServiceQueue$4;->a:Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;

    invoke-static {p1}, Lcom/facebook/orca/server/ErrorCodeUtil;->a(Ljava/lang/Throwable;)Lcom/facebook/orca/server/ErrorCode;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/orca/server/OperationResult;->a(Lcom/facebook/orca/server/ErrorCode;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/orca/server/OrcaServiceQueue;->b(Lcom/facebook/orca/server/OrcaServiceQueue;Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;Lcom/facebook/orca/server/OperationResult;)V

    .line 274
    iget-object v0, p0, Lcom/facebook/orca/server/OrcaServiceQueue$4;->b:Lcom/facebook/orca/server/OrcaServiceQueue;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/orca/server/OrcaServiceQueue;->a(Lcom/facebook/orca/server/OrcaServiceQueue;Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;)Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;

    .line 275
    iget-object v0, p0, Lcom/facebook/orca/server/OrcaServiceQueue$4;->b:Lcom/facebook/orca/server/OrcaServiceQueue;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/facebook/orca/server/OrcaServiceQueue;->a(Lcom/facebook/orca/server/OrcaServiceQueue;J)V

    .line 276
    return-void

    .line 272
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
