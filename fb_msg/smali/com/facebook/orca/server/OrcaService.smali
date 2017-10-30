.class public abstract Lcom/facebook/orca/server/OrcaService;
.super Landroid/app/Service;
.source "OrcaService.java"


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
.field private b:Lcom/facebook/orca/server/OrcaService$OrcaServiceStub;

.field private c:Lcom/facebook/orca/server/OrcaServiceQueueManager;

.field private d:Lcom/facebook/orca/server/OrcaServiceRegistry;

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class;",
            "Lcom/facebook/orca/server/OrcaServiceQueue;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final f:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/facebook/orca/server/OrcaService;

    sput-object v0, Lcom/facebook/orca/server/OrcaService;->a:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 45
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/server/OrcaService;->e:Ljava/util/Map;

    .line 48
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/facebook/orca/server/OrcaService;->f:Ljava/util/concurrent/atomic/AtomicLong;

    .line 191
    return-void
.end method

.method private a(Ljava/lang/Class;Lcom/facebook/orca/server/OrcaServiceHandler;Ljava/util/Set;)Lcom/facebook/orca/server/OrcaServiceQueue;
    .locals 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Lcom/facebook/orca/server/OrcaServiceHandler;",
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/orca/server/OrcaServiceQueueHook;",
            ">;)",
            "Lcom/facebook/orca/server/OrcaServiceQueue;"
        }
    .end annotation

    .prologue
    .line 155
    new-instance v0, Lcom/facebook/orca/server/OrcaServiceQueue;

    iget-object v5, p0, Lcom/facebook/orca/server/OrcaService;->c:Lcom/facebook/orca/server/OrcaServiceQueueManager;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/orca/server/OrcaServiceQueue;-><init>(Landroid/content/Context;Ljava/lang/Class;Lcom/facebook/orca/server/OrcaServiceHandler;Ljava/util/Set;Lcom/facebook/orca/server/OrcaServiceQueueManager;)V

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/orca/server/OrcaService;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/server/OrcaService;->a(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized a(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 117
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/server/OrcaService;->c:Lcom/facebook/orca/server/OrcaServiceQueueManager;

    invoke-virtual {v0}, Lcom/facebook/orca/server/OrcaServiceQueueManager;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 121
    :cond_0
    if-eqz p2, :cond_1

    .line 122
    :try_start_1
    invoke-virtual {p0}, Lcom/facebook/orca/server/OrcaService;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 125
    :cond_1
    invoke-static {p0}, Lcom/facebook/orca/app/AppInitLockHelper;->a(Landroid/content/Context;)V

    .line 127
    iget-object v0, p0, Lcom/facebook/orca/server/OrcaService;->d:Lcom/facebook/orca/server/OrcaServiceRegistry;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/server/OrcaServiceRegistry;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 128
    iget-object v0, p0, Lcom/facebook/orca/server/OrcaService;->d:Lcom/facebook/orca/server/OrcaServiceRegistry;

    invoke-virtual {v0, v2}, Lcom/facebook/orca/server/OrcaServiceRegistry;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 129
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v1, v0, :cond_2

    .line 131
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 134
    :cond_2
    iget-object v0, p0, Lcom/facebook/orca/server/OrcaService;->e:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/OrcaServiceQueue;

    .line 135
    if-nez v0, :cond_3

    .line 136
    invoke-static {p0}, Lcom/facebook/orca/inject/FbInjector;->a(Landroid/content/Context;)Lcom/facebook/orca/inject/FbInjector;

    move-result-object v1

    .line 137
    const-class v0, Lcom/facebook/orca/server/OrcaServiceHandler;

    invoke-virtual {v1, v0, v2}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/OrcaServiceHandler;

    .line 138
    new-instance v3, Lcom/facebook/orca/server/OrcaService$1;

    invoke-direct {v3, p0}, Lcom/facebook/orca/server/OrcaService$1;-><init>(Lcom/facebook/orca/server/OrcaService;)V

    invoke-static {v3, v2}, Lcom/google/inject/Key;->a(Lcom/google/inject/TypeLiteral;Ljava/lang/Class;)Lcom/google/inject/Key;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/facebook/orca/inject/FbInjector;->a(Lcom/google/inject/Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 140
    invoke-direct {p0, v2, v0, v1}, Lcom/facebook/orca/server/OrcaService;->a(Ljava/lang/Class;Lcom/facebook/orca/server/OrcaServiceHandler;Ljava/util/Set;)Lcom/facebook/orca/server/OrcaServiceQueue;

    move-result-object v0

    .line 141
    invoke-virtual {v0}, Lcom/facebook/orca/server/OrcaServiceQueue;->b()V

    .line 142
    iget-object v1, p0, Lcom/facebook/orca/server/OrcaService;->e:Ljava/util/Map;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    :cond_3
    iget-object v1, p0, Lcom/facebook/orca/server/OrcaService;->f:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    .line 146
    new-instance v2, Lcom/facebook/orca/server/Operation;

    invoke-direct {v2, v1, p1, p2}, Lcom/facebook/orca/server/Operation;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 147
    invoke-virtual {v0, v2}, Lcom/facebook/orca/server/OrcaServiceQueue;->a(Lcom/facebook/orca/server/Operation;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 148
    monitor-exit p0

    return-object v1
.end method

.method static synthetic a(Lcom/facebook/orca/server/OrcaService;Ljava/lang/String;Lcom/facebook/orca/server/ICompletionHandler;)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/server/OrcaService;->a(Ljava/lang/String;Lcom/facebook/orca/server/ICompletionHandler;)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;Lcom/facebook/orca/server/ICompletionHandler;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 166
    const/4 v1, 0x0

    .line 167
    monitor-enter p0

    .line 168
    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/server/OrcaService;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/OrcaServiceQueue;

    .line 169
    invoke-virtual {v0, p1}, Lcom/facebook/orca/server/OrcaServiceQueue;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 174
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    if-eqz v0, :cond_1

    .line 178
    invoke-virtual {v0, p1, p2}, Lcom/facebook/orca/server/OrcaServiceQueue;->a(Ljava/lang/String;Lcom/facebook/orca/server/ICompletionHandler;)Z

    move-result v0

    .line 179
    if-eqz v0, :cond_1

    .line 180
    const/4 v0, 0x1

    .line 185
    :goto_1
    return v0

    .line 174
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 185
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter

    .prologue
    .line 101
    iget-object v0, p0, Lcom/facebook/orca/server/OrcaService;->b:Lcom/facebook/orca/server/OrcaService$OrcaServiceStub;

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 52
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 54
    sget-object v0, Lcom/facebook/orca/server/OrcaService;->a:Ljava/lang/Class;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/Class;Ljava/lang/String;)V

    .line 56
    invoke-static {p0}, Lcom/facebook/orca/inject/FbInjector;->a(Landroid/content/Context;)Lcom/facebook/orca/inject/FbInjector;

    move-result-object v1

    .line 57
    new-instance v0, Lcom/facebook/orca/server/OrcaService$OrcaServiceStub;

    invoke-direct {v0, p0}, Lcom/facebook/orca/server/OrcaService$OrcaServiceStub;-><init>(Lcom/facebook/orca/server/OrcaService;)V

    iput-object v0, p0, Lcom/facebook/orca/server/OrcaService;->b:Lcom/facebook/orca/server/OrcaService$OrcaServiceStub;

    .line 58
    const-class v0, Lcom/facebook/orca/server/OrcaServiceQueueManager;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/OrcaServiceQueueManager;

    iput-object v0, p0, Lcom/facebook/orca/server/OrcaService;->c:Lcom/facebook/orca/server/OrcaServiceQueueManager;

    .line 59
    const-class v0, Lcom/facebook/orca/server/OrcaServiceRegistry;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/OrcaServiceRegistry;

    iput-object v0, p0, Lcom/facebook/orca/server/OrcaService;->d:Lcom/facebook/orca/server/OrcaServiceRegistry;

    .line 60
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 64
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 65
    sget-object v0, Lcom/facebook/orca/server/OrcaService;->a:Ljava/lang/Class;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/Class;Ljava/lang/String;)V

    .line 67
    monitor-enter p0

    .line 68
    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/server/OrcaService;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/OrcaServiceQueue;

    .line 69
    invoke-virtual {v0}, Lcom/facebook/orca/server/OrcaServiceQueue;->c()V

    goto :goto_0

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 71
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/facebook/orca/server/OrcaService;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 72
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    return-void
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 0
    .parameter

    .prologue
    .line 112
    invoke-super {p0, p1}, Landroid/app/Service;->onRebind(Landroid/content/Intent;)V

    .line 113
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 77
    monitor-enter p0

    .line 78
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 79
    const-string v1, "Orca.START"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 95
    :cond_0
    :goto_0
    monitor-exit p0

    .line 96
    const/4 v0, 0x2

    return v0

    .line 81
    :cond_1
    const-string v1, "Orca.STOP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 87
    invoke-virtual {p0, p3}, Lcom/facebook/orca/server/OrcaService;->stopSelf(I)V

    goto :goto_0

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 88
    :cond_2
    :try_start_1
    const-string v1, "Orca.DRAIN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/facebook/orca/server/OrcaService;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/OrcaServiceQueue;

    .line 91
    invoke-virtual {v0}, Lcom/facebook/orca/server/OrcaServiceQueue;->c()V

    goto :goto_1

    .line 93
    :cond_3
    iget-object v0, p0, Lcom/facebook/orca/server/OrcaService;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1
    .parameter

    .prologue
    .line 106
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    .line 107
    const/4 v0, 0x1

    return v0
.end method
