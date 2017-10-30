.class public Lcom/facebook/orca/analytics/AnalyticsLogger;
.super Ljava/lang/Object;
.source "AnalyticsLogger.java"

# interfaces
.implements Lcom/facebook/orca/app/INeedInit;


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

.field private static final b:Lcom/facebook/orca/debug/WtfToken;


# instance fields
.field private final c:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/facebook/orca/analytics/AnalyticsConfig;

.field private final e:Lcom/facebook/orca/analytics/AnalyticsEventProcessor;

.field private final f:Landroid/os/PowerManager;

.field private final g:Landroid/view/WindowManager;

.field private final h:Lcom/facebook/orca/common/util/Clock;

.field private final i:Lcom/facebook/orca/analytics/AnalyticsDeviceUtils;

.field private final j:Landroid/os/Handler;

.field private final k:Lcom/facebook/orca/analytics/AnalyticsLogger$MyActivityListener;

.field private l:Landroid/content/BroadcastReceiver;

.field private m:Landroid/content/IntentFilter;

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Lcom/facebook/orca/analytics/AnalyticsConfig$Level;

.field private r:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/orca/activity/FbActivityish;",
            ">;"
        }
    .end annotation
.end field

.field private s:Ljava/lang/Runnable;

.field private t:I

.field private u:Ljava/lang/String;

.field private v:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lcom/facebook/orca/analytics/AnalyticsLogger;

    sput-object v0, Lcom/facebook/orca/analytics/AnalyticsLogger;->a:Ljava/lang/Class;

    .line 46
    new-instance v0, Lcom/facebook/orca/debug/WtfToken;

    invoke-direct {v0}, Lcom/facebook/orca/debug/WtfToken;-><init>()V

    sput-object v0, Lcom/facebook/orca/analytics/AnalyticsLogger;->b:Lcom/facebook/orca/debug/WtfToken;

    return-void
.end method

.method public constructor <init>(Ljavax/inject/Provider;Lcom/facebook/orca/analytics/AnalyticsConfig;Lcom/facebook/orca/analytics/AnalyticsEventProcessor;Landroid/os/PowerManager;Landroid/view/WindowManager;Lcom/facebook/orca/common/util/Clock;Lcom/facebook/orca/analytics/AnalyticsDeviceUtils;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/orca/analytics/AnalyticsConfig;",
            "Lcom/facebook/orca/analytics/AnalyticsEventProcessor;",
            "Landroid/os/PowerManager;",
            "Landroid/view/WindowManager;",
            "Lcom/facebook/orca/common/util/Clock;",
            "Lcom/facebook/orca/analytics/AnalyticsDeviceUtils;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-boolean v0, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->n:Z

    .line 63
    iput-boolean v0, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->o:Z

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->p:Z

    .line 67
    sget-object v0, Lcom/facebook/orca/analytics/AnalyticsConfig$Level;->NONE:Lcom/facebook/orca/analytics/AnalyticsConfig$Level;

    iput-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->q:Lcom/facebook/orca/analytics/AnalyticsConfig$Level;

    .line 69
    invoke-static {}, Lcom/google/common/collect/Sets;->a()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->r:Ljava/util/Set;

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->s:Ljava/lang/Runnable;

    .line 71
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->t:I

    .line 75
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->v:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 86
    iput-object p1, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->c:Ljavax/inject/Provider;

    .line 87
    iput-object p2, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->d:Lcom/facebook/orca/analytics/AnalyticsConfig;

    .line 88
    iput-object p3, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->e:Lcom/facebook/orca/analytics/AnalyticsEventProcessor;

    .line 89
    iput-object p4, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->f:Landroid/os/PowerManager;

    .line 90
    iput-object p5, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->g:Landroid/view/WindowManager;

    .line 91
    iput-object p6, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->h:Lcom/facebook/orca/common/util/Clock;

    .line 92
    iput-object p7, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->i:Lcom/facebook/orca/analytics/AnalyticsDeviceUtils;

    .line 93
    new-instance v0, Lcom/facebook/orca/analytics/AnalyticsLogger$MyActivityListener;

    invoke-direct {v0, p0}, Lcom/facebook/orca/analytics/AnalyticsLogger$MyActivityListener;-><init>(Lcom/facebook/orca/analytics/AnalyticsLogger;)V

    iput-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->k:Lcom/facebook/orca/analytics/AnalyticsLogger$MyActivityListener;

    .line 94
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->j:Landroid/os/Handler;

    .line 95
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/analytics/AnalyticsLogger;Landroid/content/Context;)Landroid/net/NetworkInfo;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/facebook/orca/analytics/AnalyticsLogger;->b(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v0

    return-object v0
.end method

.method private a(JLjava/lang/String;Lcom/facebook/orca/analytics/AnalyticEventNames$AppStateNames;)Lcom/facebook/orca/analytics/HoneyClientEvent;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 403
    new-instance v0, Lcom/facebook/orca/analytics/HoneyClientEvent;

    const-string v1, "app_state"

    invoke-direct {v0, v1}, Lcom/facebook/orca/analytics/HoneyClientEvent;-><init>(Ljava/lang/String;)V

    const-string v1, "state"

    invoke-virtual {p4}, Lcom/facebook/orca/analytics/AnalyticEventNames$AppStateNames;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/analytics/HoneyClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    move-result-object v0

    const-string v1, "app"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/analytics/HoneyClientEvent;->c(Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    move-result-object v0

    .line 406
    invoke-virtual {v0, p1, p2}, Lcom/facebook/orca/analytics/HoneyClientEvent;->a(J)Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;

    .line 407
    invoke-virtual {v0, p3}, Lcom/facebook/orca/analytics/HoneyClientEvent;->a(Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;

    .line 408
    return-object v0
.end method

.method private declared-synchronized a(I)V
    .locals 3
    .parameter

    .prologue
    .line 122
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/facebook/orca/analytics/HoneyClientEvent;

    const-string v1, "orientation"

    invoke-direct {v0, v1}, Lcom/facebook/orca/analytics/HoneyClientEvent;-><init>(Ljava/lang/String;)V

    const-string v1, "orientation"

    invoke-virtual {v0, v1, p1}, Lcom/facebook/orca/analytics/HoneyClientEvent;->a(Ljava/lang/String;I)Lcom/facebook/orca/analytics/HoneyClientEvent;

    move-result-object v0

    const-string v1, "module"

    const-string v2, "device"

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/analytics/HoneyClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    move-result-object v0

    .line 125
    invoke-virtual {p0, v0}, Lcom/facebook/orca/analytics/AnalyticsLogger;->b(Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    monitor-exit p0

    return-void

    .line 122
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(J)V
    .locals 3
    .parameter

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->n:Z

    if-eqz v0, :cond_0

    .line 113
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->n:Z

    .line 114
    invoke-direct {p0}, Lcom/facebook/orca/analytics/AnalyticsLogger;->c()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/analytics/AnalyticEventNames$AppStateNames;->FOREGROUNDED:Lcom/facebook/orca/analytics/AnalyticEventNames$AppStateNames;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/facebook/orca/analytics/AnalyticsLogger;->a(JLjava/lang/String;Lcom/facebook/orca/analytics/AnalyticEventNames$AppStateNames;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    move-result-object v0

    .line 116
    const-string v1, "key_ui_event"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;

    .line 117
    invoke-virtual {p0, v0}, Lcom/facebook/orca/analytics/AnalyticsLogger;->b(Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;)V

    .line 119
    :cond_0
    return-void
.end method

.method private a(JLjava/lang/String;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 417
    new-instance v0, Lcom/facebook/orca/analytics/HoneyClientEvent;

    const-string v1, "session_end"

    invoke-direct {v0, v1}, Lcom/facebook/orca/analytics/HoneyClientEvent;-><init>(Ljava/lang/String;)V

    .line 418
    invoke-virtual {v0, p3}, Lcom/facebook/orca/analytics/HoneyClientEvent;->f(Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    move-result-object v1

    const-string v2, "session_timeout"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/facebook/orca/analytics/HoneyClientEvent;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;

    move-result-object v1

    const-string v2, "stop_upload"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;->a(J)Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;

    .line 422
    iget-object v1, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->i:Lcom/facebook/orca/analytics/AnalyticsDeviceUtils;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/analytics/AnalyticsDeviceUtils;->b(Lcom/facebook/orca/analytics/HoneyClientEvent;)V

    .line 423
    invoke-virtual {p0, v0}, Lcom/facebook/orca/analytics/AnalyticsLogger;->b(Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;)V

    .line 424
    iput-boolean v4, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->o:Z

    .line 425
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 428
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->l:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 429
    new-instance v0, Lcom/facebook/orca/analytics/AnalyticsLogger$2;

    invoke-direct {v0, p0}, Lcom/facebook/orca/analytics/AnalyticsLogger$2;-><init>(Lcom/facebook/orca/analytics/AnalyticsLogger;)V

    iput-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->l:Landroid/content/BroadcastReceiver;

    .line 453
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->m:Landroid/content/IntentFilter;

    .line 454
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->m:Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 457
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->l:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->m:Landroid/content/IntentFilter;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 459
    :cond_0
    return-void
.end method

.method private declared-synchronized a(Landroid/net/NetworkInfo;)V
    .locals 3
    .parameter

    .prologue
    .line 129
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/facebook/orca/analytics/HoneyClientEvent;

    const-string v1, "connection_change"

    invoke-direct {v0, v1}, Lcom/facebook/orca/analytics/HoneyClientEvent;-><init>(Ljava/lang/String;)V

    .line 130
    const-string v1, "device"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/analytics/HoneyClientEvent;->c(Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    .line 131
    iget-object v1, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->i:Lcom/facebook/orca/analytics/AnalyticsDeviceUtils;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/analytics/AnalyticsDeviceUtils;->a(Lcom/facebook/orca/analytics/HoneyClientEvent;)V

    .line 132
    if-eqz p1, :cond_0

    .line 133
    const-string v1, "state"

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo$State;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/analytics/HoneyClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    .line 135
    :cond_0
    iget-object v1, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->i:Lcom/facebook/orca/analytics/AnalyticsDeviceUtils;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/analytics/AnalyticsDeviceUtils;->b(Lcom/facebook/orca/analytics/HoneyClientEvent;)V

    .line 136
    invoke-virtual {p0, v0}, Lcom/facebook/orca/analytics/AnalyticsLogger;->a(Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    monitor-exit p0

    return-void

    .line 129
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(Lcom/facebook/orca/activity/FbActivityish;)V
    .locals 0
    .parameter

    .prologue
    .line 140
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/analytics/AnalyticsLogger;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/facebook/orca/analytics/AnalyticsLogger;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/analytics/AnalyticsLogger;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/analytics/AnalyticsLogger;->b(J)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/analytics/AnalyticsLogger;Landroid/net/NetworkInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/facebook/orca/analytics/AnalyticsLogger;->a(Landroid/net/NetworkInfo;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/analytics/AnalyticsLogger;Lcom/facebook/orca/activity/FbActivityish;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/facebook/orca/analytics/AnalyticsLogger;->a(Lcom/facebook/orca/activity/FbActivityish;)V

    return-void
.end method

.method private a(Lcom/facebook/orca/analytics/AnalyticsSubModuleActivity;)V
    .locals 2
    .parameter

    .prologue
    .line 247
    invoke-interface {p1}, Lcom/facebook/orca/analytics/AnalyticsSubModuleActivity;->a()Ljava/lang/String;

    move-result-object v0

    .line 248
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/facebook/orca/analytics/AnalyticsLogger;->a(Ljava/lang/String;Z)V

    .line 249
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/analytics/AnalyticsLogger;)Z
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->n:Z

    return v0
.end method

.method static synthetic a(Lcom/facebook/orca/analytics/AnalyticsLogger;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->o:Z

    return p1
.end method

.method private b(Landroid/content/Context;)Landroid/net/NetworkInfo;
    .locals 1
    .parameter

    .prologue
    .line 462
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 464
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized b(J)V
    .locals 3
    .parameter

    .prologue
    .line 258
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->n:Z

    if-nez v0, :cond_1

    .line 259
    sget-object v0, Lcom/facebook/orca/analytics/AnalyticEventNames$AppStateNames;->BACKGROUNDED:Lcom/facebook/orca/analytics/AnalyticEventNames$AppStateNames;

    .line 261
    iget-object v1, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->f:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    if-nez v1, :cond_0

    .line 263
    sget-object v0, Lcom/facebook/orca/analytics/AnalyticEventNames$AppStateNames;->RESIGN:Lcom/facebook/orca/analytics/AnalyticEventNames$AppStateNames;

    .line 266
    :cond_0
    invoke-direct {p0}, Lcom/facebook/orca/analytics/AnalyticsLogger;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/facebook/orca/analytics/AnalyticsLogger;->a(JLjava/lang/String;Lcom/facebook/orca/analytics/AnalyticEventNames$AppStateNames;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    move-result-object v0

    .line 269
    const-string v1, "truncate_batch"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/analytics/HoneyClientEvent;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;

    .line 270
    const-string v1, "key_ui_event"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/analytics/HoneyClientEvent;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;

    .line 272
    iget-object v1, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->i:Lcom/facebook/orca/analytics/AnalyticsDeviceUtils;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/analytics/AnalyticsDeviceUtils;->b(Lcom/facebook/orca/analytics/HoneyClientEvent;)V

    .line 273
    invoke-virtual {p0, v0}, Lcom/facebook/orca/analytics/AnalyticsLogger;->b(Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;)V

    .line 274
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->n:Z

    .line 275
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->u:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 277
    :cond_1
    monitor-exit p0

    return-void

    .line 258
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized b(Lcom/facebook/orca/activity/FbActivityish;)V
    .locals 9
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 150
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->h:Lcom/facebook/orca/common/util/Clock;

    invoke-interface {v1}, Lcom/facebook/orca/common/util/Clock;->a()J

    move-result-wide v6

    .line 151
    iget-object v1, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->r:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 152
    invoke-direct {p0}, Lcom/facebook/orca/analytics/AnalyticsLogger;->d()V

    .line 153
    invoke-direct {p0, v6, v7}, Lcom/facebook/orca/analytics/AnalyticsLogger;->a(J)V

    .line 160
    instance-of v1, p1, Lcom/facebook/orca/analytics/AnalyticsSubModuleActivity;

    if-eqz v1, :cond_0

    .line 161
    check-cast p1, Lcom/facebook/orca/analytics/AnalyticsSubModuleActivity;

    invoke-direct {p0, p1}, Lcom/facebook/orca/analytics/AnalyticsLogger;->a(Lcom/facebook/orca/analytics/AnalyticsSubModuleActivity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    :goto_0
    monitor-exit p0

    return-void

    .line 165
    :cond_0
    :try_start_1
    instance-of v1, p1, Lcom/facebook/orca/analytics/AnalyticsActivity;

    if-eqz v1, :cond_6

    .line 166
    move-object v0, p1

    check-cast v0, Lcom/facebook/orca/analytics/AnalyticsActivity;

    move-object v1, v0

    invoke-interface {v1}, Lcom/facebook/orca/analytics/AnalyticsActivity;->h()Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    .line 170
    :goto_1
    if-nez v3, :cond_5

    .line 171
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 173
    const-string v3, "unknown"

    move-object v4, v1

    move-object v5, v3

    move-object v3, v1

    .line 176
    :goto_2
    instance-of v1, p1, Lcom/facebook/orca/analytics/AnalyticsActivityContentUri;

    if-eqz v1, :cond_4

    .line 177
    move-object v0, p1

    check-cast v0, Lcom/facebook/orca/analytics/AnalyticsActivityContentUri;

    move-object v1, v0

    invoke-interface {v1}, Lcom/facebook/orca/analytics/AnalyticsActivityContentUri;->a()Ljava/lang/String;

    move-result-object v1

    .line 180
    :goto_3
    new-instance v2, Lcom/facebook/orca/analytics/HoneyClientEvent;

    const-string v8, "navigation"

    invoke-direct {v2, v8}, Lcom/facebook/orca/analytics/HoneyClientEvent;-><init>(Ljava/lang/String;)V

    const-string v8, "dest_module"

    invoke-virtual {v2, v8, v5}, Lcom/facebook/orca/analytics/HoneyClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    move-result-object v2

    invoke-interface {p1}, Lcom/facebook/orca/activity/FbActivityish;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/facebook/orca/analytics/HoneyClientEvent;->f(Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    move-result-object v2

    .line 184
    if-eqz v1, :cond_1

    .line 185
    const-string v5, "dest_module_uri"

    invoke-virtual {v2, v5, v1}, Lcom/facebook/orca/analytics/HoneyClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    .line 188
    :cond_1
    if-eqz v4, :cond_2

    .line 189
    const-string v1, "dest_module_class"

    invoke-virtual {v2, v1, v4}, Lcom/facebook/orca/analytics/HoneyClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    .line 192
    :cond_2
    iget-object v1, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->u:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 194
    iget-object v1, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->u:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/facebook/orca/analytics/HoneyClientEvent;->c(Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    .line 198
    :cond_3
    invoke-virtual {v2, v6, v7}, Lcom/facebook/orca/analytics/HoneyClientEvent;->a(J)Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;

    move-result-object v1

    invoke-direct {p0}, Lcom/facebook/orca/analytics/AnalyticsLogger;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;->a(Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;

    move-result-object v1

    const-string v2, "resume_upload"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/facebook/orca/analytics/AnalyticsLogger;->b(Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;)V

    .line 202
    iput-object v3, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->u:Ljava/lang/String;

    .line 205
    iget-object v1, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->d:Lcom/facebook/orca/analytics/AnalyticsConfig;

    invoke-interface {v1}, Lcom/facebook/orca/analytics/AnalyticsConfig;->a()Lcom/facebook/orca/analytics/AnalyticsConfig$Level;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->q:Lcom/facebook/orca/analytics/AnalyticsConfig$Level;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 150
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_4
    move-object v1, v2

    goto :goto_3

    :cond_5
    move-object v4, v2

    move-object v5, v3

    move-object v3, v1

    goto :goto_2

    :cond_6
    move-object v1, v2

    move-object v3, v2

    goto :goto_1
.end method

.method static synthetic b(Lcom/facebook/orca/analytics/AnalyticsLogger;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/facebook/orca/analytics/AnalyticsLogger;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic b(Lcom/facebook/orca/analytics/AnalyticsLogger;Lcom/facebook/orca/activity/FbActivityish;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/facebook/orca/analytics/AnalyticsLogger;->b(Lcom/facebook/orca/activity/FbActivityish;)V

    return-void
.end method

.method private b(Lcom/facebook/orca/analytics/AnalyticsSubModuleActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 252
    invoke-interface {p1}, Lcom/facebook/orca/analytics/AnalyticsSubModuleActivity;->a()Ljava/lang/String;

    move-result-object v0

    .line 253
    invoke-virtual {p0, v0}, Lcom/facebook/orca/analytics/AnalyticsLogger;->a(Ljava/lang/String;)V

    .line 254
    return-void
.end method

.method static synthetic b(Lcom/facebook/orca/analytics/AnalyticsLogger;)Z
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->o:Z

    return v0
.end method

.method static synthetic c(Lcom/facebook/orca/analytics/AnalyticsLogger;)Landroid/view/WindowManager;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->g:Landroid/view/WindowManager;

    return-object v0
.end method

.method private c(Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;
    .locals 2
    .parameter

    .prologue
    .line 354
    new-instance v0, Lcom/facebook/orca/analytics/HoneyClientEvent;

    const-string v1, "show_module"

    invoke-direct {v0, v1}, Lcom/facebook/orca/analytics/HoneyClientEvent;-><init>(Ljava/lang/String;)V

    const-string v1, "dest_module"

    invoke-virtual {v0, v1, p1}, Lcom/facebook/orca/analytics/HoneyClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    move-result-object v0

    return-object v0
.end method

.method private c(Ljava/lang/String;Z)Lcom/facebook/orca/analytics/HoneyClientEvent;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 348
    new-instance v0, Lcom/facebook/orca/analytics/HoneyClientEvent;

    const-string v1, "show_module"

    invoke-direct {v0, v1}, Lcom/facebook/orca/analytics/HoneyClientEvent;-><init>(Ljava/lang/String;)V

    const-string v1, "dest_module"

    invoke-virtual {v0, v1, p1}, Lcom/facebook/orca/analytics/HoneyClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    move-result-object v0

    const-string v1, "is_modal"

    invoke-virtual {v0, v1, p2}, Lcom/facebook/orca/analytics/HoneyClientEvent;->a(Ljava/lang/String;Z)Lcom/facebook/orca/analytics/HoneyClientEvent;

    move-result-object v0

    return-object v0
.end method

.method private c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->c:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private declared-synchronized c(Lcom/facebook/orca/activity/FbActivityish;)V
    .locals 7
    .parameter

    .prologue
    .line 209
    monitor-enter p0

    :try_start_0
    instance-of v1, p1, Lcom/facebook/orca/analytics/AnalyticsSubModuleActivity;

    if-eqz v1, :cond_0

    .line 210
    move-object v0, p1

    check-cast v0, Lcom/facebook/orca/analytics/AnalyticsSubModuleActivity;

    move-object v1, v0

    invoke-direct {p0, v1}, Lcom/facebook/orca/analytics/AnalyticsLogger;->b(Lcom/facebook/orca/analytics/AnalyticsSubModuleActivity;)V

    .line 213
    :cond_0
    iget-object v1, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->r:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->r:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 214
    iget-object v1, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->h:Lcom/facebook/orca/common/util/Clock;

    invoke-interface {v1}, Lcom/facebook/orca/common/util/Clock;->a()J

    move-result-wide v1

    .line 216
    iget-object v3, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->s:Ljava/lang/Runnable;

    if-eqz v3, :cond_1

    .line 217
    sget-object v3, Lcom/facebook/orca/analytics/AnalyticsLogger;->b:Lcom/facebook/orca/debug/WtfToken;

    sget-object v4, Lcom/facebook/orca/analytics/AnalyticsLogger;->a:Ljava/lang/Class;

    const-string v5, "Previous sendToBackgroundDetector is still alive"

    invoke-static {v3, v4, v5}, Lcom/facebook/orca/debug/BLog;->a(Lcom/facebook/orca/debug/WtfToken;Ljava/lang/Class;Ljava/lang/String;)V

    .line 218
    iget-object v3, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->j:Landroid/os/Handler;

    iget-object v4, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->s:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 219
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->s:Ljava/lang/Runnable;

    .line 222
    :cond_1
    iget-boolean v3, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->p:Z

    if-nez v3, :cond_2

    .line 223
    new-instance v3, Lcom/facebook/orca/analytics/AnalyticsLogger$1;

    invoke-direct {v3, p0, v1, v2}, Lcom/facebook/orca/analytics/AnalyticsLogger$1;-><init>(Lcom/facebook/orca/analytics/AnalyticsLogger;J)V

    iput-object v3, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->s:Ljava/lang/Runnable;

    .line 229
    iget-object v3, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->j:Landroid/os/Handler;

    iget-object v4, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->s:Ljava/lang/Runnable;

    const-wide/16 v5, 0x1388

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 232
    :cond_2
    invoke-interface {p1}, Lcom/facebook/orca/activity/FbActivityish;->a()Ljava/lang/String;

    move-result-object v3

    .line 233
    iget-boolean v4, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->p:Z

    if-eqz v4, :cond_3

    .line 235
    invoke-direct {p0, v1, v2, v3}, Lcom/facebook/orca/analytics/AnalyticsLogger;->a(JLjava/lang/String;)V

    .line 237
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->p:Z

    .line 238
    sget-object v1, Lcom/facebook/orca/analytics/AnalyticsConfig$Level;->NONE:Lcom/facebook/orca/analytics/AnalyticsConfig$Level;

    iput-object v1, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->q:Lcom/facebook/orca/analytics/AnalyticsConfig$Level;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    :cond_3
    monitor-exit p0

    return-void

    .line 209
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method static synthetic c(Lcom/facebook/orca/analytics/AnalyticsLogger;Lcom/facebook/orca/activity/FbActivityish;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/facebook/orca/analytics/AnalyticsLogger;->c(Lcom/facebook/orca/activity/FbActivityish;)V

    return-void
.end method

.method private c(Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;)V
    .locals 4
    .parameter

    .prologue
    .line 280
    const-wide/16 v0, -0x1

    invoke-virtual {p1}, Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;->b()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->h:Lcom/facebook/orca/common/util/Clock;

    invoke-interface {v0}, Lcom/facebook/orca/common/util/Clock;->a()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;->a(J)Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;

    .line 284
    :cond_0
    const-string v0, "AUTO_SET"

    invoke-virtual {p1}, Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 285
    invoke-direct {p0}, Lcom/facebook/orca/analytics/AnalyticsLogger;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;->a(Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;

    .line 288
    :cond_1
    iget-boolean v0, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->n:Z

    invoke-virtual {p1, v0}, Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;->a(Z)Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;

    .line 289
    return-void
.end method

.method static synthetic d(Lcom/facebook/orca/analytics/AnalyticsLogger;)I
    .locals 1
    .parameter

    .prologue
    .line 43
    iget v0, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->t:I

    return v0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->s:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->j:Landroid/os/Handler;

    iget-object v1, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->s:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 145
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->s:Ljava/lang/Runnable;

    .line 147
    :cond_0
    return-void
.end method

.method private declared-synchronized d(Lcom/facebook/orca/activity/FbActivityish;)V
    .locals 0
    .parameter

    .prologue
    .line 244
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method static synthetic d(Lcom/facebook/orca/analytics/AnalyticsLogger;Lcom/facebook/orca/activity/FbActivityish;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/facebook/orca/analytics/AnalyticsLogger;->d(Lcom/facebook/orca/activity/FbActivityish;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/analytics/AnalyticsLogger$MyActivityListener;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->k:Lcom/facebook/orca/analytics/AnalyticsLogger$MyActivityListener;

    return-object v0
.end method

.method public declared-synchronized a(Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;)V
    .locals 3
    .parameter

    .prologue
    .line 362
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/orca/analytics/AnalyticsLogger;->c(Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;)V

    .line 364
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->d:Lcom/facebook/orca/analytics/AnalyticsConfig;

    invoke-interface {v0}, Lcom/facebook/orca/analytics/AnalyticsConfig;->a()Lcom/facebook/orca/analytics/AnalyticsConfig$Level;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/analytics/AnalyticsConfig$Level;->CORE_AND_SAMPLED:Lcom/facebook/orca/analytics/AnalyticsConfig$Level;

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->p:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->q:Lcom/facebook/orca/analytics/AnalyticsConfig$Level;

    sget-object v1, Lcom/facebook/orca/analytics/AnalyticsConfig$Level;->CORE_AND_SAMPLED:Lcom/facebook/orca/analytics/AnalyticsConfig$Level;

    if-ne v0, v1, :cond_1

    .line 366
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->v:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 370
    :goto_0
    monitor-exit p0

    return-void

    .line 368
    :cond_1
    :try_start_1
    sget-object v0, Lcom/facebook/orca/analytics/AnalyticsLogger;->a:Ljava/lang/Class;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Event not logged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;->e()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JsonNode;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/Class;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 362
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 337
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/orca/analytics/AnalyticsLogger;->c(Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/orca/analytics/AnalyticsLogger;->b(Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 338
    monitor-exit p0

    return-void

    .line 337
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/String;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 323
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/analytics/AnalyticsLogger;->c(Ljava/lang/String;Z)Lcom/facebook/orca/analytics/HoneyClientEvent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/orca/analytics/AnalyticsLogger;->b(Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 324
    monitor-exit p0

    return-void

    .line 323
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->e:Lcom/facebook/orca/analytics/AnalyticsEventProcessor;

    iget-object v1, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->v:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->a(Ljava/util/concurrent/LinkedBlockingQueue;)V

    .line 105
    return-void
.end method

.method public declared-synchronized b(Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;)V
    .locals 2
    .parameter

    .prologue
    .line 377
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/orca/analytics/AnalyticsLogger;->c(Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;)V

    .line 378
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->d:Lcom/facebook/orca/analytics/AnalyticsConfig;

    invoke-interface {v0}, Lcom/facebook/orca/analytics/AnalyticsConfig;->a()Lcom/facebook/orca/analytics/AnalyticsConfig$Level;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/analytics/AnalyticsConfig$Level;->CORE:Lcom/facebook/orca/analytics/AnalyticsConfig$Level;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->d:Lcom/facebook/orca/analytics/AnalyticsConfig;

    invoke-interface {v0}, Lcom/facebook/orca/analytics/AnalyticsConfig;->a()Lcom/facebook/orca/analytics/AnalyticsConfig$Level;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/analytics/AnalyticsConfig$Level;->CORE_AND_SAMPLED:Lcom/facebook/orca/analytics/AnalyticsConfig$Level;

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->p:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->q:Lcom/facebook/orca/analytics/AnalyticsConfig$Level;

    sget-object v1, Lcom/facebook/orca/analytics/AnalyticsConfig$Level;->CORE:Lcom/facebook/orca/analytics/AnalyticsConfig$Level;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->q:Lcom/facebook/orca/analytics/AnalyticsConfig$Level;

    sget-object v1, Lcom/facebook/orca/analytics/AnalyticsConfig$Level;->CORE_AND_SAMPLED:Lcom/facebook/orca/analytics/AnalyticsConfig$Level;

    if-ne v0, v1, :cond_1

    .line 384
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->v:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 386
    :cond_1
    monitor-exit p0

    return-void

    .line 377
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 344
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/orca/analytics/AnalyticsLogger;->c(Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/orca/analytics/AnalyticsLogger;->a(Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 345
    monitor-exit p0

    return-void

    .line 344
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Ljava/lang/String;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 330
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/analytics/AnalyticsLogger;->c(Ljava/lang/String;Z)Lcom/facebook/orca/analytics/HoneyClientEvent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/orca/analytics/AnalyticsLogger;->a(Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 331
    monitor-exit p0

    return-void

    .line 330
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
