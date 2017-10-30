.class public Lcom/facebook/orca/database/DbServiceHandler;
.super Lcom/facebook/orca/server/AbstractOrcaServiceHandlerFilter;
.source "DbServiceHandler.java"


# instance fields
.field private a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/String;

.field private final c:Lcom/facebook/orca/app/OrcaActivityBroadcaster;

.field private final d:Lcom/facebook/orca/cache/DataCache;

.field private final e:Lcom/facebook/orca/database/DbFetchThreadsHandler;

.field private final f:Lcom/facebook/orca/database/DbFetchThreadHandler;

.field private final g:Lcom/facebook/orca/database/DbInsertThreadsHandler;

.field private final h:Lcom/facebook/orca/database/DbInsertThreadUsersHandler;

.field private final i:Lcom/facebook/orca/database/DbThreadsPropertyUtil;

.field private final j:Lcom/facebook/orca/database/ThreadsDatabaseSupplier;

.field private final k:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

.field private final l:Lcom/facebook/orca/appconfig/AppConfigSerialization;

.field private final m:Lcom/facebook/orca/threads/MessagesCollectionMerger;

.field private final n:Lcom/facebook/orca/app/OrcaDataManager;

.field private final o:Lcom/facebook/orca/database/DbCache;

.field private final p:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/facebook/orca/app/OrcaActivityBroadcaster;Lcom/facebook/orca/cache/DataCache;Lcom/facebook/orca/database/DbFetchThreadsHandler;Lcom/facebook/orca/database/DbFetchThreadHandler;Lcom/facebook/orca/database/DbInsertThreadsHandler;Lcom/facebook/orca/database/DbInsertThreadUsersHandler;Lcom/facebook/orca/database/DbThreadsPropertyUtil;Lcom/facebook/orca/database/ThreadsDatabaseSupplier;Lcom/facebook/orca/prefs/OrcaSharedPreferences;Lcom/facebook/orca/appconfig/AppConfigSerialization;Lcom/facebook/orca/threads/MessagesCollectionMerger;Lcom/facebook/orca/app/OrcaDataManager;Lcom/facebook/orca/database/DbCache;Ljavax/inject/Provider;)V
    .locals 1
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
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/orca/app/OrcaActivityBroadcaster;",
            "Lcom/facebook/orca/cache/DataCache;",
            "Lcom/facebook/orca/database/DbFetchThreadsHandler;",
            "Lcom/facebook/orca/database/DbFetchThreadHandler;",
            "Lcom/facebook/orca/database/DbInsertThreadsHandler;",
            "Lcom/facebook/orca/database/DbInsertThreadUsersHandler;",
            "Lcom/facebook/orca/database/DbThreadsPropertyUtil;",
            "Lcom/facebook/orca/database/ThreadsDatabaseSupplier;",
            "Lcom/facebook/orca/prefs/OrcaSharedPreferences;",
            "Lcom/facebook/orca/appconfig/AppConfigSerialization;",
            "Lcom/facebook/orca/threads/MessagesCollectionMerger;",
            "Lcom/facebook/orca/app/OrcaDataManager;",
            "Lcom/facebook/orca/database/DbCache;",
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 103
    const-string v0, "DbServiceHandler"

    invoke-direct {p0, v0}, Lcom/facebook/orca/server/AbstractOrcaServiceHandlerFilter;-><init>(Ljava/lang/String;)V

    .line 68
    const-class v0, Lcom/facebook/orca/database/DbServiceHandler;

    iput-object v0, p0, Lcom/facebook/orca/database/DbServiceHandler;->a:Ljava/lang/Class;

    .line 71
    const-string v0, "messenger_client_sms_android"

    iput-object v0, p0, Lcom/facebook/orca/database/DbServiceHandler;->b:Ljava/lang/String;

    .line 104
    iput-object p1, p0, Lcom/facebook/orca/database/DbServiceHandler;->c:Lcom/facebook/orca/app/OrcaActivityBroadcaster;

    .line 105
    iput-object p2, p0, Lcom/facebook/orca/database/DbServiceHandler;->d:Lcom/facebook/orca/cache/DataCache;

    .line 106
    iput-object p3, p0, Lcom/facebook/orca/database/DbServiceHandler;->e:Lcom/facebook/orca/database/DbFetchThreadsHandler;

    .line 107
    iput-object p4, p0, Lcom/facebook/orca/database/DbServiceHandler;->f:Lcom/facebook/orca/database/DbFetchThreadHandler;

    .line 108
    iput-object p5, p0, Lcom/facebook/orca/database/DbServiceHandler;->g:Lcom/facebook/orca/database/DbInsertThreadsHandler;

    .line 109
    iput-object p6, p0, Lcom/facebook/orca/database/DbServiceHandler;->h:Lcom/facebook/orca/database/DbInsertThreadUsersHandler;

    .line 110
    iput-object p7, p0, Lcom/facebook/orca/database/DbServiceHandler;->i:Lcom/facebook/orca/database/DbThreadsPropertyUtil;

    .line 111
    iput-object p8, p0, Lcom/facebook/orca/database/DbServiceHandler;->j:Lcom/facebook/orca/database/ThreadsDatabaseSupplier;

    .line 112
    iput-object p9, p0, Lcom/facebook/orca/database/DbServiceHandler;->k:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    .line 113
    iput-object p10, p0, Lcom/facebook/orca/database/DbServiceHandler;->l:Lcom/facebook/orca/appconfig/AppConfigSerialization;

    .line 114
    iput-object p11, p0, Lcom/facebook/orca/database/DbServiceHandler;->m:Lcom/facebook/orca/threads/MessagesCollectionMerger;

    .line 115
    iput-object p12, p0, Lcom/facebook/orca/database/DbServiceHandler;->n:Lcom/facebook/orca/app/OrcaDataManager;

    .line 116
    iput-object p13, p0, Lcom/facebook/orca/database/DbServiceHandler;->o:Lcom/facebook/orca/database/DbCache;

    .line 117
    iput-object p14, p0, Lcom/facebook/orca/database/DbServiceHandler;->p:Ljavax/inject/Provider;

    .line 118
    return-void
.end method

.method private a(Lcom/facebook/orca/server/FetchThreadParams;Lcom/facebook/orca/server/FetchThreadResult;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/FetchThreadResult;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 626
    invoke-virtual {p2}, Lcom/facebook/orca/server/FetchThreadResult;->a()Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v0

    .line 627
    invoke-virtual {p2}, Lcom/facebook/orca/server/FetchThreadResult;->b()Lcom/facebook/orca/threads/MessagesCollection;

    move-result-object v1

    .line 629
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/facebook/orca/threads/MessagesCollection;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 631
    :cond_0
    const/4 p2, 0x0

    .line 650
    :cond_1
    :goto_0
    return-object p2

    .line 634
    :cond_2
    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchThreadParams;->b()Lcom/facebook/orca/server/DataFreshnessParam;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/server/DataFreshnessParam;->STALE_DATA_OKAY:Lcom/facebook/orca/server/DataFreshnessParam;

    if-eq v0, v1, :cond_1

    .line 640
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/orca/database/DbServiceHandler;->b(Lcom/facebook/orca/server/FetchThreadParams;Lcom/facebook/orca/server/FetchThreadResult;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/FetchThreadResult;

    move-result-object v0

    .line 642
    invoke-direct {p0, p1, v0, p3}, Lcom/facebook/orca/database/DbServiceHandler;->c(Lcom/facebook/orca/server/FetchThreadParams;Lcom/facebook/orca/server/FetchThreadResult;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/FetchThreadResult;

    .line 645
    iget-object v0, p0, Lcom/facebook/orca/database/DbServiceHandler;->f:Lcom/facebook/orca/database/DbFetchThreadHandler;

    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchThreadParams;->a()Lcom/facebook/orca/server/ThreadCriteria;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/orca/server/ThreadCriteria;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchThreadParams;->e()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/database/DbFetchThreadHandler;->a(Ljava/lang/String;I)Lcom/facebook/orca/server/FetchThreadResult;

    move-result-object v0

    .line 650
    new-instance p2, Lcom/facebook/orca/server/FetchThreadResult;

    sget-object v1, Lcom/facebook/orca/server/DataFreshnessResult;->FROM_SERVER:Lcom/facebook/orca/server/DataFreshnessResult;

    invoke-direct {p2, v1, v0}, Lcom/facebook/orca/server/FetchThreadResult;-><init>(Lcom/facebook/orca/server/DataFreshnessResult;Lcom/facebook/orca/server/FetchThreadResult;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Lcom/facebook/orca/server/OperationResult;)Lcom/facebook/orca/server/OperationResult;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 203
    invoke-virtual {p2}, Lcom/facebook/orca/server/OperationResult;->h()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/NewMessageResult;

    .line 204
    iget-object v1, p0, Lcom/facebook/orca/database/DbServiceHandler;->g:Lcom/facebook/orca/database/DbInsertThreadsHandler;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a(Lcom/facebook/orca/server/NewMessageResult;)Lcom/facebook/orca/server/NewMessageResult;

    move-result-object v0

    .line 205
    iget-object v1, p0, Lcom/facebook/orca/database/DbServiceHandler;->f:Lcom/facebook/orca/database/DbFetchThreadHandler;

    invoke-virtual {v1, p1}, Lcom/facebook/orca/database/DbFetchThreadHandler;->c(Ljava/lang/String;)Lcom/facebook/orca/threads/Message;

    move-result-object v1

    .line 206
    invoke-virtual {p2}, Lcom/facebook/orca/server/OperationResult;->g()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "result"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 207
    invoke-virtual {p2}, Lcom/facebook/orca/server/OperationResult;->g()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "threadId"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    invoke-virtual {p2}, Lcom/facebook/orca/server/OperationResult;->g()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "hasMoreQueuedMessages"

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 209
    return-object p2

    .line 208
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 895
    iget-object v0, p0, Lcom/facebook/orca/database/DbServiceHandler;->o:Lcom/facebook/orca/database/DbCache;

    invoke-virtual {v0}, Lcom/facebook/orca/database/DbCache;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 900
    :goto_0
    return-void

    .line 898
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/database/DbServiceHandler;->g:Lcom/facebook/orca/database/DbInsertThreadsHandler;

    invoke-virtual {v0}, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a()V

    .line 899
    iget-object v0, p0, Lcom/facebook/orca/database/DbServiceHandler;->o:Lcom/facebook/orca/database/DbCache;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/database/DbCache;->a(Z)V

    goto :goto_0
.end method

.method private a(Lcom/facebook/orca/appconfig/AppConfig;)V
    .locals 4
    .parameter

    .prologue
    .line 850
    if-nez p1, :cond_0

    .line 858
    :goto_0
    return-void

    .line 853
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/database/DbServiceHandler;->k:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-interface {v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->b()Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    move-result-object v0

    .line 854
    sget-object v1, Lcom/facebook/orca/prefs/ConfigPrefKeys;->c:Lcom/facebook/orca/prefs/PrefKey;

    iget-object v2, p0, Lcom/facebook/orca/database/DbServiceHandler;->l:Lcom/facebook/orca/appconfig/AppConfigSerialization;

    invoke-virtual {v2, p1}, Lcom/facebook/orca/appconfig/AppConfigSerialization;->a(Lcom/facebook/orca/appconfig/AppConfig;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a(Lcom/facebook/orca/prefs/PrefKey;Ljava/lang/String;)Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    .line 856
    sget-object v1, Lcom/facebook/orca/prefs/ConfigPrefKeys;->b:Lcom/facebook/orca/prefs/PrefKey;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a(Lcom/facebook/orca/prefs/PrefKey;J)Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    .line 857
    invoke-interface {v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a()V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 213
    iget-object v0, p0, Lcom/facebook/orca/database/DbServiceHandler;->g:Lcom/facebook/orca/database/DbInsertThreadsHandler;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a(Ljava/lang/String;)V

    .line 214
    return-void
.end method

.method private a(Landroid/os/Bundle;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 861
    if-nez p1, :cond_0

    move v0, v1

    .line 868
    :goto_0
    return v0

    .line 864
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/database/DbServiceHandler;->p:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "messenger_client_sms_android"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 866
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 868
    goto :goto_0
.end method

.method private a(Lcom/facebook/orca/server/DataFreshnessParam;Lcom/facebook/orca/server/FetchThreadResult;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 720
    sget-object v1, Lcom/facebook/orca/server/DataFreshnessParam;->CHECK_SERVER_FOR_NEW_DATA:Lcom/facebook/orca/server/DataFreshnessParam;

    if-ne p1, v1, :cond_1

    .line 724
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p2}, Lcom/facebook/orca/server/FetchThreadResult;->d()Lcom/facebook/orca/server/DataFreshnessResult;

    move-result-object v1

    sget-object v2, Lcom/facebook/orca/server/DataFreshnessResult;->FROM_CACHE_UP_TO_DATE:Lcom/facebook/orca/server/DataFreshnessResult;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Lcom/facebook/orca/server/FetchThreadParams;Lcom/facebook/orca/server/FetchThreadResult;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/FetchThreadResult;
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 658
    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchThreadParams;->b()Lcom/facebook/orca/server/DataFreshnessParam;

    move-result-object v0

    .line 659
    invoke-direct {p0, v0, p2}, Lcom/facebook/orca/database/DbServiceHandler;->a(Lcom/facebook/orca/server/DataFreshnessParam;Lcom/facebook/orca/server/FetchThreadResult;)Z

    move-result v0

    .line 662
    if-nez v0, :cond_0

    .line 708
    :goto_0
    return-object p2

    .line 668
    :cond_0
    invoke-virtual {p2}, Lcom/facebook/orca/server/FetchThreadResult;->b()Lcom/facebook/orca/threads/MessagesCollection;

    move-result-object v3

    .line 670
    invoke-virtual {v3}, Lcom/facebook/orca/threads/MessagesCollection;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/Message;

    .line 671
    invoke-virtual {v0}, Lcom/facebook/orca/threads/Message;->v()Z

    move-result v2

    if-nez v2, :cond_1

    move-object v2, v0

    .line 677
    :goto_1
    const-wide/16 v0, -0x1

    .line 678
    if-eqz v2, :cond_2

    .line 679
    invoke-virtual {v2}, Lcom/facebook/orca/threads/Message;->c()J

    move-result-wide v0

    const-wide/16 v6, 0x1

    sub-long/2addr v0, v6

    .line 682
    :cond_2
    new-instance v2, Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    invoke-direct {v2}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;-><init>()V

    invoke-virtual {v2, p1}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->a(Lcom/facebook/orca/server/FetchThreadParams;)Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    move-result-object v2

    sget-object v4, Lcom/facebook/orca/server/DataFreshnessParam;->CHECK_SERVER_FOR_NEW_DATA:Lcom/facebook/orca/server/DataFreshnessParam;

    invoke-virtual {v2, v4}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->a(Lcom/facebook/orca/server/DataFreshnessParam;)Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->b(J)Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->g()Lcom/facebook/orca/server/FetchThreadParams;

    move-result-object v0

    .line 688
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 689
    const-string v2, "fetchThreadParams"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 690
    new-instance v0, Lcom/facebook/orca/server/OperationParams;

    const-string v2, "fetch_thread"

    invoke-direct {v0, v2, v1}, Lcom/facebook/orca/server/OperationParams;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-interface {p3, v0}, Lcom/facebook/orca/server/OrcaServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    .line 692
    invoke-virtual {v0}, Lcom/facebook/orca/server/OperationResult;->h()Landroid/os/Parcelable;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/facebook/orca/server/FetchThreadResult;

    .line 694
    iget-object v0, p0, Lcom/facebook/orca/database/DbServiceHandler;->j:Lcom/facebook/orca/database/ThreadsDatabaseSupplier;

    invoke-virtual {v0}, Lcom/facebook/orca/database/ThreadsDatabaseSupplier;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 695
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 697
    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/database/DbServiceHandler;->g:Lcom/facebook/orca/database/DbInsertThreadsHandler;

    invoke-virtual {v0, p2, v4}, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a(Lcom/facebook/orca/server/FetchThreadResult;Lcom/facebook/orca/server/FetchThreadResult;)V

    .line 698
    iget-object v0, p0, Lcom/facebook/orca/database/DbServiceHandler;->h:Lcom/facebook/orca/database/DbInsertThreadUsersHandler;

    invoke-virtual {v4}, Lcom/facebook/orca/server/FetchThreadResult;->c()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/facebook/orca/database/DbInsertThreadUsersHandler;->a(Ljava/util/List;)V

    .line 699
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 701
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 705
    iget-object v0, p0, Lcom/facebook/orca/database/DbServiceHandler;->m:Lcom/facebook/orca/threads/MessagesCollectionMerger;

    invoke-virtual {v4}, Lcom/facebook/orca/server/FetchThreadResult;->b()Lcom/facebook/orca/threads/MessagesCollection;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/facebook/orca/threads/MessagesCollectionMerger;->b(Lcom/facebook/orca/threads/MessagesCollection;Lcom/facebook/orca/threads/MessagesCollection;)Lcom/facebook/orca/threads/MessagesCollection;

    move-result-object v3

    .line 708
    new-instance v0, Lcom/facebook/orca/server/FetchThreadResult;

    sget-object v1, Lcom/facebook/orca/server/DataFreshnessResult;->FROM_SERVER:Lcom/facebook/orca/server/DataFreshnessResult;

    invoke-virtual {v4}, Lcom/facebook/orca/server/FetchThreadResult;->a()Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v2

    invoke-virtual {v4}, Lcom/facebook/orca/server/FetchThreadResult;->c()Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct/range {v0 .. v7}, Lcom/facebook/orca/server/FetchThreadResult;-><init>(Lcom/facebook/orca/server/DataFreshnessResult;Lcom/facebook/orca/threads/ThreadSummary;Lcom/facebook/orca/threads/MessagesCollection;Lcom/google/common/collect/ImmutableList;Lcom/facebook/orca/users/User;J)V

    move-object p2, v0

    goto/16 :goto_0

    .line 701
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    :cond_3
    move-object v2, v5

    goto/16 :goto_1
.end method

.method private b(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    .line 872
    if-nez p1, :cond_0

    .line 881
    :goto_0
    return-void

    .line 875
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/database/DbServiceHandler;->k:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-interface {v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->b()Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    move-result-object v1

    .line 876
    sget-object v0, Lcom/facebook/orca/prefs/ConfigPrefKeys;->g:Lcom/facebook/orca/prefs/PrefKey;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v1, v0, v2, v3}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a(Lcom/facebook/orca/prefs/PrefKey;J)Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    .line 877
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 878
    invoke-static {v0}, Lcom/facebook/orca/prefs/ConfigPrefKeys;->a(Ljava/lang/String;)Lcom/facebook/orca/prefs/PrefKey;

    move-result-object v3

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-interface {v1, v3, v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a(Lcom/facebook/orca/prefs/PrefKey;Z)Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    goto :goto_1

    .line 880
    :cond_1
    invoke-interface {v1}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a()V

    goto :goto_0
.end method

.method private c(Lcom/facebook/orca/server/FetchThreadParams;Lcom/facebook/orca/server/FetchThreadResult;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/FetchThreadResult;
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 734
    invoke-virtual {p2}, Lcom/facebook/orca/server/FetchThreadResult;->b()Lcom/facebook/orca/threads/MessagesCollection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/threads/MessagesCollection;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 776
    :cond_0
    :goto_0
    return-object p2

    .line 740
    :cond_1
    invoke-virtual {p2}, Lcom/facebook/orca/server/FetchThreadResult;->a()Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v8

    .line 741
    invoke-virtual {p2}, Lcom/facebook/orca/server/FetchThreadResult;->b()Lcom/facebook/orca/threads/MessagesCollection;

    move-result-object v7

    .line 742
    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchThreadParams;->a()Lcom/facebook/orca/server/ThreadCriteria;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/server/ThreadCriteria;->a()Ljava/lang/String;

    move-result-object v9

    .line 743
    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchThreadParams;->e()I

    move-result v0

    .line 744
    invoke-virtual {v7}, Lcom/facebook/orca/threads/MessagesCollection;->f()I

    move-result v1

    .line 745
    sub-int v6, v0, v1

    .line 748
    if-lez v6, :cond_0

    .line 752
    invoke-virtual {v7}, Lcom/facebook/orca/threads/MessagesCollection;->f()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v7, v0}, Lcom/facebook/orca/threads/MessagesCollection;->a(I)Lcom/facebook/orca/threads/Message;

    move-result-object v4

    .line 754
    new-instance v0, Lcom/facebook/orca/server/FetchMoreMessagesParams;

    invoke-static {v9}, Lcom/facebook/orca/server/ThreadCriteria;->a(Ljava/lang/String;)Lcom/facebook/orca/server/ThreadCriteria;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v4}, Lcom/facebook/orca/threads/Message;->c()J

    move-result-wide v4

    add-int/lit8 v6, v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/facebook/orca/server/FetchMoreMessagesParams;-><init>(Lcom/facebook/orca/server/ThreadCriteria;JJI)V

    .line 760
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 761
    const-string v2, "fetchMoreMessagesParams"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 762
    new-instance v0, Lcom/facebook/orca/server/OperationParams;

    const-string v2, "fetch_more_messages"

    invoke-direct {v0, v2, v1}, Lcom/facebook/orca/server/OperationParams;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-interface {p3, v0}, Lcom/facebook/orca/server/OrcaServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    .line 764
    invoke-virtual {v0}, Lcom/facebook/orca/server/OperationResult;->h()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/FetchMoreMessagesResult;

    .line 767
    iget-object v1, p0, Lcom/facebook/orca/database/DbServiceHandler;->g:Lcom/facebook/orca/database/DbInsertThreadsHandler;

    invoke-virtual {v1, v9, p2, v0}, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a(Ljava/lang/String;Lcom/facebook/orca/server/FetchThreadResult;Lcom/facebook/orca/server/FetchMoreMessagesResult;)V

    .line 771
    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchMoreMessagesResult;->a()Lcom/facebook/orca/threads/MessagesCollection;

    move-result-object v0

    .line 772
    iget-object v1, p0, Lcom/facebook/orca/database/DbServiceHandler;->m:Lcom/facebook/orca/threads/MessagesCollectionMerger;

    invoke-virtual {v1, v7, v0}, Lcom/facebook/orca/threads/MessagesCollectionMerger;->b(Lcom/facebook/orca/threads/MessagesCollection;Lcom/facebook/orca/threads/MessagesCollection;)Lcom/facebook/orca/threads/MessagesCollection;

    move-result-object v3

    .line 776
    new-instance v0, Lcom/facebook/orca/server/FetchThreadResult;

    sget-object v1, Lcom/facebook/orca/server/DataFreshnessResult;->FROM_SERVER:Lcom/facebook/orca/server/DataFreshnessResult;

    invoke-virtual {p2}, Lcom/facebook/orca/server/FetchThreadResult;->c()Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object v2, v8

    invoke-direct/range {v0 .. v7}, Lcom/facebook/orca/server/FetchThreadResult;-><init>(Lcom/facebook/orca/server/DataFreshnessResult;Lcom/facebook/orca/threads/ThreadSummary;Lcom/facebook/orca/threads/MessagesCollection;Lcom/google/common/collect/ImmutableList;Lcom/facebook/orca/users/User;J)V

    move-object p2, v0

    goto :goto_0
.end method

.method private c(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    .line 884
    if-nez p1, :cond_0

    .line 892
    :goto_0
    return-void

    .line 887
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/database/DbServiceHandler;->k:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-interface {v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->b()Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    move-result-object v1

    .line 888
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 889
    invoke-static {v0}, Lcom/facebook/orca/prefs/ConfigPrefKeys;->b(Ljava/lang/String;)Lcom/facebook/orca/prefs/PrefKey;

    move-result-object v3

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a(Lcom/facebook/orca/prefs/PrefKey;Ljava/lang/String;)Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    goto :goto_1

    .line 891
    :cond_1
    invoke-interface {v1}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a()V

    goto :goto_0
.end method


# virtual methods
.method protected a(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 231
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->a()Ljava/lang/String;

    move-result-object v6

    .line 232
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 233
    const-string v1, "fetchThreadListParams"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/FetchThreadListParams;

    .line 234
    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadListParams;->a()Lcom/facebook/orca/server/DataFreshnessParam;

    move-result-object v1

    .line 236
    const-string v4, "DbServiceHandler.handleFetchThreadList"

    invoke-static {v4}, Lcom/facebook/orca/debug/Tracer;->a(Ljava/lang/String;)Lcom/facebook/orca/debug/Tracer;

    move-result-object v7

    .line 240
    :try_start_0
    iget-object v4, p0, Lcom/facebook/orca/database/DbServiceHandler;->e:Lcom/facebook/orca/database/DbFetchThreadsHandler;

    invoke-virtual {v4, v0}, Lcom/facebook/orca/database/DbFetchThreadsHandler;->a(Lcom/facebook/orca/server/FetchThreadListParams;)Lcom/facebook/orca/server/FetchThreadListResult;

    move-result-object v4

    .line 244
    sget-object v5, Lcom/facebook/orca/database/DbServiceHandler$1;->a:[I

    invoke-virtual {v1}, Lcom/facebook/orca/server/DataFreshnessParam;->ordinal()I

    move-result v1

    aget v1, v5, v1

    packed-switch v1, :pswitch_data_0

    move v1, v3

    .line 265
    :goto_0
    if-eqz v1, :cond_2

    .line 267
    invoke-static {v4}, Lcom/facebook/orca/server/OperationResult;->a(Landroid/os/Parcelable;)Lcom/facebook/orca/server/OperationResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    .line 311
    :goto_1
    invoke-virtual {v7}, Lcom/facebook/orca/debug/Tracer;->a()J

    return-object v0

    .line 246
    :pswitch_0
    :try_start_1
    invoke-virtual {v4}, Lcom/facebook/orca/server/FetchThreadListResult;->d()Lcom/facebook/orca/server/DataFreshnessResult;

    move-result-object v1

    sget-object v5, Lcom/facebook/orca/server/DataFreshnessResult;->NO_DATA:Lcom/facebook/orca/server/DataFreshnessResult;

    if-eq v1, v5, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_0

    :pswitch_1
    move v1, v2

    .line 251
    goto :goto_0

    .line 255
    :pswitch_2
    invoke-virtual {v4}, Lcom/facebook/orca/server/FetchThreadListResult;->d()Lcom/facebook/orca/server/DataFreshnessResult;

    move-result-object v1

    sget-object v5, Lcom/facebook/orca/server/DataFreshnessResult;->FROM_CACHE_UP_TO_DATE:Lcom/facebook/orca/server/DataFreshnessResult;

    if-ne v1, v5, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_0

    .line 269
    :cond_2
    invoke-virtual {v4}, Lcom/facebook/orca/server/FetchThreadListResult;->k()J

    move-result-wide v4

    .line 270
    const-wide/16 v8, 0x0

    cmp-long v1, v4, v8

    if-lez v1, :cond_3

    move v3, v2

    .line 273
    :cond_3
    invoke-static {}, Lcom/facebook/orca/server/FetchThreadListParams;->newBuilder()Lcom/facebook/orca/server/FetchThreadListParamsBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/facebook/orca/server/FetchThreadListParamsBuilder;->a(Lcom/facebook/orca/server/FetchThreadListParams;)Lcom/facebook/orca/server/FetchThreadListParamsBuilder;

    move-result-object v1

    sget-object v2, Lcom/facebook/orca/server/DataFreshnessParam;->CHECK_SERVER_FOR_NEW_DATA:Lcom/facebook/orca/server/DataFreshnessParam;

    invoke-virtual {v1, v2}, Lcom/facebook/orca/server/FetchThreadListParamsBuilder;->a(Lcom/facebook/orca/server/DataFreshnessParam;)Lcom/facebook/orca/server/FetchThreadListParamsBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadListParams;->b()Lcom/facebook/orca/threads/FolderName;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/orca/server/FetchThreadListParamsBuilder;->a(Lcom/facebook/orca/threads/FolderName;)Lcom/facebook/orca/server/FetchThreadListParamsBuilder;

    move-result-object v8

    if-eqz v3, :cond_4

    move-wide v1, v4

    :goto_2
    invoke-virtual {v8, v1, v2}, Lcom/facebook/orca/server/FetchThreadListParamsBuilder;->a(J)Lcom/facebook/orca/server/FetchThreadListParamsBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/orca/server/FetchThreadListParamsBuilder;->f()Lcom/facebook/orca/server/FetchThreadListParams;

    move-result-object v1

    .line 279
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 280
    const-string v4, "fetchThreadListParams"

    invoke-virtual {v2, v4, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 282
    new-instance v1, Lcom/facebook/orca/server/OperationParams;

    invoke-direct {v1, v6, v2}, Lcom/facebook/orca/server/OperationParams;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-interface {p2, v1}, Lcom/facebook/orca/server/OrcaServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v2

    .line 284
    invoke-virtual {v2}, Lcom/facebook/orca/server/OperationResult;->h()Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/server/FetchThreadListResult;

    .line 285
    const-string v4, "DbServiceHandler.handleFetchThreadList#insertData"

    invoke-static {v4}, Lcom/facebook/orca/debug/Tracer;->a(Ljava/lang/String;)Lcom/facebook/orca/debug/Tracer;

    move-result-object v4

    .line 286
    iget-object v5, p0, Lcom/facebook/orca/database/DbServiceHandler;->j:Lcom/facebook/orca/database/ThreadsDatabaseSupplier;

    invoke-virtual {v5}, Lcom/facebook/orca/database/ThreadsDatabaseSupplier;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 287
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 289
    :try_start_2
    iget-object v6, p0, Lcom/facebook/orca/database/DbServiceHandler;->g:Lcom/facebook/orca/database/DbInsertThreadsHandler;

    invoke-virtual {v6, v1}, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a(Lcom/facebook/orca/server/FetchThreadListResult;)V

    .line 290
    iget-object v6, p0, Lcom/facebook/orca/database/DbServiceHandler;->h:Lcom/facebook/orca/database/DbInsertThreadUsersHandler;

    invoke-virtual {v1}, Lcom/facebook/orca/server/FetchThreadListResult;->c()Lcom/google/common/collect/ImmutableList;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/facebook/orca/database/DbInsertThreadUsersHandler;->a(Ljava/util/List;)V

    .line 291
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 293
    :try_start_3
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 294
    invoke-virtual {v4}, Lcom/facebook/orca/debug/Tracer;->a()J

    .line 296
    if-eqz v3, :cond_5

    .line 299
    iget-object v2, p0, Lcom/facebook/orca/database/DbServiceHandler;->e:Lcom/facebook/orca/database/DbFetchThreadsHandler;

    invoke-virtual {v2, v0}, Lcom/facebook/orca/database/DbFetchThreadsHandler;->a(Lcom/facebook/orca/server/FetchThreadListParams;)Lcom/facebook/orca/server/FetchThreadListResult;

    move-result-object v0

    .line 302
    invoke-static {}, Lcom/facebook/orca/server/FetchThreadListResult;->newBuilder()Lcom/facebook/orca/server/FetchThreadListResultBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/facebook/orca/server/FetchThreadListResultBuilder;->a(Lcom/facebook/orca/server/FetchThreadListResult;)Lcom/facebook/orca/server/FetchThreadListResultBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/facebook/orca/server/FetchThreadListResult;->i()Lcom/facebook/orca/notify/NotificationSetting;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/server/FetchThreadListResultBuilder;->a(Lcom/facebook/orca/notify/NotificationSetting;)Lcom/facebook/orca/server/FetchThreadListResultBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadListResultBuilder;->o()Lcom/facebook/orca/server/FetchThreadListResult;

    move-result-object v0

    .line 306
    invoke-static {v0}, Lcom/facebook/orca/server/OperationResult;->a(Landroid/os/Parcelable;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    goto/16 :goto_1

    .line 273
    :cond_4
    const-wide/16 v1, -0x1

    goto :goto_2

    .line 293
    :catchall_0
    move-exception v0

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 294
    invoke-virtual {v4}, Lcom/facebook/orca/debug/Tracer;->a()J

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 311
    :catchall_1
    move-exception v0

    invoke-virtual {v7}, Lcom/facebook/orca/debug/Tracer;->a()J

    throw v0

    :cond_5
    move-object v0, v2

    goto/16 :goto_1

    .line 244
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected b(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 319
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 320
    const-string v1, "fetchMoreThreadsParams"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/FetchMoreThreadsParams;

    .line 323
    iget-object v1, p0, Lcom/facebook/orca/database/DbServiceHandler;->e:Lcom/facebook/orca/database/DbFetchThreadsHandler;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/database/DbFetchThreadsHandler;->a(Lcom/facebook/orca/server/FetchMoreThreadsParams;)Lcom/facebook/orca/server/FetchMoreThreadsResult;

    move-result-object v1

    .line 325
    invoke-virtual {v1}, Lcom/facebook/orca/server/FetchMoreThreadsResult;->b()Lcom/facebook/orca/threads/ThreadsCollection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/orca/threads/ThreadsCollection;->c()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/facebook/orca/server/FetchMoreThreadsResult;->b()Lcom/facebook/orca/threads/ThreadsCollection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/orca/threads/ThreadsCollection;->e()I

    move-result v2

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchMoreThreadsParams;->c()I

    move-result v0

    if-ne v2, v0, :cond_1

    .line 327
    :cond_0
    invoke-static {v1}, Lcom/facebook/orca/server/OperationResult;->a(Landroid/os/Parcelable;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    .line 333
    :goto_0
    return-object v0

    .line 329
    :cond_1
    invoke-interface {p2, p1}, Lcom/facebook/orca/server/OrcaServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v1

    .line 330
    invoke-virtual {v1}, Lcom/facebook/orca/server/OperationResult;->h()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/FetchMoreThreadsResult;

    .line 331
    iget-object v2, p0, Lcom/facebook/orca/database/DbServiceHandler;->g:Lcom/facebook/orca/database/DbInsertThreadsHandler;

    invoke-virtual {v2, v0}, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a(Lcom/facebook/orca/server/FetchMoreThreadsResult;)V

    move-object v0, v1

    goto :goto_0
.end method

.method protected c(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 339
    invoke-direct {p0}, Lcom/facebook/orca/database/DbServiceHandler;->a()V

    .line 341
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 342
    const-string v1, "fetchThreadParams"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/FetchThreadParams;

    .line 343
    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadParams;->b()Lcom/facebook/orca/server/DataFreshnessParam;

    move-result-object v2

    .line 344
    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadParams;->e()I

    move-result v3

    .line 345
    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadParams;->a()Lcom/facebook/orca/server/ThreadCriteria;

    move-result-object v1

    .line 347
    const-string v4, "DbServiceHandler.handleFetchThread"

    invoke-static {v4}, Lcom/facebook/orca/debug/Tracer;->a(Ljava/lang/String;)Lcom/facebook/orca/debug/Tracer;

    move-result-object v4

    .line 350
    :try_start_0
    invoke-virtual {v1}, Lcom/facebook/orca/server/ThreadCriteria;->a()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 354
    iget-object v5, p0, Lcom/facebook/orca/database/DbServiceHandler;->f:Lcom/facebook/orca/database/DbFetchThreadHandler;

    invoke-virtual {v1}, Lcom/facebook/orca/server/ThreadCriteria;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1, v3}, Lcom/facebook/orca/database/DbFetchThreadHandler;->a(Ljava/lang/String;I)Lcom/facebook/orca/server/FetchThreadResult;

    move-result-object v1

    .line 368
    :goto_0
    sget-object v5, Lcom/facebook/orca/server/DataFreshnessParam;->DO_NOT_CHECK_SERVER:Lcom/facebook/orca/server/DataFreshnessParam;

    if-ne v2, v5, :cond_2

    .line 369
    invoke-static {v1}, Lcom/facebook/orca/server/OperationResult;->a(Landroid/os/Parcelable;)Lcom/facebook/orca/server/OperationResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 411
    :goto_1
    invoke-virtual {v4}, Lcom/facebook/orca/debug/Tracer;->a()J

    return-object v0

    .line 358
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Lcom/facebook/orca/server/ThreadCriteria;->b()Lcom/facebook/orca/users/UserKey;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 359
    iget-object v5, p0, Lcom/facebook/orca/database/DbServiceHandler;->f:Lcom/facebook/orca/database/DbFetchThreadHandler;

    invoke-virtual {v1}, Lcom/facebook/orca/server/ThreadCriteria;->b()Lcom/facebook/orca/users/UserKey;

    move-result-object v1

    invoke-virtual {v5, v1, v3}, Lcom/facebook/orca/database/DbFetchThreadHandler;->a(Lcom/facebook/orca/users/UserKey;I)Lcom/facebook/orca/server/FetchThreadResult;

    move-result-object v1

    goto :goto_0

    .line 364
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No threadid or userkey specified for thread fetch"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 411
    :catchall_0
    move-exception v0

    invoke-virtual {v4}, Lcom/facebook/orca/debug/Tracer;->a()J

    throw v0

    .line 372
    :cond_2
    :try_start_2
    invoke-direct {p0, v0, v1, p2}, Lcom/facebook/orca/database/DbServiceHandler;->a(Lcom/facebook/orca/server/FetchThreadParams;Lcom/facebook/orca/server/FetchThreadResult;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/FetchThreadResult;

    move-result-object v0

    .line 374
    if-eqz v0, :cond_3

    .line 375
    invoke-static {v0}, Lcom/facebook/orca/server/OperationResult;->a(Landroid/os/Parcelable;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    goto :goto_1

    .line 377
    :cond_3
    invoke-interface {p2, p1}, Lcom/facebook/orca/server/OrcaServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    .line 378
    invoke-virtual {v0}, Lcom/facebook/orca/server/OperationResult;->h()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/FetchThreadResult;

    .line 379
    iget-object v2, p0, Lcom/facebook/orca/database/DbServiceHandler;->j:Lcom/facebook/orca/database/ThreadsDatabaseSupplier;

    invoke-virtual {v2}, Lcom/facebook/orca/database/ThreadsDatabaseSupplier;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 380
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 382
    :try_start_3
    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadResult;->a()Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 383
    iget-object v5, p0, Lcom/facebook/orca/database/DbServiceHandler;->g:Lcom/facebook/orca/database/DbInsertThreadsHandler;

    invoke-virtual {v5, v1, v0}, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a(Lcom/facebook/orca/server/FetchThreadResult;Lcom/facebook/orca/server/FetchThreadResult;)V

    .line 385
    :cond_4
    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadResult;->c()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 386
    iget-object v1, p0, Lcom/facebook/orca/database/DbServiceHandler;->h:Lcom/facebook/orca/database/DbInsertThreadUsersHandler;

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadResult;->c()Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/facebook/orca/database/DbInsertThreadUsersHandler;->a(Ljava/util/List;)V

    .line 389
    :cond_5
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 391
    :try_start_4
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 394
    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadResult;->a()Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 397
    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadResult;->a()Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v0

    .line 398
    iget-object v1, p0, Lcom/facebook/orca/database/DbServiceHandler;->f:Lcom/facebook/orca/database/DbFetchThreadHandler;

    invoke-virtual {v1, v0, v3}, Lcom/facebook/orca/database/DbFetchThreadHandler;->a(Ljava/lang/String;I)Lcom/facebook/orca/server/FetchThreadResult;

    move-result-object v1

    .line 399
    new-instance v0, Lcom/facebook/orca/server/FetchThreadResult;

    sget-object v2, Lcom/facebook/orca/server/DataFreshnessResult;->FROM_SERVER:Lcom/facebook/orca/server/DataFreshnessResult;

    invoke-direct {v0, v2, v1}, Lcom/facebook/orca/server/FetchThreadResult;-><init>(Lcom/facebook/orca/server/DataFreshnessResult;Lcom/facebook/orca/server/FetchThreadResult;)V

    .line 406
    :goto_2
    invoke-static {v0}, Lcom/facebook/orca/server/OperationResult;->a(Landroid/os/Parcelable;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    goto :goto_1

    .line 391
    :catchall_1
    move-exception v0

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 401
    :cond_6
    new-instance v1, Lcom/facebook/orca/server/FetchThreadResult;

    sget-object v2, Lcom/facebook/orca/server/DataFreshnessResult;->FROM_SERVER:Lcom/facebook/orca/server/DataFreshnessResult;

    invoke-direct {v1, v2, v0}, Lcom/facebook/orca/server/FetchThreadResult;-><init>(Lcom/facebook/orca/server/DataFreshnessResult;Lcom/facebook/orca/server/FetchThreadResult;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v0, v1

    goto :goto_2
.end method

.method protected d(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/facebook/orca/database/DbServiceHandler;->a()V

    .line 125
    invoke-interface {p2, p1}, Lcom/facebook/orca/server/OrcaServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v1

    .line 126
    invoke-virtual {v1}, Lcom/facebook/orca/server/OperationResult;->h()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/FetchThreadResult;

    .line 127
    iget-object v2, p0, Lcom/facebook/orca/database/DbServiceHandler;->j:Lcom/facebook/orca/database/ThreadsDatabaseSupplier;

    invoke-virtual {v2}, Lcom/facebook/orca/database/ThreadsDatabaseSupplier;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 128
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 130
    :try_start_0
    iget-object v3, p0, Lcom/facebook/orca/database/DbServiceHandler;->g:Lcom/facebook/orca/database/DbInsertThreadsHandler;

    invoke-virtual {v3, v0}, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a(Lcom/facebook/orca/server/FetchThreadResult;)V

    .line 131
    iget-object v3, p0, Lcom/facebook/orca/database/DbServiceHandler;->h:Lcom/facebook/orca/database/DbInsertThreadUsersHandler;

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadResult;->c()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/orca/database/DbInsertThreadUsersHandler;->a(Ljava/util/List;)V

    .line 132
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 136
    return-object v1

    .line 134
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method protected e(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/facebook/orca/database/DbServiceHandler;->a()V

    .line 145
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 146
    const-string v1, "outgoingMessage"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/Message;

    .line 147
    iget-object v1, p0, Lcom/facebook/orca/database/DbServiceHandler;->g:Lcom/facebook/orca/database/DbInsertThreadsHandler;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a(Lcom/facebook/orca/threads/Message;)V

    .line 148
    iget-object v1, p0, Lcom/facebook/orca/database/DbServiceHandler;->g:Lcom/facebook/orca/database/DbInsertThreadsHandler;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/Message;->b()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a(Ljava/lang/String;Lcom/facebook/orca/compose/MessageDraft;)V

    .line 149
    invoke-static {}, Lcom/facebook/orca/server/OperationResult;->b()Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method protected f(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 182
    invoke-direct {p0}, Lcom/facebook/orca/database/DbServiceHandler;->a()V

    .line 184
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 185
    const-string v1, "threadId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 186
    iget-object v2, p0, Lcom/facebook/orca/database/DbServiceHandler;->f:Lcom/facebook/orca/database/DbFetchThreadHandler;

    invoke-virtual {v2, v1}, Lcom/facebook/orca/database/DbFetchThreadHandler;->c(Ljava/lang/String;)Lcom/facebook/orca/threads/Message;

    move-result-object v2

    .line 187
    if-nez v2, :cond_0

    .line 188
    invoke-static {}, Lcom/facebook/orca/server/OperationResult;->b()Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    .line 194
    :goto_0
    return-object v0

    .line 190
    :cond_0
    const-string v3, "outgoingMessage"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 193
    :try_start_0
    invoke-interface {p2, p1}, Lcom/facebook/orca/server/OrcaServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    .line 194
    invoke-direct {p0, v1, v0}, Lcom/facebook/orca/database/DbServiceHandler;->a(Ljava/lang/String;Lcom/facebook/orca/server/OperationResult;)Lcom/facebook/orca/server/OperationResult;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 195
    :catch_0
    move-exception v0

    .line 196
    invoke-direct {p0, v1}, Lcom/facebook/orca/database/DbServiceHandler;->a(Ljava/lang/String;)V

    .line 197
    new-instance v1, Lcom/facebook/orca/database/DbServiceHandler$SendMessageException;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lcom/facebook/orca/database/DbServiceHandler$SendMessageException;-><init>(Ljava/lang/Throwable;Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/database/DbServiceHandler$1;)V

    throw v1
.end method

.method protected g(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 219
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 220
    const-string v1, "addMembersParams"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/AddMembersParams;

    .line 221
    invoke-interface {p2, p1}, Lcom/facebook/orca/server/OrcaServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v1

    .line 222
    invoke-virtual {v1}, Lcom/facebook/orca/server/OperationResult;->h()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/FetchThreadResult;

    .line 223
    iget-object v2, p0, Lcom/facebook/orca/database/DbServiceHandler;->g:Lcom/facebook/orca/database/DbInsertThreadsHandler;

    invoke-virtual {v2, v0}, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a(Lcom/facebook/orca/server/FetchThreadResult;)V

    .line 224
    iget-object v2, p0, Lcom/facebook/orca/database/DbServiceHandler;->h:Lcom/facebook/orca/database/DbInsertThreadUsersHandler;

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadResult;->c()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/facebook/orca/database/DbInsertThreadUsersHandler;->a(Ljava/util/List;)V

    .line 225
    return-object v1
.end method

.method protected h(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 472
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 473
    const-string v1, "removeMemberParams"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/RemoveMemberParams;

    .line 474
    invoke-interface {p2, p1}, Lcom/facebook/orca/server/OrcaServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v1

    .line 475
    iget-object v0, p0, Lcom/facebook/orca/database/DbServiceHandler;->d:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v0}, Lcom/facebook/orca/cache/DataCache;->a()Lcom/facebook/orca/users/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->b()Ljava/lang/String;

    .line 476
    invoke-virtual {v1}, Lcom/facebook/orca/server/OperationResult;->h()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/FetchThreadResult;

    .line 477
    iget-object v2, p0, Lcom/facebook/orca/database/DbServiceHandler;->j:Lcom/facebook/orca/database/ThreadsDatabaseSupplier;

    invoke-virtual {v2}, Lcom/facebook/orca/database/ThreadsDatabaseSupplier;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 478
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 480
    :try_start_0
    iget-object v3, p0, Lcom/facebook/orca/database/DbServiceHandler;->g:Lcom/facebook/orca/database/DbInsertThreadsHandler;

    invoke-virtual {v3, v0}, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a(Lcom/facebook/orca/server/FetchThreadResult;)V

    .line 481
    iget-object v3, p0, Lcom/facebook/orca/database/DbServiceHandler;->h:Lcom/facebook/orca/database/DbInsertThreadUsersHandler;

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadResult;->c()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/orca/database/DbInsertThreadUsersHandler;->a(Ljava/util/List;)V

    .line 482
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 484
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 486
    return-object v1

    .line 484
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method protected i(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 493
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 494
    const-string v1, "markThreadParams"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/MarkThreadParams;

    .line 500
    iget-object v1, p0, Lcom/facebook/orca/database/DbServiceHandler;->g:Lcom/facebook/orca/database/DbInsertThreadsHandler;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a(Lcom/facebook/orca/server/MarkThreadParams;)V

    .line 502
    invoke-interface {p2, p1}, Lcom/facebook/orca/server/OrcaServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    .line 503
    return-object v0
.end method

.method protected j(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 510
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 511
    const-string v1, "readReceiptParams"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/ReadReceiptParams;

    .line 512
    iget-object v1, p0, Lcom/facebook/orca/database/DbServiceHandler;->g:Lcom/facebook/orca/database/DbInsertThreadsHandler;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a(Lcom/facebook/orca/server/ReadReceiptParams;)V

    .line 514
    iget-object v1, p0, Lcom/facebook/orca/database/DbServiceHandler;->f:Lcom/facebook/orca/database/DbFetchThreadHandler;

    invoke-virtual {v0}, Lcom/facebook/orca/server/ReadReceiptParams;->b()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/facebook/orca/database/DbFetchThreadHandler;->a(Ljava/lang/String;I)Lcom/facebook/orca/server/FetchThreadResult;

    move-result-object v0

    .line 516
    new-instance v1, Lcom/facebook/orca/server/ReceiptResult;

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadResult;->d()Lcom/facebook/orca/server/DataFreshnessResult;

    move-result-object v2

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadResult;->a()Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v3

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadResult;->e()J

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/facebook/orca/server/ReceiptResult;-><init>(Lcom/facebook/orca/server/DataFreshnessResult;Lcom/facebook/orca/threads/ThreadSummary;J)V

    .line 519
    invoke-static {v1}, Lcom/facebook/orca/server/OperationResult;->a(Landroid/os/Parcelable;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method protected k(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 526
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 527
    const-string v1, "deliveredReceiptParms"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/DeliveredReceiptParams;

    .line 528
    iget-object v1, p0, Lcom/facebook/orca/database/DbServiceHandler;->g:Lcom/facebook/orca/database/DbInsertThreadsHandler;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a(Lcom/facebook/orca/server/DeliveredReceiptParams;)V

    .line 530
    iget-object v1, p0, Lcom/facebook/orca/database/DbServiceHandler;->f:Lcom/facebook/orca/database/DbFetchThreadHandler;

    invoke-virtual {v0}, Lcom/facebook/orca/server/DeliveredReceiptParams;->b()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/facebook/orca/database/DbFetchThreadHandler;->a(Ljava/lang/String;I)Lcom/facebook/orca/server/FetchThreadResult;

    move-result-object v0

    .line 532
    new-instance v1, Lcom/facebook/orca/server/ReceiptResult;

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadResult;->d()Lcom/facebook/orca/server/DataFreshnessResult;

    move-result-object v2

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadResult;->a()Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v3

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadResult;->e()J

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/facebook/orca/server/ReceiptResult;-><init>(Lcom/facebook/orca/server/DataFreshnessResult;Lcom/facebook/orca/threads/ThreadSummary;J)V

    .line 535
    invoke-static {v1}, Lcom/facebook/orca/server/OperationResult;->a(Landroid/os/Parcelable;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method protected l(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 542
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 543
    const-string v1, "deleteThreadParams"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/DeleteThreadParams;

    .line 544
    invoke-interface {p2, p1}, Lcom/facebook/orca/server/OrcaServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v1

    .line 545
    iget-object v2, p0, Lcom/facebook/orca/database/DbServiceHandler;->g:Lcom/facebook/orca/database/DbInsertThreadsHandler;

    invoke-virtual {v2, v0}, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a(Lcom/facebook/orca/server/DeleteThreadParams;)V

    .line 546
    return-object v1
.end method

.method protected m(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 9
    .parameter
    .parameter

    .prologue
    const-wide/16 v2, -0x1

    const/4 v6, 0x1

    .line 553
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 554
    const-string v1, "deleteMessagesParams"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/facebook/orca/server/DeleteMessagesParams;

    .line 557
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->g()Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object v1

    .line 558
    invoke-virtual {v7}, Lcom/facebook/orca/server/DeleteMessagesParams;->b()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 559
    invoke-static {v0}, Lcom/facebook/orca/threads/MessagingIdUtil;->i(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v0}, Lcom/facebook/orca/threads/MessagingIdUtil;->k(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v0}, Lcom/facebook/orca/threads/MessagingIdUtil;->l(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 562
    :cond_1
    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableSet$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    goto :goto_0

    .line 565
    :cond_2
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableSet$Builder;->b()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    .line 567
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 568
    new-instance v1, Lcom/facebook/orca/server/DeleteMessagesParams;

    invoke-virtual {v7}, Lcom/facebook/orca/server/DeleteMessagesParams;->a()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4, v0}, Lcom/facebook/orca/server/DeleteMessagesParams;-><init>(Ljava/lang/String;Lcom/google/common/collect/ImmutableSet;)V

    .line 571
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 572
    const-string v4, "deleteMessagesParams"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 573
    new-instance v1, Lcom/facebook/orca/server/OperationParams;

    const-string v4, "delete_messages"

    invoke-direct {v1, v4, v0}, Lcom/facebook/orca/server/OperationParams;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 575
    invoke-interface {p2, v1}, Lcom/facebook/orca/server/OrcaServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    .line 579
    :goto_1
    iget-object v1, p0, Lcom/facebook/orca/database/DbServiceHandler;->g:Lcom/facebook/orca/database/DbInsertThreadsHandler;

    invoke-virtual {v1, v7}, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a(Lcom/facebook/orca/server/DeleteMessagesParams;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/Maps;->a(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object v1

    .line 581
    const-string v4, "message_offline_threading_ids"

    invoke-static {v0, v4, v1}, Lcom/facebook/orca/server/OperationResultUtil;->a(Lcom/facebook/orca/server/OperationResult;Ljava/lang/String;Ljava/io/Serializable;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v8

    .line 587
    iget-object v0, p0, Lcom/facebook/orca/database/DbServiceHandler;->f:Lcom/facebook/orca/database/DbFetchThreadHandler;

    invoke-virtual {v7}, Lcom/facebook/orca/server/DeleteMessagesParams;->a()Ljava/lang/String;

    move-result-object v1

    move-wide v4, v2

    invoke-virtual/range {v0 .. v6}, Lcom/facebook/orca/database/DbFetchThreadHandler;->a(Ljava/lang/String;JJI)Lcom/facebook/orca/server/FetchMoreMessagesResult;

    move-result-object v0

    .line 589
    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchMoreMessagesResult;->a()Lcom/facebook/orca/threads/MessagesCollection;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchMoreMessagesResult;->a()Lcom/facebook/orca/threads/MessagesCollection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/threads/MessagesCollection;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 591
    iget-object v0, p0, Lcom/facebook/orca/database/DbServiceHandler;->g:Lcom/facebook/orca/database/DbInsertThreadsHandler;

    new-instance v1, Lcom/facebook/orca/server/DeleteThreadParams;

    invoke-virtual {v7}, Lcom/facebook/orca/server/DeleteMessagesParams;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/orca/server/DeleteThreadParams;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a(Lcom/facebook/orca/server/DeleteThreadParams;)V

    .line 594
    const-string v0, "delete_thread"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v8, v0, v1}, Lcom/facebook/orca/server/OperationResultUtil;->a(Lcom/facebook/orca/server/OperationResult;Ljava/lang/String;Ljava/io/Serializable;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    .line 596
    :goto_2
    return-object v0

    .line 577
    :cond_3
    invoke-static {}, Lcom/facebook/orca/server/OperationResult;->b()Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    goto :goto_1

    :cond_4
    move-object v0, v8

    goto :goto_2
.end method

.method protected n(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 603
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    .line 604
    invoke-interface {p2, p1}, Lcom/facebook/orca/server/OrcaServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v1

    .line 605
    invoke-virtual {v1}, Lcom/facebook/orca/server/OperationResult;->h()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/FetchThreadResult;

    .line 606
    iget-object v2, p0, Lcom/facebook/orca/database/DbServiceHandler;->j:Lcom/facebook/orca/database/ThreadsDatabaseSupplier;

    invoke-virtual {v2}, Lcom/facebook/orca/database/ThreadsDatabaseSupplier;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 607
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 609
    :try_start_0
    iget-object v3, p0, Lcom/facebook/orca/database/DbServiceHandler;->g:Lcom/facebook/orca/database/DbInsertThreadsHandler;

    invoke-virtual {v3, v0}, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a(Lcom/facebook/orca/server/FetchThreadResult;)V

    .line 610
    iget-object v3, p0, Lcom/facebook/orca/database/DbServiceHandler;->h:Lcom/facebook/orca/database/DbInsertThreadUsersHandler;

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadResult;->c()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/orca/database/DbInsertThreadUsersHandler;->a(Ljava/util/List;)V

    .line 611
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 613
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 615
    return-object v1

    .line 613
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method protected o(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 156
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 157
    const-string v1, "threadId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 158
    const-string v2, "draft"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/compose/MessageDraft;

    .line 159
    iget-object v2, p0, Lcom/facebook/orca/database/DbServiceHandler;->g:Lcom/facebook/orca/database/DbInsertThreadsHandler;

    invoke-virtual {v2, v1, v0}, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a(Ljava/lang/String;Lcom/facebook/orca/compose/MessageDraft;)V

    .line 160
    invoke-static {}, Lcom/facebook/orca/server/OperationResult;->b()Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method protected q(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 789
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 790
    const-string v1, "message"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/facebook/orca/threads/Message;

    .line 793
    sget-object v0, Lcom/facebook/orca/threads/FolderName;->b:Lcom/facebook/orca/threads/FolderName;

    .line 794
    sget-object v1, Lcom/facebook/orca/threads/Message$ChannelSource;->SMS:Lcom/facebook/orca/threads/Message$ChannelSource;

    invoke-virtual {v3}, Lcom/facebook/orca/threads/Message;->x()Lcom/facebook/orca/threads/Message$ChannelSource;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/orca/threads/Message$ChannelSource;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/facebook/orca/threads/Message$ChannelSource;->MMS:Lcom/facebook/orca/threads/Message$ChannelSource;

    invoke-virtual {v3}, Lcom/facebook/orca/threads/Message;->x()Lcom/facebook/orca/threads/Message$ChannelSource;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/orca/threads/Message$ChannelSource;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 796
    :cond_0
    sget-object v0, Lcom/facebook/orca/threads/FolderName;->d:Lcom/facebook/orca/threads/FolderName;

    .line 800
    :cond_1
    invoke-static {v0}, Lcom/facebook/orca/database/DbProperties;->c(Lcom/facebook/orca/threads/FolderName;)Lcom/facebook/orca/database/DbThreadPropertyKey;

    move-result-object v0

    .line 801
    iget-object v1, p0, Lcom/facebook/orca/database/DbServiceHandler;->i:Lcom/facebook/orca/database/DbThreadsPropertyUtil;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/facebook/orca/database/DbThreadsPropertyUtil;->b(Lcom/facebook/orca/common/util/TypedKey;Z)V

    .line 803
    new-instance v0, Lcom/facebook/orca/server/NewMessageResult;

    sget-object v1, Lcom/facebook/orca/server/DataFreshnessResult;->FROM_SERVER:Lcom/facebook/orca/server/DataFreshnessResult;

    invoke-virtual {v3}, Lcom/facebook/orca/threads/Message;->b()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct/range {v0 .. v6}, Lcom/facebook/orca/server/NewMessageResult;-><init>(Lcom/facebook/orca/server/DataFreshnessResult;Ljava/lang/String;Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/threads/MessagesCollection;J)V

    .line 809
    iget-object v1, p0, Lcom/facebook/orca/database/DbServiceHandler;->g:Lcom/facebook/orca/database/DbInsertThreadsHandler;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a(Lcom/facebook/orca/server/NewMessageResult;)Lcom/facebook/orca/server/NewMessageResult;

    move-result-object v0

    .line 810
    invoke-static {v0}, Lcom/facebook/orca/server/OperationResult;->a(Landroid/os/Parcelable;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method protected r(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 828
    invoke-interface {p2, p1}, Lcom/facebook/orca/server/OrcaServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v1

    .line 829
    invoke-virtual {v1}, Lcom/facebook/orca/server/OperationResult;->h()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/appconfig/AppConfig;

    .line 830
    invoke-direct {p0, v0}, Lcom/facebook/orca/database/DbServiceHandler;->a(Lcom/facebook/orca/appconfig/AppConfig;)V

    .line 831
    const-string v0, "gateKeepers"

    invoke-virtual {v1, v0}, Lcom/facebook/orca/server/OperationResult;->b(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 832
    invoke-direct {p0, v0}, Lcom/facebook/orca/database/DbServiceHandler;->a(Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 833
    iget-object v2, p0, Lcom/facebook/orca/database/DbServiceHandler;->n:Lcom/facebook/orca/app/OrcaDataManager;

    invoke-virtual {v2}, Lcom/facebook/orca/app/OrcaDataManager;->g()V

    .line 834
    const-string v2, "clearSmsCache"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/facebook/orca/server/OperationResultUtil;->a(Lcom/facebook/orca/server/OperationResult;Ljava/lang/String;Ljava/io/Serializable;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v1

    move-object v2, v1

    .line 837
    :goto_0
    iget-object v1, p0, Lcom/facebook/orca/database/DbServiceHandler;->p:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 838
    invoke-direct {p0, v0}, Lcom/facebook/orca/database/DbServiceHandler;->b(Landroid/os/Bundle;)V

    .line 839
    iget-object v0, p0, Lcom/facebook/orca/database/DbServiceHandler;->p:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 841
    if-eq v0, v1, :cond_0

    .line 842
    iget-object v0, p0, Lcom/facebook/orca/database/DbServiceHandler;->c:Lcom/facebook/orca/app/OrcaActivityBroadcaster;

    invoke-virtual {v0}, Lcom/facebook/orca/app/OrcaActivityBroadcaster;->a()V

    .line 845
    :cond_0
    const-string v0, "rollouts"

    invoke-virtual {v2, v0}, Lcom/facebook/orca/server/OperationResult;->b(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    invoke-direct {p0, v0}, Lcom/facebook/orca/database/DbServiceHandler;->c(Landroid/os/Bundle;)V

    .line 846
    return-object v2

    :cond_1
    move-object v2, v1

    goto :goto_0
.end method

.method protected u(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 8
    .parameter
    .parameter

    .prologue
    .line 418
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 419
    const-string v1, "fetchMoreMessagesParams"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/FetchMoreMessagesParams;

    .line 421
    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchMoreMessagesParams;->a()Lcom/facebook/orca/server/ThreadCriteria;

    move-result-object v1

    .line 422
    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchMoreMessagesParams;->b()J

    .line 424
    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchMoreMessagesParams;->b()J

    move-result-wide v2

    .line 425
    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchMoreMessagesParams;->c()J

    move-result-wide v4

    .line 426
    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchMoreMessagesParams;->d()I

    move-result v6

    .line 428
    const-string v0, "DbServiceHandler.handleFetchThread"

    invoke-static {v0}, Lcom/facebook/orca/debug/Tracer;->a(Ljava/lang/String;)Lcom/facebook/orca/debug/Tracer;

    move-result-object v7

    .line 431
    :try_start_0
    invoke-virtual {v1}, Lcom/facebook/orca/server/ThreadCriteria;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 435
    iget-object v0, p0, Lcom/facebook/orca/database/DbServiceHandler;->f:Lcom/facebook/orca/database/DbFetchThreadHandler;

    invoke-virtual {v1}, Lcom/facebook/orca/server/ThreadCriteria;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {v0 .. v6}, Lcom/facebook/orca/database/DbFetchThreadHandler;->a(Ljava/lang/String;JJI)Lcom/facebook/orca/server/FetchMoreMessagesResult;

    move-result-object v0

    move-object v2, v0

    .line 453
    :goto_0
    invoke-virtual {v2}, Lcom/facebook/orca/server/FetchMoreMessagesResult;->a()Lcom/facebook/orca/threads/MessagesCollection;

    move-result-object v0

    .line 454
    sget-object v1, Lcom/facebook/orca/server/FetchMoreMessagesResult;->a:Lcom/facebook/orca/server/FetchMoreMessagesResult;

    if-eq v2, v1, :cond_3

    invoke-virtual {v0}, Lcom/facebook/orca/threads/MessagesCollection;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    if-eq v1, v6, :cond_0

    invoke-virtual {v0}, Lcom/facebook/orca/threads/MessagesCollection;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 457
    :cond_0
    invoke-static {v2}, Lcom/facebook/orca/server/OperationResult;->a(Landroid/os/Parcelable;)Lcom/facebook/orca/server/OperationResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 465
    invoke-virtual {v7}, Lcom/facebook/orca/debug/Tracer;->a()J

    :goto_1
    return-object v0

    .line 441
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Lcom/facebook/orca/server/ThreadCriteria;->b()Lcom/facebook/orca/users/UserKey;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 442
    iget-object v0, p0, Lcom/facebook/orca/database/DbServiceHandler;->f:Lcom/facebook/orca/database/DbFetchThreadHandler;

    invoke-virtual {v1}, Lcom/facebook/orca/server/ThreadCriteria;->b()Lcom/facebook/orca/users/UserKey;

    move-result-object v1

    invoke-virtual/range {v0 .. v6}, Lcom/facebook/orca/database/DbFetchThreadHandler;->a(Lcom/facebook/orca/users/UserKey;JJI)Lcom/facebook/orca/server/FetchMoreMessagesResult;

    move-result-object v0

    move-object v2, v0

    goto :goto_0

    .line 449
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No threadid or userkey specified for more messages fetch"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 465
    :catchall_0
    move-exception v0

    invoke-virtual {v7}, Lcom/facebook/orca/debug/Tracer;->a()J

    throw v0

    .line 459
    :cond_3
    :try_start_2
    invoke-interface {p2, p1}, Lcom/facebook/orca/server/OrcaServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v1

    .line 460
    invoke-virtual {v1}, Lcom/facebook/orca/server/OperationResult;->h()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/FetchMoreMessagesResult;

    .line 461
    iget-object v3, p0, Lcom/facebook/orca/database/DbServiceHandler;->g:Lcom/facebook/orca/database/DbInsertThreadsHandler;

    invoke-virtual {v3, v2, v0}, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a(Lcom/facebook/orca/server/FetchMoreMessagesResult;Lcom/facebook/orca/server/FetchMoreMessagesResult;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 465
    invoke-virtual {v7}, Lcom/facebook/orca/debug/Tracer;->a()J

    move-object v0, v1

    goto :goto_1
.end method

.method protected v(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 817
    invoke-interface {p2, p1}, Lcom/facebook/orca/server/OrcaServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v1

    .line 818
    const-string v0, "appConfig"

    invoke-virtual {v1, v0}, Lcom/facebook/orca/server/OperationResult;->b(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/appconfig/AppConfig;

    invoke-direct {p0, v0}, Lcom/facebook/orca/database/DbServiceHandler;->a(Lcom/facebook/orca/appconfig/AppConfig;)V

    .line 819
    const-string v0, "gateKeepers"

    invoke-virtual {v1, v0}, Lcom/facebook/orca/server/OperationResult;->b(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    invoke-direct {p0, v0}, Lcom/facebook/orca/database/DbServiceHandler;->b(Landroid/os/Bundle;)V

    .line 820
    const-string v0, "rollouts"

    invoke-virtual {v1, v0}, Lcom/facebook/orca/server/OperationResult;->b(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    invoke-direct {p0, v0}, Lcom/facebook/orca/database/DbServiceHandler;->c(Landroid/os/Bundle;)V

    .line 821
    return-object v1
.end method
