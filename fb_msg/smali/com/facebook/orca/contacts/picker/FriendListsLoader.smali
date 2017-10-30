.class public Lcom/facebook/orca/contacts/picker/FriendListsLoader;
.super Landroid/support/v4/content/AsyncTaskLoader;
.source "FriendListsLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/content/AsyncTaskLoader",
        "<",
        "Lcom/facebook/orca/contacts/picker/FriendListsLoader$Result;",
        ">;"
    }
.end annotation


# instance fields
.field private A:Ljava/lang/Object;

.field private B:Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;

.field private C:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/facebook/orca/server/OperationResult;",
            ">;"
        }
    .end annotation
.end field

.field private D:Lcom/facebook/orca/activity/FbFragmentActivity;

.field private final f:Lcom/facebook/orca/database/DbUsersPropertyUtil;

.field private final g:Lcom/facebook/orca/contacts/picker/FriendListPickerCache;

.field private final h:Lcom/facebook/orca/contacts/favorites/FavoriteContactsCache;

.field private final i:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/orca/users/FacebookUserIterator;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Lcom/facebook/orca/presence/PresenceManager;

.field private final k:Lcom/facebook/orca/activity/SafeLocalBroadcastReceiver;

.field private final l:Lcom/facebook/orca/presence/PresenceManager$OnPresenceReceivedListener;

.field private final t:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final u:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final v:Lcom/facebook/orca/ops/OrcaServiceOperationFactory;

.field private final w:Lcom/facebook/orca/common/util/AndroidThreadUtil;

.field private final x:Lcom/facebook/orca/contacts/picker/FriendListsLoader$LoaderParams;

.field private y:Lcom/facebook/orca/contacts/picker/FriendListsLoader$Result;

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/orca/database/DbUsersPropertyUtil;Lcom/facebook/orca/contacts/picker/FriendListPickerCache;Lcom/facebook/orca/contacts/favorites/FavoriteContactsCache;Ljavax/inject/Provider;Lcom/facebook/orca/presence/PresenceManager;Lcom/facebook/orca/ops/OrcaServiceOperationFactory;Ljavax/inject/Provider;Ljavax/inject/Provider;Lcom/facebook/orca/common/util/AndroidThreadUtil;Lcom/facebook/orca/contacts/picker/FriendListsLoader$LoaderParams;)V
    .locals 2
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
            "Lcom/facebook/orca/database/DbUsersPropertyUtil;",
            "Lcom/facebook/orca/contacts/picker/FriendListPickerCache;",
            "Lcom/facebook/orca/contacts/favorites/FavoriteContactsCache;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/orca/users/FacebookUserIterator;",
            ">;",
            "Lcom/facebook/orca/presence/PresenceManager;",
            "Lcom/facebook/orca/ops/OrcaServiceOperationFactory;",
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/facebook/orca/common/util/AndroidThreadUtil;",
            "Lcom/facebook/orca/contacts/picker/FriendListsLoader$LoaderParams;",
            ")V"
        }
    .end annotation

    .prologue
    .line 186
    invoke-direct {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/orca/contacts/picker/FriendListsLoader;->z:Z

    .line 120
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/FriendListsLoader;->A:Ljava/lang/Object;

    .line 188
    iput-object p2, p0, Lcom/facebook/orca/contacts/picker/FriendListsLoader;->f:Lcom/facebook/orca/database/DbUsersPropertyUtil;

    .line 189
    iput-object p10, p0, Lcom/facebook/orca/contacts/picker/FriendListsLoader;->w:Lcom/facebook/orca/common/util/AndroidThreadUtil;

    .line 190
    iput-object p3, p0, Lcom/facebook/orca/contacts/picker/FriendListsLoader;->g:Lcom/facebook/orca/contacts/picker/FriendListPickerCache;

    .line 191
    iput-object p4, p0, Lcom/facebook/orca/contacts/picker/FriendListsLoader;->h:Lcom/facebook/orca/contacts/favorites/FavoriteContactsCache;

    .line 192
    iput-object p5, p0, Lcom/facebook/orca/contacts/picker/FriendListsLoader;->i:Ljavax/inject/Provider;

    .line 193
    iput-object p6, p0, Lcom/facebook/orca/contacts/picker/FriendListsLoader;->j:Lcom/facebook/orca/presence/PresenceManager;

    .line 194
    iput-object p8, p0, Lcom/facebook/orca/contacts/picker/FriendListsLoader;->t:Ljavax/inject/Provider;

    .line 195
    iput-object p9, p0, Lcom/facebook/orca/contacts/picker/FriendListsLoader;->u:Ljavax/inject/Provider;

    .line 196
    iput-object p7, p0, Lcom/facebook/orca/contacts/picker/FriendListsLoader;->v:Lcom/facebook/orca/ops/OrcaServiceOperationFactory;

    .line 198
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 199
    const-string v1, "com.facebook.orca.ACTION_FRIEND_SYNC_PROGRESS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 200
    const-string v1, "com.facebook.orca.FAVORITE_CONTACT_SYNC_PROGRESS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 201
    new-instance v1, Lcom/facebook/orca/contacts/picker/FriendListsLoader$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/facebook/orca/contacts/picker/FriendListsLoader$1;-><init>(Lcom/facebook/orca/contacts/picker/FriendListsLoader;Landroid/content/Context;Landroid/content/IntentFilter;)V

    iput-object v1, p0, Lcom/facebook/orca/contacts/picker/FriendListsLoader;->k:Lcom/facebook/orca/activity/SafeLocalBroadcastReceiver;

    .line 209
    new-instance v0, Lcom/facebook/orca/contacts/picker/FriendListsLoader$2;

    invoke-direct {v0, p0}, Lcom/facebook/orca/contacts/picker/FriendListsLoader$2;-><init>(Lcom/facebook/orca/contacts/picker/FriendListsLoader;)V

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/FriendListsLoader;->l:Lcom/facebook/orca/presence/PresenceManager$OnPresenceReceivedListener;

    .line 216
    iput-object p11, p0, Lcom/facebook/orca/contacts/picker/FriendListsLoader;->x:Lcom/facebook/orca/contacts/picker/FriendListsLoader$LoaderParams;

    .line 217
    return-void
.end method

.method private A()V
    .locals 2

    .prologue
    .line 555
    const-string v0, "orca:FriendListsLoader"

    const-string v1, "onPresenceReceived"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    invoke-virtual {p0}, Lcom/facebook/orca/contacts/picker/FriendListsLoader;->u()V

    .line 557
    return-void
.end method

.method private B()Lcom/google/common/collect/ImmutableList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/users/User;",
            ">;"
        }
    .end annotation

    .prologue
    .line 560
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/FriendListsLoader;->t:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 561
    const-string v0, "getFavoriteFriends"

    invoke-static {v0}, Lcom/facebook/orca/debug/Tracer;->a(Ljava/lang/String;)Lcom/facebook/orca/debug/Tracer;

    move-result-object v2

    .line 562
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->f()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v3

    .line 563
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/FriendListsLoader;->i:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/FacebookUserIterator;

    .line 564
    invoke-interface {v0}, Lcom/facebook/orca/users/FacebookUserIterator;->b()V

    .line 566
    :try_start_0
    const-string v1, "#fetch"

    invoke-static {v1}, Lcom/facebook/orca/debug/Tracer;->a(Ljava/lang/String;)Lcom/facebook/orca/debug/Tracer;

    move-result-object v1

    .line 568
    :goto_0
    invoke-interface {v0}, Lcom/facebook/orca/users/FacebookUserIterator;->c()Lcom/facebook/orca/users/User;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 569
    invoke-virtual {v3, v4}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 572
    :catch_0
    move-exception v1

    .line 573
    :try_start_1
    const-string v4, "orca:FriendListsLoader"

    const-string v5, "Exception reading favorite users"

    invoke-static {v4, v5, v1}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 575
    invoke-interface {v0}, Lcom/facebook/orca/users/FacebookUserIterator;->d()V

    .line 577
    :goto_1
    invoke-virtual {v2}, Lcom/facebook/orca/debug/Tracer;->a()J

    .line 578
    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableList$Builder;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 580
    :goto_2
    return-object v0

    .line 571
    :cond_0
    :try_start_2
    invoke-virtual {v1}, Lcom/facebook/orca/debug/Tracer;->a()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 575
    invoke-interface {v0}, Lcom/facebook/orca/users/FacebookUserIterator;->d()V

    goto :goto_1

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Lcom/facebook/orca/users/FacebookUserIterator;->d()V

    throw v1

    .line 580
    :cond_1
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private C()Lcom/google/common/collect/ImmutableList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/users/User;",
            ">;"
        }
    .end annotation

    .prologue
    .line 586
    const-string v0, "getTopFriends"

    invoke-static {v0}, Lcom/facebook/orca/debug/Tracer;->a(Ljava/lang/String;)Lcom/facebook/orca/debug/Tracer;

    move-result-object v2

    .line 587
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->f()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v3

    .line 588
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/FriendListsLoader;->i:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/FacebookUserIterator;

    .line 589
    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/FriendListsLoader;->x:Lcom/facebook/orca/contacts/picker/FriendListsLoader$LoaderParams;

    invoke-static {v1}, Lcom/facebook/orca/contacts/picker/FriendListsLoader$LoaderParams;->a(Lcom/facebook/orca/contacts/picker/FriendListsLoader$LoaderParams;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/facebook/orca/users/FacebookUserIterator;->a(I)V

    .line 591
    :try_start_0
    const-string v1, "#fetch"

    invoke-static {v1}, Lcom/facebook/orca/debug/Tracer;->a(Ljava/lang/String;)Lcom/facebook/orca/debug/Tracer;

    move-result-object v1

    .line 593
    :goto_0
    invoke-interface {v0}, Lcom/facebook/orca/users/FacebookUserIterator;->c()Lcom/facebook/orca/users/User;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 594
    invoke-virtual {v3, v4}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 597
    :catch_0
    move-exception v1

    .line 598
    :try_start_1
    const-string v4, "orca:FriendListsLoader"

    const-string v5, "Exception reading facebook users"

    invoke-static {v4, v5, v1}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 600
    invoke-interface {v0}, Lcom/facebook/orca/users/FacebookUserIterator;->d()V

    .line 602
    :goto_1
    invoke-virtual {v2}, Lcom/facebook/orca/debug/Tracer;->a()J

    .line 603
    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableList$Builder;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0

    .line 596
    :cond_0
    :try_start_2
    invoke-virtual {v1}, Lcom/facebook/orca/debug/Tracer;->a()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 600
    invoke-interface {v0}, Lcom/facebook/orca/users/FacebookUserIterator;->d()V

    goto :goto_1

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Lcom/facebook/orca/users/FacebookUserIterator;->d()V

    throw v1
.end method

.method private D()Lcom/google/common/collect/ImmutableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/users/User;",
            ">;"
        }
    .end annotation

    .prologue
    .line 608
    const-string v0, "getOnlineFriends"

    invoke-static {v0}, Lcom/facebook/orca/debug/Tracer;->a(Ljava/lang/String;)Lcom/facebook/orca/debug/Tracer;

    move-result-object v0

    .line 609
    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/FriendListsLoader;->j:Lcom/facebook/orca/presence/PresenceManager;

    invoke-virtual {v1}, Lcom/facebook/orca/presence/PresenceManager;->c()Ljava/util/Collection;

    move-result-object v1

    .line 610
    invoke-direct {p0, v1}, Lcom/facebook/orca/contacts/picker/FriendListsLoader;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    .line 611
    invoke-virtual {v0}, Lcom/facebook/orca/debug/Tracer;->a()J

    .line 612
    return-object v1
.end method

.method private E()Lcom/google/common/collect/ImmutableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/users/User;",
            ">;"
        }
    .end annotation

    .prologue
    .line 617
    const-string v0, "getMobileFriends"

    invoke-static {v0}, Lcom/facebook/orca/debug/Tracer;->a(Ljava/lang/String;)Lcom/facebook/orca/debug/Tracer;

    move-result-object v0

    .line 618
    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/FriendListsLoader;->j:Lcom/facebook/orca/presence/PresenceManager;

    invoke-virtual {v1}, Lcom/facebook/orca/presence/PresenceManager;->d()Ljava/util/Collection;

    move-result-object v1

    .line 619
    invoke-direct {p0, v1}, Lcom/facebook/orca/contacts/picker/FriendListsLoader;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    .line 620
    invoke-virtual {v0}, Lcom/facebook/orca/debug/Tracer;->a()J

    .line 621
    return-object v1
.end method

.method private a(Lcom/facebook/orca/contacts/picker/FriendListsLoader$Result;Lcom/facebook/orca/server/FetchLastActiveResult;)Lcom/facebook/orca/contacts/picker/FriendListsLoader$Result;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 308
    if-nez p1, :cond_0

    move-object v0, v4

    .line 349
    :goto_0
    return-object v0

    .line 312
    :cond_0
    const/4 v3, 0x0

    .line 313
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v6

    .line 314
    invoke-virtual {p2}, Lcom/facebook/orca/server/FetchLastActiveResult;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/User;

    .line 315
    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->c()Lcom/facebook/orca/users/UserKey;

    move-result-object v5

    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->y()Lcom/facebook/orca/users/LastActive;

    move-result-object v0

    invoke-interface {v6, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 318
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/orca/contacts/picker/FriendListsLoader$Result;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    .line 319
    invoke-virtual {p1}, Lcom/facebook/orca/contacts/picker/FriendListsLoader$Result;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    .line 321
    invoke-direct {p0, v1, v6}, Lcom/facebook/orca/contacts/picker/FriendListsLoader;->a(Lcom/google/common/collect/ImmutableList;Ljava/util/Map;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 325
    if-eq v0, v1, :cond_4

    .line 327
    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/FriendListsLoader;->h:Lcom/facebook/orca/contacts/favorites/FavoriteContactsCache;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/contacts/favorites/FavoriteContactsCache;->a(Lcom/google/common/collect/ImmutableList;)V

    move v1, v2

    .line 331
    :goto_2
    invoke-direct {p0, v5, v6}, Lcom/facebook/orca/contacts/picker/FriendListsLoader;->a(Lcom/google/common/collect/ImmutableList;Ljava/util/Map;)Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    .line 335
    if-eq v3, v5, :cond_3

    .line 337
    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/FriendListsLoader;->g:Lcom/facebook/orca/contacts/picker/FriendListPickerCache;

    invoke-virtual {v1, v3}, Lcom/facebook/orca/contacts/picker/FriendListPickerCache;->a(Lcom/google/common/collect/ImmutableList;)V

    move v1, v2

    move-object v2, v3

    .line 341
    :goto_3
    if-eqz v1, :cond_2

    .line 342
    new-instance v1, Lcom/facebook/orca/contacts/picker/FriendListsLoader$Result;

    invoke-virtual {p1}, Lcom/facebook/orca/contacts/picker/FriendListsLoader$Result;->c()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    invoke-virtual {p1}, Lcom/facebook/orca/contacts/picker/FriendListsLoader$Result;->d()Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/facebook/orca/contacts/picker/FriendListsLoader$Result;-><init>(Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;)V

    move-object v0, v1

    goto :goto_0

    :cond_2
    move-object v0, v4

    .line 349
    goto :goto_0

    :cond_3
    move-object v2, v5

    goto :goto_3

    :cond_4
    move-object v0, v1

    move v1, v3

    goto :goto_2
.end method

.method private a(Lcom/google/common/collect/ImmutableList;Ljava/util/Map;)Lcom/google/common/collect/ImmutableList;
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/users/User;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lcom/facebook/orca/users/UserKey;",
            "Lcom/facebook/orca/users/LastActive;",
            ">;)",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/users/User;",
            ">;"
        }
    .end annotation

    .prologue
    .line 376
    if-nez p1, :cond_1

    .line 377
    const/4 p1, 0x0

    .line 403
    :cond_0
    :goto_0
    return-object p1

    .line 379
    :cond_1
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 383
    const/4 v0, 0x0

    .line 384
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->f()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v3

    .line 387
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v0

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/User;

    .line 388
    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->c()Lcom/facebook/orca/users/UserKey;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/users/LastActive;

    .line 389
    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->y()Lcom/facebook/orca/users/LastActive;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 390
    invoke-virtual {v3, v0}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move v0, v2

    :goto_2
    move v2, v0

    .line 398
    goto :goto_1

    .line 392
    :cond_2
    new-instance v2, Lcom/facebook/orca/users/UserBuilder;

    invoke-direct {v2}, Lcom/facebook/orca/users/UserBuilder;-><init>()V

    .line 393
    invoke-virtual {v2, v0}, Lcom/facebook/orca/users/UserBuilder;->a(Lcom/facebook/orca/users/User;)Lcom/facebook/orca/users/UserBuilder;

    .line 394
    invoke-virtual {v2, v1}, Lcom/facebook/orca/users/UserBuilder;->a(Lcom/facebook/orca/users/LastActive;)Lcom/facebook/orca/users/UserBuilder;

    .line 395
    invoke-virtual {v2}, Lcom/facebook/orca/users/UserBuilder;->t()Lcom/facebook/orca/users/User;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 396
    const/4 v0, 0x1

    goto :goto_2

    .line 400
    :cond_3
    if-eqz v2, :cond_0

    .line 401
    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableList$Builder;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    goto :goto_0
.end method

.method private a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/facebook/orca/users/UserKey;",
            ">;)",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/users/User;",
            ">;"
        }
    .end annotation

    .prologue
    .line 625
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->f()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v2

    .line 626
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/FriendListsLoader;->i:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/FacebookUserIterator;

    .line 627
    invoke-interface {v0, p1}, Lcom/facebook/orca/users/FacebookUserIterator;->a(Ljava/util/Collection;)V

    .line 630
    :goto_0
    :try_start_0
    invoke-interface {v0}, Lcom/facebook/orca/users/FacebookUserIterator;->c()Lcom/facebook/orca/users/User;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 631
    invoke-virtual {v2, v1}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 633
    :catch_0
    move-exception v1

    .line 634
    :try_start_1
    const-string v3, "orca:FriendListsLoader"

    const-string v4, "Exception reading facebook users"

    invoke-static {v3, v4, v1}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 636
    invoke-interface {v0}, Lcom/facebook/orca/users/FacebookUserIterator;->d()V

    .line 638
    :goto_1
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList$Builder;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0

    .line 636
    :cond_0
    invoke-interface {v0}, Lcom/facebook/orca/users/FacebookUserIterator;->d()V

    goto :goto_1

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Lcom/facebook/orca/users/FacebookUserIterator;->d()V

    throw v1
.end method

.method private a(Lcom/facebook/orca/contacts/picker/FriendListsLoader$Result;)V
    .locals 2
    .parameter

    .prologue
    .line 354
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/FriendListsLoader;->w:Lcom/facebook/orca/common/util/AndroidThreadUtil;

    new-instance v1, Lcom/facebook/orca/contacts/picker/FriendListsLoader$5;

    invoke-direct {v1, p0, p1}, Lcom/facebook/orca/contacts/picker/FriendListsLoader$5;-><init>(Lcom/facebook/orca/contacts/picker/FriendListsLoader;Lcom/facebook/orca/contacts/picker/FriendListsLoader$Result;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/common/util/AndroidThreadUtil;->b(Ljava/lang/Runnable;)V

    .line 363
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/contacts/picker/FriendListsLoader;)V
    .locals 0
    .parameter

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/facebook/orca/contacts/picker/FriendListsLoader;->A()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/contacts/picker/FriendListsLoader;Lcom/facebook/orca/server/OperationResult;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/facebook/orca/contacts/picker/FriendListsLoader;->a(Lcom/facebook/orca/server/OperationResult;)V

    return-void
.end method

.method private a(Lcom/facebook/orca/server/OperationResult;)V
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 259
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationResult;->h()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/FetchLastActiveResult;

    .line 263
    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchLastActiveResult;->d()Lcom/facebook/orca/server/DataFreshnessResult;

    move-result-object v2

    sget-object v3, Lcom/facebook/orca/server/DataFreshnessResult;->FROM_SERVER:Lcom/facebook/orca/server/DataFreshnessResult;

    if-ne v2, v3, :cond_4

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchLastActiveResult;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 269
    iget-object v2, p0, Lcom/facebook/orca/contacts/picker/FriendListsLoader;->A:Ljava/lang/Object;

    monitor-enter v2

    .line 273
    :goto_0
    :try_start_0
    iget-boolean v3, p0, Lcom/facebook/orca/contacts/picker/FriendListsLoader;->z:Z

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/facebook/orca/contacts/picker/FriendListsLoader;->k()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 274
    iget-object v3, p0, Lcom/facebook/orca/contacts/picker/FriendListsLoader;->A:Ljava/lang/Object;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 282
    :catch_0
    move-exception v0

    .line 283
    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 285
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 277
    :cond_0
    :try_start_2
    iget-boolean v3, p0, Lcom/facebook/orca/contacts/picker/FriendListsLoader;->z:Z

    if-nez v3, :cond_3

    invoke-virtual {p0}, Lcom/facebook/orca/contacts/picker/FriendListsLoader;->k()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 278
    iget-object v3, p0, Lcom/facebook/orca/contacts/picker/FriendListsLoader;->y:Lcom/facebook/orca/contacts/picker/FriendListsLoader$Result;

    .line 279
    invoke-direct {p0, v3, v0}, Lcom/facebook/orca/contacts/picker/FriendListsLoader;->a(Lcom/facebook/orca/contacts/picker/FriendListsLoader$Result;Lcom/facebook/orca/server/FetchLastActiveResult;)Lcom/facebook/orca/contacts/picker/FriendListsLoader$Result;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    .line 285
    :goto_1
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 289
    :goto_2
    invoke-virtual {p0}, Lcom/facebook/orca/contacts/picker/FriendListsLoader;->k()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 290
    if-eqz v0, :cond_2

    .line 291
    invoke-direct {p0, v0}, Lcom/facebook/orca/contacts/picker/FriendListsLoader;->a(Lcom/facebook/orca/contacts/picker/FriendListsLoader$Result;)V

    .line 296
    :cond_1
    :goto_3
    return-void

    .line 293
    :cond_2
    new-instance v0, Lcom/facebook/orca/contacts/picker/FriendListsLoader$Result;

    const/4 v5, 0x0

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/orca/contacts/picker/FriendListsLoader$Result;-><init>(Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;Z)V

    invoke-direct {p0, v0}, Lcom/facebook/orca/contacts/picker/FriendListsLoader;->a(Lcom/facebook/orca/contacts/picker/FriendListsLoader$Result;)V

    goto :goto_3

    :cond_3
    move-object v0, v1

    goto :goto_1

    :cond_4
    move-object v0, v1

    goto :goto_2
.end method

.method static synthetic b(Lcom/facebook/orca/contacts/picker/FriendListsLoader;)Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/FriendListsLoader;->B:Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;

    return-object v0
.end method

.method private w()Z
    .locals 3

    .prologue
    .line 235
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/FriendListsLoader;->B:Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/FriendListsLoader;->B:Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;

    invoke-virtual {v0}, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    const/4 v0, 0x0

    .line 255
    :goto_0
    return v0

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/FriendListsLoader;->v:Lcom/facebook/orca/ops/OrcaServiceOperationFactory;

    const-string v1, "sync_top_last_active"

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/ops/OrcaServiceOperationFactory;->a(Ljava/lang/String;Landroid/os/Bundle;)Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/FriendListsLoader;->B:Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;

    .line 243
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/FriendListsLoader;->B:Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;

    invoke-virtual {v0}, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;->d()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/FriendListsLoader;->C:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 244
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/FriendListsLoader;->C:Lcom/google/common/util/concurrent/ListenableFuture;

    new-instance v1, Lcom/facebook/orca/contacts/picker/FriendListsLoader$4;

    invoke-direct {v1, p0}, Lcom/facebook/orca/contacts/picker/FriendListsLoader$4;-><init>(Lcom/facebook/orca/contacts/picker/FriendListsLoader;)V

    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/Futures;->a(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;)V

    .line 255
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private x()Z
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 442
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/FriendListsLoader;->f:Lcom/facebook/orca/database/DbUsersPropertyUtil;

    sget-object v1, Lcom/facebook/orca/database/DbProperties;->d:Lcom/facebook/orca/database/DbUserPropertyKey;

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/orca/database/DbUsersPropertyUtil;->a(Lcom/facebook/orca/common/util/TypedKey;J)J

    move-result-wide v0

    .line 444
    iget-object v2, p0, Lcom/facebook/orca/contacts/picker/FriendListsLoader;->f:Lcom/facebook/orca/database/DbUsersPropertyUtil;

    sget-object v3, Lcom/facebook/orca/database/DbProperties;->e:Lcom/facebook/orca/database/DbUserPropertyKey;

    invoke-virtual {v2, v3, v4, v5}, Lcom/facebook/orca/database/DbUsersPropertyUtil;->a(Lcom/facebook/orca/common/util/TypedKey;J)J

    move-result-wide v2

    .line 446
    cmp-long v0, v0, v4

    if-gtz v0, :cond_0

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private y()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 451
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/FriendListsLoader;->t:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/FriendListsLoader;->x:Lcom/facebook/orca/contacts/picker/FriendListsLoader$LoaderParams;

    invoke-virtual {v0}, Lcom/facebook/orca/contacts/picker/FriendListsLoader$LoaderParams;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 453
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/FriendListsLoader;->f:Lcom/facebook/orca/database/DbUsersPropertyUtil;

    sget-object v2, Lcom/facebook/orca/database/DbProperties;->f:Lcom/facebook/orca/database/DbUserPropertyKey;

    const-wide/16 v3, -0x1

    invoke-virtual {v0, v2, v3, v4}, Lcom/facebook/orca/database/DbUsersPropertyUtil;->a(Lcom/facebook/orca/common/util/TypedKey;J)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gez v0, :cond_0

    const/4 v0, 0x1

    .line 457
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 453
    goto :goto_0

    :cond_1
    move v0, v1

    .line 457
    goto :goto_0
.end method

.method private z()Lcom/facebook/orca/contacts/picker/FriendListsLoader$Result;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 503
    .line 508
    const-wide/16 v2, 0x3

    invoke-static {v2, v3}, Lcom/facebook/orca/debug/Tracer;->b(J)V

    .line 509
    const-string v0, "loadInBackground"

    invoke-static {v0}, Lcom/facebook/orca/debug/Tracer;->a(Ljava/lang/String;)Lcom/facebook/orca/debug/Tracer;

    move-result-object v4

    .line 510
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/FriendListsLoader;->x:Lcom/facebook/orca/contacts/picker/FriendListsLoader$LoaderParams;

    invoke-virtual {v0}, Lcom/facebook/orca/contacts/picker/FriendListsLoader$LoaderParams;->a()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 511
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/FriendListsLoader;->h:Lcom/facebook/orca/contacts/favorites/FavoriteContactsCache;

    invoke-virtual {v0}, Lcom/facebook/orca/contacts/favorites/FavoriteContactsCache;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 512
    if-nez v0, :cond_0

    .line 513
    invoke-direct {p0}, Lcom/facebook/orca/contacts/picker/FriendListsLoader;->B()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 514
    iget-object v2, p0, Lcom/facebook/orca/contacts/picker/FriendListsLoader;->h:Lcom/facebook/orca/contacts/favorites/FavoriteContactsCache;

    invoke-virtual {v2, v0}, Lcom/facebook/orca/contacts/favorites/FavoriteContactsCache;->a(Lcom/google/common/collect/ImmutableList;)V

    .line 518
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/facebook/orca/contacts/picker/FriendListsLoader;->x:Lcom/facebook/orca/contacts/picker/FriendListsLoader$LoaderParams;

    invoke-virtual {v2}, Lcom/facebook/orca/contacts/picker/FriendListsLoader$LoaderParams;->b()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 519
    iget-object v2, p0, Lcom/facebook/orca/contacts/picker/FriendListsLoader;->g:Lcom/facebook/orca/contacts/picker/FriendListPickerCache;

    invoke-virtual {v2}, Lcom/facebook/orca/contacts/picker/FriendListPickerCache;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    .line 520
    if-nez v2, :cond_1

    .line 521
    invoke-direct {p0}, Lcom/facebook/orca/contacts/picker/FriendListsLoader;->C()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    .line 522
    iget-object v3, p0, Lcom/facebook/orca/contacts/picker/FriendListsLoader;->g:Lcom/facebook/orca/contacts/picker/FriendListPickerCache;

    invoke-virtual {v3, v2}, Lcom/facebook/orca/contacts/picker/FriendListPickerCache;->a(Lcom/google/common/collect/ImmutableList;)V

    .line 526
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/facebook/orca/contacts/picker/FriendListsLoader;->x:Lcom/facebook/orca/contacts/picker/FriendListsLoader$LoaderParams;

    invoke-virtual {v3}, Lcom/facebook/orca/contacts/picker/FriendListsLoader$LoaderParams;->d()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 527
    iget-object v3, p0, Lcom/facebook/orca/contacts/picker/FriendListsLoader;->g:Lcom/facebook/orca/contacts/picker/FriendListPickerCache;

    invoke-virtual {v3}, Lcom/facebook/orca/contacts/picker/FriendListPickerCache;->b()Z

    move-result v5

    .line 528
    iget-object v3, p0, Lcom/facebook/orca/contacts/picker/FriendListsLoader;->g:Lcom/facebook/orca/contacts/picker/FriendListPickerCache;

    invoke-virtual {v3}, Lcom/facebook/orca/contacts/picker/FriendListPickerCache;->c()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    .line 529
    if-nez v5, :cond_2

    if-nez v3, :cond_3

    .line 530
    :cond_2
    invoke-direct {p0}, Lcom/facebook/orca/contacts/picker/FriendListsLoader;->D()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    .line 531
    iget-object v5, p0, Lcom/facebook/orca/contacts/picker/FriendListsLoader;->g:Lcom/facebook/orca/contacts/picker/FriendListPickerCache;

    invoke-virtual {v5, v3}, Lcom/facebook/orca/contacts/picker/FriendListPickerCache;->b(Lcom/google/common/collect/ImmutableList;)V

    .line 535
    :cond_3
    :goto_2
    iget-object v5, p0, Lcom/facebook/orca/contacts/picker/FriendListsLoader;->x:Lcom/facebook/orca/contacts/picker/FriendListsLoader$LoaderParams;

    invoke-virtual {v5}, Lcom/facebook/orca/contacts/picker/FriendListsLoader$LoaderParams;->e()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 536
    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/FriendListsLoader;->g:Lcom/facebook/orca/contacts/picker/FriendListPickerCache;

    invoke-virtual {v1}, Lcom/facebook/orca/contacts/picker/FriendListPickerCache;->d()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    .line 537
    if-nez v1, :cond_4

    .line 538
    invoke-direct {p0}, Lcom/facebook/orca/contacts/picker/FriendListsLoader;->E()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    .line 539
    iget-object v5, p0, Lcom/facebook/orca/contacts/picker/FriendListsLoader;->g:Lcom/facebook/orca/contacts/picker/FriendListPickerCache;

    invoke-virtual {v5, v1}, Lcom/facebook/orca/contacts/picker/FriendListPickerCache;->c(Lcom/google/common/collect/ImmutableList;)V

    .line 543
    :cond_4
    invoke-virtual {v4}, Lcom/facebook/orca/debug/Tracer;->a()J

    .line 544
    const-string v4, "orca:FriendListsLoader"

    invoke-static {v4}, Lcom/facebook/orca/debug/Tracer;->c(Ljava/lang/String;)V

    .line 546
    new-instance v4, Lcom/facebook/orca/contacts/picker/FriendListsLoader$Result;

    invoke-direct {v4, v0, v2, v3, v1}, Lcom/facebook/orca/contacts/picker/FriendListsLoader$Result;-><init>(Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;)V

    return-object v4

    :cond_5
    move-object v3, v1

    goto :goto_2

    :cond_6
    move-object v2, v1

    goto :goto_1

    :cond_7
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/facebook/orca/activity/FbFragmentActivity;)V
    .locals 2
    .parameter

    .prologue
    .line 220
    iput-object p1, p0, Lcom/facebook/orca/contacts/picker/FriendListsLoader;->D:Lcom/facebook/orca/activity/FbFragmentActivity;

    .line 224
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/FriendListsLoader;->D:Lcom/facebook/orca/activity/FbFragmentActivity;

    new-instance v1, Lcom/facebook/orca/contacts/picker/FriendListsLoader$3;

    invoke-direct {v1, p0}, Lcom/facebook/orca/contacts/picker/FriendListsLoader$3;-><init>(Lcom/facebook/orca/contacts/picker/FriendListsLoader;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/activity/FbFragmentActivity;->a(Lcom/facebook/dispose/Disposable;)V

    .line 232
    return-void
.end method

.method public synthetic d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/facebook/orca/contacts/picker/FriendListsLoader;->f()Lcom/facebook/orca/contacts/picker/FriendListsLoader$Result;

    move-result-object v0

    return-object v0
.end method

.method public f()Lcom/facebook/orca/contacts/picker/FriendListsLoader$Result;
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x0

    .line 462
    invoke-direct {p0}, Lcom/facebook/orca/contacts/picker/FriendListsLoader;->x()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 464
    const-string v1, "orca:FriendListsLoader"

    const-string v2, "Waiting for friends"

    invoke-static {v1, v2}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    :goto_0
    return-object v0

    .line 468
    :cond_0
    invoke-direct {p0}, Lcom/facebook/orca/contacts/picker/FriendListsLoader;->y()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 469
    const-string v1, "orca:FriendListsLoader"

    const-string v2, "Waiting for favorites"

    invoke-static {v1, v2}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 475
    :cond_1
    iget-object v6, p0, Lcom/facebook/orca/contacts/picker/FriendListsLoader;->A:Ljava/lang/Object;

    monitor-enter v6

    .line 477
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/facebook/orca/contacts/picker/FriendListsLoader;->z:Z

    .line 481
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/FriendListsLoader;->x:Lcom/facebook/orca/contacts/picker/FriendListsLoader$LoaderParams;

    invoke-virtual {v0}, Lcom/facebook/orca/contacts/picker/FriendListsLoader$LoaderParams;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/FriendListsLoader;->u:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 482
    invoke-direct {p0}, Lcom/facebook/orca/contacts/picker/FriendListsLoader;->w()Z

    move-result v5

    .line 485
    :cond_2
    invoke-direct {p0}, Lcom/facebook/orca/contacts/picker/FriendListsLoader;->z()Lcom/facebook/orca/contacts/picker/FriendListsLoader$Result;

    move-result-object v4

    .line 488
    new-instance v0, Lcom/facebook/orca/contacts/picker/FriendListsLoader$Result;

    invoke-virtual {v4}, Lcom/facebook/orca/contacts/picker/FriendListsLoader$Result;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v4}, Lcom/facebook/orca/contacts/picker/FriendListsLoader$Result;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-virtual {v4}, Lcom/facebook/orca/contacts/picker/FriendListsLoader$Result;->c()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    invoke-virtual {v4}, Lcom/facebook/orca/contacts/picker/FriendListsLoader$Result;->d()Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    invoke-direct/range {v0 .. v5}, Lcom/facebook/orca/contacts/picker/FriendListsLoader$Result;-><init>(Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;Z)V

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/FriendListsLoader;->y:Lcom/facebook/orca/contacts/picker/FriendListsLoader$Result;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 491
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/facebook/orca/contacts/picker/FriendListsLoader;->z:Z

    .line 496
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/FriendListsLoader;->A:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 497
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 499
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/FriendListsLoader;->y:Lcom/facebook/orca/contacts/picker/FriendListsLoader$Result;

    goto :goto_0

    .line 491
    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    :try_start_2
    iput-boolean v1, p0, Lcom/facebook/orca/contacts/picker/FriendListsLoader;->z:Z

    throw v0

    .line 497
    :catchall_1
    move-exception v0

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method protected g()V
    .locals 2

    .prologue
    .line 411
    invoke-super {p0}, Landroid/support/v4/content/AsyncTaskLoader;->g()V

    .line 412
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/FriendListsLoader;->y:Lcom/facebook/orca/contacts/picker/FriendListsLoader$Result;

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/FriendListsLoader;->y:Lcom/facebook/orca/contacts/picker/FriendListsLoader$Result;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/contacts/picker/FriendListsLoader;->b(Ljava/lang/Object;)V

    .line 417
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/FriendListsLoader;->y:Lcom/facebook/orca/contacts/picker/FriendListsLoader$Result;

    if-nez v0, :cond_1

    .line 418
    invoke-virtual {p0}, Lcom/facebook/orca/contacts/picker/FriendListsLoader;->o()V

    .line 421
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/FriendListsLoader;->k:Lcom/facebook/orca/activity/SafeLocalBroadcastReceiver;

    invoke-virtual {v0}, Lcom/facebook/orca/activity/SafeLocalBroadcastReceiver;->a()V

    .line 422
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/FriendListsLoader;->x:Lcom/facebook/orca/contacts/picker/FriendListsLoader$LoaderParams;

    invoke-virtual {v0}, Lcom/facebook/orca/contacts/picker/FriendListsLoader$LoaderParams;->e()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/FriendListsLoader;->x:Lcom/facebook/orca/contacts/picker/FriendListsLoader$LoaderParams;

    invoke-virtual {v0}, Lcom/facebook/orca/contacts/picker/FriendListsLoader$LoaderParams;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 423
    :cond_2
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/FriendListsLoader;->j:Lcom/facebook/orca/presence/PresenceManager;

    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/FriendListsLoader;->l:Lcom/facebook/orca/presence/PresenceManager$OnPresenceReceivedListener;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/presence/PresenceManager;->a(Lcom/facebook/orca/presence/PresenceManager$OnPresenceReceivedListener;)V

    .line 425
    :cond_3
    return-void
.end method

.method protected h()V
    .locals 0

    .prologue
    .line 429
    invoke-super {p0}, Landroid/support/v4/content/AsyncTaskLoader;->h()V

    .line 430
    invoke-virtual {p0}, Lcom/facebook/orca/contacts/picker/FriendListsLoader;->b()Z

    .line 431
    return-void
.end method

.method protected i()V
    .locals 2

    .prologue
    .line 435
    invoke-virtual {p0}, Lcom/facebook/orca/contacts/picker/FriendListsLoader;->h()V

    .line 436
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/FriendListsLoader;->y:Lcom/facebook/orca/contacts/picker/FriendListsLoader$Result;

    .line 437
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/FriendListsLoader;->k:Lcom/facebook/orca/activity/SafeLocalBroadcastReceiver;

    invoke-virtual {v0}, Lcom/facebook/orca/activity/SafeLocalBroadcastReceiver;->b()V

    .line 438
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/FriendListsLoader;->j:Lcom/facebook/orca/presence/PresenceManager;

    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/FriendListsLoader;->l:Lcom/facebook/orca/presence/PresenceManager$OnPresenceReceivedListener;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/presence/PresenceManager;->b(Lcom/facebook/orca/presence/PresenceManager$OnPresenceReceivedListener;)V

    .line 439
    return-void
.end method

.method public v()V
    .locals 2

    .prologue
    .line 550
    const-string v0, "orca:FriendListsLoader"

    const-string v1, "onFriendSyncProgress"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    invoke-virtual {p0}, Lcom/facebook/orca/contacts/picker/FriendListsLoader;->u()V

    .line 552
    return-void
.end method
