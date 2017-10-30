.class public Lcom/facebook/orca/presence/PresenceManager;
.super Ljava/lang/Object;
.source "PresenceManager.java"

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


# instance fields
.field private final b:Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

.field private final c:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/orca/users/FacebookUserIterator;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/facebook/orca/common/util/AndroidThreadUtil;

.field private final f:Lcom/google/common/util/concurrent/ListeningExecutorService;

.field private final g:Lcom/facebook/common/util/UiThreadExecutor;

.field private final h:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lcom/google/common/collect/Multimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Multimap",
            "<",
            "Lcom/facebook/orca/users/UserKey;",
            "Lcom/facebook/orca/presence/PresenceManager$OnContactPresenceStateChangedListener;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "ui thread"
    .end annotation
.end field

.field private final j:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Lcom/facebook/orca/presence/PresenceManager$OnPresenceReceivedListener;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Lcom/facebook/orca/users/UserKey;",
            "Lcom/facebook/orca/presence/PresenceManager$UserState;",
            ">;"
        }
    .end annotation
.end field

.field private volatile l:Z

.field private final m:Lcom/facebook/orca/activity/SafeLocalBroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const-class v0, Lcom/facebook/orca/presence/PresenceManager;

    sput-object v0, Lcom/facebook/orca/presence/PresenceManager;->a:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/orca/push/mqtt/MqttConnectionManager;Ljavax/inject/Provider;Ljavax/inject/Provider;Lcom/facebook/orca/common/util/AndroidThreadUtil;Lcom/google/common/util/concurrent/ListeningExecutorService;Lcom/facebook/common/util/UiThreadExecutor;Ljavax/inject/Provider;)V
    .locals 2
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
            "Lcom/facebook/orca/push/mqtt/MqttConnectionManager;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/orca/users/FacebookUserIterator;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/facebook/orca/common/util/AndroidThreadUtil;",
            "Lcom/google/common/util/concurrent/ListeningExecutorService;",
            "Lcom/facebook/common/util/UiThreadExecutor;",
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    invoke-interface {p5}, Lcom/facebook/orca/common/util/AndroidThreadUtil;->a()V

    .line 118
    iput-object p2, p0, Lcom/facebook/orca/presence/PresenceManager;->b:Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

    .line 119
    iput-object p3, p0, Lcom/facebook/orca/presence/PresenceManager;->c:Ljavax/inject/Provider;

    .line 120
    iput-object p4, p0, Lcom/facebook/orca/presence/PresenceManager;->d:Ljavax/inject/Provider;

    .line 121
    iput-object p5, p0, Lcom/facebook/orca/presence/PresenceManager;->e:Lcom/facebook/orca/common/util/AndroidThreadUtil;

    .line 122
    iput-object p6, p0, Lcom/facebook/orca/presence/PresenceManager;->f:Lcom/google/common/util/concurrent/ListeningExecutorService;

    .line 123
    iput-object p7, p0, Lcom/facebook/orca/presence/PresenceManager;->g:Lcom/facebook/common/util/UiThreadExecutor;

    .line 124
    iput-object p8, p0, Lcom/facebook/orca/presence/PresenceManager;->h:Ljavax/inject/Provider;

    .line 125
    invoke-static {}, Lcom/google/common/collect/HashMultimap;->m()Lcom/google/common/collect/HashMultimap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/presence/PresenceManager;->i:Lcom/google/common/collect/Multimap;

    .line 126
    invoke-static {}, Lcom/google/common/collect/Maps;->c()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/presence/PresenceManager;->j:Ljava/util/concurrent/ConcurrentMap;

    .line 127
    invoke-static {}, Lcom/google/common/collect/Maps;->c()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/presence/PresenceManager;->k:Ljava/util/concurrent/ConcurrentMap;

    .line 129
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.facebook.orca.ACTION_PERSISTENT_CHANNEL_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 130
    new-instance v1, Lcom/facebook/orca/presence/PresenceManager$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/facebook/orca/presence/PresenceManager$1;-><init>(Lcom/facebook/orca/presence/PresenceManager;Landroid/content/Context;Landroid/content/IntentFilter;)V

    iput-object v1, p0, Lcom/facebook/orca/presence/PresenceManager;->m:Lcom/facebook/orca/activity/SafeLocalBroadcastReceiver;

    .line 146
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/presence/PresenceManager;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/facebook/orca/presence/PresenceManager;->h()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/presence/PresenceManager;Lcom/facebook/orca/threads/Message;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/facebook/orca/presence/PresenceManager;->b(Lcom/facebook/orca/threads/Message;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/presence/PresenceManager;Lcom/facebook/orca/users/UserKey;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/presence/PresenceManager;->b(Lcom/facebook/orca/users/UserKey;I)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/presence/PresenceManager;Ljava/util/Map;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/presence/PresenceManager;->b(Ljava/util/Map;Z)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/presence/PresenceManager;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/facebook/orca/presence/PresenceManager;->l:Z

    return p1
.end method

.method static synthetic b(Lcom/facebook/orca/presence/PresenceManager;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/facebook/orca/presence/PresenceManager;->i()V

    return-void
.end method

.method private b(Lcom/facebook/orca/threads/Message;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 473
    sget-object v0, Lcom/facebook/orca/presence/PresenceManager;->a:Ljava/lang/Class;

    const-string v1, "Message received: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 474
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->f()Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v0

    .line 475
    invoke-virtual {v0}, Lcom/facebook/orca/threads/ParticipantInfo;->e()Lcom/facebook/orca/users/UserKey;

    move-result-object v1

    .line 476
    iget-object v0, p0, Lcom/facebook/orca/presence/PresenceManager;->k:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/presence/PresenceManager$UserState;

    .line 477
    if-eqz v0, :cond_0

    iget-boolean v2, v0, Lcom/facebook/orca/presence/PresenceManager$UserState;->a:Z

    if-eqz v2, :cond_0

    .line 478
    iput-boolean v3, v0, Lcom/facebook/orca/presence/PresenceManager$UserState;->a:Z

    .line 479
    invoke-direct {p0, v1}, Lcom/facebook/orca/presence/PresenceManager;->d(Lcom/facebook/orca/users/UserKey;)V

    .line 481
    :cond_0
    return-void
.end method

.method private b(Lcom/facebook/orca/users/UserKey;I)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 403
    sget-object v2, Lcom/facebook/orca/presence/PresenceManager;->a:Ljava/lang/Class;

    const-string v3, "User typing state changed: %d"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v2, v3, v4}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 404
    invoke-direct {p0, p1}, Lcom/facebook/orca/presence/PresenceManager;->c(Lcom/facebook/orca/users/UserKey;)Lcom/facebook/orca/presence/PresenceManager$UserState;

    move-result-object v2

    .line 405
    if-ne p2, v0, :cond_0

    :goto_0
    iput-boolean v0, v2, Lcom/facebook/orca/presence/PresenceManager$UserState;->a:Z

    .line 406
    invoke-direct {p0, p1}, Lcom/facebook/orca/presence/PresenceManager;->d(Lcom/facebook/orca/users/UserKey;)V

    .line 407
    return-void

    :cond_0
    move v0, v1

    .line 405
    goto :goto_0
.end method

.method private b(Ljava/util/Map;Z)V
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/facebook/orca/users/UserKey;",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 431
    sget-object v0, Lcom/facebook/orca/presence/PresenceManager;->a:Ljava/lang/Class;

    const-string v1, "Presence map received"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 432
    if-eqz p2, :cond_0

    .line 433
    iget-object v0, p0, Lcom/facebook/orca/presence/PresenceManager;->k:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/presence/PresenceManager$UserState;

    .line 434
    iput-boolean v2, v0, Lcom/facebook/orca/presence/PresenceManager$UserState;->c:Z

    goto :goto_0

    .line 437
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 438
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/users/UserKey;

    invoke-direct {p0, v1}, Lcom/facebook/orca/presence/PresenceManager;->c(Lcom/facebook/orca/users/UserKey;)Lcom/facebook/orca/presence/PresenceManager$UserState;

    move-result-object v4

    .line 439
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v5, 0x2

    if-ne v1, v5, :cond_1

    const/4 v1, 0x1

    :goto_2
    iput-boolean v1, v4, Lcom/facebook/orca/presence/PresenceManager$UserState;->c:Z

    .line 440
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/UserKey;

    invoke-direct {p0, v0}, Lcom/facebook/orca/presence/PresenceManager;->d(Lcom/facebook/orca/users/UserKey;)V

    goto :goto_1

    :cond_1
    move v1, v2

    .line 439
    goto :goto_2

    .line 443
    :cond_2
    if-eqz p2, :cond_3

    .line 444
    iget-object v0, p0, Lcom/facebook/orca/presence/PresenceManager;->i:Lcom/google/common/collect/Multimap;

    invoke-interface {v0}, Lcom/google/common/collect/Multimap;->h()Lcom/google/common/collect/Multiset;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/Multiset;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/UserKey;

    .line 445
    invoke-direct {p0, v0}, Lcom/facebook/orca/presence/PresenceManager;->d(Lcom/facebook/orca/users/UserKey;)V

    goto :goto_3

    .line 448
    :cond_3
    iget-object v0, p0, Lcom/facebook/orca/presence/PresenceManager;->j:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/presence/PresenceManager$OnPresenceReceivedListener;

    .line 449
    invoke-virtual {v0}, Lcom/facebook/orca/presence/PresenceManager$OnPresenceReceivedListener;->a()V

    goto :goto_4

    .line 451
    :cond_4
    return-void
.end method

.method private c(Lcom/facebook/orca/users/UserKey;)Lcom/facebook/orca/presence/PresenceManager$UserState;
    .locals 2
    .parameter

    .prologue
    .line 273
    iget-object v0, p0, Lcom/facebook/orca/presence/PresenceManager;->k:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/presence/PresenceManager$UserState;

    .line 274
    if-nez v0, :cond_0

    .line 275
    new-instance v1, Lcom/facebook/orca/presence/PresenceManager$UserState;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/facebook/orca/presence/PresenceManager$UserState;-><init>(Lcom/facebook/orca/presence/PresenceManager$1;)V

    .line 276
    iget-object v0, p0, Lcom/facebook/orca/presence/PresenceManager;->k:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/presence/PresenceManager$UserState;

    .line 277
    if-nez v0, :cond_0

    move-object v0, v1

    .line 281
    :cond_0
    return-object v0
.end method

.method static synthetic c(Lcom/facebook/orca/presence/PresenceManager;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/facebook/orca/presence/PresenceManager;->j()V

    return-void
.end method

.method private d(Lcom/facebook/orca/users/UserKey;)V
    .locals 3
    .parameter

    .prologue
    .line 292
    iget-object v0, p0, Lcom/facebook/orca/presence/PresenceManager;->e:Lcom/facebook/orca/common/util/AndroidThreadUtil;

    invoke-interface {v0}, Lcom/facebook/orca/common/util/AndroidThreadUtil;->a()V

    .line 293
    iget-object v0, p0, Lcom/facebook/orca/presence/PresenceManager;->i:Lcom/google/common/collect/Multimap;

    invoke-interface {v0, p1}, Lcom/google/common/collect/Multimap;->f(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    invoke-virtual {p0, p1}, Lcom/facebook/orca/presence/PresenceManager;->b(Lcom/facebook/orca/users/UserKey;)Lcom/facebook/orca/presence/PresenceState;

    move-result-object v1

    .line 295
    iget-object v0, p0, Lcom/facebook/orca/presence/PresenceManager;->i:Lcom/google/common/collect/Multimap;

    invoke-interface {v0, p1}, Lcom/google/common/collect/Multimap;->c(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/presence/PresenceManager$OnContactPresenceStateChangedListener;

    .line 296
    invoke-virtual {v0, p1, v1}, Lcom/facebook/orca/presence/PresenceManager$OnContactPresenceStateChangedListener;->a(Lcom/facebook/orca/users/UserKey;Lcom/facebook/orca/presence/PresenceState;)V

    goto :goto_0

    .line 299
    :cond_0
    return-void
.end method

.method static synthetic f()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/facebook/orca/presence/PresenceManager;->a:Ljava/lang/Class;

    return-object v0
.end method

.method private g()V
    .locals 3

    .prologue
    .line 231
    iget-boolean v0, p0, Lcom/facebook/orca/presence/PresenceManager;->l:Z

    if-eqz v0, :cond_0

    .line 254
    :goto_0
    return-void

    .line 234
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/orca/presence/PresenceManager;->l:Z

    .line 235
    iget-object v0, p0, Lcom/facebook/orca/presence/PresenceManager;->f:Lcom/google/common/util/concurrent/ListeningExecutorService;

    new-instance v1, Lcom/facebook/orca/presence/PresenceManager$2;

    invoke-direct {v1, p0}, Lcom/facebook/orca/presence/PresenceManager$2;-><init>(Lcom/facebook/orca/presence/PresenceManager;)V

    invoke-interface {v0, v1}, Lcom/google/common/util/concurrent/ListeningExecutorService;->a(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 242
    new-instance v1, Lcom/facebook/orca/presence/PresenceManager$3;

    invoke-direct {v1, p0}, Lcom/facebook/orca/presence/PresenceManager$3;-><init>(Lcom/facebook/orca/presence/PresenceManager;)V

    iget-object v2, p0, Lcom/facebook/orca/presence/PresenceManager;->g:Lcom/facebook/common/util/UiThreadExecutor;

    invoke-static {v0, v1, v2}, Lcom/google/common/util/concurrent/Futures;->a(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;Ljava/util/concurrent/Executor;)V

    goto :goto_0
.end method

.method private h()V
    .locals 4

    .prologue
    .line 257
    iget-object v0, p0, Lcom/facebook/orca/presence/PresenceManager;->e:Lcom/facebook/orca/common/util/AndroidThreadUtil;

    invoke-interface {v0}, Lcom/facebook/orca/common/util/AndroidThreadUtil;->b()V

    .line 258
    iget-object v0, p0, Lcom/facebook/orca/presence/PresenceManager;->c:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/FacebookUserIterator;

    .line 259
    invoke-interface {v0}, Lcom/facebook/orca/users/FacebookUserIterator;->a()V

    .line 262
    :goto_0
    :try_start_0
    invoke-interface {v0}, Lcom/facebook/orca/users/FacebookUserIterator;->c()Lcom/facebook/orca/users/User;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 263
    invoke-virtual {v1}, Lcom/facebook/orca/users/User;->c()Lcom/facebook/orca/users/UserKey;

    move-result-object v2

    .line 264
    invoke-direct {p0, v2}, Lcom/facebook/orca/presence/PresenceManager;->c(Lcom/facebook/orca/users/UserKey;)Lcom/facebook/orca/presence/PresenceManager$UserState;

    move-result-object v2

    .line 265
    invoke-virtual {v1}, Lcom/facebook/orca/users/User;->t()Lcom/facebook/common/util/TriState;

    move-result-object v1

    sget-object v3, Lcom/facebook/common/util/TriState;->YES:Lcom/facebook/common/util/TriState;

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, v2, Lcom/facebook/orca/presence/PresenceManager$UserState;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 268
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Lcom/facebook/orca/users/FacebookUserIterator;->d()V

    throw v1

    .line 265
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 268
    :cond_1
    invoke-interface {v0}, Lcom/facebook/orca/users/FacebookUserIterator;->d()V

    .line 270
    return-void
.end method

.method private i()V
    .locals 2

    .prologue
    .line 285
    iget-object v0, p0, Lcom/facebook/orca/presence/PresenceManager;->e:Lcom/facebook/orca/common/util/AndroidThreadUtil;

    invoke-interface {v0}, Lcom/facebook/orca/common/util/AndroidThreadUtil;->a()V

    .line 286
    iget-object v0, p0, Lcom/facebook/orca/presence/PresenceManager;->k:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/UserKey;

    .line 287
    invoke-direct {p0, v0}, Lcom/facebook/orca/presence/PresenceManager;->d(Lcom/facebook/orca/users/UserKey;)V

    goto :goto_0

    .line 289
    :cond_0
    return-void
.end method

.method private j()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 500
    sget-object v0, Lcom/facebook/orca/presence/PresenceManager;->a:Ljava/lang/Class;

    const-string v1, "MQTT disconnected"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 501
    iget-object v0, p0, Lcom/facebook/orca/presence/PresenceManager;->k:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/presence/PresenceManager$UserState;

    .line 502
    iput-boolean v2, v0, Lcom/facebook/orca/presence/PresenceManager$UserState;->c:Z

    .line 503
    iput-boolean v2, v0, Lcom/facebook/orca/presence/PresenceManager$UserState;->a:Z

    goto :goto_0

    .line 505
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/presence/PresenceManager;->i:Lcom/google/common/collect/Multimap;

    invoke-interface {v0}, Lcom/google/common/collect/Multimap;->h()Lcom/google/common/collect/Multiset;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/Multiset;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/UserKey;

    .line 506
    invoke-direct {p0, v0}, Lcom/facebook/orca/presence/PresenceManager;->d(Lcom/facebook/orca/users/UserKey;)V

    goto :goto_1

    .line 508
    :cond_1
    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/orca/presence/PresenceManager$OnPresenceReceivedListener;)V
    .locals 2
    .parameter

    .prologue
    .line 188
    iget-object v0, p0, Lcom/facebook/orca/presence/PresenceManager;->j:Ljava/util/concurrent/ConcurrentMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    invoke-direct {p0}, Lcom/facebook/orca/presence/PresenceManager;->g()V

    .line 190
    return-void
.end method

.method public a(Lcom/facebook/orca/threads/Message;)V
    .locals 2
    .parameter

    .prologue
    .line 459
    iget-object v0, p0, Lcom/facebook/orca/presence/PresenceManager;->e:Lcom/facebook/orca/common/util/AndroidThreadUtil;

    new-instance v1, Lcom/facebook/orca/presence/PresenceManager$6;

    invoke-direct {v1, p0, p1}, Lcom/facebook/orca/presence/PresenceManager$6;-><init>(Lcom/facebook/orca/presence/PresenceManager;Lcom/facebook/orca/threads/Message;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/common/util/AndroidThreadUtil;->b(Ljava/lang/Runnable;)V

    .line 465
    return-void
.end method

.method public a(Lcom/facebook/orca/users/UserKey;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 388
    iget-object v0, p0, Lcom/facebook/orca/presence/PresenceManager;->e:Lcom/facebook/orca/common/util/AndroidThreadUtil;

    new-instance v1, Lcom/facebook/orca/presence/PresenceManager$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/facebook/orca/presence/PresenceManager$4;-><init>(Lcom/facebook/orca/presence/PresenceManager;Lcom/facebook/orca/users/UserKey;I)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/common/util/AndroidThreadUtil;->b(Ljava/lang/Runnable;)V

    .line 394
    return-void
.end method

.method public a(Lcom/facebook/orca/users/UserKey;Lcom/facebook/orca/presence/PresenceManager$OnContactPresenceStateChangedListener;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 163
    iget-object v0, p0, Lcom/facebook/orca/presence/PresenceManager;->e:Lcom/facebook/orca/common/util/AndroidThreadUtil;

    invoke-interface {v0}, Lcom/facebook/orca/common/util/AndroidThreadUtil;->a()V

    .line 164
    iget-object v0, p0, Lcom/facebook/orca/presence/PresenceManager;->i:Lcom/google/common/collect/Multimap;

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/Multimap;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 165
    invoke-direct {p0}, Lcom/facebook/orca/presence/PresenceManager;->g()V

    .line 166
    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 220
    iget-object v0, p0, Lcom/facebook/orca/presence/PresenceManager;->e:Lcom/facebook/orca/common/util/AndroidThreadUtil;

    invoke-interface {v0}, Lcom/facebook/orca/common/util/AndroidThreadUtil;->a()V

    .line 221
    iget-object v0, p0, Lcom/facebook/orca/presence/PresenceManager;->d:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 228
    :goto_0
    return-void

    .line 224
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    sget-object v1, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->instance:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;-><init>(Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;)V

    .line 225
    const-string v1, "to"

    invoke-virtual {v0, v1, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 226
    const-string v1, "state"

    invoke-virtual {v0, v1, p2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 227
    iget-object v1, p0, Lcom/facebook/orca/presence/PresenceManager;->b:Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

    const-string v2, "/typing"

    sget-object v3, Lcom/facebook/orca/mqtt/MqttQOSLevel;->FIRE_AND_FORGET:Lcom/facebook/orca/mqtt/MqttQOSLevel;

    invoke-virtual {v1, v2, v0, v3}, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->a(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;Lcom/facebook/orca/mqtt/MqttQOSLevel;)I

    goto :goto_0
.end method

.method public a(Ljava/util/Map;Z)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/facebook/orca/users/UserKey;",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 416
    iget-object v0, p0, Lcom/facebook/orca/presence/PresenceManager;->e:Lcom/facebook/orca/common/util/AndroidThreadUtil;

    new-instance v1, Lcom/facebook/orca/presence/PresenceManager$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/facebook/orca/presence/PresenceManager$5;-><init>(Lcom/facebook/orca/presence/PresenceManager;Ljava/util/Map;Z)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/common/util/AndroidThreadUtil;->b(Ljava/lang/Runnable;)V

    .line 422
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/facebook/orca/presence/PresenceManager;->d:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 208
    const/4 v0, 0x0

    .line 210
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/presence/PresenceManager;->b:Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

    invoke-virtual {v0}, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->g()Z

    move-result v0

    goto :goto_0
.end method

.method public a(Lcom/facebook/orca/users/UserKey;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 308
    iget-object v0, p0, Lcom/facebook/orca/presence/PresenceManager;->d:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 315
    :goto_0
    return v0

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/presence/PresenceManager;->k:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/presence/PresenceManager$UserState;

    .line 312
    if-nez v0, :cond_1

    move v0, v1

    .line 313
    goto :goto_0

    .line 315
    :cond_1
    iget-boolean v0, v0, Lcom/facebook/orca/presence/PresenceManager$UserState;->c:Z

    goto :goto_0
.end method

.method public b(Lcom/facebook/orca/users/UserKey;)Lcom/facebook/orca/presence/PresenceState;
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 325
    iget-object v0, p0, Lcom/facebook/orca/presence/PresenceManager;->d:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 326
    new-instance v0, Lcom/facebook/orca/presence/PresenceState;

    sget-object v1, Lcom/facebook/orca/presence/Availability;->NONE:Lcom/facebook/orca/presence/Availability;

    invoke-direct {v0, v1, v2, v2}, Lcom/facebook/orca/presence/PresenceState;-><init>(Lcom/facebook/orca/presence/Availability;ZZ)V

    .line 339
    :goto_0
    return-object v0

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/presence/PresenceManager;->k:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/presence/PresenceManager$UserState;

    .line 330
    if-nez v0, :cond_1

    .line 331
    new-instance v0, Lcom/facebook/orca/presence/PresenceState;

    sget-object v1, Lcom/facebook/orca/presence/Availability;->NONE:Lcom/facebook/orca/presence/Availability;

    invoke-direct {v0, v1, v2, v2}, Lcom/facebook/orca/presence/PresenceState;-><init>(Lcom/facebook/orca/presence/Availability;ZZ)V

    goto :goto_0

    .line 334
    :cond_1
    iget-boolean v1, v0, Lcom/facebook/orca/presence/PresenceManager$UserState;->c:Z

    if-eqz v1, :cond_2

    .line 335
    sget-object v1, Lcom/facebook/orca/presence/Availability;->AVAILABLE:Lcom/facebook/orca/presence/Availability;

    .line 339
    :goto_1
    new-instance v2, Lcom/facebook/orca/presence/PresenceState;

    iget-boolean v3, v0, Lcom/facebook/orca/presence/PresenceManager$UserState;->b:Z

    iget-boolean v0, v0, Lcom/facebook/orca/presence/PresenceManager$UserState;->a:Z

    invoke-direct {v2, v1, v3, v0}, Lcom/facebook/orca/presence/PresenceState;-><init>(Lcom/facebook/orca/presence/Availability;ZZ)V

    move-object v0, v2

    goto :goto_0

    .line 337
    :cond_2
    sget-object v1, Lcom/facebook/orca/presence/Availability;->NONE:Lcom/facebook/orca/presence/Availability;

    goto :goto_1
.end method

.method public b()V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/facebook/orca/presence/PresenceManager;->m:Lcom/facebook/orca/activity/SafeLocalBroadcastReceiver;

    invoke-virtual {v0}, Lcom/facebook/orca/activity/SafeLocalBroadcastReceiver;->a()V

    .line 151
    return-void
.end method

.method public b(Lcom/facebook/orca/presence/PresenceManager$OnPresenceReceivedListener;)V
    .locals 1
    .parameter

    .prologue
    .line 198
    iget-object v0, p0, Lcom/facebook/orca/presence/PresenceManager;->j:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    return-void
.end method

.method public b(Lcom/facebook/orca/users/UserKey;Lcom/facebook/orca/presence/PresenceManager$OnContactPresenceStateChangedListener;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 178
    iget-object v0, p0, Lcom/facebook/orca/presence/PresenceManager;->e:Lcom/facebook/orca/common/util/AndroidThreadUtil;

    invoke-interface {v0}, Lcom/facebook/orca/common/util/AndroidThreadUtil;->a()V

    .line 179
    iget-object v0, p0, Lcom/facebook/orca/presence/PresenceManager;->i:Lcom/google/common/collect/Multimap;

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/Multimap;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 180
    return-void
.end method

.method public c()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/facebook/orca/users/UserKey;",
            ">;"
        }
    .end annotation

    .prologue
    .line 348
    iget-object v0, p0, Lcom/facebook/orca/presence/PresenceManager;->d:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 349
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 357
    :goto_0
    return-object v0

    .line 351
    :cond_0
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v2

    .line 352
    iget-object v0, p0, Lcom/facebook/orca/presence/PresenceManager;->k:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 353
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/presence/PresenceManager$UserState;

    iget-boolean v1, v1, Lcom/facebook/orca/presence/PresenceManager$UserState;->c:Z

    if-eqz v1, :cond_1

    .line 354
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move-object v0, v2

    .line 357
    goto :goto_0
.end method

.method public d()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/facebook/orca/users/UserKey;",
            ">;"
        }
    .end annotation

    .prologue
    .line 366
    iget-object v0, p0, Lcom/facebook/orca/presence/PresenceManager;->d:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 367
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 378
    :goto_0
    return-object v0

    .line 369
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/presence/PresenceManager;->h:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 370
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 372
    :cond_1
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v2

    .line 373
    iget-object v0, p0, Lcom/facebook/orca/presence/PresenceManager;->k:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 374
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/presence/PresenceManager$UserState;

    iget-boolean v1, v1, Lcom/facebook/orca/presence/PresenceManager$UserState;->b:Z

    if-eqz v1, :cond_2

    .line 375
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    move-object v0, v2

    .line 378
    goto :goto_0
.end method

.method public e()V
    .locals 2

    .prologue
    .line 487
    iget-object v0, p0, Lcom/facebook/orca/presence/PresenceManager;->e:Lcom/facebook/orca/common/util/AndroidThreadUtil;

    new-instance v1, Lcom/facebook/orca/presence/PresenceManager$7;

    invoke-direct {v1, p0}, Lcom/facebook/orca/presence/PresenceManager$7;-><init>(Lcom/facebook/orca/presence/PresenceManager;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/common/util/AndroidThreadUtil;->b(Ljava/lang/Runnable;)V

    .line 493
    return-void
.end method
