.class public Lcom/facebook/orca/ops/OrcaServiceOperation;
.super Ljava/lang/Object;
.source "OrcaServiceOperation.java"


# static fields
.field public static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final c:Lcom/facebook/orca/debug/WtfToken;


# instance fields
.field private final d:Landroid/content/Context;

.field private final e:Lcom/facebook/orca/server/OrcaServiceRegistry;

.field private final f:Lcom/facebook/orca/ops/OrcaServiceOperation$OrcaServiceConnection;

.field private final g:Lcom/facebook/orca/common/util/AndroidThreadUtil;

.field private h:Landroid/os/Handler;

.field private i:Lcom/facebook/orca/server/IOrcaService;

.field private j:Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;

.field private k:Lcom/facebook/orca/ops/OrcaServiceOperation$OnProgressListener;

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Lcom/facebook/orca/ops/OperationProgressIndicator;

.field private p:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

.field private q:Ljava/lang/String;

.field private r:Landroid/os/Bundle;

.field private s:Ljava/lang/String;

.field private t:Z

.field private u:Z

.field private v:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/facebook/orca/ops/OrcaServiceOperation;

    sput-object v0, Lcom/facebook/orca/ops/OrcaServiceOperation;->b:Ljava/lang/Class;

    .line 42
    new-instance v0, Lcom/facebook/orca/debug/WtfToken;

    invoke-direct {v0}, Lcom/facebook/orca/debug/WtfToken;-><init>()V

    sput-object v0, Lcom/facebook/orca/ops/OrcaServiceOperation;->c:Lcom/facebook/orca/debug/WtfToken;

    .line 93
    invoke-static {}, Lcom/google/common/collect/Maps;->c()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    sput-object v0, Lcom/facebook/orca/ops/OrcaServiceOperation;->a:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/orca/server/OrcaServiceRegistry;Lcom/facebook/orca/common/util/AndroidThreadUtil;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    sget-object v0, Lcom/facebook/orca/ops/OrcaServiceOperation$State;->INIT:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    iput-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->p:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    .line 162
    iput-object p1, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->d:Landroid/content/Context;

    .line 163
    new-instance v0, Lcom/facebook/orca/ops/OrcaServiceOperation$OrcaServiceConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/orca/ops/OrcaServiceOperation$OrcaServiceConnection;-><init>(Lcom/facebook/orca/ops/OrcaServiceOperation;Lcom/facebook/orca/ops/OrcaServiceOperation$1;)V

    iput-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->f:Lcom/facebook/orca/ops/OrcaServiceOperation$OrcaServiceConnection;

    .line 164
    iput-object p2, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->e:Lcom/facebook/orca/server/OrcaServiceRegistry;

    .line 165
    iput-object p3, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->g:Lcom/facebook/orca/common/util/AndroidThreadUtil;

    .line 166
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/ops/OrcaServiceOperation;Lcom/facebook/orca/server/IOrcaService;)Lcom/facebook/orca/server/IOrcaService;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->i:Lcom/facebook/orca/server/IOrcaService;

    return-object p1
.end method

.method static synthetic a(Lcom/facebook/orca/ops/OrcaServiceOperation;Lcom/facebook/orca/server/OperationResult;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/facebook/orca/ops/OrcaServiceOperation;->b(Lcom/facebook/orca/server/OperationResult;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/ops/OrcaServiceOperation;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/facebook/orca/ops/OrcaServiceOperation;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Lcom/facebook/orca/ops/ServiceException;)V
    .locals 2
    .parameter

    .prologue
    .line 618
    sget-object v0, Lcom/facebook/orca/ops/OrcaServiceOperation$State;->COMPLETED:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    iput-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->p:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    .line 619
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->s:Ljava/lang/String;

    .line 620
    invoke-direct {p0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->j()V

    .line 622
    const/4 v0, 0x0

    .line 623
    iget-object v1, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->d:Landroid/content/Context;

    instance-of v1, v1, Lcom/facebook/orca/activity/FbActivityish;

    if-eqz v1, :cond_0

    .line 624
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->d:Landroid/content/Context;

    check-cast v0, Lcom/facebook/orca/activity/FbActivityish;

    .line 625
    invoke-interface {v0, p1}, Lcom/facebook/orca/activity/FbActivityish;->a(Ljava/lang/Exception;)Z

    move-result v0

    .line 628
    :cond_0
    iget-boolean v1, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->l:Z

    if-eqz v1, :cond_1

    .line 629
    invoke-virtual {p0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->d()V

    .line 631
    :cond_1
    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->j:Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;

    if-eqz v0, :cond_2

    .line 632
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->j:Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;->a(Lcom/facebook/orca/ops/ServiceException;)V

    .line 634
    :cond_2
    iget-boolean v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->m:Z

    if-eqz v0, :cond_3

    .line 635
    invoke-virtual {p0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->a()V

    .line 637
    :cond_3
    return-void
.end method

.method private a(Lcom/facebook/orca/server/OperationResult;)V
    .locals 1
    .parameter

    .prologue
    .line 553
    iget-boolean v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->n:Z

    if-eqz v0, :cond_0

    .line 554
    invoke-virtual {p0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->a()V

    .line 567
    :goto_0
    return-void

    .line 558
    :cond_0
    new-instance v0, Lcom/facebook/orca/ops/OrcaServiceOperation$2;

    invoke-direct {v0, p0, p1}, Lcom/facebook/orca/ops/OrcaServiceOperation$2;-><init>(Lcom/facebook/orca/ops/OrcaServiceOperation;Lcom/facebook/orca/server/OperationResult;)V

    invoke-direct {p0, v0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/Runnable;)V
    .locals 1
    .parameter

    .prologue
    .line 570
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->h:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 571
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->h:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 575
    :goto_0
    return-void

    .line 573
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->g:Lcom/facebook/orca/common/util/AndroidThreadUtil;

    invoke-interface {v0, p1}, Lcom/facebook/orca/common/util/AndroidThreadUtil;->c(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/facebook/orca/ops/OrcaServiceOperation;)Z
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->v:Z

    return v0
.end method

.method static synthetic a(Lcom/facebook/orca/ops/OrcaServiceOperation;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->u:Z

    return p1
.end method

.method static synthetic b(Lcom/facebook/orca/ops/OrcaServiceOperation;)V
    .locals 0
    .parameter

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->g()V

    return-void
.end method

.method static synthetic b(Lcom/facebook/orca/ops/OrcaServiceOperation;Lcom/facebook/orca/server/OperationResult;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/facebook/orca/ops/OrcaServiceOperation;->a(Lcom/facebook/orca/server/OperationResult;)V

    return-void
.end method

.method private b(Lcom/facebook/orca/server/OperationResult;)V
    .locals 1
    .parameter

    .prologue
    .line 583
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->k:Lcom/facebook/orca/ops/OrcaServiceOperation$OnProgressListener;

    if-eqz v0, :cond_0

    .line 584
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->k:Lcom/facebook/orca/ops/OrcaServiceOperation$OnProgressListener;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/ops/OrcaServiceOperation$OnProgressListener;->a(Lcom/facebook/orca/server/OperationResult;)V

    .line 586
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/facebook/orca/ops/OrcaServiceOperation;Lcom/facebook/orca/server/OperationResult;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/facebook/orca/ops/OrcaServiceOperation;->c(Lcom/facebook/orca/server/OperationResult;)V

    return-void
.end method

.method private c(Lcom/facebook/orca/server/OperationResult;)V
    .locals 1
    .parameter

    .prologue
    .line 594
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationResult;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 595
    invoke-direct {p0, p1}, Lcom/facebook/orca/ops/OrcaServiceOperation;->d(Lcom/facebook/orca/server/OperationResult;)V

    .line 599
    :goto_0
    return-void

    .line 597
    :cond_0
    new-instance v0, Lcom/facebook/orca/ops/ServiceException;

    invoke-direct {v0, p1}, Lcom/facebook/orca/ops/ServiceException;-><init>(Lcom/facebook/orca/server/OperationResult;)V

    invoke-direct {p0, v0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->a(Lcom/facebook/orca/ops/ServiceException;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/facebook/orca/ops/OrcaServiceOperation;)Z
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->n:Z

    return v0
.end method

.method private d(Lcom/facebook/orca/server/OperationResult;)V
    .locals 1
    .parameter

    .prologue
    .line 602
    sget-object v0, Lcom/facebook/orca/ops/OrcaServiceOperation$State;->COMPLETED:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    iput-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->p:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    .line 603
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->s:Ljava/lang/String;

    .line 604
    invoke-direct {p0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->j()V

    .line 606
    iget-boolean v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->l:Z

    if-eqz v0, :cond_0

    .line 607
    invoke-virtual {p0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->d()V

    .line 609
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->j:Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;

    if-eqz v0, :cond_1

    .line 610
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->j:Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;->a(Lcom/facebook/orca/server/OperationResult;)V

    .line 612
    :cond_1
    iget-boolean v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->m:Z

    if-eqz v0, :cond_2

    .line 613
    invoke-virtual {p0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->a()V

    .line 615
    :cond_2
    return-void
.end method

.method private e()V
    .locals 4

    .prologue
    .line 394
    iget-boolean v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->t:Z

    if-eqz v0, :cond_0

    .line 396
    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->f:Lcom/facebook/orca/ops/OrcaServiceOperation$OrcaServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 403
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->t:Z

    .line 408
    :cond_0
    return-void

    .line 397
    :catch_0
    move-exception v0

    .line 401
    sget-object v1, Lcom/facebook/orca/ops/OrcaServiceOperation;->c:Lcom/facebook/orca/debug/WtfToken;

    sget-object v2, Lcom/facebook/orca/ops/OrcaServiceOperation;->b:Ljava/lang/Class;

    const-string v3, "Exception unbinding"

    invoke-static {v1, v2, v3, v0}, Lcom/facebook/orca/debug/BLog;->a(Lcom/facebook/orca/debug/WtfToken;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private f()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 438
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->i:Lcom/facebook/orca/server/IOrcaService;

    if-eqz v0, :cond_1

    .line 441
    invoke-direct {p0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->g()V

    .line 470
    :cond_0
    :goto_0
    return-void

    .line 442
    :cond_1
    iget-boolean v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->t:Z

    if-nez v0, :cond_0

    .line 445
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->e:Lcom/facebook/orca/server/OrcaServiceRegistry;

    iget-object v1, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/server/OrcaServiceRegistry;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 447
    if-nez v0, :cond_2

    .line 448
    sget-object v0, Lcom/facebook/orca/server/ErrorCode;->ORCA_SERVICE_IPC_FAILURE:Lcom/facebook/orca/server/ErrorCode;

    const-string v1, "Unknown operation type"

    invoke-static {v0, v1}, Lcom/facebook/orca/server/OperationResult;->a(Lcom/facebook/orca/server/ErrorCode;Ljava/lang/String;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    .line 450
    invoke-direct {p0, v0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->a(Lcom/facebook/orca/server/OperationResult;)V

    goto :goto_0

    .line 452
    :cond_2
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->d:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 453
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->f:Lcom/facebook/orca/ops/OrcaServiceOperation$OrcaServiceConnection;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 462
    iput-boolean v3, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->t:Z

    goto :goto_0

    .line 464
    :cond_3
    sget-object v0, Lcom/facebook/orca/server/ErrorCode;->ORCA_SERVICE_IPC_FAILURE:Lcom/facebook/orca/server/ErrorCode;

    const-string v1, "Bind to OrcaService failed"

    invoke-static {v0, v1}, Lcom/facebook/orca/server/OperationResult;->a(Lcom/facebook/orca/server/ErrorCode;Ljava/lang/String;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    .line 466
    invoke-direct {p0, v0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->a(Lcom/facebook/orca/server/OperationResult;)V

    goto :goto_0
.end method

.method private g()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 478
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->p:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    sget-object v3, Lcom/facebook/orca/ops/OrcaServiceOperation$State;->READY_TO_QUEUE:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    if-ne v0, v3, :cond_5

    .line 479
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->q:Ljava/lang/String;

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    const-string v3, "Null operation type"

    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 480
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->s:Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    const-string v3, "Non-null operation id"

    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 481
    iget-boolean v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->u:Z

    if-nez v0, :cond_3

    :goto_2
    const-string v0, "Registered for completion and haven\'t yet sent"

    invoke-static {v1, v0}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 485
    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->i:Lcom/facebook/orca/server/IOrcaService;

    iget-object v1, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->q:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->r:Landroid/os/Bundle;

    invoke-interface {v0, v1, v2}, Lcom/facebook/orca/server/IOrcaService;->a(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->s:Ljava/lang/String;

    .line 486
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->i:Lcom/facebook/orca/server/IOrcaService;

    if-nez v0, :cond_4

    .line 490
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 494
    :catch_0
    move-exception v0

    .line 495
    sget-object v0, Lcom/facebook/orca/server/ErrorCode;->ORCA_SERVICE_IPC_FAILURE:Lcom/facebook/orca/server/ErrorCode;

    const-string v1, "OrcaService.<method> or registerCompletionHandler failed"

    invoke-static {v0, v1}, Lcom/facebook/orca/server/OperationResult;->a(Lcom/facebook/orca/server/ErrorCode;Ljava/lang/String;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    .line 498
    invoke-direct {p0, v0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->a(Lcom/facebook/orca/server/OperationResult;)V

    .line 513
    :cond_0
    :goto_3
    return-void

    :cond_1
    move v0, v2

    .line 479
    goto :goto_0

    :cond_2
    move v0, v2

    .line 480
    goto :goto_1

    :cond_3
    move v1, v2

    .line 481
    goto :goto_2

    .line 492
    :cond_4
    :try_start_1
    invoke-direct {p0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->h()V

    .line 493
    sget-object v0, Lcom/facebook/orca/ops/OrcaServiceOperation$State;->OPERATION_QUEUED:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    iput-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->p:Lcom/facebook/orca/ops/OrcaServiceOperation$State;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 500
    :cond_5
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->p:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    sget-object v3, Lcom/facebook/orca/ops/OrcaServiceOperation$State;->OPERATION_QUEUED:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    if-ne v0, v3, :cond_0

    .line 501
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->s:Ljava/lang/String;

    if-eqz v0, :cond_6

    :goto_4
    const-string v0, "null operation id"

    invoke-static {v1, v0}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 502
    iget-boolean v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->u:Z

    if-nez v0, :cond_0

    .line 504
    :try_start_2
    invoke-direct {p0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->h()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 505
    :catch_1
    move-exception v0

    .line 506
    sget-object v0, Lcom/facebook/orca/server/ErrorCode;->ORCA_SERVICE_IPC_FAILURE:Lcom/facebook/orca/server/ErrorCode;

    const-string v1, "OrcaService.registerCompletionHandler failed"

    invoke-static {v0, v1}, Lcom/facebook/orca/server/OperationResult;->a(Lcom/facebook/orca/server/ErrorCode;Ljava/lang/String;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    .line 509
    invoke-direct {p0, v0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->a(Lcom/facebook/orca/server/OperationResult;)V

    goto :goto_3

    :cond_6
    move v1, v2

    .line 501
    goto :goto_4
.end method

.method private h()V
    .locals 3

    .prologue
    .line 521
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->i:Lcom/facebook/orca/server/IOrcaService;

    iget-object v1, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->s:Ljava/lang/String;

    new-instance v2, Lcom/facebook/orca/ops/OrcaServiceOperation$1;

    invoke-direct {v2, p0}, Lcom/facebook/orca/ops/OrcaServiceOperation$1;-><init>(Lcom/facebook/orca/ops/OrcaServiceOperation;)V

    invoke-interface {v0, v1, v2}, Lcom/facebook/orca/server/IOrcaService;->a(Ljava/lang/String;Lcom/facebook/orca/server/ICompletionHandler;)Z

    move-result v0

    .line 542
    if-eqz v0, :cond_0

    .line 543
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->u:Z

    .line 550
    :goto_0
    return-void

    .line 545
    :cond_0
    sget-object v0, Lcom/facebook/orca/server/ErrorCode;->ORCA_SERVICE_IPC_FAILURE:Lcom/facebook/orca/server/ErrorCode;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown operation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->s:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/orca/server/OperationResult;->a(Lcom/facebook/orca/server/ErrorCode;Ljava/lang/String;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    .line 548
    invoke-direct {p0, v0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->a(Lcom/facebook/orca/server/OperationResult;)V

    goto :goto_0
.end method

.method private i()V
    .locals 1

    .prologue
    .line 640
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->o:Lcom/facebook/orca/ops/OperationProgressIndicator;

    if-eqz v0, :cond_0

    .line 641
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->o:Lcom/facebook/orca/ops/OperationProgressIndicator;

    invoke-interface {v0}, Lcom/facebook/orca/ops/OperationProgressIndicator;->a()V

    .line 643
    :cond_0
    return-void
.end method

.method private j()V
    .locals 1

    .prologue
    .line 646
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->o:Lcom/facebook/orca/ops/OperationProgressIndicator;

    if-eqz v0, :cond_0

    .line 647
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->o:Lcom/facebook/orca/ops/OperationProgressIndicator;

    invoke-interface {v0}, Lcom/facebook/orca/ops/OperationProgressIndicator;->b()V

    .line 649
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 172
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->v:Z

    .line 173
    invoke-direct {p0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->e()V

    .line 174
    iput-object v1, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->i:Lcom/facebook/orca/server/IOrcaService;

    .line 175
    iput-object v1, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->k:Lcom/facebook/orca/ops/OrcaServiceOperation$OnProgressListener;

    .line 176
    iput-object v1, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->j:Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;

    .line 177
    invoke-direct {p0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->j()V

    .line 178
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 187
    const-string v0, "operationState"

    iget-object v1, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->p:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 188
    const-string v0, "type"

    iget-object v1, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->q:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const-string v0, "param"

    iget-object v1, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->r:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 190
    const-string v0, "operationId"

    iget-object v1, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->s:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    return-void
.end method

.method public a(Lcom/facebook/orca/ops/OperationProgressIndicator;)V
    .locals 2
    .parameter

    .prologue
    .line 313
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->p:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    sget-object v1, Lcom/facebook/orca/ops/OrcaServiceOperation$State;->READY_TO_QUEUE:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->p:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    sget-object v1, Lcom/facebook/orca/ops/OrcaServiceOperation$State;->OPERATION_QUEUED:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    if-ne v0, v1, :cond_1

    .line 315
    :cond_0
    invoke-direct {p0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->j()V

    .line 317
    :cond_1
    iput-object p1, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->o:Lcom/facebook/orca/ops/OperationProgressIndicator;

    .line 318
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->p:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    sget-object v1, Lcom/facebook/orca/ops/OrcaServiceOperation$State;->READY_TO_QUEUE:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->p:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    sget-object v1, Lcom/facebook/orca/ops/OrcaServiceOperation$State;->OPERATION_QUEUED:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    if-ne v0, v1, :cond_3

    .line 320
    :cond_2
    invoke-direct {p0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->i()V

    .line 322
    :cond_3
    return-void
.end method

.method public a(Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;)V
    .locals 0
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 277
    iput-object p1, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->j:Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;

    .line 278
    return-void
.end method

.method public a(Lcom/facebook/orca/ops/OrcaServiceOperation$OnProgressListener;)V
    .locals 0
    .parameter

    .prologue
    .line 295
    iput-object p1, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->k:Lcom/facebook/orca/ops/OrcaServiceOperation$OnProgressListener;

    .line 296
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 418
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->p:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    sget-object v3, Lcom/facebook/orca/ops/OrcaServiceOperation$State;->INIT:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    if-ne v0, v3, :cond_1

    move v0, v1

    :goto_0
    const-string v3, "Incorrect operation state"

    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 419
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->q:Ljava/lang/String;

    if-nez v0, :cond_2

    :goto_1
    const-string v0, "Initially operationType should be null"

    invoke-static {v1, v0}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 420
    const-string v0, "non-null operationType"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    sget-object v0, Lcom/facebook/orca/ops/OrcaServiceOperation$State;->READY_TO_QUEUE:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    iput-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->p:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    .line 423
    iput-object p1, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->q:Ljava/lang/String;

    .line 424
    iput-object p2, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->r:Landroid/os/Bundle;

    .line 426
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 427
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->h:Landroid/os/Handler;

    .line 429
    :cond_0
    invoke-direct {p0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->i()V

    .line 430
    invoke-direct {p0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->f()V

    .line 431
    return-void

    :cond_1
    move v0, v2

    .line 418
    goto :goto_0

    :cond_2
    move v1, v2

    .line 419
    goto :goto_1
.end method

.method public a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 339
    iput-boolean p1, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->l:Z

    .line 340
    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 199
    const-string v0, "operationState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    iput-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->p:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    .line 200
    const-string v0, "param"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->r:Landroid/os/Bundle;

    .line 201
    const-string v0, "type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->q:Ljava/lang/String;

    .line 202
    const-string v0, "operationId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->s:Ljava/lang/String;

    .line 206
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 207
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->h:Landroid/os/Handler;

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->p:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    sget-object v1, Lcom/facebook/orca/ops/OrcaServiceOperation$State;->INIT:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    if-ne v0, v1, :cond_2

    .line 224
    :cond_1
    :goto_0
    return-void

    .line 212
    :cond_2
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->p:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    sget-object v1, Lcom/facebook/orca/ops/OrcaServiceOperation$State;->READY_TO_QUEUE:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    if-ne v0, v1, :cond_3

    .line 214
    invoke-direct {p0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->i()V

    .line 215
    invoke-direct {p0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->f()V

    goto :goto_0

    .line 216
    :cond_3
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->p:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    sget-object v1, Lcom/facebook/orca/ops/OrcaServiceOperation$State;->OPERATION_QUEUED:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    if-ne v0, v1, :cond_4

    .line 219
    invoke-direct {p0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->i()V

    .line 220
    invoke-direct {p0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->f()V

    goto :goto_0

    .line 221
    :cond_4
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->p:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    sget-object v1, Lcom/facebook/orca/ops/OrcaServiceOperation$State;->COMPLETED:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    if-ne v0, v1, :cond_1

    goto :goto_0
.end method

.method public b(Z)V
    .locals 0
    .parameter

    .prologue
    .line 357
    iput-boolean p1, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->m:Z

    .line 358
    return-void
.end method

.method public b()Z
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->p:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    sget-object v1, Lcom/facebook/orca/ops/OrcaServiceOperation$State;->INIT:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->p:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    sget-object v1, Lcom/facebook/orca/ops/OrcaServiceOperation$State;->COMPLETED:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Lcom/facebook/orca/ops/OrcaServiceOperation$State;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->p:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    return-object v0
.end method

.method public c(Z)V
    .locals 0
    .parameter

    .prologue
    .line 376
    iput-boolean p1, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->n:Z

    .line 377
    return-void
.end method

.method public d()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 383
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->p:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    sget-object v2, Lcom/facebook/orca/ops/OrcaServiceOperation$State;->INIT:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->p:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    sget-object v2, Lcom/facebook/orca/ops/OrcaServiceOperation$State;->COMPLETED:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    if-ne v0, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 384
    sget-object v0, Lcom/facebook/orca/ops/OrcaServiceOperation$State;->INIT:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    iput-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->p:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    .line 385
    iput-object v3, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->q:Ljava/lang/String;

    .line 386
    iput-object v3, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->r:Landroid/os/Bundle;

    .line 387
    iput-object v3, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->s:Ljava/lang/String;

    .line 388
    iput-boolean v1, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->u:Z

    .line 389
    invoke-direct {p0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->e()V

    .line 390
    iput-object v3, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->i:Lcom/facebook/orca/server/IOrcaService;

    .line 391
    return-void

    :cond_1
    move v0, v1

    .line 383
    goto :goto_0
.end method
