.class public Lcom/facebook/orca/server/BackgroundRefreshRunner;
.super Ljava/lang/Object;
.source "BackgroundRefreshRunner.java"


# static fields
.field private static a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final b:Lcom/facebook/orca/debug/WtfToken;

.field private static final c:Lcom/facebook/orca/debug/WtfToken;


# instance fields
.field private A:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroid/content/Context;

.field private final e:Lcom/facebook/orca/cache/DataCache;

.field private final f:Lcom/facebook/orca/database/DbCache;

.field private final g:Lcom/facebook/orca/auth/AuthDataStore;

.field private final h:Lcom/facebook/orca/ops/OrcaServiceOperation;

.field private final i:Lcom/facebook/orca/server/BackgroundRefreshRunner$QueueHook;

.field private final j:Landroid/content/BroadcastReceiver;

.field private final k:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

.field private final l:Lcom/facebook/orca/database/DbUsersPropertyUtil;

.field private final m:Z

.field private final n:Lcom/facebook/orca/common/util/RateLimiter;

.field private final o:Lcom/facebook/orca/common/util/RateLimiter;

.field private final p:Lcom/facebook/orca/common/util/RateLimiter;

.field private final q:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/orca/threads/FolderName;",
            ">;"
        }
    .end annotation
.end field

.field private final r:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final s:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private t:Landroid/os/HandlerThread;

.field private u:Landroid/os/Handler;

.field private v:Lcom/facebook/orca/common/async/CancellableRunnable;

.field private volatile w:Z

.field private volatile x:Z

.field private volatile y:Z

.field private z:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-class v0, Lcom/facebook/orca/server/BackgroundRefreshRunner;

    sput-object v0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->a:Ljava/lang/Class;

    .line 62
    new-instance v0, Lcom/facebook/orca/debug/WtfToken;

    invoke-direct {v0}, Lcom/facebook/orca/debug/WtfToken;-><init>()V

    sput-object v0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->b:Lcom/facebook/orca/debug/WtfToken;

    .line 63
    new-instance v0, Lcom/facebook/orca/debug/WtfToken;

    invoke-direct {v0}, Lcom/facebook/orca/debug/WtfToken;-><init>()V

    sput-object v0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->c:Lcom/facebook/orca/debug/WtfToken;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/orca/cache/DataCache;Lcom/facebook/orca/auth/AuthDataStore;Lcom/facebook/orca/database/DbCache;Lcom/facebook/orca/prefs/OrcaSharedPreferences;Lcom/facebook/orca/database/DbUsersPropertyUtil;Lcom/facebook/orca/ops/OrcaServiceOperation;Lcom/facebook/orca/common/util/Clock;ZLjavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
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
            "Landroid/content/Context;",
            "Lcom/facebook/orca/cache/DataCache;",
            "Lcom/facebook/orca/auth/AuthDataStore;",
            "Lcom/facebook/orca/database/DbCache;",
            "Lcom/facebook/orca/prefs/OrcaSharedPreferences;",
            "Lcom/facebook/orca/database/DbUsersPropertyUtil;",
            "Lcom/facebook/orca/ops/OrcaServiceOperation;",
            "Lcom/facebook/orca/common/util/Clock;",
            "Z",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/orca/threads/FolderName;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->A:Ljava/util/List;

    .line 104
    iput-object p1, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->d:Landroid/content/Context;

    .line 105
    iput-object p2, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->e:Lcom/facebook/orca/cache/DataCache;

    .line 106
    iput-object p4, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->f:Lcom/facebook/orca/database/DbCache;

    .line 107
    iput-object p3, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->g:Lcom/facebook/orca/auth/AuthDataStore;

    .line 108
    iput-object p5, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->k:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    .line 109
    iput-object p6, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->l:Lcom/facebook/orca/database/DbUsersPropertyUtil;

    .line 110
    iput-object p7, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->h:Lcom/facebook/orca/ops/OrcaServiceOperation;

    .line 111
    iput-boolean p9, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->m:Z

    .line 112
    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->r:Ljavax/inject/Provider;

    .line 113
    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->s:Ljavax/inject/Provider;

    .line 114
    new-instance v1, Lcom/facebook/orca/server/BackgroundRefreshRunner$QueueHook;

    invoke-direct {v1, p0}, Lcom/facebook/orca/server/BackgroundRefreshRunner$QueueHook;-><init>(Lcom/facebook/orca/server/BackgroundRefreshRunner;)V

    iput-object v1, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->i:Lcom/facebook/orca/server/BackgroundRefreshRunner$QueueHook;

    .line 115
    iput-object p10, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->q:Ljavax/inject/Provider;

    .line 116
    const-wide/16 v1, 0x64

    iput-wide v1, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->z:J

    .line 118
    new-instance v1, Lcom/facebook/orca/common/util/RateLimiter;

    const/16 v2, 0xa

    const-wide/32 v3, 0xea60

    invoke-direct {v1, p8, v2, v3, v4}, Lcom/facebook/orca/common/util/RateLimiter;-><init>(Lcom/facebook/orca/common/util/Clock;IJ)V

    iput-object v1, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->n:Lcom/facebook/orca/common/util/RateLimiter;

    .line 119
    new-instance v1, Lcom/facebook/orca/common/util/RateLimiter;

    const/16 v2, 0x14

    const-wide/32 v3, 0xea60

    invoke-direct {v1, p8, v2, v3, v4}, Lcom/facebook/orca/common/util/RateLimiter;-><init>(Lcom/facebook/orca/common/util/Clock;IJ)V

    iput-object v1, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->o:Lcom/facebook/orca/common/util/RateLimiter;

    .line 120
    new-instance v1, Lcom/facebook/orca/common/util/RateLimiter;

    const/16 v2, 0x1e

    const-wide/32 v3, 0xea60

    invoke-direct {v1, p8, v2, v3, v4}, Lcom/facebook/orca/common/util/RateLimiter;-><init>(Lcom/facebook/orca/common/util/Clock;IJ)V

    iput-object v1, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->p:Lcom/facebook/orca/common/util/RateLimiter;

    .line 123
    new-instance v1, Lcom/facebook/orca/server/BackgroundRefreshRunner$1;

    invoke-direct {v1, p0, p7}, Lcom/facebook/orca/server/BackgroundRefreshRunner$1;-><init>(Lcom/facebook/orca/server/BackgroundRefreshRunner;Lcom/facebook/orca/ops/OrcaServiceOperation;)V

    invoke-virtual {p7, v1}, Lcom/facebook/orca/ops/OrcaServiceOperation;->a(Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;)V

    .line 144
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 145
    const-string v2, "com.facebook.orca.ACTION_THREAD_UPDATED_FOR_UI"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 146
    new-instance v2, Lcom/facebook/orca/server/BackgroundRefreshRunner$2;

    invoke-direct {v2, p0}, Lcom/facebook/orca/server/BackgroundRefreshRunner$2;-><init>(Lcom/facebook/orca/server/BackgroundRefreshRunner;)V

    iput-object v2, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->j:Landroid/content/BroadcastReceiver;

    .line 152
    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->a(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    .line 153
    iget-object v3, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->j:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/support/v4/content/LocalBroadcastManager;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 155
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->w:Z

    .line 156
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "BackgroundRefreshRunner"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->t:Landroid/os/HandlerThread;

    .line 157
    iget-object v1, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->t:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 158
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->t:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->u:Landroid/os/Handler;

    .line 159
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/server/BackgroundRefreshRunner;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 54
    iput-wide p1, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->z:J

    return-wide p1
.end method

.method static synthetic a(Lcom/facebook/orca/server/BackgroundRefreshRunner;Lcom/facebook/orca/common/async/CancellableRunnable;)Lcom/facebook/orca/common/async/CancellableRunnable;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->v:Lcom/facebook/orca/common/async/CancellableRunnable;

    return-object p1
.end method

.method static synthetic a(Lcom/facebook/orca/server/BackgroundRefreshRunner;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/facebook/orca/server/BackgroundRefreshRunner;->i()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/server/BackgroundRefreshRunner;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->w:Z

    return p1
.end method

.method static synthetic b(Lcom/facebook/orca/server/BackgroundRefreshRunner;)J
    .locals 2
    .parameter

    .prologue
    .line 54
    iget-wide v0, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->z:J

    return-wide v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->g:Lcom/facebook/orca/auth/AuthDataStore;

    invoke-interface {v0}, Lcom/facebook/orca/auth/AuthDataStore;->d()Lcom/facebook/orca/users/User;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->w:Z

    if-nez v0, :cond_1

    .line 229
    :cond_0
    :goto_0
    return-void

    .line 188
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->h:Lcom/facebook/orca/ops/OrcaServiceOperation;

    invoke-virtual {v0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->c()Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/ops/OrcaServiceOperation$State;->INIT:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    if-ne v0, v1, :cond_0

    .line 192
    iget-boolean v0, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->x:Z

    if-nez v0, :cond_0

    .line 196
    iget-boolean v0, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->y:Z

    if-nez v0, :cond_0

    .line 200
    iget-boolean v0, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->m:Z

    if-nez v0, :cond_0

    .line 205
    invoke-direct {p0}, Lcom/facebook/orca/server/BackgroundRefreshRunner;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 210
    invoke-direct {p0}, Lcom/facebook/orca/server/BackgroundRefreshRunner;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 215
    invoke-direct {p0}, Lcom/facebook/orca/server/BackgroundRefreshRunner;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 220
    invoke-direct {p0}, Lcom/facebook/orca/server/BackgroundRefreshRunner;->f()V

    .line 223
    invoke-direct {p0}, Lcom/facebook/orca/server/BackgroundRefreshRunner;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 228
    invoke-direct {p0}, Lcom/facebook/orca/server/BackgroundRefreshRunner;->h()Z

    goto :goto_0
.end method

.method static synthetic c(Lcom/facebook/orca/server/BackgroundRefreshRunner;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/facebook/orca/server/BackgroundRefreshRunner;->b()V

    return-void
.end method

.method private c()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 232
    iget-object v1, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->g:Lcom/facebook/orca/auth/AuthDataStore;

    invoke-interface {v1}, Lcom/facebook/orca/auth/AuthDataStore;->a()Z

    move-result v1

    if-nez v1, :cond_1

    .line 243
    :cond_0
    :goto_0
    return v0

    .line 236
    :cond_1
    iget-object v1, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->k:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    sget-object v2, Lcom/facebook/orca/prefs/ConfigPrefKeys;->b:Lcom/facebook/orca/prefs/PrefKey;

    const-wide/16 v3, 0x0

    invoke-interface {v1, v2, v3, v4}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Lcom/facebook/orca/prefs/PrefKey;J)J

    move-result-wide v1

    .line 238
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v1, v3, v1

    const-wide/32 v3, 0x36ee80

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 239
    sget-object v0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->a:Ljava/lang/Class;

    const-string v1, "Starting GET_APP_INFO"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/Class;Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->h:Lcom/facebook/orca/ops/OrcaServiceOperation;

    const-string v1, "get_app_info"

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/ops/OrcaServiceOperation;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 241
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private d()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 247
    iget-object v0, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->g:Lcom/facebook/orca/auth/AuthDataStore;

    invoke-interface {v0}, Lcom/facebook/orca/auth/AuthDataStore;->d()Lcom/facebook/orca/users/User;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v2

    .line 279
    :goto_0
    return v0

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->q:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/FolderName;

    .line 252
    sget-object v1, Lcom/facebook/orca/threads/FolderName;->a:Lcom/facebook/orca/threads/FolderName;

    if-ne v0, v1, :cond_1

    .line 253
    sget-object v0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->c:Lcom/facebook/orca/debug/WtfToken;

    sget-object v1, Lcom/facebook/orca/server/BackgroundRefreshRunner;->a:Ljava/lang/Class;

    const-string v3, "User not authenticated to access folders"

    invoke-static {v0, v1, v3}, Lcom/facebook/orca/debug/BLog;->a(Lcom/facebook/orca/debug/WtfToken;Ljava/lang/Class;Ljava/lang/String;)V

    move v0, v2

    .line 254
    goto :goto_0

    .line 258
    :cond_1
    iget-object v1, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->f:Lcom/facebook/orca/database/DbCache;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/database/DbCache;->a(Lcom/facebook/orca/threads/FolderName;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 259
    sget-object v1, Lcom/facebook/orca/server/DataFreshnessParam;->CHECK_SERVER_FOR_NEW_DATA:Lcom/facebook/orca/server/DataFreshnessParam;

    .line 266
    :goto_1
    iget-object v3, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->n:Lcom/facebook/orca/common/util/RateLimiter;

    invoke-virtual {v3}, Lcom/facebook/orca/common/util/RateLimiter;->a()Z

    move-result v3

    if-nez v3, :cond_4

    .line 267
    sget-object v0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->b:Lcom/facebook/orca/debug/WtfToken;

    sget-object v1, Lcom/facebook/orca/server/BackgroundRefreshRunner;->a:Ljava/lang/Class;

    const-string v3, "Hit fetch thread list rate limit"

    invoke-static {v0, v1, v3}, Lcom/facebook/orca/debug/BLog;->a(Lcom/facebook/orca/debug/WtfToken;Ljava/lang/Class;Ljava/lang/String;)V

    move v0, v2

    .line 268
    goto :goto_0

    .line 260
    :cond_2
    iget-object v1, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->e:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/cache/DataCache;->d(Lcom/facebook/orca/threads/FolderName;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 261
    sget-object v1, Lcom/facebook/orca/server/DataFreshnessParam;->PREFER_CACHE_IF_UP_TO_DATE:Lcom/facebook/orca/server/DataFreshnessParam;

    goto :goto_1

    :cond_3
    move v0, v2

    .line 263
    goto :goto_0

    .line 271
    :cond_4
    sget-object v2, Lcom/facebook/orca/server/BackgroundRefreshRunner;->a:Ljava/lang/Class;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting fetch threads ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/Class;Ljava/lang/String;)V

    .line 272
    new-instance v2, Lcom/facebook/orca/server/FetchThreadListParamsBuilder;

    invoke-direct {v2}, Lcom/facebook/orca/server/FetchThreadListParamsBuilder;-><init>()V

    invoke-virtual {v2, v1}, Lcom/facebook/orca/server/FetchThreadListParamsBuilder;->a(Lcom/facebook/orca/server/DataFreshnessParam;)Lcom/facebook/orca/server/FetchThreadListParamsBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/facebook/orca/server/FetchThreadListParamsBuilder;->a(Lcom/facebook/orca/threads/FolderName;)Lcom/facebook/orca/server/FetchThreadListParamsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadListParamsBuilder;->f()Lcom/facebook/orca/server/FetchThreadListParams;

    move-result-object v0

    .line 276
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 277
    const-string v2, "fetchThreadListParams"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 278
    iget-object v0, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->h:Lcom/facebook/orca/ops/OrcaServiceOperation;

    const-string v2, "fetch_thread_list"

    invoke-virtual {v0, v2, v1}, Lcom/facebook/orca/ops/OrcaServiceOperation;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 279
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method private e()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 283
    iget-object v1, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->g:Lcom/facebook/orca/auth/AuthDataStore;

    invoke-interface {v1}, Lcom/facebook/orca/auth/AuthDataStore;->d()Lcom/facebook/orca/users/User;

    move-result-object v1

    if-nez v1, :cond_1

    .line 309
    :cond_0
    :goto_0
    return v0

    .line 288
    :cond_1
    iget-object v1, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->f:Lcom/facebook/orca/database/DbCache;

    sget-object v2, Lcom/facebook/orca/threads/FolderName;->b:Lcom/facebook/orca/threads/FolderName;

    invoke-virtual {v1, v2}, Lcom/facebook/orca/database/DbCache;->b(Lcom/facebook/orca/threads/FolderName;)Ljava/util/List;

    move-result-object v1

    .line 289
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 293
    iget-object v2, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->o:Lcom/facebook/orca/common/util/RateLimiter;

    invoke-virtual {v2}, Lcom/facebook/orca/common/util/RateLimiter;->a()Z

    move-result v2

    if-nez v2, :cond_2

    .line 294
    sget-object v1, Lcom/facebook/orca/server/BackgroundRefreshRunner;->b:Lcom/facebook/orca/debug/WtfToken;

    sget-object v2, Lcom/facebook/orca/server/BackgroundRefreshRunner;->a:Ljava/lang/Class;

    const-string v3, "Hit fetch thread rate limit"

    invoke-static {v1, v2, v3}, Lcom/facebook/orca/debug/BLog;->a(Lcom/facebook/orca/debug/WtfToken;Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0

    .line 299
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 300
    sget-object v1, Lcom/facebook/orca/server/BackgroundRefreshRunner;->a:Ljava/lang/Class;

    const-string v2, "Starting fetch thread (server)"

    invoke-static {v1, v2}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/Class;Ljava/lang/String;)V

    .line 301
    invoke-static {}, Lcom/facebook/orca/server/FetchThreadParams;->newBuilder()Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/facebook/orca/server/ThreadCriteria;->a(Ljava/lang/String;)Lcom/facebook/orca/server/ThreadCriteria;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->a(Lcom/facebook/orca/server/ThreadCriteria;)Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/server/DataFreshnessParam;->CHECK_SERVER_FOR_NEW_DATA:Lcom/facebook/orca/server/DataFreshnessParam;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->a(Lcom/facebook/orca/server/DataFreshnessParam;)Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    move-result-object v0

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->a(I)Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->g()Lcom/facebook/orca/server/FetchThreadParams;

    move-result-object v0

    .line 306
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 307
    const-string v2, "fetchThreadParams"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 308
    iget-object v0, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->h:Lcom/facebook/orca/ops/OrcaServiceOperation;

    const-string v2, "fetch_thread"

    invoke-virtual {v0, v2, v1}, Lcom/facebook/orca/ops/OrcaServiceOperation;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 309
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private f()V
    .locals 7

    .prologue
    .line 317
    iget-object v0, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->s:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 342
    :goto_0
    return-void

    .line 321
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 322
    iget-object v2, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->d:Landroid/content/Context;

    invoke-static {v2}, Landroid_src/mms/pdu/PduPersister;->a(Landroid/content/Context;)Landroid_src/mms/pdu/PduPersister;

    move-result-object v2

    .line 323
    invoke-virtual {v2, v0, v1}, Landroid_src/mms/pdu/PduPersister;->a(J)Landroid/database/Cursor;

    move-result-object v1

    .line 325
    :try_start_0
    const-string v0, "msg_id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 326
    const-string v2, "msg_type"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 327
    :cond_1
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 328
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 329
    const/16 v4, 0x82

    if-ne v3, v4, :cond_1

    .line 330
    sget-object v3, Lcom/facebook/orca/server/BackgroundRefreshRunner;->a:Ljava/lang/Class;

    const-string v4, "Starting flush pending mms"

    invoke-static {v3, v4}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/Class;Ljava/lang/String;)V

    .line 331
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 332
    sget-object v5, Landroid_src/provider/Telephony$Mms;->a:Landroid/net/Uri;

    invoke-static {v5, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 333
    new-instance v4, Landroid/content/Intent;

    iget-object v5, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->d:Landroid/content/Context;

    sget-object v6, Landroid_src/mms/ClassesToUse;->a:Ljava/lang/Class;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 334
    const-string v5, "uri"

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 335
    const-string v3, "type"

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 336
    iget-object v3, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->d:Landroid/content/Context;

    invoke-virtual {v3, v4}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 340
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private g()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 345
    iget-object v0, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->g:Lcom/facebook/orca/auth/AuthDataStore;

    invoke-interface {v0}, Lcom/facebook/orca/auth/AuthDataStore;->a()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 362
    :goto_0
    return v0

    .line 349
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->r:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 350
    goto :goto_0

    .line 353
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->l:Lcom/facebook/orca/database/DbUsersPropertyUtil;

    sget-object v2, Lcom/facebook/orca/database/DbProperties;->h:Lcom/facebook/orca/database/DbUserPropertyKey;

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcom/facebook/orca/database/DbUsersPropertyUtil;->a(Lcom/facebook/orca/common/util/TypedKey;J)J

    move-result-wide v2

    .line 356
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    const-wide/32 v4, 0xa4cb80

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    .line 357
    sget-object v0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->a:Ljava/lang/Class;

    const-string v1, "Starting SyncTopLastActive"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/Class;Ljava/lang/String;)V

    .line 358
    iget-object v0, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->h:Lcom/facebook/orca/ops/OrcaServiceOperation;

    const-string v1, "sync_top_last_active"

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/ops/OrcaServiceOperation;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 359
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 362
    goto :goto_0
.end method

.method private h()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 366
    iget-object v0, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->g:Lcom/facebook/orca/auth/AuthDataStore;

    invoke-interface {v0}, Lcom/facebook/orca/auth/AuthDataStore;->d()Lcom/facebook/orca/users/User;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    .line 396
    :goto_0
    return v0

    .line 370
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->A:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 371
    iget-object v3, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->e:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v3, v0}, Lcom/facebook/orca/cache/DataCache;->b(Ljava/lang/String;)Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v3

    .line 372
    iget-object v4, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->e:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v4, v0}, Lcom/facebook/orca/cache/DataCache;->c(Ljava/lang/String;)Lcom/facebook/orca/threads/MessagesCollection;

    move-result-object v4

    .line 373
    if-eqz v3, :cond_2

    if-nez v4, :cond_1

    .line 375
    :cond_2
    iget-object v2, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->p:Lcom/facebook/orca/common/util/RateLimiter;

    invoke-virtual {v2}, Lcom/facebook/orca/common/util/RateLimiter;->a()Z

    move-result v2

    if-nez v2, :cond_3

    .line 376
    sget-object v0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->b:Lcom/facebook/orca/debug/WtfToken;

    sget-object v2, Lcom/facebook/orca/server/BackgroundRefreshRunner;->a:Ljava/lang/Class;

    const-string v3, "Hit in memory caching thread rate limit"

    invoke-static {v0, v2, v3}, Lcom/facebook/orca/debug/BLog;->a(Lcom/facebook/orca/debug/WtfToken;Ljava/lang/Class;Ljava/lang/String;)V

    move v0, v1

    .line 381
    goto :goto_0

    .line 384
    :cond_3
    sget-object v1, Lcom/facebook/orca/server/BackgroundRefreshRunner;->a:Ljava/lang/Class;

    const-string v2, "Starting getThread (db)"

    invoke-static {v1, v2}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/Class;Ljava/lang/String;)V

    .line 385
    invoke-static {}, Lcom/facebook/orca/server/FetchThreadParams;->newBuilder()Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/facebook/orca/server/ThreadCriteria;->a(Ljava/lang/String;)Lcom/facebook/orca/server/ThreadCriteria;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->a(Lcom/facebook/orca/server/ThreadCriteria;)Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/server/DataFreshnessParam;->STALE_DATA_OKAY:Lcom/facebook/orca/server/DataFreshnessParam;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->a(Lcom/facebook/orca/server/DataFreshnessParam;)Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    move-result-object v0

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->a(I)Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->g()Lcom/facebook/orca/server/FetchThreadParams;

    move-result-object v0

    .line 390
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 391
    const-string v2, "fetchThreadParams"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 392
    iget-object v0, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->h:Lcom/facebook/orca/ops/OrcaServiceOperation;

    const-string v2, "fetch_thread"

    invoke-virtual {v0, v2, v1}, Lcom/facebook/orca/ops/OrcaServiceOperation;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 393
    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    move v0, v1

    .line 396
    goto :goto_0
.end method

.method private declared-synchronized i()V
    .locals 4

    .prologue
    .line 400
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->v:Lcom/facebook/orca/common/async/CancellableRunnable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 420
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 404
    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->w:Z

    if-eqz v0, :cond_0

    .line 407
    new-instance v0, Lcom/facebook/orca/common/async/CancellableRunnable;

    new-instance v1, Lcom/facebook/orca/server/BackgroundRefreshRunner$3;

    invoke-direct {v1, p0}, Lcom/facebook/orca/server/BackgroundRefreshRunner$3;-><init>(Lcom/facebook/orca/server/BackgroundRefreshRunner;)V

    invoke-direct {v0, v1}, Lcom/facebook/orca/common/async/CancellableRunnable;-><init>(Ljava/lang/Runnable;)V

    .line 416
    iget-object v1, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->u:Landroid/os/Handler;

    iget-wide v2, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->z:J

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v1

    .line 417
    if-eqz v1, :cond_0

    .line 418
    iput-object v0, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->v:Lcom/facebook/orca/common/async/CancellableRunnable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 400
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a()Lcom/facebook/orca/server/BackgroundRefreshRunner$QueueHook;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->i:Lcom/facebook/orca/server/BackgroundRefreshRunner$QueueHook;

    return-object v0
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 166
    iput-object p1, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->A:Ljava/util/List;

    .line 167
    invoke-direct {p0}, Lcom/facebook/orca/server/BackgroundRefreshRunner;->i()V

    .line 168
    return-void
.end method

.method public a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 171
    iput-boolean p1, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->x:Z

    .line 172
    iget-boolean v0, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->x:Z

    if-nez v0, :cond_0

    .line 173
    invoke-direct {p0}, Lcom/facebook/orca/server/BackgroundRefreshRunner;->i()V

    .line 175
    :cond_0
    return-void
.end method
