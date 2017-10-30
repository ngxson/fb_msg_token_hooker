.class Lcom/google/common/util/concurrent/AbstractIdleService$1$1;
.super Ljava/lang/Object;
.source "AbstractIdleService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/common/util/concurrent/AbstractIdleService$1;


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 43
    :try_start_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractIdleService$1$1;->a:Lcom/google/common/util/concurrent/AbstractIdleService$1;

    iget-object v0, v0, Lcom/google/common/util/concurrent/AbstractIdleService$1;->a:Lcom/google/common/util/concurrent/AbstractIdleService;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractIdleService;->a()V

    .line 44
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractIdleService$1$1;->a:Lcom/google/common/util/concurrent/AbstractIdleService$1;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractIdleService$1;->c()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    return-void

    .line 45
    :catch_0
    move-exception v0

    .line 46
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractIdleService$1$1;->a:Lcom/google/common/util/concurrent/AbstractIdleService$1;

    invoke-virtual {v1, v0}, Lcom/google/common/util/concurrent/AbstractIdleService$1;->a(Ljava/lang/Throwable;)V

    .line 47
    invoke-static {v0}, Lcom/google/common/base/Throwables;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method
