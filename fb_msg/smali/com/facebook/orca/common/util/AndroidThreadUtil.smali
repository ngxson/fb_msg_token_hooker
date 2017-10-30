.class public interface abstract Lcom/facebook/orca/common/util/AndroidThreadUtil;
.super Ljava/lang/Object;
.source "AndroidThreadUtil.java"


# virtual methods
.method public abstract a(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TT;>;"
        }
    .end annotation
.end method

.method public abstract a()V
.end method

.method public abstract a(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TT;>;",
            "Lcom/google/common/util/concurrent/FutureCallback",
            "<-TT;>;)V"
        }
    .end annotation
.end method

.method public abstract a(Ljava/lang/Runnable;)V
.end method

.method public abstract a(Ljava/lang/Runnable;J)V
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/Runnable;)V
.end method

.method public abstract b()V
.end method

.method public abstract b(Ljava/lang/Runnable;)V
.end method

.method public abstract b(Ljava/lang/Runnable;J)V
.end method

.method public abstract c(Ljava/lang/Runnable;)V
.end method

.method public abstract c()Z
.end method

.method public abstract d(Ljava/lang/Runnable;)V
.end method
