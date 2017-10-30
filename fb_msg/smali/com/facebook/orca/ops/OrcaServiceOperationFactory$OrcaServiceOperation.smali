.class public Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;
.super Ljava/lang/Object;
.source "OrcaServiceOperationFactory.java"


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
.field private d:Ljava/lang/String;

.field private e:Landroid/os/Bundle;

.field private final f:Landroid/content/Context;

.field private final g:Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$OrcaServiceConnection;

.field private final h:Lcom/facebook/orca/server/OrcaServiceRegistry;

.field private final i:Lcom/facebook/orca/common/util/AndroidThreadUtil;

.field private final j:Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$ThreadCheckingFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$ThreadCheckingFuture",
            "<",
            "Lcom/facebook/orca/server/OperationResult;",
            ">;"
        }
    .end annotation
.end field

.field private k:Landroid/os/Handler;

.field private l:Lcom/facebook/orca/server/IOrcaService;

.field private m:Z

.field private n:Lcom/facebook/orca/ops/OperationProgressIndicator;

.field private o:Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$State;

.field private p:Ljava/lang/String;

.field private q:Z

.field private r:Z

.field private s:Lcom/facebook/dispose/Disposable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 105
    const-class v0, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;

    sput-object v0, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;->b:Ljava/lang/Class;

    .line 107
    new-instance v0, Lcom/facebook/orca/debug/WtfToken;

    invoke-direct {v0}, Lcom/facebook/orca/debug/WtfToken;-><init>()V

    sput-object v0, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;->c:Lcom/facebook/orca/debug/WtfToken;

    .line 181
    invoke-static {}, Lcom/google/common/collect/Maps;->c()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    sput-object v0, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;->a:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/os/Bundle;Landroid/content/Context;Lcom/facebook/orca/server/OrcaServiceRegistry;Lcom/facebook/orca/common/util/AndroidThreadUtil;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    sget-object v0, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$State;->INIT:Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$State;

    iput-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;->o:Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$State;

    .line 241
    iput-object p1, p0, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;->d:Ljava/lang/String;

    .line 242
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;->e:Landroid/os/Bundle;

    .line 243
    iput-object p3, p0, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;->f:Landroid/content/Context;

    .line 244
    new-instance v0, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$OrcaServiceConnection;

    invoke-direct {v0, p0, v1}, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$OrcaServiceConnection;-><init>(Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;Lcom/facebook/orca/ops/OrcaServiceOperationFactory$1;)V

    iput-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;->g:Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$OrcaServiceConnection;

    .line 245
    iput-object p4, p0, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;->h:Lcom/facebook/orca/server/OrcaServiceRegistry;

    .line 246
    iput-object p5, p0, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;->i:Lcom/facebook/orca/common/util/AndroidThreadUtil;

    .line 247
    new-instance v0, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$ThreadCheckingFuture;

    invoke-direct {v0, p0, v1}, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$ThreadCheckingFuture;-><init>(Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;Lcom/facebook/orca/ops/OrcaServiceOperationFactory$1;)V

    iput-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;->j:Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$ThreadCheckingFuture;

    .line 248
    new-instance v0, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$1;

    invoke-direct {v0, p0}, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$1;-><init>(Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;)V

    iput-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;->s:Lcom/facebook/dispose/Disposable;

    .line 259
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;)Lcom/facebook/dispose/Disposable;
    .locals 1
    .parameter

    .prologue
    .line 103
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;->s:Lcom/facebook/dispose/Disposable;

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;Lcom/facebook/orca/server/IOrcaService;)Lcom/facebook/orca/server/IOrcaService;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;->l:Lcom/facebook/orca/server/IOrcaService;

    return-object p1
.end method

.method static synthetic a(Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;Lcom/facebook/orca/server/OperationResult;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;->a(Lcom/facebook/orca/server/OperationResult;)V

    return-void
.end method

.method private a(Lcom/facebook/orca/ops/ServiceException;)V
    .locals 2
    .parameter

    .prologue
    .line 579
    sget-object v0, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$State;->COMPLETED:Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$State;

    iput-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;->o:Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$State;

    .line 580
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;->p:Ljava/lang/String;

    .line 581
    invoke-direct {p0}, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;->k()V

    .line 583
    const/4 v0, 0x0

    .line 584
    iget-object v1, p0, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;->f:Landroid/content/Context;

    instance-of v1, v1, Lcom/facebook/orca/activity/FbActivityish;

    if-eqz v1, :cond_0

    .line 585
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;->f:Landroid/content/Context;

    check-cast v0, Lcom/facebook/orca/activity/FbActivityish;

    .line 586
    invoke-interface {v0, p1}, Lcom/facebook/orca/activity/FbActivityish;->a(Ljava/lang/Exception;)Z

    move-result v0

    .line 590
    :cond_0
    if-nez v0, :cond_1

    .line 591
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;->j:Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$ThreadCheckingFuture;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$ThreadCheckingFuture;->a(Ljava/lang/Throwable;)Z

    .line 593
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;->a()V

    .line 594
    return-void
.end method

.method private a(Lcom/facebook/orca/server/OperationResult;)V
    .locals 1
    .parameter

    .prologue
    .line 532
    iget-boolean v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;->m:Z

    if-eqz v0, :cond_0

    .line 533
    invoke-virtual {p0}, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;->a()V

    .line 546
    :goto_0
    return-void

    .line 537
    :cond_0
    new-instance v0, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$4;

    invoke-direct {v0, p0, p1}, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$4;-><init>(Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;Lcom/facebook/orca/server/OperationResult;)V

    invoke-direct {p0, v0}, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/Runnable;)V
    .locals 1
    .parameter

    .prologue
    .line 549
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;->k:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 550
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;->k:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 554
    :goto_0
    return-void

    .line 552
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;->i:Lcom/facebook/orca/common/util/AndroidThreadUtil;

    invoke-interface {v0, p1}, Lcom/facebook/orca/common/util/AndroidThreadUtil;->c(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 103
    iput-boolean p1, p0, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;->r:Z

    return p1
.end method

.method static synthetic b(Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 103
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;->k:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;Lcom/facebook/orca/server/OperationResult;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;->b(Lcom/facebook/orca/server/OperationResult;)V

    return-void
.end method

.method private b(Lcom/facebook/orca/server/OperationResult;)V
    .locals 1
    .parameter

    .prologue
    .line 562
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationResult;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 563
    invoke-direct {p0, p1}, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;->c(Lcom/facebook/orca/server/OperationResult;)V

    .line 567
    :goto_0
    return-void

    .line 565
    :cond_0
    new-instance v0, Lcom/facebook/orca/ops/ServiceException;

    invoke-direct {v0, p1}, Lcom/facebook/orca/ops/ServiceException;-><init>(Lcom/facebook/orca/server/OperationResult;)V

    invoke-direct {p0, v0}, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;->a(Lcom/facebook/orca/ops/ServiceException;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;)V
    .locals 0
    .parameter

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;->h()V

    return-void
.end method

.method private c(Lcom/facebook/orca/server/OperationResult;)V
    .locals 1
    .parameter

    .prologue
    .line 570
    sget-object v0, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$State;->COMPLETED:Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$State;

    iput-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;->o:Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$State;

    .line 571
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;->p:Ljava/lang/String;

    .line 572
    invoke-direct {p0}, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;->k()V

    .line 574
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;->j:Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$ThreadCheckingFuture;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$ThreadCheckingFuture;->a(Ljava/lang/Object;)Z

    .line 575
    invoke-virtual {p0}, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;->a()V

    .line 576
    return-void
.end method

.method static synthetic d(Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;)V
    .locals 0
    .parameter

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;->f()V

    return-void
.end method

.method static synthetic e(Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;)V
    .locals 0
    .parameter

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;->k()V

    return-void
.end method

.method static synthetic f(Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;)Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$ThreadCheckingFuture;
    .locals 1
    .parameter

    .prologue
    .line 103
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;->j:Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$ThreadCheckingFuture;

    return-object v0
.end method

.method private f()V
    .locals 4

    .prologue
    .line 357
    iget-boolean v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;->q:Z

    if-eqz v0, :cond_0

    .line 359
    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;->f:Landroid/content/Context;

    iget-object v1, p0, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;->g:Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$OrcaServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 366
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;->q:Z

    .line 371
    :cond_0
    return-void

    .line 360
    :catch_0
    move-exception v0

    .line 364
    sget-object v1, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;->c:Lcom/facebook/orca/debug/WtfToken;

    sget-object v2, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;->b:Ljava/lang/Class;

    const-string v3, "Exception unbinding"

    invoke-static {v1, v2, v3, v0}, Lcom/facebook/orca/debug/BLog;->a(Lcom/facebook/orca/debug/WtfToken;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private g()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 426
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;->l:Lcom/facebook/orca/server/IOrcaService;

    if-eqz v0, :cond_1

    .line 429
    invoke-direct {p0}, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;->h()V

    .line 457
    :cond_0
    :goto_0
    return-void

    .line 430
    :cond_1
    iget-boolean v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;->q:Z

    if-nez v0, :cond_0

    .line 433
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;->h:Lcom/facebook/orca/server/OrcaServiceRegistry;

    iget-object v1, p0, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;->f:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/server/OrcaServiceRegistry;->a(Ljava/lang/String;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 435
    if-nez v0, :cond_2

    .line 436
    sget-object v0, Lcom/facebook/orca/server/ErrorCode;->ORCA_SERVICE_IPC_FAILURE:Lcom/facebook/orca/server/ErrorCode;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown operation type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/orca/server/OperationResult;->a(Lcom/facebook/orca/server/ErrorCode;Ljava/lang/String;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    .line 438
    invoke-direct {p0, v0}, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;->a(Lcom/facebook/orca/server/OperationResult;)V

    goto :goto_0

    .line 440
    :cond_2
    iget-object v1, p0, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;->f:Landroid/content/Context;

    iget-object v2, p0, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;->g:Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$OrcaServiceConnection;

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 449
    iput-boolean v3, p0, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;->q:Z

    goto :goto_0

    .line 451
    :cond_3
    sget-object v0, Lcom/facebook/orca/server/ErrorCode;->ORCA_SERVICE_IPC_FAILURE:Lcom/facebook/orca/server/ErrorCode;

    const-string v1, "Bind to OrcaService failed"

    invoke-static {v0, v1}, Lcom/facebook/orca/server/OperationResult;->a(Lcom/facebook/orca/server/ErrorCode;Ljava/lang/String;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    .line 453
    invoke-direct {p0, v0}, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;->a(Lcom/facebook/orca/server/OperationResult;)V

    goto :goto_0
.end method

.method static synthetic g(Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;)V
    .locals 0
    .parameter

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;->g()V

    return-void
.end method

.method private h()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 465
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;->o:Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$State;

    sget-object v3, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$State;->READY_TO_QUEUE:Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$State;

    if-ne v0, v3, :cond_5

    .line 466
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;->d:Ljava/lang/String;

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    const-string v3, "Null operation type"

    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 467
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;->p:Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    const-string v3, "Non-null operation id"

    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 468
    iget-boolean v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;->r:Z

    if-nez v0, :cond_3

    :goto_2
    const-string v0, "Registered for completion and haven\'t yet sent"

    invoke-static {v1, v0}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 472
    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;->l:Lcom/facebook/orca/server/IOrcaService;

    iget-object v1, p0, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;->e:Landroid/os/Bundle;

    invoke-interface {v0, v1, v2}, Lcom/facebook/orca/server/IOrcaService;->a(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;->p:Ljava/lang/String;

    .line 473
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;->l:Lcom/facebook/orca/server/IOrcaService;

    if-nez v0, :cond_4

    .line 477
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 481
    :catch_0
    move-exception v0

    .line 482
    sget-object v0, Lcom/facebook/orca/server/ErrorCode;->ORCA_SERVICE_IPC_FAILURE:Lcom/facebook/orca/server/ErrorCode;

    const-string v1, "OrcaService.<method> or registerCompletionHandler failed"

    invoke-static {v0, v1}, Lcom/facebook/orca/server/OperationResult;->a(Lcom/facebook/orca/server/ErrorCode;Ljava/lang/String;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    .line 485
    invoke-direct {p0, v0}, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;->a(Lcom/facebook/orca/server/OperationResult;)V

    .line 500
    :cond_0
    :goto_3
    return-void

    :cond_1
    move v0, v2

    .line 466
    goto :goto_0

    :cond_2
    move v0, v2

    .line 467
    goto :goto_1

    :cond_3
    move v1, v2

    .line 468
    goto :goto_2

    .line 479
    :cond_4
    :try_start_1
    invoke-direct {p0}, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;->i()V

    .line 480
    sget-object v0, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$State;->OPERATION_QUEUED:Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$State;

    iput-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;->o:Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$State;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 487
    :cond_5
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;->o:Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$State;

    sget-object v3, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$State;->OPERATION_QUEUED:Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$State;

    if-ne v0, v3, :cond_0

    .line 488
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;->p:Ljava/lang/String;

    if-eqz v0, :cond_6

    :goto_4
    const-string v0, "null operation id"

    invoke-static {v1, v0}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 489
    iget-boolean v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;->r:Z

    if-nez v0, :cond_0

    .line 491
    :try_start_2
    invoke-direct {p0}, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;->i()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 492
    :catch_1
    move-exception v0

    .line 493
    sget-object v0, Lcom/facebook/orca/server/ErrorCode;->ORCA_SERVICE_IPC_FAILURE:Lcom/facebook/orca/server/ErrorCode;

    const-string v1, "OrcaService.registerCompletionHandler failed"

    invoke-static {v0, v1}, Lcom/facebook/orca/server/OperationResult;->a(Lcom/facebook/orca/server/ErrorCode;Ljava/lang/String;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    .line 496
    invoke-direct {p0, v0}, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;->a(Lcom/facebook/orca/server/OperationResult;)V

    goto :goto_3

    :cond_6
    move v1, v2

    .line 488
    goto :goto_4
.end method

.method private i()V
    .locals 3

    .prologue
    .line 508
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;->l:Lcom/facebook/orca/server/IOrcaService;

    iget-object v1, p0, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;->p:Ljava/lang/String;

    new-instance v2, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$3;

    invoke-direct {v2, p0}, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$3;-><init>(Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;)V

    invoke-interface {v0, v1, v2}, Lcom/facebook/orca/server/IOrcaService;->a(Ljava/lang/String;Lcom/facebook/orca/server/ICompletionHandler;)Z

    move-result v0

    .line 521
    if-eqz v0, :cond_0

    .line 522
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;->r:Z

    .line 529
    :goto_0
    return-void

    .line 524
    :cond_0
    sget-object v0, Lcom/facebook/orca/server/ErrorCode;->ORCA_SERVICE_IPC_FAILURE:Lcom/facebook/orca/server/ErrorCode;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown operation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;->p:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/orca/server/OperationResult;->a(Lcom/facebook/orca/server/ErrorCode;Ljava/lang/String;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    .line 527
    invoke-direct {p0, v0}, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;->a(Lcom/facebook/orca/server/OperationResult;)V

    goto :goto_0
.end method

.method private j()V
    .locals 1

    .prologue
    .line 597
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;->n:Lcom/facebook/orca/ops/OperationProgressIndicator;

    if-eqz v0, :cond_0

    .line 598
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;->n:Lcom/facebook/orca/ops/OperationProgressIndicator;

    invoke-interface {v0}, Lcom/facebook/orca/ops/OperationProgressIndicator;->a()V

    .line 600
    :cond_0
    return-void
.end method

.method private k()V
    .locals 1

    .prologue
    .line 603
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;->n:Lcom/facebook/orca/ops/OperationProgressIndicator;

    if-eqz v0, :cond_0

    .line 604
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;->n:Lcom/facebook/orca/ops/OperationProgressIndicator;

    invoke-interface {v0}, Lcom/facebook/orca/ops/OperationProgressIndicator;->b()V

    .line 606
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;->s:Lcom/facebook/dispose/Disposable;

    invoke-interface {v0}, Lcom/facebook/dispose/Disposable;->a()V

    .line 266
    return-void
.end method

.method public a(Lcom/facebook/orca/ops/OperationProgressIndicator;)V
    .locals 2
    .parameter

    .prologue
    .line 326
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;->o:Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$State;

    sget-object v1, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$State;->READY_TO_QUEUE:Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;->o:Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$State;

    sget-object v1, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$State;->OPERATION_QUEUED:Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$State;

    if-ne v0, v1, :cond_1

    .line 328
    :cond_0
    invoke-direct {p0}, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;->k()V

    .line 330
    :cond_1
    iput-object p1, p0, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;->n:Lcom/facebook/orca/ops/OperationProgressIndicator;

    .line 331
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;->o:Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$State;

    sget-object v1, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$State;->READY_TO_QUEUE:Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$State;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;->o:Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$State;

    sget-object v1, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$State;->OPERATION_QUEUED:Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$State;

    if-ne v0, v1, :cond_3

    .line 333
    :cond_2
    invoke-direct {p0}, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;->j()V

    .line 335
    :cond_3
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;->s:Lcom/facebook/dispose/Disposable;

    invoke-interface {v0}, Lcom/facebook/dispose/Disposable;->c()Z

    move-result v0

    return v0
.end method

.method public c()Z
    .locals 2

    .prologue
    .line 278
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;->o:Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$State;

    sget-object v1, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$State;->INIT:Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;->o:Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$State;

    sget-object v1, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$State;->COMPLETED:Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$State;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/facebook/orca/server/OperationResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 380
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;->o:Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$State;

    sget-object v1, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$State;->INIT:Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$State;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Incorrect operation state"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 382
    sget-object v0, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$State;->READY_TO_QUEUE:Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$State;

    iput-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;->o:Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$State;

    .line 384
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 385
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;->k:Landroid/os/Handler;

    .line 387
    :cond_0
    invoke-direct {p0}, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;->j()V

    .line 388
    invoke-direct {p0}, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;->g()V

    .line 389
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;->j:Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$ThreadCheckingFuture;

    return-object v0

    .line 380
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/facebook/orca/server/OperationResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 406
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;->o:Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$State;

    sget-object v1, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$State;->INIT:Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Incorrect operation state"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 408
    sget-object v0, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$State;->READY_TO_QUEUE:Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$State;

    iput-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;->o:Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$State;

    .line 410
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;->k:Landroid/os/Handler;

    .line 411
    invoke-direct {p0}, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;->j()V

    .line 412
    new-instance v0, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$2;

    invoke-direct {v0, p0}, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$2;-><init>(Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;)V

    invoke-direct {p0, v0}, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;->a(Ljava/lang/Runnable;)V

    .line 418
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;->j:Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$ThreadCheckingFuture;

    return-object v0

    .line 406
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
