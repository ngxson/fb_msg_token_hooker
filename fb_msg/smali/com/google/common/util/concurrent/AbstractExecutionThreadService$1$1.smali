.class Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1$1;
.super Ljava/lang/Object;
.source "AbstractExecutionThreadService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 43
    :try_start_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1$1;->a:Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;

    iget-object v0, v0, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;->a:Lcom/google/common/util/concurrent/AbstractExecutionThreadService;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractExecutionThreadService;->a()V

    .line 44
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1$1;->a:Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;->c()V

    .line 46
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1$1;->a:Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;->f()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    :try_start_1
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1$1;->a:Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;

    iget-object v0, v0, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;->a:Lcom/google/common/util/concurrent/AbstractExecutionThreadService;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractExecutionThreadService;->b()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 57
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1$1;->a:Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;

    iget-object v0, v0, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;->a:Lcom/google/common/util/concurrent/AbstractExecutionThreadService;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractExecutionThreadService;->c()V

    .line 58
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1$1;->a:Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;->d()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 63
    return-void

    .line 49
    :catch_0
    move-exception v0

    .line 51
    :try_start_3
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1$1;->a:Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;

    iget-object v1, v1, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;->a:Lcom/google/common/util/concurrent/AbstractExecutionThreadService;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/AbstractExecutionThreadService;->c()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    .line 53
    :goto_0
    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    .line 59
    :catch_1
    move-exception v0

    .line 60
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1$1;->a:Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;

    invoke-virtual {v1, v0}, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;->a(Ljava/lang/Throwable;)V

    .line 61
    invoke-static {v0}, Lcom/google/common/base/Throwables;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 52
    :catch_2
    move-exception v1

    goto :goto_0
.end method
