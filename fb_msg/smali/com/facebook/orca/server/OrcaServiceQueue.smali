.class public Lcom/facebook/orca/server/OrcaServiceQueue;
.super Ljava/lang/Object;
.source "OrcaServiceQueue.java"


# annotations
.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# static fields
.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/facebook/orca/server/OrcaServiceHandler;

.field private final e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/orca/server/OrcaServiceQueueHook;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/facebook/orca/server/OrcaServiceQueueManager;

.field private final g:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/facebook/orca/server/Operation;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final i:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/facebook/orca/server/Operation;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private volatile j:Z

.field private k:Landroid/os/HandlerThread;

.field private l:Landroid/os/Handler;

.field private m:Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/facebook/orca/server/OrcaServiceQueue;

    sput-object v0, Lcom/facebook/orca/server/OrcaServiceQueue;->a:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;Lcom/facebook/orca/server/OrcaServiceHandler;Ljava/util/Set;Lcom/facebook/orca/server/OrcaServiceQueueManager;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Lcom/facebook/orca/server/OrcaServiceHandler;",
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/orca/server/OrcaServiceQueueHook;",
            ">;",
            "Lcom/facebook/orca/server/OrcaServiceQueueManager;",
            ")V"
        }
    .end annotation

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Lcom/facebook/orca/server/OrcaServiceQueue;->b:Landroid/content/Context;

    .line 91
    invoke-static {}, Lcom/google/common/collect/Lists;->b()Ljava/util/LinkedList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/server/OrcaServiceQueue;->g:Ljava/util/LinkedList;

    .line 92
    invoke-static {}, Lcom/google/common/collect/Lists;->b()Ljava/util/LinkedList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/server/OrcaServiceQueue;->i:Ljava/util/LinkedList;

    .line 93
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/server/OrcaServiceQueue;->h:Ljava/util/Map;

    .line 94
    iput-object p2, p0, Lcom/facebook/orca/server/OrcaServiceQueue;->c:Ljava/lang/Class;

    .line 95
    iput-object p3, p0, Lcom/facebook/orca/server/OrcaServiceQueue;->d:Lcom/facebook/orca/server/OrcaServiceHandler;

    .line 96
    iput-object p4, p0, Lcom/facebook/orca/server/OrcaServiceQueue;->e:Ljava/util/Set;

    .line 97
    iput-object p5, p0, Lcom/facebook/orca/server/OrcaServiceQueue;->f:Lcom/facebook/orca/server/OrcaServiceQueueManager;

    .line 98
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/server/OrcaServiceQueue;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/facebook/orca/server/OrcaServiceQueue;->l:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic a(Lcom/facebook/orca/server/OrcaServiceQueue;)Landroid/os/HandlerThread;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/facebook/orca/server/OrcaServiceQueue;->k:Landroid/os/HandlerThread;

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/orca/server/OrcaServiceQueue;Landroid/os/HandlerThread;)Landroid/os/HandlerThread;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/facebook/orca/server/OrcaServiceQueue;->k:Landroid/os/HandlerThread;

    return-object p1
.end method

.method static synthetic a(Lcom/facebook/orca/server/OrcaServiceQueue;Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;)Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/facebook/orca/server/OrcaServiceQueue;->m:Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;

    return-object p1
.end method

.method private a(J)V
    .locals 2
    .parameter

    .prologue
    .line 158
    iget-object v0, p0, Lcom/facebook/orca/server/OrcaServiceQueue;->l:Landroid/os/Handler;

    new-instance v1, Lcom/facebook/orca/server/OrcaServiceQueue$3;

    invoke-direct {v1, p0}, Lcom/facebook/orca/server/OrcaServiceQueue$3;-><init>(Lcom/facebook/orca/server/OrcaServiceQueue;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 164
    return-void
.end method

.method private declared-synchronized a(Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;Lcom/facebook/orca/server/OperationResult;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 289
    monitor-enter p0

    :try_start_0
    invoke-static {p1, p2}, Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;->a(Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;Lcom/facebook/orca/server/OperationResult;)Lcom/facebook/orca/server/OperationResult;

    .line 290
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;->b(Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;J)J

    .line 291
    iget-object v0, p0, Lcom/facebook/orca/server/OrcaServiceQueue;->i:Ljava/util/LinkedList;

    invoke-static {p1}, Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;->d(Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;)Lcom/facebook/orca/server/Operation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 292
    invoke-static {p1}, Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;->e(Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/ICompletionHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 294
    :try_start_1
    invoke-static {p1}, Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;->f(Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/facebook/orca/server/ICompletionHandler;->b(Lcom/facebook/orca/server/OperationResult;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 295
    :catch_0
    move-exception v0

    goto :goto_0

    .line 299
    :cond_0
    const/4 v0, 0x0

    :try_start_2
    invoke-static {p1, v0}, Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;->a(Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;Ljava/util/List;)Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 300
    monitor-exit p0

    return-void

    .line 289
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/facebook/orca/server/OperationResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 259
    invoke-static {p1, p2}, Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;->a(Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 260
    iput-object p1, p0, Lcom/facebook/orca/server/OrcaServiceQueue;->m:Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;

    .line 261
    invoke-static {p1}, Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;->a(Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/server/OrcaServiceQueue$4;

    invoke-direct {v1, p0, p1}, Lcom/facebook/orca/server/OrcaServiceQueue$4;-><init>(Lcom/facebook/orca/server/OrcaServiceQueue;Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;)V

    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/Futures;->a(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;)V

    .line 278
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/server/OrcaServiceQueue;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/server/OrcaServiceQueue;->a(J)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/server/OrcaServiceQueue;Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;Lcom/facebook/orca/server/OperationResult;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/server/OrcaServiceQueue;->b(Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;Lcom/facebook/orca/server/OperationResult;)V

    return-void
.end method

.method static synthetic b(Lcom/facebook/orca/server/OrcaServiceQueue;)Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/facebook/orca/server/OrcaServiceQueue;->m:Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;

    return-object v0
.end method

.method private declared-synchronized b(Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;Lcom/facebook/orca/server/OperationResult;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 305
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;->e(Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 306
    invoke-static {p1}, Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;->e(Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/ICompletionHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 308
    :try_start_1
    invoke-interface {v0, p2}, Lcom/facebook/orca/server/ICompletionHandler;->a(Lcom/facebook/orca/server/OperationResult;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 309
    :catch_0
    move-exception v0

    goto :goto_0

    .line 314
    :cond_0
    monitor-exit p0

    return-void

    .line 305
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic b(Lcom/facebook/orca/server/OrcaServiceQueue;Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;Lcom/facebook/orca/server/OperationResult;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/server/OrcaServiceQueue;->a(Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;Lcom/facebook/orca/server/OperationResult;)V

    return-void
.end method

.method static synthetic c(Lcom/facebook/orca/server/OrcaServiceQueue;)Lcom/facebook/orca/server/OrcaServiceQueueManager;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/facebook/orca/server/OrcaServiceQueue;->f:Lcom/facebook/orca/server/OrcaServiceQueueManager;

    return-object v0
.end method

.method private d()V
    .locals 9

    .prologue
    const-wide/16 v7, 0x0

    const/4 v6, 0x3

    .line 170
    :goto_0
    iget-object v0, p0, Lcom/facebook/orca/server/OrcaServiceQueue;->m:Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;

    if-nez v0, :cond_1

    .line 173
    monitor-enter p0

    .line 174
    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/server/OrcaServiceQueue;->g:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 176
    iget-object v0, p0, Lcom/facebook/orca/server/OrcaServiceQueue;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/OrcaServiceQueueHook;

    .line 177
    invoke-interface {v0}, Lcom/facebook/orca/server/OrcaServiceQueueHook;->a()V

    goto :goto_1

    .line 188
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 179
    :cond_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 226
    :cond_1
    invoke-direct {p0}, Lcom/facebook/orca/server/OrcaServiceQueue;->e()V

    .line 227
    return-void

    .line 181
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/facebook/orca/server/OrcaServiceQueue;->g:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/Operation;

    .line 182
    iget-object v1, p0, Lcom/facebook/orca/server/OrcaServiceQueue;->h:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/facebook/orca/server/Operation;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;

    .line 183
    if-nez v1, :cond_3

    .line 184
    sget-object v0, Lcom/facebook/orca/server/OrcaServiceQueue;->a:Ljava/lang/Class;

    const-string v1, "No holder for queued operation!"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->d(Ljava/lang/Class;Ljava/lang/String;)V

    .line 185
    monitor-exit p0

    goto :goto_0

    .line 187
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;->a(Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;J)J

    .line 188
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 190
    const-wide/16 v2, 0x5

    invoke-static {v2, v3}, Lcom/facebook/orca/debug/Tracer;->b(J)V

    .line 191
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OrcaService ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/facebook/orca/server/Operation;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/orca/debug/Tracer;->a(Ljava/lang/String;)Lcom/facebook/orca/debug/Tracer;

    move-result-object v2

    .line 193
    :try_start_3
    iget-boolean v3, p0, Lcom/facebook/orca/server/OrcaServiceQueue;->j:Z

    if-eqz v3, :cond_4

    .line 195
    new-instance v0, Ljava/lang/Exception;

    const-string v3, "Queue stopped"

    invoke-direct {v0, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 208
    :catch_0
    move-exception v0

    .line 209
    :try_start_4
    sget-object v3, Lcom/facebook/orca/server/OrcaServiceQueue;->a:Ljava/lang/Class;

    const-string v4, "Exception during service"

    invoke-static {v3, v4, v0}, Lcom/facebook/orca/debug/BLog;->d(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 210
    invoke-static {v0}, Lcom/facebook/orca/server/ErrorCodeUtil;->a(Ljava/lang/Throwable;)Lcom/facebook/orca/server/ErrorCode;

    move-result-object v3

    invoke-static {v0}, Lcom/facebook/orca/server/ErrorCodeUtil;->b(Ljava/lang/Throwable;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/orca/server/OperationResult;->a(Lcom/facebook/orca/server/ErrorCode;Landroid/os/Bundle;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    .line 214
    invoke-direct {p0, v1, v0}, Lcom/facebook/orca/server/OrcaServiceQueue;->a(Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;Lcom/facebook/orca/server/OperationResult;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 216
    invoke-virtual {v2, v7, v8}, Lcom/facebook/orca/debug/Tracer;->a(J)J

    .line 217
    invoke-static {v6}, Lcom/facebook/orca/debug/BLog;->b(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 218
    sget-object v0, Lcom/facebook/orca/server/OrcaServiceQueue;->a:Ljava/lang/Class;

    invoke-static {v0}, Lcom/facebook/orca/debug/Tracer;->a(Ljava/lang/Class;)V

    goto/16 :goto_0

    .line 198
    :cond_4
    :try_start_5
    new-instance v3, Lcom/facebook/orca/server/OperationParams;

    invoke-virtual {v0}, Lcom/facebook/orca/server/Operation;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/facebook/orca/server/Operation;->c()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v1}, Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;->b(Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;)Lcom/facebook/orca/server/OrcaServiceProgressCallback;

    move-result-object v5

    invoke-direct {v3, v4, v0, v5}, Lcom/facebook/orca/server/OperationParams;-><init>(Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/orca/server/OrcaServiceProgressCallback;)V

    .line 200
    iget-object v0, p0, Lcom/facebook/orca/server/OrcaServiceQueue;->d:Lcom/facebook/orca/server/OrcaServiceHandler;

    invoke-interface {v0, v3}, Lcom/facebook/orca/server/OrcaServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    .line 202
    instance-of v3, v0, Lcom/facebook/orca/server/FutureOperationResult;

    if-eqz v3, :cond_5

    .line 203
    check-cast v0, Lcom/facebook/orca/server/FutureOperationResult;

    .line 204
    invoke-virtual {v0}, Lcom/facebook/orca/server/FutureOperationResult;->a()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/facebook/orca/server/OrcaServiceQueue;->a(Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;Lcom/google/common/util/concurrent/ListenableFuture;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    .line 216
    :goto_2
    invoke-virtual {v2, v7, v8}, Lcom/facebook/orca/debug/Tracer;->a(J)J

    .line 217
    invoke-static {v6}, Lcom/facebook/orca/debug/BLog;->b(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 218
    sget-object v0, Lcom/facebook/orca/server/OrcaServiceQueue;->a:Ljava/lang/Class;

    invoke-static {v0}, Lcom/facebook/orca/debug/Tracer;->a(Ljava/lang/Class;)V

    goto/16 :goto_0

    .line 206
    :cond_5
    :try_start_6
    invoke-direct {p0, v1, v0}, Lcom/facebook/orca/server/OrcaServiceQueue;->a(Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;Lcom/facebook/orca/server/OperationResult;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_2

    .line 216
    :catchall_1
    move-exception v0

    invoke-virtual {v2, v7, v8}, Lcom/facebook/orca/debug/Tracer;->a(J)J

    .line 217
    invoke-static {v6}, Lcom/facebook/orca/debug/BLog;->b(I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 218
    sget-object v1, Lcom/facebook/orca/server/OrcaServiceQueue;->a:Ljava/lang/Class;

    invoke-static {v1}, Lcom/facebook/orca/debug/Tracer;->a(Ljava/lang/Class;)V

    .line 220
    :goto_3
    throw v0

    :cond_6
    invoke-static {}, Lcom/facebook/orca/debug/Tracer;->b()V

    goto/16 :goto_0

    :cond_7
    invoke-static {}, Lcom/facebook/orca/debug/Tracer;->b()V

    goto/16 :goto_0

    :cond_8
    invoke-static {}, Lcom/facebook/orca/debug/Tracer;->b()V

    goto :goto_3
.end method

.method static synthetic d(Lcom/facebook/orca/server/OrcaServiceQueue;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/facebook/orca/server/OrcaServiceQueue;->d()V

    return-void
.end method

.method private declared-synchronized e()V
    .locals 9

    .prologue
    .line 233
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 234
    iget-object v0, p0, Lcom/facebook/orca/server/OrcaServiceQueue;->i:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 235
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 236
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/Operation;

    .line 237
    iget-object v1, p0, Lcom/facebook/orca/server/OrcaServiceQueue;->h:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/facebook/orca/server/Operation;->b()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;

    .line 238
    if-nez v1, :cond_0

    .line 239
    sget-object v5, Lcom/facebook/orca/server/OrcaServiceQueue;->a:Ljava/lang/Class;

    const-string v6, "No holder for recently completed operation!"

    invoke-static {v5, v6}, Lcom/facebook/orca/debug/BLog;->d(Ljava/lang/Class;Ljava/lang/String;)V

    .line 240
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 242
    :cond_0
    invoke-static {v1}, Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;->c(Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;)J

    move-result-wide v5

    sub-long v5, v2, v5

    const-wide/16 v7, 0x7530

    cmp-long v1, v5, v7

    if-lez v1, :cond_1

    .line 243
    iget-object v1, p0, Lcom/facebook/orca/server/OrcaServiceQueue;->h:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/facebook/orca/server/Operation;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 233
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 251
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/facebook/orca/server/OrcaServiceQueue;->i:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 252
    const-wide/16 v0, 0x3a98

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/server/OrcaServiceQueue;->a(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 254
    :cond_2
    monitor-exit p0

    return-void
.end method


# virtual methods
.method a()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Lcom/facebook/orca/server/OrcaServiceQueue;->c:Ljava/lang/Class;

    return-object v0
.end method

.method a(Lcom/facebook/orca/server/Operation;)V
    .locals 3
    .parameter

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/facebook/orca/server/OrcaServiceQueue;->j:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Cannot add an operation after queue was stopped"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 140
    monitor-enter p0

    .line 141
    :try_start_0
    new-instance v0, Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;

    invoke-direct {v0, p1}, Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;-><init>(Lcom/facebook/orca/server/Operation;)V

    .line 142
    new-instance v1, Lcom/facebook/orca/server/OrcaServiceQueue$2;

    invoke-direct {v1, p0, v0}, Lcom/facebook/orca/server/OrcaServiceQueue$2;-><init>(Lcom/facebook/orca/server/OrcaServiceQueue;Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;)V

    invoke-static {v0, v1}, Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;->a(Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;Lcom/facebook/orca/server/OrcaServiceProgressCallback;)Lcom/facebook/orca/server/OrcaServiceProgressCallback;

    .line 148
    iget-object v1, p0, Lcom/facebook/orca/server/OrcaServiceQueue;->g:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 149
    iget-object v1, p0, Lcom/facebook/orca/server/OrcaServiceQueue;->h:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/facebook/orca/server/Operation;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    iget-object v0, p0, Lcom/facebook/orca/server/OrcaServiceQueue;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/OrcaServiceQueueHook;

    .line 152
    invoke-interface {v0, p1}, Lcom/facebook/orca/server/OrcaServiceQueueHook;->a(Lcom/facebook/orca/server/Operation;)V

    goto :goto_1

    .line 139
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 150
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 154
    :cond_1
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/server/OrcaServiceQueue;->a(J)V

    .line 155
    return-void
.end method

.method declared-synchronized a(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 317
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/server/OrcaServiceQueue;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method a(Ljava/lang/String;Lcom/facebook/orca/server/ICompletionHandler;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 329
    const/4 v1, 0x0

    .line 330
    monitor-enter p0

    .line 331
    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/server/OrcaServiceQueue;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;

    .line 332
    if-nez v0, :cond_0

    .line 333
    const/4 v0, 0x0

    monitor-exit p0

    .line 353
    :goto_0
    return v0

    .line 336
    :cond_0
    invoke-static {v0}, Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;->f(Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 338
    invoke-static {v0}, Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;->f(Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    .line 342
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 344
    if-eqz v0, :cond_1

    .line 347
    :try_start_1
    invoke-interface {p2, v0}, Lcom/facebook/orca/server/ICompletionHandler;->b(Lcom/facebook/orca/server/OperationResult;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 353
    :cond_1
    :goto_2
    const/4 v0, 0x1

    goto :goto_0

    .line 340
    :cond_2
    :try_start_2
    invoke-static {v0}, Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;->e(Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    goto :goto_1

    .line 342
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 348
    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method b()V
    .locals 2

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/facebook/orca/server/OrcaServiceQueue;->j:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Queue cannot be started after stopped"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OrcaServiceQueue - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/orca/server/OrcaServiceQueue;->c:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 107
    new-instance v1, Landroid/os/HandlerThread;

    invoke-direct {v1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/facebook/orca/server/OrcaServiceQueue;->k:Landroid/os/HandlerThread;

    .line 108
    iget-object v0, p0, Lcom/facebook/orca/server/OrcaServiceQueue;->k:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 109
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/facebook/orca/server/OrcaServiceQueue;->k:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/facebook/orca/server/OrcaServiceQueue;->l:Landroid/os/Handler;

    .line 110
    iget-object v0, p0, Lcom/facebook/orca/server/OrcaServiceQueue;->f:Lcom/facebook/orca/server/OrcaServiceQueueManager;

    invoke-virtual {v0, p0}, Lcom/facebook/orca/server/OrcaServiceQueueManager;->a(Lcom/facebook/orca/server/OrcaServiceQueue;)V

    .line 111
    return-void

    .line 105
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method c()V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/facebook/orca/server/OrcaServiceQueue;->l:Landroid/os/Handler;

    .line 115
    if-eqz v0, :cond_0

    .line 116
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/facebook/orca/server/OrcaServiceQueue;->j:Z

    .line 117
    new-instance v1, Lcom/facebook/orca/server/OrcaServiceQueue$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/server/OrcaServiceQueue$1;-><init>(Lcom/facebook/orca/server/OrcaServiceQueue;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 132
    :cond_0
    return-void
.end method
