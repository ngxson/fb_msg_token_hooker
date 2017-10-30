.class public abstract Lcom/facebook/orca/ops/OperationResultFutureCallback;
.super Ljava/lang/Object;
.source "OperationResultFutureCallback.java"

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


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a(Lcom/facebook/orca/ops/ServiceException;)V
.end method

.method public abstract a(Lcom/facebook/orca/server/OperationResult;)V
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 17
    check-cast p1, Lcom/facebook/orca/server/OperationResult;

    invoke-virtual {p0, p1}, Lcom/facebook/orca/ops/OperationResultFutureCallback;->a(Lcom/facebook/orca/server/OperationResult;)V

    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 1
    .parameter

    .prologue
    .line 33
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    if-eqz v0, :cond_0

    .line 36
    check-cast p1, Ljava/util/concurrent/CancellationException;

    invoke-virtual {p0, p1}, Lcom/facebook/orca/ops/OperationResultFutureCallback;->a(Ljava/util/concurrent/CancellationException;)V

    .line 42
    :goto_0
    return-void

    .line 37
    :cond_0
    instance-of v0, p1, Lcom/facebook/orca/ops/ServiceException;

    if-eqz v0, :cond_1

    .line 38
    check-cast p1, Lcom/facebook/orca/ops/ServiceException;

    invoke-virtual {p0, p1}, Lcom/facebook/orca/ops/OperationResultFutureCallback;->a(Lcom/facebook/orca/ops/ServiceException;)V

    goto :goto_0

    .line 40
    :cond_1
    invoke-virtual {p0, p1}, Lcom/facebook/orca/ops/OperationResultFutureCallback;->b(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected a(Ljava/util/concurrent/CancellationException;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    return-void
.end method

.method protected b(Ljava/lang/Throwable;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    invoke-static {p1}, Lcom/google/common/base/Throwables;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    .line 72
    return-void
.end method
