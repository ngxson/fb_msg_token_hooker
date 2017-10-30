.class public Lcom/facebook/orca/cache/CacheServiceHandler;
.super Lcom/facebook/orca/server/AbstractOrcaServiceHandlerFilter;
.source "CacheServiceHandler.java"


# instance fields
.field private final a:Lcom/facebook/orca/cache/ThreadsCache;

.field private final b:Lcom/facebook/orca/cache/DataCache;

.field private final c:Lcom/facebook/orca/cache/ThreadDisplayCache;

.field private final d:Lcom/facebook/orca/cache/AppConfigCache;

.field private final e:Lcom/facebook/orca/app/OrcaActivityBroadcaster;

.field private final f:Lcom/facebook/orca/notify/OrcaNotificationManager;

.field private final g:Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer;

.field private final h:Lcom/facebook/orca/prefs/GlobalNotificationPrefsSynchronizer;

.field private final i:Lcom/facebook/orca/cache/DeliveredReadReceiptManager;

.field private final j:Lcom/facebook/orca/cache/ChatVisibilityCache;

.field private final k:Lcom/facebook/orca/cache/SendMessageManager;

.field private final l:Lcom/facebook/orca/app/OrcaDataManager;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/cache/ThreadsCache;Lcom/facebook/orca/cache/DataCache;Lcom/facebook/orca/cache/ThreadDisplayCache;Lcom/facebook/orca/cache/AppConfigCache;Lcom/facebook/orca/app/OrcaActivityBroadcaster;Lcom/facebook/orca/notify/OrcaNotificationManager;Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer;Lcom/facebook/orca/prefs/GlobalNotificationPrefsSynchronizer;Lcom/facebook/orca/cache/DeliveredReadReceiptManager;Lcom/facebook/orca/cache/ChatVisibilityCache;Lcom/facebook/orca/app/OrcaDataManager;Lcom/facebook/orca/cache/SendMessageManager;)V
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

    .prologue
    .line 63
    const-string v0, "CacheServiceHandler"

    invoke-direct {p0, v0}, Lcom/facebook/orca/server/AbstractOrcaServiceHandlerFilter;-><init>(Ljava/lang/String;)V

    .line 64
    iput-object p1, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->a:Lcom/facebook/orca/cache/ThreadsCache;

    .line 65
    iput-object p2, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->b:Lcom/facebook/orca/cache/DataCache;

    .line 66
    iput-object p3, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->c:Lcom/facebook/orca/cache/ThreadDisplayCache;

    .line 67
    iput-object p4, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->d:Lcom/facebook/orca/cache/AppConfigCache;

    .line 68
    iput-object p5, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->e:Lcom/facebook/orca/app/OrcaActivityBroadcaster;

    .line 69
    iput-object p6, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->f:Lcom/facebook/orca/notify/OrcaNotificationManager;

    .line 70
    iput-object p7, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->g:Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer;

    .line 71
    iput-object p8, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->h:Lcom/facebook/orca/prefs/GlobalNotificationPrefsSynchronizer;

    .line 72
    iput-object p9, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->i:Lcom/facebook/orca/cache/DeliveredReadReceiptManager;

    .line 73
    iput-object p10, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->j:Lcom/facebook/orca/cache/ChatVisibilityCache;

    .line 74
    iput-object p11, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->l:Lcom/facebook/orca/app/OrcaDataManager;

    .line 75
    iput-object p12, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->k:Lcom/facebook/orca/cache/SendMessageManager;

    .line 76
    return-void
.end method

.method private a(Lcom/facebook/orca/server/FetchMoreThreadsResult;)V
    .locals 5
    .parameter

    .prologue
    .line 183
    iget-object v0, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->a:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchMoreThreadsResult;->a()Lcom/facebook/orca/threads/FolderName;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchMoreThreadsResult;->b()Lcom/facebook/orca/threads/ThreadsCollection;

    move-result-object v2

    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchMoreThreadsResult;->e()J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/facebook/orca/cache/ThreadsCache;->a(Lcom/facebook/orca/threads/FolderName;Lcom/facebook/orca/threads/ThreadsCollection;J)V

    .line 189
    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchMoreThreadsResult;->f()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    .line 190
    if-eqz v0, :cond_0

    .line 191
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->c()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/FetchMoreThreadsResult;

    .line 192
    invoke-direct {p0, v0}, Lcom/facebook/orca/cache/CacheServiceHandler;->a(Lcom/facebook/orca/server/FetchMoreThreadsResult;)V

    goto :goto_0

    .line 195
    :cond_0
    return-void
.end method

.method private a(Lcom/facebook/orca/server/FetchThreadListResult;)V
    .locals 6
    .parameter

    .prologue
    .line 155
    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchThreadListResult;->a()Lcom/facebook/orca/threads/FolderName;

    move-result-object v1

    .line 156
    iget-object v0, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->a:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchThreadListResult;->h()Lcom/facebook/orca/threads/FolderCounts;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/cache/ThreadsCache;->a(Lcom/facebook/orca/threads/FolderName;Lcom/facebook/orca/threads/FolderCounts;)V

    .line 157
    iget-object v0, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->a:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchThreadListResult;->b()Lcom/facebook/orca/threads/ThreadsCollection;

    move-result-object v2

    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchThreadListResult;->e()J

    move-result-wide v3

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/orca/cache/ThreadsCache;->a(Lcom/facebook/orca/threads/FolderName;Lcom/facebook/orca/threads/ThreadsCollection;JZ)V

    .line 161
    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchThreadListResult;->m()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    .line 162
    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->c()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/FetchThreadListResult;

    .line 164
    invoke-direct {p0, v0}, Lcom/facebook/orca/cache/CacheServiceHandler;->a(Lcom/facebook/orca/server/FetchThreadListResult;)V

    goto :goto_0

    .line 167
    :cond_0
    return-void
.end method

.method private a(Lcom/facebook/orca/threads/FolderName;J)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 556
    iget-object v0, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->a:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/cache/ThreadsCache;->d(Lcom/facebook/orca/threads/FolderName;)Lcom/facebook/orca/threads/FolderCounts;

    move-result-object v3

    .line 557
    if-eqz v3, :cond_0

    .line 559
    new-instance v0, Lcom/facebook/orca/threads/FolderCounts;

    invoke-virtual {v3}, Lcom/facebook/orca/threads/FolderCounts;->a()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v3}, Lcom/facebook/orca/threads/FolderCounts;->d()J

    move-result-wide v5

    move-wide v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/facebook/orca/threads/FolderCounts;-><init>(IIJJ)V

    .line 564
    iget-object v1, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->a:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v1, p1, v0}, Lcom/facebook/orca/cache/ThreadsCache;->a(Lcom/facebook/orca/threads/FolderName;Lcom/facebook/orca/threads/FolderCounts;)V

    .line 566
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/facebook/orca/server/OrcaServiceHandler;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 621
    iget-object v0, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->a:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/cache/ThreadsCache;->a(Ljava/lang/String;)Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 633
    :goto_0
    return-void

    .line 624
    :cond_0
    new-instance v0, Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    invoke-direct {v0}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;-><init>()V

    sget-object v1, Lcom/facebook/orca/server/DataFreshnessParam;->DO_NOT_CHECK_SERVER:Lcom/facebook/orca/server/DataFreshnessParam;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->a(Lcom/facebook/orca/server/DataFreshnessParam;)Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/facebook/orca/server/ThreadCriteria;->a(Ljava/lang/String;)Lcom/facebook/orca/server/ThreadCriteria;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->a(Lcom/facebook/orca/server/ThreadCriteria;)Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    move-result-object v0

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->a(I)Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->g()Lcom/facebook/orca/server/FetchThreadParams;

    move-result-object v0

    .line 629
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 630
    const-string v2, "fetchThreadParams"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 631
    new-instance v0, Lcom/facebook/orca/server/OperationParams;

    const-string v2, "fetch_thread"

    invoke-direct {v0, v2, v1}, Lcom/facebook/orca/server/OperationParams;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 632
    invoke-virtual {p0, v0, p2}, Lcom/facebook/orca/cache/CacheServiceHandler;->c(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;

    goto :goto_0
.end method


# virtual methods
.method protected a(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 82
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v1

    .line 83
    const-string v0, "fetchThreadListParams"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/FetchThreadListParams;

    .line 84
    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadListParams;->b()Lcom/facebook/orca/threads/FolderName;

    move-result-object v2

    .line 85
    iget-object v3, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->b:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadListParams;->a()Lcom/facebook/orca/server/DataFreshnessParam;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/facebook/orca/cache/DataCache;->a(Lcom/facebook/orca/threads/FolderName;Lcom/facebook/orca/server/DataFreshnessParam;)Lcom/facebook/orca/server/DataFreshnessParam;

    move-result-object v3

    .line 89
    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadListParams;->a()Lcom/facebook/orca/server/DataFreshnessParam;

    move-result-object v4

    if-eq v3, v4, :cond_0

    .line 92
    invoke-static {}, Lcom/facebook/orca/server/FetchThreadListParams;->newBuilder()Lcom/facebook/orca/server/FetchThreadListParamsBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/facebook/orca/server/FetchThreadListParamsBuilder;->a(Lcom/facebook/orca/server/FetchThreadListParams;)Lcom/facebook/orca/server/FetchThreadListParamsBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/facebook/orca/server/FetchThreadListParamsBuilder;->a(Lcom/facebook/orca/server/DataFreshnessParam;)Lcom/facebook/orca/server/FetchThreadListParamsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadListParamsBuilder;->f()Lcom/facebook/orca/server/FetchThreadListParams;

    move-result-object v0

    .line 96
    const-string v4, "fetchThreadListParams"

    invoke-virtual {v1, v4, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 100
    :cond_0
    sget-object v0, Lcom/facebook/orca/cache/CacheServiceHandler$1;->a:[I

    invoke-virtual {v3}, Lcom/facebook/orca/server/DataFreshnessParam;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 112
    const/4 v0, 0x0

    .line 117
    :goto_0
    if-eqz v0, :cond_2

    .line 118
    iget-object v0, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->a:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v0, v2}, Lcom/facebook/orca/cache/ThreadsCache;->c(Lcom/facebook/orca/threads/FolderName;)Lcom/facebook/orca/threads/ThreadsCollection;

    move-result-object v1

    .line 119
    iget-object v0, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->a:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v0}, Lcom/facebook/orca/cache/ThreadsCache;->d()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    .line 120
    iget-object v0, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->a:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v0, v2}, Lcom/facebook/orca/cache/ThreadsCache;->b(Lcom/facebook/orca/threads/FolderName;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/facebook/orca/server/DataFreshnessResult;->FROM_CACHE_UP_TO_DATE:Lcom/facebook/orca/server/DataFreshnessResult;

    .line 122
    :goto_1
    iget-object v4, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->a:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v4, v2}, Lcom/facebook/orca/cache/ThreadsCache;->d(Lcom/facebook/orca/threads/FolderName;)Lcom/facebook/orca/threads/FolderCounts;

    move-result-object v4

    .line 124
    invoke-static {v3}, Lcom/google/common/collect/ImmutableList;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    .line 126
    invoke-static {}, Lcom/facebook/orca/server/FetchThreadListResult;->newBuilder()Lcom/facebook/orca/server/FetchThreadListResultBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/facebook/orca/server/FetchThreadListResultBuilder;->a(Lcom/facebook/orca/server/DataFreshnessResult;)Lcom/facebook/orca/server/FetchThreadListResultBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/facebook/orca/server/FetchThreadListResultBuilder;->a(Lcom/facebook/orca/threads/FolderName;)Lcom/facebook/orca/server/FetchThreadListResultBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/facebook/orca/server/FetchThreadListResultBuilder;->a(Lcom/facebook/orca/threads/ThreadsCollection;)Lcom/facebook/orca/server/FetchThreadListResultBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/facebook/orca/server/FetchThreadListResultBuilder;->a(Lcom/google/common/collect/ImmutableList;)Lcom/facebook/orca/server/FetchThreadListResultBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/facebook/orca/server/FetchThreadListResultBuilder;->a(Lcom/facebook/orca/threads/FolderCounts;)Lcom/facebook/orca/server/FetchThreadListResultBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadListResultBuilder;->o()Lcom/facebook/orca/server/FetchThreadListResult;

    move-result-object v0

    .line 133
    invoke-static {v0}, Lcom/facebook/orca/server/OperationResult;->a(Landroid/os/Parcelable;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    .line 150
    :goto_2
    return-object v0

    .line 102
    :pswitch_0
    iget-object v0, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->a:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v0, v2}, Lcom/facebook/orca/cache/ThreadsCache;->a(Lcom/facebook/orca/threads/FolderName;)Z

    move-result v0

    goto :goto_0

    .line 107
    :pswitch_1
    iget-object v0, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->a:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v0, v2}, Lcom/facebook/orca/cache/ThreadsCache;->b(Lcom/facebook/orca/threads/FolderName;)Z

    move-result v0

    goto :goto_0

    .line 120
    :cond_1
    sget-object v0, Lcom/facebook/orca/server/DataFreshnessResult;->FROM_CACHE_STALE:Lcom/facebook/orca/server/DataFreshnessResult;

    goto :goto_1

    .line 135
    :cond_2
    invoke-interface {p2, p1}, Lcom/facebook/orca/server/OrcaServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v1

    .line 136
    invoke-virtual {v1}, Lcom/facebook/orca/server/OperationResult;->h()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/FetchThreadListResult;

    .line 137
    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadListResult;->b()Lcom/facebook/orca/threads/ThreadsCollection;

    .line 138
    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadListResult;->c()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    .line 139
    iget-object v3, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->a:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v3, v2}, Lcom/facebook/orca/cache/ThreadsCache;->a(Ljava/util/Collection;)V

    .line 140
    invoke-direct {p0, v0}, Lcom/facebook/orca/cache/CacheServiceHandler;->a(Lcom/facebook/orca/server/FetchThreadListResult;)V

    .line 141
    iget-object v2, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->f:Lcom/facebook/orca/notify/OrcaNotificationManager;

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadListResult;->h()Lcom/facebook/orca/threads/FolderCounts;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/facebook/orca/notify/OrcaNotificationManager;->a(Lcom/facebook/orca/threads/FolderCounts;)V

    .line 142
    iget-object v2, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->c:Lcom/facebook/orca/cache/ThreadDisplayCache;

    invoke-virtual {v2}, Lcom/facebook/orca/cache/ThreadDisplayCache;->a()V

    .line 143
    iget-object v2, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->g:Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer;

    invoke-virtual {v2}, Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer;->a()V

    .line 144
    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadListResult;->i()Lcom/facebook/orca/notify/NotificationSetting;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 145
    iget-object v2, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->h:Lcom/facebook/orca/prefs/GlobalNotificationPrefsSynchronizer;

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadListResult;->i()Lcom/facebook/orca/notify/NotificationSetting;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/facebook/orca/prefs/GlobalNotificationPrefsSynchronizer;->a(Lcom/facebook/orca/notify/NotificationSetting;)V

    :cond_3
    move-object v0, v1

    goto :goto_2

    .line 100
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected b(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 173
    invoke-interface {p2, p1}, Lcom/facebook/orca/server/OrcaServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v1

    .line 174
    invoke-virtual {v1}, Lcom/facebook/orca/server/OperationResult;->h()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/FetchMoreThreadsResult;

    .line 175
    iget-object v2, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->a:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchMoreThreadsResult;->c()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/facebook/orca/cache/ThreadsCache;->a(Ljava/util/Collection;)V

    .line 176
    invoke-direct {p0, v0}, Lcom/facebook/orca/cache/CacheServiceHandler;->a(Lcom/facebook/orca/server/FetchMoreThreadsResult;)V

    .line 177
    iget-object v0, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->c:Lcom/facebook/orca/cache/ThreadDisplayCache;

    invoke-virtual {v0}, Lcom/facebook/orca/cache/ThreadDisplayCache;->a()V

    .line 178
    return-object v1
.end method

.method protected c(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 13
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 201
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v8

    .line 202
    const-string v0, "fetchThreadParams"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/FetchThreadParams;

    .line 203
    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadParams;->a()Lcom/facebook/orca/server/ThreadCriteria;

    move-result-object v2

    .line 204
    invoke-virtual {v2}, Lcom/facebook/orca/server/ThreadCriteria;->a()Ljava/lang/String;

    move-result-object v1

    .line 205
    iget-object v3, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->b:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadParams;->b()Lcom/facebook/orca/server/DataFreshnessParam;

    move-result-object v7

    invoke-virtual {v3, v2, v7}, Lcom/facebook/orca/cache/DataCache;->a(Lcom/facebook/orca/server/ThreadCriteria;Lcom/facebook/orca/server/DataFreshnessParam;)Lcom/facebook/orca/server/DataFreshnessParam;

    move-result-object v9

    .line 209
    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadParams;->b()Lcom/facebook/orca/server/DataFreshnessParam;

    move-result-object v3

    if-eq v9, v3, :cond_e

    .line 212
    invoke-static {}, Lcom/facebook/orca/server/FetchThreadParams;->newBuilder()Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->a(Lcom/facebook/orca/server/FetchThreadParams;)Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->a(Lcom/facebook/orca/server/DataFreshnessParam;)Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->g()Lcom/facebook/orca/server/FetchThreadParams;

    move-result-object v7

    .line 216
    const-string v0, "fetchThreadParams"

    invoke-virtual {v8, v0, v7}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 222
    :goto_0
    if-eqz v1, :cond_0

    .line 223
    iget-object v0, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->a:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/cache/ThreadsCache;->a(Ljava/lang/String;)Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v2

    .line 224
    iget-object v0, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->a:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/cache/ThreadsCache;->b(Ljava/lang/String;)Lcom/facebook/orca/threads/MessagesCollection;

    move-result-object v3

    .line 239
    :goto_1
    sget-object v0, Lcom/facebook/orca/cache/CacheServiceHandler$1;->a:[I

    invoke-virtual {v9}, Lcom/facebook/orca/server/DataFreshnessParam;->ordinal()I

    move-result v9

    aget v0, v0, v9

    packed-switch v0, :pswitch_data_0

    move v0, v6

    .line 256
    :goto_2
    iget-object v6, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->a:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v6, v1}, Lcom/facebook/orca/cache/ThreadsCache;->g(Ljava/lang/String;)J

    move-result-wide v9

    iget-object v6, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->a:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v6, v1}, Lcom/facebook/orca/cache/ThreadsCache;->h(Ljava/lang/String;)J

    move-result-wide v11

    cmp-long v6, v9, v11

    if-lez v6, :cond_c

    .line 260
    invoke-static {}, Lcom/facebook/orca/server/FetchThreadParams;->newBuilder()Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->a(Lcom/facebook/orca/server/FetchThreadParams;)Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->a(Z)Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->a:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v6, v1}, Lcom/facebook/orca/cache/ThreadsCache;->g(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->a(J)Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->g()Lcom/facebook/orca/server/FetchThreadParams;

    move-result-object v4

    .line 265
    const-string v6, "fetchThreadParams"

    invoke-virtual {v8, v6, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 269
    :goto_3
    if-eqz v0, :cond_5

    .line 270
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->f()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v4

    .line 271
    invoke-virtual {v2}, Lcom/facebook/orca/threads/ThreadSummary;->A()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/ThreadParticipant;

    .line 272
    iget-object v7, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->a:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadParticipant;->d()Lcom/facebook/orca/users/UserKey;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/facebook/orca/cache/ThreadsCache;->b(Lcom/facebook/orca/users/UserKey;)Lcom/facebook/orca/users/User;

    move-result-object v0

    .line 273
    invoke-virtual {v4, v0}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_4

    .line 225
    :cond_0
    invoke-virtual {v2}, Lcom/facebook/orca/server/ThreadCriteria;->b()Lcom/facebook/orca/users/UserKey;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 226
    iget-object v0, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->a:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v2}, Lcom/facebook/orca/server/ThreadCriteria;->b()Lcom/facebook/orca/users/UserKey;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/facebook/orca/cache/ThreadsCache;->a(Lcom/facebook/orca/users/UserKey;)Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v2

    .line 229
    if-eqz v2, :cond_d

    .line 230
    invoke-virtual {v2}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v0

    .line 231
    iget-object v1, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->a:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/cache/ThreadsCache;->b(Ljava/lang/String;)Lcom/facebook/orca/threads/MessagesCollection;

    move-result-object v3

    move-object v1, v0

    goto :goto_1

    .line 234
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No threadid, userid, or phonenumber specified for thread fetch"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 241
    :pswitch_0
    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    move v0, v4

    goto/16 :goto_2

    :cond_2
    move v0, v6

    goto/16 :goto_2

    .line 246
    :pswitch_1
    iget-object v0, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->a:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v7}, Lcom/facebook/orca/server/FetchThreadParams;->e()I

    move-result v6

    invoke-virtual {v0, v1, v6}, Lcom/facebook/orca/cache/ThreadsCache;->a(Ljava/lang/String;I)Z

    move-result v0

    goto/16 :goto_2

    .line 275
    :cond_3
    iget-object v0, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->a:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/cache/ThreadsCache;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v1, Lcom/facebook/orca/server/DataFreshnessResult;->FROM_CACHE_UP_TO_DATE:Lcom/facebook/orca/server/DataFreshnessResult;

    .line 278
    :goto_5
    invoke-virtual {v4}, Lcom/google/common/collect/ImmutableList$Builder;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    .line 280
    new-instance v0, Lcom/facebook/orca/server/FetchThreadResult;

    const-wide/16 v6, -0x1

    invoke-direct/range {v0 .. v7}, Lcom/facebook/orca/server/FetchThreadResult;-><init>(Lcom/facebook/orca/server/DataFreshnessResult;Lcom/facebook/orca/threads/ThreadSummary;Lcom/facebook/orca/threads/MessagesCollection;Lcom/google/common/collect/ImmutableList;Lcom/facebook/orca/users/User;J)V

    .line 282
    invoke-static {v0}, Lcom/facebook/orca/server/OperationResult;->a(Landroid/os/Parcelable;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    .line 317
    :goto_6
    return-object v0

    .line 275
    :cond_4
    sget-object v1, Lcom/facebook/orca/server/DataFreshnessResult;->FROM_CACHE_STALE:Lcom/facebook/orca/server/DataFreshnessResult;

    goto :goto_5

    .line 284
    :cond_5
    invoke-interface {p2, p1}, Lcom/facebook/orca/server/OrcaServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v2

    .line 285
    invoke-virtual {v2}, Lcom/facebook/orca/server/OperationResult;->h()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/FetchThreadResult;

    .line 286
    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadResult;->d()Lcom/facebook/orca/server/DataFreshnessResult;

    move-result-object v3

    sget-object v5, Lcom/facebook/orca/server/DataFreshnessResult;->NO_DATA:Lcom/facebook/orca/server/DataFreshnessResult;

    if-eq v3, v5, :cond_b

    .line 287
    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadResult;->a()Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v3

    .line 288
    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadResult;->c()Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 289
    iget-object v5, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->a:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadResult;->c()Lcom/google/common/collect/ImmutableList;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/facebook/orca/cache/ThreadsCache;->a(Ljava/util/Collection;)V

    .line 291
    :cond_6
    iget-object v5, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->c:Lcom/facebook/orca/cache/ThreadDisplayCache;

    invoke-virtual {v5}, Lcom/facebook/orca/cache/ThreadDisplayCache;->a()V

    .line 292
    if-eqz v3, :cond_a

    .line 293
    iget-object v5, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->a:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadResult;->e()J

    move-result-wide v6

    invoke-virtual {v5, v3, v6, v7}, Lcom/facebook/orca/cache/ThreadsCache;->a(Lcom/facebook/orca/threads/ThreadSummary;J)V

    .line 296
    invoke-virtual {v4}, Lcom/facebook/orca/server/FetchThreadParams;->e()I

    move-result v4

    if-lez v4, :cond_7

    .line 297
    iget-object v4, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->a:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadResult;->b()Lcom/facebook/orca/threads/MessagesCollection;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/facebook/orca/cache/ThreadsCache;->a(Lcom/facebook/orca/threads/MessagesCollection;)V

    .line 300
    :cond_7
    invoke-virtual {v3}, Lcom/facebook/orca/threads/ThreadSummary;->g()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 301
    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadResult;->b()Lcom/facebook/orca/threads/MessagesCollection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/threads/MessagesCollection;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/Message;

    .line 302
    invoke-virtual {v0}, Lcom/facebook/orca/threads/Message;->f()Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/facebook/orca/threads/ParticipantInfo;->e()Lcom/facebook/orca/users/UserKey;

    move-result-object v5

    iget-object v6, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->b:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v6}, Lcom/facebook/orca/cache/DataCache;->b()Lcom/facebook/orca/users/UserKey;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 303
    iget-object v4, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->c:Lcom/facebook/orca/cache/ThreadDisplayCache;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/Message;->f()Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/facebook/orca/threads/ParticipantInfo;->e()Lcom/facebook/orca/users/UserKey;

    move-result-object v5

    invoke-virtual {v0}, Lcom/facebook/orca/threads/Message;->c()J

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Lcom/facebook/orca/cache/ThreadDisplayCache;->a(Lcom/facebook/orca/users/UserKey;J)V

    .line 311
    :cond_9
    iget-object v0, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->e:Lcom/facebook/orca/app/OrcaActivityBroadcaster;

    invoke-virtual {v3}, Lcom/facebook/orca/threads/ThreadSummary;->b()J

    move-result-wide v3

    invoke-virtual {v0, v1, v3, v4}, Lcom/facebook/orca/app/OrcaActivityBroadcaster;->a(Ljava/lang/String;J)V

    .line 313
    :cond_a
    iget-object v0, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->g:Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer;

    invoke-virtual {v0}, Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer;->a()V

    :cond_b
    move-object v0, v2

    goto/16 :goto_6

    :cond_c
    move-object v4, v7

    goto/16 :goto_3

    :cond_d
    move-object v3, v5

    goto/16 :goto_1

    :cond_e
    move-object v7, v0

    goto/16 :goto_0

    .line 239
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected d(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 324
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 325
    const-string v1, "createThreadParams"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/CreateThreadParams;

    .line 326
    invoke-interface {p2, p1}, Lcom/facebook/orca/server/OrcaServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v1

    .line 327
    invoke-virtual {v1}, Lcom/facebook/orca/server/OperationResult;->h()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/FetchThreadResult;

    .line 328
    iget-object v2, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->a:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadResult;->c()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/facebook/orca/cache/ThreadsCache;->a(Ljava/util/Collection;)V

    .line 329
    iget-object v2, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->c:Lcom/facebook/orca/cache/ThreadDisplayCache;

    invoke-virtual {v2}, Lcom/facebook/orca/cache/ThreadDisplayCache;->a()V

    .line 330
    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadResult;->a()Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v2

    .line 331
    iget-object v3, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->a:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadResult;->e()J

    move-result-wide v4

    invoke-virtual {v3, v2, v4, v5}, Lcom/facebook/orca/cache/ThreadsCache;->a(Lcom/facebook/orca/threads/ThreadSummary;J)V

    .line 332
    iget-object v2, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->a:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadResult;->b()Lcom/facebook/orca/threads/MessagesCollection;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/facebook/orca/cache/ThreadsCache;->b(Lcom/facebook/orca/threads/MessagesCollection;)V

    .line 333
    return-object v1
.end method

.method protected e(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 340
    invoke-interface {p2, p1}, Lcom/facebook/orca/server/OrcaServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v1

    .line 341
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 342
    const-string v2, "outgoingMessage"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/Message;

    .line 343
    iget-object v2, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->a:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v2, v0, v3}, Lcom/facebook/orca/cache/ThreadsCache;->a(Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/threads/MessagesCollection;)V

    .line 344
    iget-object v2, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->a:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/Message;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/facebook/orca/cache/ThreadsCache;->a(Ljava/lang/String;)Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v0

    .line 345
    if-eqz v0, :cond_0

    .line 346
    iget-object v2, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->a:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v2, v0, v3}, Lcom/facebook/orca/cache/ThreadsCache;->a(Lcom/facebook/orca/threads/ThreadSummary;Lcom/facebook/orca/compose/MessageDraft;)V

    .line 348
    :cond_0
    return-object v1
.end method

.method protected f(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 355
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v1

    .line 356
    const-string v0, "threadId"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 357
    iget-object v0, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->c:Lcom/facebook/orca/cache/ThreadDisplayCache;

    invoke-virtual {v0, v2}, Lcom/facebook/orca/cache/ThreadDisplayCache;->a(Ljava/lang/String;)Lcom/facebook/orca/users/UserKey;

    move-result-object v0

    .line 359
    const-string v3, "userKeyInCanonicalThread"

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/facebook/orca/users/UserKey;->c()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    :try_start_0
    invoke-interface {p2, p1}, Lcom/facebook/orca/server/OrcaServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v1

    .line 363
    invoke-virtual {v1}, Lcom/facebook/orca/server/OperationResult;->h()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/NewMessageResult;

    .line 364
    if-eqz v0, :cond_0

    .line 365
    iget-object v3, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->a:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v0}, Lcom/facebook/orca/server/NewMessageResult;->b()Lcom/facebook/orca/threads/Message;

    move-result-object v4

    invoke-virtual {v0}, Lcom/facebook/orca/server/NewMessageResult;->c()Lcom/facebook/orca/threads/MessagesCollection;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lcom/facebook/orca/cache/ThreadsCache;->a(Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/threads/MessagesCollection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 371
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->e:Lcom/facebook/orca/app/OrcaActivityBroadcaster;

    invoke-virtual {v0, v2}, Lcom/facebook/orca/app/OrcaActivityBroadcaster;->a(Ljava/lang/String;)V

    return-object v1

    .line 359
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 371
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->e:Lcom/facebook/orca/app/OrcaActivityBroadcaster;

    invoke-virtual {v1, v2}, Lcom/facebook/orca/app/OrcaActivityBroadcaster;->a(Ljava/lang/String;)V

    throw v0
.end method

.method protected g(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 379
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 380
    const-string v1, "addMembersParams"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/AddMembersParams;

    .line 381
    invoke-interface {p2, p1}, Lcom/facebook/orca/server/OrcaServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v1

    .line 382
    invoke-virtual {v1}, Lcom/facebook/orca/server/OperationResult;->h()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/FetchThreadResult;

    .line 383
    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadResult;->a()Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v2

    .line 384
    if-eqz v2, :cond_0

    .line 385
    iget-object v3, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->a:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadResult;->e()J

    move-result-wide v4

    invoke-virtual {v3, v2, v4, v5}, Lcom/facebook/orca/cache/ThreadsCache;->a(Lcom/facebook/orca/threads/ThreadSummary;J)V

    .line 386
    iget-object v2, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->a:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadResult;->c()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/facebook/orca/cache/ThreadsCache;->a(Ljava/util/Collection;)V

    .line 387
    iget-object v0, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->c:Lcom/facebook/orca/cache/ThreadDisplayCache;

    invoke-virtual {v0}, Lcom/facebook/orca/cache/ThreadDisplayCache;->a()V

    .line 389
    :cond_0
    return-object v1
.end method

.method protected h(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 396
    invoke-interface {p2, p1}, Lcom/facebook/orca/server/OrcaServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v1

    .line 397
    invoke-virtual {v1}, Lcom/facebook/orca/server/OperationResult;->h()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/FetchThreadResult;

    .line 398
    iget-object v2, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->a:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadResult;->a()Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v3

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadResult;->e()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/facebook/orca/cache/ThreadsCache;->a(Lcom/facebook/orca/threads/ThreadSummary;J)V

    .line 401
    iget-object v2, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->a:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadResult;->c()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/facebook/orca/cache/ThreadsCache;->a(Ljava/util/Collection;)V

    .line 402
    iget-object v0, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->c:Lcom/facebook/orca/cache/ThreadDisplayCache;

    invoke-virtual {v0}, Lcom/facebook/orca/cache/ThreadDisplayCache;->a()V

    .line 403
    return-object v1
.end method

.method protected i(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 410
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 411
    const-string v1, "markThreadParams"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/MarkThreadParams;

    .line 417
    invoke-virtual {v0}, Lcom/facebook/orca/server/MarkThreadParams;->a()Ljava/lang/String;

    move-result-object v1

    .line 418
    invoke-virtual {v0}, Lcom/facebook/orca/server/MarkThreadParams;->b()Lcom/facebook/orca/server/MarkThreadParams$Mark;

    move-result-object v2

    .line 419
    sget-object v3, Lcom/facebook/orca/server/MarkThreadParams$Mark;->READ:Lcom/facebook/orca/server/MarkThreadParams$Mark;

    if-ne v2, v3, :cond_1

    invoke-virtual {v0}, Lcom/facebook/orca/server/MarkThreadParams;->c()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 420
    iget-object v2, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->a:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v0}, Lcom/facebook/orca/server/MarkThreadParams;->d()J

    move-result-wide v3

    invoke-virtual {v2, v1, v3, v4}, Lcom/facebook/orca/cache/ThreadsCache;->a(Ljava/lang/String;J)V

    .line 428
    :cond_0
    :goto_0
    invoke-interface {p2, p1}, Lcom/facebook/orca/server/OrcaServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0

    .line 421
    :cond_1
    sget-object v3, Lcom/facebook/orca/server/MarkThreadParams$Mark;->ARCHIVED:Lcom/facebook/orca/server/MarkThreadParams$Mark;

    if-ne v2, v3, :cond_2

    invoke-virtual {v0}, Lcom/facebook/orca/server/MarkThreadParams;->c()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 422
    iget-object v0, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->a:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/cache/ThreadsCache;->c(Ljava/lang/String;)V

    .line 423
    iget-object v0, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->e:Lcom/facebook/orca/app/OrcaActivityBroadcaster;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/app/OrcaActivityBroadcaster;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 424
    :cond_2
    sget-object v3, Lcom/facebook/orca/server/MarkThreadParams$Mark;->SPAM:Lcom/facebook/orca/server/MarkThreadParams$Mark;

    if-ne v2, v3, :cond_0

    invoke-virtual {v0}, Lcom/facebook/orca/server/MarkThreadParams;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 425
    iget-object v0, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->a:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/cache/ThreadsCache;->c(Ljava/lang/String;)V

    .line 426
    iget-object v0, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->e:Lcom/facebook/orca/app/OrcaActivityBroadcaster;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/app/OrcaActivityBroadcaster;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected j(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 435
    invoke-interface {p2, p1}, Lcom/facebook/orca/server/OrcaServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v1

    .line 437
    invoke-virtual {v1}, Lcom/facebook/orca/server/OperationResult;->h()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/ReceiptResult;

    .line 438
    invoke-virtual {v0}, Lcom/facebook/orca/server/ReceiptResult;->a()Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v2

    .line 439
    if-eqz v2, :cond_0

    .line 440
    iget-object v3, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->a:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v0}, Lcom/facebook/orca/server/ReceiptResult;->e()J

    move-result-wide v4

    invoke-virtual {v3, v2, v4, v5}, Lcom/facebook/orca/cache/ThreadsCache;->a(Lcom/facebook/orca/threads/ThreadSummary;J)V

    .line 442
    iget-object v0, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->e:Lcom/facebook/orca/app/OrcaActivityBroadcaster;

    invoke-virtual {v2}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/facebook/orca/app/OrcaActivityBroadcaster;->a(Ljava/lang/String;)V

    .line 444
    :cond_0
    return-object v1
.end method

.method protected k(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 451
    invoke-interface {p2, p1}, Lcom/facebook/orca/server/OrcaServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v1

    .line 453
    invoke-virtual {v1}, Lcom/facebook/orca/server/OperationResult;->h()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/ReceiptResult;

    .line 454
    invoke-virtual {v0}, Lcom/facebook/orca/server/ReceiptResult;->a()Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v2

    .line 455
    if-eqz v2, :cond_0

    .line 456
    iget-object v3, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->a:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v0}, Lcom/facebook/orca/server/ReceiptResult;->e()J

    move-result-wide v4

    invoke-virtual {v3, v2, v4, v5}, Lcom/facebook/orca/cache/ThreadsCache;->a(Lcom/facebook/orca/threads/ThreadSummary;J)V

    .line 458
    iget-object v0, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->e:Lcom/facebook/orca/app/OrcaActivityBroadcaster;

    invoke-virtual {v2}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/facebook/orca/app/OrcaActivityBroadcaster;->a(Ljava/lang/String;)V

    .line 460
    :cond_0
    return-object v1
.end method

.method protected l(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 467
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 468
    const-string v1, "deleteThreadParams"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/DeleteThreadParams;

    .line 469
    invoke-interface {p2, p1}, Lcom/facebook/orca/server/OrcaServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v1

    .line 470
    invoke-virtual {v0}, Lcom/facebook/orca/server/DeleteThreadParams;->a()Ljava/lang/String;

    move-result-object v0

    .line 471
    iget-object v2, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->a:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v2, v0}, Lcom/facebook/orca/cache/ThreadsCache;->c(Ljava/lang/String;)V

    .line 472
    iget-object v2, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->e:Lcom/facebook/orca/app/OrcaActivityBroadcaster;

    invoke-virtual {v2, v0}, Lcom/facebook/orca/app/OrcaActivityBroadcaster;->d(Ljava/lang/String;)V

    .line 473
    return-object v1
.end method

.method protected m(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 480
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 481
    const-string v1, "deleteMessagesParams"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/DeleteMessagesParams;

    .line 482
    invoke-interface {p2, p1}, Lcom/facebook/orca/server/OrcaServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v1

    .line 483
    invoke-virtual {v0}, Lcom/facebook/orca/server/DeleteMessagesParams;->a()Ljava/lang/String;

    move-result-object v2

    .line 484
    invoke-virtual {v0}, Lcom/facebook/orca/server/DeleteMessagesParams;->b()Lcom/google/common/collect/ImmutableSet;

    move-result-object v3

    .line 485
    iget-object v0, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->a:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v0, v2, v3}, Lcom/facebook/orca/cache/ThreadsCache;->a(Ljava/lang/String;Ljava/util/Set;)V

    .line 486
    invoke-virtual {v1}, Lcom/facebook/orca/server/OperationResult;->i()Landroid/os/Bundle;

    move-result-object v4

    .line 489
    if-eqz v4, :cond_0

    const-string v0, "message_offline_threading_ids"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 490
    const-string v0, "message_offline_threading_ids"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 492
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 493
    iget-object v6, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->k:Lcom/facebook/orca/cache/SendMessageManager;

    invoke-virtual {v6, v2, v0}, Lcom/facebook/orca/cache/SendMessageManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 496
    :cond_0
    if-eqz v4, :cond_1

    const-string v0, "delete_thread"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "delete_thread"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 499
    iget-object v0, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->a:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v0, v2}, Lcom/facebook/orca/cache/ThreadsCache;->c(Ljava/lang/String;)V

    .line 500
    iget-object v0, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->e:Lcom/facebook/orca/app/OrcaActivityBroadcaster;

    invoke-virtual {v0, v2}, Lcom/facebook/orca/app/OrcaActivityBroadcaster;->d(Ljava/lang/String;)V

    .line 505
    :goto_1
    return-object v1

    .line 502
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->e:Lcom/facebook/orca/app/OrcaActivityBroadcaster;

    invoke-virtual {v0, v2}, Lcom/facebook/orca/app/OrcaActivityBroadcaster;->a(Ljava/lang/String;)V

    .line 503
    iget-object v0, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->e:Lcom/facebook/orca/app/OrcaActivityBroadcaster;

    invoke-virtual {v0, v2, v3}, Lcom/facebook/orca/app/OrcaActivityBroadcaster;->a(Ljava/lang/String;Lcom/google/common/collect/ImmutableSet;)V

    goto :goto_1
.end method

.method protected n(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 513
    invoke-interface {p2, p1}, Lcom/facebook/orca/server/OrcaServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v1

    .line 514
    invoke-virtual {v1}, Lcom/facebook/orca/server/OperationResult;->h()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/FetchThreadResult;

    .line 515
    iget-object v2, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->a:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadResult;->a()Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v3

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadResult;->e()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/facebook/orca/cache/ThreadsCache;->a(Lcom/facebook/orca/threads/ThreadSummary;J)V

    .line 518
    iget-object v2, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->a:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadResult;->c()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/facebook/orca/cache/ThreadsCache;->a(Ljava/util/Collection;)V

    .line 519
    iget-object v0, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->c:Lcom/facebook/orca/cache/ThreadDisplayCache;

    invoke-virtual {v0}, Lcom/facebook/orca/cache/ThreadDisplayCache;->a()V

    .line 520
    return-object v1
.end method

.method protected o(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 527
    invoke-interface {p2, p1}, Lcom/facebook/orca/server/OrcaServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v1

    .line 528
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 529
    const-string v2, "threadId"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 530
    const-string v3, "draft"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/compose/MessageDraft;

    .line 531
    iget-object v3, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->a:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v3, v2}, Lcom/facebook/orca/cache/ThreadsCache;->a(Ljava/lang/String;)Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v2

    .line 532
    if-eqz v2, :cond_0

    .line 533
    iget-object v3, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->a:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v3, v2, v0}, Lcom/facebook/orca/cache/ThreadsCache;->a(Lcom/facebook/orca/threads/ThreadSummary;Lcom/facebook/orca/compose/MessageDraft;)V

    .line 535
    :cond_0
    return-object v1
.end method

.method protected p(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 542
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 543
    const-string v1, "folderName"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/FolderName;

    .line 544
    invoke-interface {p2, p1}, Lcom/facebook/orca/server/OrcaServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v1

    .line 545
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 546
    invoke-direct {p0, v0, v2, v3}, Lcom/facebook/orca/cache/CacheServiceHandler;->a(Lcom/facebook/orca/threads/FolderName;J)V

    .line 548
    sget-object v4, Lcom/facebook/orca/threads/FolderName;->e:Lcom/facebook/orca/threads/FolderName;

    if-ne v0, v4, :cond_0

    .line 549
    sget-object v0, Lcom/facebook/orca/threads/FolderName;->b:Lcom/facebook/orca/threads/FolderName;

    invoke-direct {p0, v0, v2, v3}, Lcom/facebook/orca/cache/CacheServiceHandler;->a(Lcom/facebook/orca/threads/FolderName;J)V

    .line 550
    sget-object v0, Lcom/facebook/orca/threads/FolderName;->d:Lcom/facebook/orca/threads/FolderName;

    invoke-direct {p0, v0, v2, v3}, Lcom/facebook/orca/cache/CacheServiceHandler;->a(Lcom/facebook/orca/threads/FolderName;J)V

    .line 552
    :cond_0
    return-object v1
.end method

.method protected q(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 574
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 575
    const-string v1, "threadId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 576
    invoke-direct {p0, v1, p2}, Lcom/facebook/orca/cache/CacheServiceHandler;->a(Ljava/lang/String;Lcom/facebook/orca/server/OrcaServiceHandler;)V

    .line 580
    invoke-interface {p2, p1}, Lcom/facebook/orca/server/OrcaServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v2

    .line 581
    invoke-virtual {v2}, Lcom/facebook/orca/server/OperationResult;->h()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/NewMessageResult;

    .line 583
    if-eqz v0, :cond_1

    .line 584
    iget-object v3, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->a:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v0}, Lcom/facebook/orca/server/NewMessageResult;->b()Lcom/facebook/orca/threads/Message;

    move-result-object v4

    invoke-virtual {v0}, Lcom/facebook/orca/server/NewMessageResult;->c()Lcom/facebook/orca/threads/MessagesCollection;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/facebook/orca/cache/ThreadsCache;->a(Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/threads/MessagesCollection;)V

    .line 588
    invoke-virtual {v0}, Lcom/facebook/orca/server/NewMessageResult;->b()Lcom/facebook/orca/threads/Message;

    move-result-object v0

    .line 590
    iget-object v3, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->c:Lcom/facebook/orca/cache/ThreadDisplayCache;

    invoke-virtual {v3, v0}, Lcom/facebook/orca/cache/ThreadDisplayCache;->a(Lcom/facebook/orca/threads/Message;)V

    .line 592
    invoke-virtual {v0}, Lcom/facebook/orca/threads/Message;->f()Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/orca/threads/ParticipantInfo;->e()Lcom/facebook/orca/users/UserKey;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->b:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v4}, Lcom/facebook/orca/cache/DataCache;->b()Lcom/facebook/orca/users/UserKey;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 593
    iget-object v3, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->c:Lcom/facebook/orca/cache/ThreadDisplayCache;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/Message;->f()Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/orca/threads/ParticipantInfo;->e()Lcom/facebook/orca/users/UserKey;

    move-result-object v4

    invoke-virtual {v0}, Lcom/facebook/orca/threads/Message;->c()J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Lcom/facebook/orca/cache/ThreadDisplayCache;->a(Lcom/facebook/orca/users/UserKey;J)V

    .line 599
    :cond_0
    iget-object v3, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->e:Lcom/facebook/orca/app/OrcaActivityBroadcaster;

    invoke-virtual {v3, v1}, Lcom/facebook/orca/app/OrcaActivityBroadcaster;->a(Ljava/lang/String;)V

    .line 602
    iget-object v3, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->a:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v3, v1}, Lcom/facebook/orca/cache/ThreadsCache;->a(Ljava/lang/String;)Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v1

    .line 603
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/facebook/orca/threads/ThreadSummary;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/facebook/orca/threads/Message;->f()Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/orca/threads/ParticipantInfo;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/facebook/orca/threads/Message;->f()Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/orca/threads/ParticipantInfo;->e()Lcom/facebook/orca/users/UserKey;

    move-result-object v1

    iget-object v3, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->b:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v3}, Lcom/facebook/orca/cache/DataCache;->b()Lcom/facebook/orca/users/UserKey;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/facebook/orca/users/UserKey;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 607
    iget-object v1, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->i:Lcom/facebook/orca/cache/DeliveredReadReceiptManager;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/cache/DeliveredReadReceiptManager;->a(Lcom/facebook/orca/threads/Message;)V

    .line 611
    :cond_1
    return-object v2
.end method

.method protected r(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 639
    invoke-interface {p2, p1}, Lcom/facebook/orca/server/OrcaServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v1

    .line 640
    invoke-virtual {v1}, Lcom/facebook/orca/server/OperationResult;->h()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/appconfig/AppConfig;

    .line 641
    invoke-virtual {v1}, Lcom/facebook/orca/server/OperationResult;->g()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "clearSmsCache"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 642
    iget-object v2, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->l:Lcom/facebook/orca/app/OrcaDataManager;

    invoke-virtual {v2}, Lcom/facebook/orca/app/OrcaDataManager;->f()V

    .line 644
    :cond_0
    iget-object v2, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->d:Lcom/facebook/orca/cache/AppConfigCache;

    invoke-virtual {v2, v0}, Lcom/facebook/orca/cache/AppConfigCache;->a(Lcom/facebook/orca/appconfig/AppConfig;)V

    .line 645
    return-object v1
.end method

.method protected s(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 653
    iget-object v0, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->j:Lcom/facebook/orca/cache/ChatVisibilityCache;

    invoke-virtual {v0}, Lcom/facebook/orca/cache/ChatVisibilityCache;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 654
    iget-object v0, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->j:Lcom/facebook/orca/cache/ChatVisibilityCache;

    invoke-virtual {v0}, Lcom/facebook/orca/cache/ChatVisibilityCache;->b()Z

    move-result v0

    .line 655
    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/server/OperationResult;->a(Ljava/lang/String;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    .line 662
    :cond_0
    :goto_0
    return-object v0

    .line 658
    :cond_1
    invoke-interface {p2, p1}, Lcom/facebook/orca/server/OrcaServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    .line 659
    invoke-virtual {v0}, Lcom/facebook/orca/server/OperationResult;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 660
    iget-object v1, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->j:Lcom/facebook/orca/cache/ChatVisibilityCache;

    invoke-virtual {v0}, Lcom/facebook/orca/server/OperationResult;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/facebook/orca/cache/ChatVisibilityCache;->a(Z)V

    goto :goto_0
.end method

.method protected t(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 669
    invoke-interface {p2, p1}, Lcom/facebook/orca/server/OrcaServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    .line 670
    invoke-virtual {v0}, Lcom/facebook/orca/server/OperationResult;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 671
    iget-object v1, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->j:Lcom/facebook/orca/cache/ChatVisibilityCache;

    invoke-virtual {v0}, Lcom/facebook/orca/server/OperationResult;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/facebook/orca/cache/ChatVisibilityCache;->a(Z)V

    .line 673
    :cond_0
    return-object v0
.end method
