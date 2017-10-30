.class public Lcom/facebook/orca/threadlist/ThreadListLoader;
.super Ljava/lang/Object;
.source "ThreadListLoader.java"


# static fields
.field public static a:Lcom/facebook/orca/threadlist/ThreadListLoader$Result;

.field private static final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private final c:Landroid/app/Activity;

.field private final d:Lcom/facebook/orca/cache/DataCache;

.field private final e:Lcom/facebook/orca/ops/OrcaServiceOperationFactory;

.field private final f:Lcom/facebook/orca/common/util/Clock;

.field private g:Lcom/facebook/orca/threads/FolderName;

.field private h:Lcom/facebook/orca/threadlist/ThreadListLoader$Callback;

.field private i:Lcom/facebook/orca/server/DataFreshnessParam;

.field private j:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/facebook/orca/server/OperationResult;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/facebook/orca/server/OperationResult;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lcom/facebook/orca/threadlist/ThreadListLoader$Params;

.field private m:Lcom/facebook/orca/threadlist/ThreadListLoader$Result;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const-wide/16 v2, 0x0

    .line 46
    const-class v0, Lcom/facebook/orca/threadlist/ThreadListLoader;

    sput-object v0, Lcom/facebook/orca/threadlist/ThreadListLoader;->b:Ljava/lang/Class;

    .line 71
    new-instance v0, Lcom/facebook/orca/threadlist/ThreadListLoader$Result;

    invoke-static {}, Lcom/facebook/orca/threads/ThreadsCollection;->a()Lcom/facebook/orca/threads/ThreadsCollection;

    move-result-object v1

    move-wide v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/orca/threadlist/ThreadListLoader$Result;-><init>(Lcom/facebook/orca/threads/ThreadsCollection;JJ)V

    sput-object v0, Lcom/facebook/orca/threadlist/ThreadListLoader;->a:Lcom/facebook/orca/threadlist/ThreadListLoader$Result;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/facebook/orca/cache/DataCache;Lcom/facebook/orca/ops/OrcaServiceOperationFactory;Lcom/facebook/orca/common/util/Clock;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    iput-object p1, p0, Lcom/facebook/orca/threadlist/ThreadListLoader;->c:Landroid/app/Activity;

    .line 151
    iput-object p2, p0, Lcom/facebook/orca/threadlist/ThreadListLoader;->d:Lcom/facebook/orca/cache/DataCache;

    .line 152
    iput-object p3, p0, Lcom/facebook/orca/threadlist/ThreadListLoader;->e:Lcom/facebook/orca/ops/OrcaServiceOperationFactory;

    .line 153
    iput-object p4, p0, Lcom/facebook/orca/threadlist/ThreadListLoader;->f:Lcom/facebook/orca/common/util/Clock;

    .line 154
    return-void
.end method

.method private static a(Lcom/facebook/orca/threadlist/ThreadListLoader$Params;Lcom/facebook/orca/threadlist/ThreadListLoader$Params;)Lcom/facebook/orca/threadlist/ThreadListLoader$Params;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 233
    iget-boolean v0, p0, Lcom/facebook/orca/threadlist/ThreadListLoader$Params;->a:Z

    if-nez v0, :cond_0

    iget-boolean v0, p1, Lcom/facebook/orca/threadlist/ThreadListLoader$Params;->a:Z

    if-eqz v0, :cond_5

    :cond_0
    move v0, v2

    .line 234
    :goto_0
    iget-boolean v3, p0, Lcom/facebook/orca/threadlist/ThreadListLoader$Params;->b:Z

    if-nez v3, :cond_1

    iget-boolean v3, p1, Lcom/facebook/orca/threadlist/ThreadListLoader$Params;->b:Z

    if-eqz v3, :cond_2

    :cond_1
    move v1, v2

    .line 235
    :cond_2
    iget-boolean v2, p0, Lcom/facebook/orca/threadlist/ThreadListLoader$Params;->a:Z

    if-ne v2, v0, :cond_3

    iget-boolean v2, p0, Lcom/facebook/orca/threadlist/ThreadListLoader$Params;->b:Z

    if-eq v2, v1, :cond_4

    .line 237
    :cond_3
    new-instance p0, Lcom/facebook/orca/threadlist/ThreadListLoader$Params;

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/threadlist/ThreadListLoader$Params;-><init>(ZZ)V

    .line 239
    :cond_4
    return-object p0

    :cond_5
    move v0, v1

    .line 233
    goto :goto_0
.end method

.method static synthetic a(Lcom/facebook/orca/threadlist/ThreadListLoader;Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/facebook/orca/threadlist/ThreadListLoader;->j:Lcom/google/common/util/concurrent/ListenableFuture;

    return-object p1
.end method

.method private a(Lcom/facebook/orca/ops/ServiceException;)V
    .locals 3
    .parameter

    .prologue
    .line 357
    sget-object v0, Lcom/facebook/orca/threadlist/ThreadListLoader;->b:Ljava/lang/Class;

    const-string v1, "onFetchThreadsError"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/Class;Ljava/lang/String;)V

    .line 358
    new-instance v0, Lcom/facebook/orca/threadlist/ThreadListLoader$Error;

    iget-object v1, p0, Lcom/facebook/orca/threadlist/ThreadListLoader;->l:Lcom/facebook/orca/threadlist/ThreadListLoader$Params;

    iget-boolean v1, v1, Lcom/facebook/orca/threadlist/ThreadListLoader$Params;->b:Z

    invoke-direct {v0, p1, v1}, Lcom/facebook/orca/threadlist/ThreadListLoader$Error;-><init>(Lcom/facebook/orca/ops/ServiceException;Z)V

    .line 359
    iget-object v1, p0, Lcom/facebook/orca/threadlist/ThreadListLoader;->h:Lcom/facebook/orca/threadlist/ThreadListLoader$Callback;

    sget-object v2, Lcom/facebook/orca/threadlist/ThreadListLoader$LoadType;->THREAD_LIST:Lcom/facebook/orca/threadlist/ThreadListLoader$LoadType;

    invoke-interface {v1, v2, v0}, Lcom/facebook/orca/threadlist/ThreadListLoader$Callback;->a(Lcom/facebook/orca/threadlist/ThreadListLoader$LoadType;Lcom/facebook/orca/threadlist/ThreadListLoader$Error;)V

    .line 360
    return-void
.end method

.method private a(Lcom/facebook/orca/server/DataFreshnessParam;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 257
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListLoader;->j:Lcom/google/common/util/concurrent/ListenableFuture;

    if-eqz v0, :cond_0

    .line 289
    :goto_0
    return-void

    .line 262
    :cond_0
    sget-object v0, Lcom/facebook/orca/threadlist/ThreadListLoader;->b:Ljava/lang/Class;

    const-string v1, "Starting thread list fetch (%s)"

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 263
    iput-object p1, p0, Lcom/facebook/orca/threadlist/ThreadListLoader;->i:Lcom/facebook/orca/server/DataFreshnessParam;

    .line 264
    invoke-static {}, Lcom/facebook/orca/server/FetchThreadListParams;->newBuilder()Lcom/facebook/orca/server/FetchThreadListParamsBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/orca/server/FetchThreadListParamsBuilder;->a(Lcom/facebook/orca/server/DataFreshnessParam;)Lcom/facebook/orca/server/FetchThreadListParamsBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/orca/threadlist/ThreadListLoader;->g:Lcom/facebook/orca/threads/FolderName;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/server/FetchThreadListParamsBuilder;->a(Lcom/facebook/orca/threads/FolderName;)Lcom/facebook/orca/server/FetchThreadListParamsBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/facebook/orca/server/FetchThreadListParamsBuilder;->a(Z)Lcom/facebook/orca/server/FetchThreadListParamsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadListParamsBuilder;->f()Lcom/facebook/orca/server/FetchThreadListParams;

    move-result-object v0

    .line 269
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 270
    const-string v2, "fetchThreadListParams"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 272
    iget-object v2, p0, Lcom/facebook/orca/threadlist/ThreadListLoader;->e:Lcom/facebook/orca/ops/OrcaServiceOperationFactory;

    const-string v3, "fetch_thread_list"

    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListLoader;->c:Landroid/app/Activity;

    check-cast v0, Lcom/facebook/orca/activity/FbFragmentActivity;

    invoke-virtual {v2, v3, v1, v0}, Lcom/facebook/orca/ops/OrcaServiceOperationFactory;->a(Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/orca/activity/FbFragmentActivity;)Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;->d()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListLoader;->j:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 275
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListLoader;->h:Lcom/facebook/orca/threadlist/ThreadListLoader$Callback;

    sget-object v1, Lcom/facebook/orca/threadlist/ThreadListLoader$LoadType;->THREAD_LIST:Lcom/facebook/orca/threadlist/ThreadListLoader$LoadType;

    invoke-interface {v0, v1}, Lcom/facebook/orca/threadlist/ThreadListLoader$Callback;->a(Lcom/facebook/orca/threadlist/ThreadListLoader$LoadType;)V

    .line 276
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListLoader;->j:Lcom/google/common/util/concurrent/ListenableFuture;

    new-instance v1, Lcom/facebook/orca/threadlist/ThreadListLoader$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/threadlist/ThreadListLoader$1;-><init>(Lcom/facebook/orca/threadlist/ThreadListLoader;)V

    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/Futures;->a(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;)V

    goto :goto_0
.end method

.method private a(Lcom/facebook/orca/server/OperationResult;)V
    .locals 9
    .parameter

    .prologue
    .line 297
    sget-object v0, Lcom/facebook/orca/threadlist/ThreadListLoader;->b:Ljava/lang/Class;

    const-string v1, "onFetchThreadsSucceeded"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/Class;Ljava/lang/String;)V

    .line 298
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationResult;->h()Landroid/os/Parcelable;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/facebook/orca/server/FetchThreadListResult;

    .line 300
    invoke-virtual {v6}, Lcom/facebook/orca/server/FetchThreadListResult;->b()Lcom/facebook/orca/threads/ThreadsCollection;

    move-result-object v1

    .line 301
    invoke-virtual {v6}, Lcom/facebook/orca/server/FetchThreadListResult;->h()Lcom/facebook/orca/threads/FolderCounts;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/threads/FolderCounts;->d()J

    move-result-wide v4

    .line 302
    invoke-virtual {v6}, Lcom/facebook/orca/server/FetchThreadListResult;->e()J

    move-result-wide v2

    .line 303
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListLoader;->f:Lcom/facebook/orca/common/util/Clock;

    invoke-interface {v0}, Lcom/facebook/orca/common/util/Clock;->a()J

    move-result-wide v7

    .line 304
    new-instance v0, Lcom/facebook/orca/threadlist/ThreadListLoader$Result;

    invoke-direct/range {v0 .. v5}, Lcom/facebook/orca/threadlist/ThreadListLoader$Result;-><init>(Lcom/facebook/orca/threads/ThreadsCollection;JJ)V

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListLoader;->m:Lcom/facebook/orca/threadlist/ThreadListLoader$Result;

    .line 307
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListLoader;->g:Lcom/facebook/orca/threads/FolderName;

    sget-object v1, Lcom/facebook/orca/threads/FolderName;->e:Lcom/facebook/orca/threads/FolderName;

    if-ne v0, v1, :cond_0

    .line 308
    invoke-virtual {v6}, Lcom/facebook/orca/server/FetchThreadListResult;->m()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    .line 310
    sget-object v1, Lcom/facebook/orca/threads/FolderName;->b:Lcom/facebook/orca/threads/FolderName;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/FetchThreadListResult;

    .line 311
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadListResult;->n()Lcom/facebook/orca/ops/ServiceException;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 313
    new-instance v1, Lcom/facebook/orca/threadlist/ThreadListLoader$Error;

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadListResult;->n()Lcom/facebook/orca/ops/ServiceException;

    move-result-object v0

    iget-object v2, p0, Lcom/facebook/orca/threadlist/ThreadListLoader;->l:Lcom/facebook/orca/threadlist/ThreadListLoader$Params;

    iget-boolean v2, v2, Lcom/facebook/orca/threadlist/ThreadListLoader$Params;->b:Z

    invoke-direct {v1, v0, v2}, Lcom/facebook/orca/threadlist/ThreadListLoader$Error;-><init>(Lcom/facebook/orca/ops/ServiceException;Z)V

    .line 317
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListLoader;->h:Lcom/facebook/orca/threadlist/ThreadListLoader$Callback;

    sget-object v2, Lcom/facebook/orca/threadlist/ThreadListLoader$LoadType;->THREAD_LIST:Lcom/facebook/orca/threadlist/ThreadListLoader$LoadType;

    invoke-interface {v0, v2, v1}, Lcom/facebook/orca/threadlist/ThreadListLoader$Callback;->b(Lcom/facebook/orca/threadlist/ThreadListLoader$LoadType;Lcom/facebook/orca/threadlist/ThreadListLoader$Error;)V

    .line 321
    :cond_0
    invoke-virtual {v6}, Lcom/facebook/orca/server/FetchThreadListResult;->d()Lcom/facebook/orca/server/DataFreshnessResult;

    move-result-object v0

    .line 322
    invoke-virtual {v6}, Lcom/facebook/orca/server/FetchThreadListResult;->l()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/facebook/orca/threadlist/ThreadListLoader;->i:Lcom/facebook/orca/server/DataFreshnessParam;

    sget-object v2, Lcom/facebook/orca/server/DataFreshnessParam;->CHECK_SERVER_FOR_NEW_DATA:Lcom/facebook/orca/server/DataFreshnessParam;

    if-ne v1, v2, :cond_1

    .line 324
    sget-object v0, Lcom/facebook/orca/threadlist/ThreadListLoader;->b:Ljava/lang/Class;

    const-string v1, "Subfolder failure. Won\'t reattempt server fetch. Finished loading"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/Class;Ljava/lang/String;)V

    .line 325
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListLoader;->h:Lcom/facebook/orca/threadlist/ThreadListLoader$Callback;

    sget-object v1, Lcom/facebook/orca/threadlist/ThreadListLoader$LoadType;->THREAD_LIST:Lcom/facebook/orca/threadlist/ThreadListLoader$LoadType;

    iget-object v2, p0, Lcom/facebook/orca/threadlist/ThreadListLoader;->m:Lcom/facebook/orca/threadlist/ThreadListLoader$Result;

    invoke-interface {v0, v1, v2}, Lcom/facebook/orca/threadlist/ThreadListLoader$Callback;->a(Lcom/facebook/orca/threadlist/ThreadListLoader$LoadType;Lcom/facebook/orca/threadlist/ThreadListLoader$Result;)V

    .line 326
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListLoader;->h:Lcom/facebook/orca/threadlist/ThreadListLoader$Callback;

    sget-object v1, Lcom/facebook/orca/threadlist/ThreadListLoader$LoadType;->THREAD_LIST:Lcom/facebook/orca/threadlist/ThreadListLoader$LoadType;

    invoke-interface {v0, v1}, Lcom/facebook/orca/threadlist/ThreadListLoader$Callback;->b(Lcom/facebook/orca/threadlist/ThreadListLoader$LoadType;)V

    .line 349
    :goto_0
    return-void

    .line 327
    :cond_1
    iget-object v1, p0, Lcom/facebook/orca/threadlist/ThreadListLoader;->l:Lcom/facebook/orca/threadlist/ThreadListLoader$Params;

    iget-boolean v1, v1, Lcom/facebook/orca/threadlist/ThreadListLoader$Params;->a:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/facebook/orca/threadlist/ThreadListLoader;->i:Lcom/facebook/orca/server/DataFreshnessParam;

    sget-object v2, Lcom/facebook/orca/server/DataFreshnessParam;->CHECK_SERVER_FOR_NEW_DATA:Lcom/facebook/orca/server/DataFreshnessParam;

    if-eq v1, v2, :cond_2

    sget-object v1, Lcom/facebook/orca/server/DataFreshnessResult;->FROM_SERVER:Lcom/facebook/orca/server/DataFreshnessResult;

    if-eq v0, v1, :cond_2

    .line 331
    sget-object v0, Lcom/facebook/orca/threadlist/ThreadListLoader;->b:Ljava/lang/Class;

    const-string v1, "Starting load because need to hit server"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/Class;Ljava/lang/String;)V

    .line 332
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListLoader;->h:Lcom/facebook/orca/threadlist/ThreadListLoader$Callback;

    sget-object v1, Lcom/facebook/orca/threadlist/ThreadListLoader$LoadType;->THREAD_LIST:Lcom/facebook/orca/threadlist/ThreadListLoader$LoadType;

    iget-object v2, p0, Lcom/facebook/orca/threadlist/ThreadListLoader;->m:Lcom/facebook/orca/threadlist/ThreadListLoader$Result;

    invoke-interface {v0, v1, v2}, Lcom/facebook/orca/threadlist/ThreadListLoader$Callback;->a(Lcom/facebook/orca/threadlist/ThreadListLoader$LoadType;Lcom/facebook/orca/threadlist/ThreadListLoader$Result;)V

    .line 333
    sget-object v0, Lcom/facebook/orca/server/DataFreshnessParam;->CHECK_SERVER_FOR_NEW_DATA:Lcom/facebook/orca/server/DataFreshnessParam;

    invoke-direct {p0, v0}, Lcom/facebook/orca/threadlist/ThreadListLoader;->a(Lcom/facebook/orca/server/DataFreshnessParam;)V

    goto :goto_0

    .line 334
    :cond_2
    sget-object v1, Lcom/facebook/orca/server/DataFreshnessResult;->FROM_CACHE_STALE:Lcom/facebook/orca/server/DataFreshnessResult;

    if-ne v0, v1, :cond_3

    .line 336
    sget-object v0, Lcom/facebook/orca/threadlist/ThreadListLoader;->b:Ljava/lang/Class;

    const-string v1, "Starting load because data from cache was stale"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/Class;Ljava/lang/String;)V

    .line 337
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListLoader;->h:Lcom/facebook/orca/threadlist/ThreadListLoader$Callback;

    sget-object v1, Lcom/facebook/orca/threadlist/ThreadListLoader$LoadType;->THREAD_LIST:Lcom/facebook/orca/threadlist/ThreadListLoader$LoadType;

    iget-object v2, p0, Lcom/facebook/orca/threadlist/ThreadListLoader;->m:Lcom/facebook/orca/threadlist/ThreadListLoader$Result;

    invoke-interface {v0, v1, v2}, Lcom/facebook/orca/threadlist/ThreadListLoader$Callback;->a(Lcom/facebook/orca/threadlist/ThreadListLoader$LoadType;Lcom/facebook/orca/threadlist/ThreadListLoader$Result;)V

    .line 338
    sget-object v0, Lcom/facebook/orca/server/DataFreshnessParam;->CHECK_SERVER_FOR_NEW_DATA:Lcom/facebook/orca/server/DataFreshnessParam;

    invoke-direct {p0, v0}, Lcom/facebook/orca/threadlist/ThreadListLoader;->a(Lcom/facebook/orca/server/DataFreshnessParam;)V

    goto :goto_0

    .line 339
    :cond_3
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListLoader;->m:Lcom/facebook/orca/threadlist/ThreadListLoader$Result;

    iget-wide v0, v0, Lcom/facebook/orca/threadlist/ThreadListLoader$Result;->b:J

    sub-long v0, v7, v0

    const-wide/32 v2, 0x1b7740

    cmp-long v0, v0, v2

    if-ltz v0, :cond_4

    .line 341
    sget-object v0, Lcom/facebook/orca/threadlist/ThreadListLoader;->b:Ljava/lang/Class;

    const-string v1, "Starting load because haven\'t checked the server recently"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/Class;Ljava/lang/String;)V

    .line 342
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListLoader;->h:Lcom/facebook/orca/threadlist/ThreadListLoader$Callback;

    sget-object v1, Lcom/facebook/orca/threadlist/ThreadListLoader$LoadType;->THREAD_LIST:Lcom/facebook/orca/threadlist/ThreadListLoader$LoadType;

    iget-object v2, p0, Lcom/facebook/orca/threadlist/ThreadListLoader;->m:Lcom/facebook/orca/threadlist/ThreadListLoader$Result;

    invoke-interface {v0, v1, v2}, Lcom/facebook/orca/threadlist/ThreadListLoader$Callback;->a(Lcom/facebook/orca/threadlist/ThreadListLoader$LoadType;Lcom/facebook/orca/threadlist/ThreadListLoader$Result;)V

    .line 343
    sget-object v0, Lcom/facebook/orca/server/DataFreshnessParam;->CHECK_SERVER_FOR_NEW_DATA:Lcom/facebook/orca/server/DataFreshnessParam;

    invoke-direct {p0, v0}, Lcom/facebook/orca/threadlist/ThreadListLoader;->a(Lcom/facebook/orca/server/DataFreshnessParam;)V

    goto :goto_0

    .line 345
    :cond_4
    sget-object v0, Lcom/facebook/orca/threadlist/ThreadListLoader;->b:Ljava/lang/Class;

    const-string v1, "Finished loading"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/Class;Ljava/lang/String;)V

    .line 346
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListLoader;->h:Lcom/facebook/orca/threadlist/ThreadListLoader$Callback;

    sget-object v1, Lcom/facebook/orca/threadlist/ThreadListLoader$LoadType;->THREAD_LIST:Lcom/facebook/orca/threadlist/ThreadListLoader$LoadType;

    iget-object v2, p0, Lcom/facebook/orca/threadlist/ThreadListLoader;->m:Lcom/facebook/orca/threadlist/ThreadListLoader$Result;

    invoke-interface {v0, v1, v2}, Lcom/facebook/orca/threadlist/ThreadListLoader$Callback;->a(Lcom/facebook/orca/threadlist/ThreadListLoader$LoadType;Lcom/facebook/orca/threadlist/ThreadListLoader$Result;)V

    .line 347
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListLoader;->h:Lcom/facebook/orca/threadlist/ThreadListLoader$Callback;

    sget-object v1, Lcom/facebook/orca/threadlist/ThreadListLoader$LoadType;->THREAD_LIST:Lcom/facebook/orca/threadlist/ThreadListLoader$LoadType;

    invoke-interface {v0, v1}, Lcom/facebook/orca/threadlist/ThreadListLoader$Callback;->b(Lcom/facebook/orca/threadlist/ThreadListLoader$LoadType;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/facebook/orca/threadlist/ThreadListLoader;Lcom/facebook/orca/ops/ServiceException;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/facebook/orca/threadlist/ThreadListLoader;->a(Lcom/facebook/orca/ops/ServiceException;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/threadlist/ThreadListLoader;Lcom/facebook/orca/server/OperationResult;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/facebook/orca/threadlist/ThreadListLoader;->a(Lcom/facebook/orca/server/OperationResult;)V

    return-void
.end method

.method static synthetic b(Lcom/facebook/orca/threadlist/ThreadListLoader;Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/facebook/orca/threadlist/ThreadListLoader;->k:Lcom/google/common/util/concurrent/ListenableFuture;

    return-object p1
.end method

.method private b(Lcom/facebook/orca/ops/ServiceException;)V
    .locals 4
    .parameter

    .prologue
    .line 432
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListLoader;->h:Lcom/facebook/orca/threadlist/ThreadListLoader$Callback;

    sget-object v1, Lcom/facebook/orca/threadlist/ThreadListLoader$LoadType;->MORE_THREADS:Lcom/facebook/orca/threadlist/ThreadListLoader$LoadType;

    new-instance v2, Lcom/facebook/orca/threadlist/ThreadListLoader$Error;

    const/4 v3, 0x1

    invoke-direct {v2, p1, v3}, Lcom/facebook/orca/threadlist/ThreadListLoader$Error;-><init>(Lcom/facebook/orca/ops/ServiceException;Z)V

    invoke-interface {v0, v1, v2}, Lcom/facebook/orca/threadlist/ThreadListLoader$Callback;->a(Lcom/facebook/orca/threadlist/ThreadListLoader$LoadType;Lcom/facebook/orca/threadlist/ThreadListLoader$Error;)V

    .line 433
    return-void
.end method

.method private b(Lcom/facebook/orca/server/OperationResult;)V
    .locals 6
    .parameter

    .prologue
    .line 412
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListLoader;->m:Lcom/facebook/orca/threadlist/ThreadListLoader$Result;

    if-nez v0, :cond_0

    .line 426
    :goto_0
    return-void

    .line 415
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationResult;->h()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/FetchMoreThreadsResult;

    .line 416
    iget-object v1, p0, Lcom/facebook/orca/threadlist/ThreadListLoader;->m:Lcom/facebook/orca/threadlist/ThreadListLoader$Result;

    iget-object v1, v1, Lcom/facebook/orca/threadlist/ThreadListLoader$Result;->a:Lcom/facebook/orca/threads/ThreadsCollection;

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchMoreThreadsResult;->b()Lcom/facebook/orca/threads/ThreadsCollection;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/orca/threads/ThreadsCollection;->a(Lcom/facebook/orca/threads/ThreadsCollection;Lcom/facebook/orca/threads/ThreadsCollection;)Lcom/facebook/orca/threads/ThreadsCollection;

    move-result-object v1

    .line 419
    new-instance v0, Lcom/facebook/orca/threadlist/ThreadListLoader$Result;

    iget-object v2, p0, Lcom/facebook/orca/threadlist/ThreadListLoader;->m:Lcom/facebook/orca/threadlist/ThreadListLoader$Result;

    iget-wide v2, v2, Lcom/facebook/orca/threadlist/ThreadListLoader$Result;->b:J

    iget-object v4, p0, Lcom/facebook/orca/threadlist/ThreadListLoader;->m:Lcom/facebook/orca/threadlist/ThreadListLoader$Result;

    iget-wide v4, v4, Lcom/facebook/orca/threadlist/ThreadListLoader$Result;->c:J

    invoke-direct/range {v0 .. v5}, Lcom/facebook/orca/threadlist/ThreadListLoader$Result;-><init>(Lcom/facebook/orca/threads/ThreadsCollection;JJ)V

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListLoader;->m:Lcom/facebook/orca/threadlist/ThreadListLoader$Result;

    .line 424
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListLoader;->h:Lcom/facebook/orca/threadlist/ThreadListLoader$Callback;

    sget-object v1, Lcom/facebook/orca/threadlist/ThreadListLoader$LoadType;->MORE_THREADS:Lcom/facebook/orca/threadlist/ThreadListLoader$LoadType;

    iget-object v2, p0, Lcom/facebook/orca/threadlist/ThreadListLoader;->m:Lcom/facebook/orca/threadlist/ThreadListLoader$Result;

    invoke-interface {v0, v1, v2}, Lcom/facebook/orca/threadlist/ThreadListLoader$Callback;->a(Lcom/facebook/orca/threadlist/ThreadListLoader$LoadType;Lcom/facebook/orca/threadlist/ThreadListLoader$Result;)V

    .line 425
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListLoader;->h:Lcom/facebook/orca/threadlist/ThreadListLoader$Callback;

    sget-object v1, Lcom/facebook/orca/threadlist/ThreadListLoader$LoadType;->MORE_THREADS:Lcom/facebook/orca/threadlist/ThreadListLoader$LoadType;

    invoke-interface {v0, v1}, Lcom/facebook/orca/threadlist/ThreadListLoader$Callback;->b(Lcom/facebook/orca/threadlist/ThreadListLoader$LoadType;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/facebook/orca/threadlist/ThreadListLoader;Lcom/facebook/orca/ops/ServiceException;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/facebook/orca/threadlist/ThreadListLoader;->b(Lcom/facebook/orca/ops/ServiceException;)V

    return-void
.end method

.method static synthetic b(Lcom/facebook/orca/threadlist/ThreadListLoader;Lcom/facebook/orca/server/OperationResult;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/facebook/orca/threadlist/ThreadListLoader;->b(Lcom/facebook/orca/server/OperationResult;)V

    return-void
.end method

.method private e()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 169
    iput-object v1, p0, Lcom/facebook/orca/threadlist/ThreadListLoader;->l:Lcom/facebook/orca/threadlist/ThreadListLoader$Params;

    .line 170
    iput-object v1, p0, Lcom/facebook/orca/threadlist/ThreadListLoader;->m:Lcom/facebook/orca/threadlist/ThreadListLoader$Result;

    .line 171
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListLoader;->j:Lcom/google/common/util/concurrent/ListenableFuture;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListLoader;->j:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v0, v2}, Lcom/google/common/util/concurrent/ListenableFuture;->cancel(Z)Z

    .line 173
    iput-object v1, p0, Lcom/facebook/orca/threadlist/ThreadListLoader;->j:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListLoader;->k:Lcom/google/common/util/concurrent/ListenableFuture;

    if-eqz v0, :cond_1

    .line 176
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListLoader;->k:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v0, v2}, Lcom/google/common/util/concurrent/ListenableFuture;->cancel(Z)Z

    .line 177
    iput-object v1, p0, Lcom/facebook/orca/threadlist/ThreadListLoader;->k:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 179
    :cond_1
    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/orca/threadlist/ThreadListLoader$Callback;)V
    .locals 0
    .parameter

    .prologue
    .line 165
    iput-object p1, p0, Lcom/facebook/orca/threadlist/ThreadListLoader;->h:Lcom/facebook/orca/threadlist/ThreadListLoader$Callback;

    .line 166
    return-void
.end method

.method public a(Lcom/facebook/orca/threadlist/ThreadListLoader$Params;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 187
    sget-object v1, Lcom/facebook/orca/threadlist/ThreadListLoader;->b:Ljava/lang/Class;

    const-string v2, "startLoad called with %s"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object p1, v3, v0

    invoke-static {v1, v2, v3}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 189
    sget-object v1, Lcom/facebook/orca/threadlist/ThreadListLoader;->b:Ljava/lang/Class;

    const-string v2, "startLoad"

    invoke-static {v1, v2}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/Class;Ljava/lang/String;)V

    .line 191
    iget-object v1, p0, Lcom/facebook/orca/threadlist/ThreadListLoader;->d:Lcom/facebook/orca/cache/DataCache;

    iget-object v2, p0, Lcom/facebook/orca/threadlist/ThreadListLoader;->g:Lcom/facebook/orca/threads/FolderName;

    invoke-virtual {v1, v2}, Lcom/facebook/orca/cache/DataCache;->a(Lcom/facebook/orca/threads/FolderName;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 192
    sget-object v0, Lcom/facebook/orca/threadlist/ThreadListLoader;->b:Ljava/lang/Class;

    const-string v1, "Have cached data"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/Class;Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListLoader;->d:Lcom/facebook/orca/cache/DataCache;

    iget-object v1, p0, Lcom/facebook/orca/threadlist/ThreadListLoader;->g:Lcom/facebook/orca/threads/FolderName;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/cache/DataCache;->c(Lcom/facebook/orca/threads/FolderName;)Lcom/facebook/orca/threads/ThreadsCollection;

    move-result-object v1

    .line 194
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListLoader;->d:Lcom/facebook/orca/cache/DataCache;

    iget-object v2, p0, Lcom/facebook/orca/threadlist/ThreadListLoader;->g:Lcom/facebook/orca/threads/FolderName;

    invoke-virtual {v0, v2}, Lcom/facebook/orca/cache/DataCache;->f(Lcom/facebook/orca/threads/FolderName;)J

    move-result-wide v2

    .line 195
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListLoader;->d:Lcom/facebook/orca/cache/DataCache;

    iget-object v4, p0, Lcom/facebook/orca/threadlist/ThreadListLoader;->g:Lcom/facebook/orca/threads/FolderName;

    invoke-virtual {v0, v4}, Lcom/facebook/orca/cache/DataCache;->g(Lcom/facebook/orca/threads/FolderName;)Lcom/facebook/orca/threads/FolderCounts;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/threads/FolderCounts;->d()J

    move-result-wide v4

    .line 196
    new-instance v0, Lcom/facebook/orca/threadlist/ThreadListLoader$Result;

    invoke-direct/range {v0 .. v5}, Lcom/facebook/orca/threadlist/ThreadListLoader$Result;-><init>(Lcom/facebook/orca/threads/ThreadsCollection;JJ)V

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListLoader;->m:Lcom/facebook/orca/threadlist/ThreadListLoader$Result;

    .line 197
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListLoader;->h:Lcom/facebook/orca/threadlist/ThreadListLoader$Callback;

    sget-object v1, Lcom/facebook/orca/threadlist/ThreadListLoader$LoadType;->THREAD_LIST:Lcom/facebook/orca/threadlist/ThreadListLoader$LoadType;

    iget-object v2, p0, Lcom/facebook/orca/threadlist/ThreadListLoader;->m:Lcom/facebook/orca/threadlist/ThreadListLoader$Result;

    invoke-interface {v0, v1, v2}, Lcom/facebook/orca/threadlist/ThreadListLoader$Callback;->a(Lcom/facebook/orca/threadlist/ThreadListLoader$LoadType;Lcom/facebook/orca/threadlist/ThreadListLoader$Result;)V

    move v0, v6

    .line 201
    :cond_0
    iget-object v1, p0, Lcom/facebook/orca/threadlist/ThreadListLoader;->j:Lcom/google/common/util/concurrent/ListenableFuture;

    if-nez v1, :cond_1

    .line 202
    iput-object p1, p0, Lcom/facebook/orca/threadlist/ThreadListLoader;->l:Lcom/facebook/orca/threadlist/ThreadListLoader$Params;

    .line 212
    if-eqz v0, :cond_4

    .line 213
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListLoader;->l:Lcom/facebook/orca/threadlist/ThreadListLoader$Params;

    iget-boolean v0, v0, Lcom/facebook/orca/threadlist/ThreadListLoader$Params;->a:Z

    if-eqz v0, :cond_2

    .line 215
    sget-object v0, Lcom/facebook/orca/threadlist/ThreadListLoader;->b:Ljava/lang/Class;

    const-string v1, "Starting load because need to hit server"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/Class;Ljava/lang/String;)V

    .line 216
    sget-object v0, Lcom/facebook/orca/server/DataFreshnessParam;->CHECK_SERVER_FOR_NEW_DATA:Lcom/facebook/orca/server/DataFreshnessParam;

    invoke-direct {p0, v0}, Lcom/facebook/orca/threadlist/ThreadListLoader;->a(Lcom/facebook/orca/server/DataFreshnessParam;)V

    .line 230
    :goto_0
    return-void

    .line 205
    :cond_1
    sget-object v0, Lcom/facebook/orca/threadlist/ThreadListLoader;->b:Ljava/lang/Class;

    const-string v1, "Load already in progress"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/Class;Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListLoader;->l:Lcom/facebook/orca/threadlist/ThreadListLoader$Params;

    invoke-static {v0, p1}, Lcom/facebook/orca/threadlist/ThreadListLoader;->a(Lcom/facebook/orca/threadlist/ThreadListLoader$Params;Lcom/facebook/orca/threadlist/ThreadListLoader$Params;)Lcom/facebook/orca/threadlist/ThreadListLoader$Params;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListLoader;->l:Lcom/facebook/orca/threadlist/ThreadListLoader$Params;

    goto :goto_0

    .line 217
    :cond_2
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListLoader;->d:Lcom/facebook/orca/cache/DataCache;

    iget-object v1, p0, Lcom/facebook/orca/threadlist/ThreadListLoader;->g:Lcom/facebook/orca/threads/FolderName;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/cache/DataCache;->d(Lcom/facebook/orca/threads/FolderName;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 218
    sget-object v0, Lcom/facebook/orca/threadlist/ThreadListLoader;->b:Ljava/lang/Class;

    const-string v1, "Starting load because data cache said to request new update"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/Class;Ljava/lang/String;)V

    .line 219
    sget-object v0, Lcom/facebook/orca/server/DataFreshnessParam;->PREFER_CACHE_IF_UP_TO_DATE:Lcom/facebook/orca/server/DataFreshnessParam;

    invoke-direct {p0, v0}, Lcom/facebook/orca/threadlist/ThreadListLoader;->a(Lcom/facebook/orca/server/DataFreshnessParam;)V

    goto :goto_0

    .line 221
    :cond_3
    sget-object v0, Lcom/facebook/orca/threadlist/ThreadListLoader;->b:Ljava/lang/Class;

    const-string v1, "Finished loading"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/Class;Ljava/lang/String;)V

    .line 222
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListLoader;->h:Lcom/facebook/orca/threadlist/ThreadListLoader$Callback;

    sget-object v1, Lcom/facebook/orca/threadlist/ThreadListLoader$LoadType;->THREAD_LIST:Lcom/facebook/orca/threadlist/ThreadListLoader$LoadType;

    invoke-interface {v0, v1}, Lcom/facebook/orca/threadlist/ThreadListLoader$Callback;->b(Lcom/facebook/orca/threadlist/ThreadListLoader$LoadType;)V

    goto :goto_0

    .line 227
    :cond_4
    sget-object v0, Lcom/facebook/orca/threadlist/ThreadListLoader;->b:Ljava/lang/Class;

    const-string v1, "No cached data. Starting load"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/Class;Ljava/lang/String;)V

    .line 228
    sget-object v0, Lcom/facebook/orca/server/DataFreshnessParam;->STALE_DATA_OKAY:Lcom/facebook/orca/server/DataFreshnessParam;

    invoke-direct {p0, v0}, Lcom/facebook/orca/threadlist/ThreadListLoader;->a(Lcom/facebook/orca/server/DataFreshnessParam;)V

    goto :goto_0
.end method

.method public a(Lcom/facebook/orca/threads/FolderName;)V
    .locals 1
    .parameter

    .prologue
    .line 157
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListLoader;->g:Lcom/facebook/orca/threads/FolderName;

    if-eq p1, v0, :cond_0

    .line 159
    iput-object p1, p0, Lcom/facebook/orca/threadlist/ThreadListLoader;->g:Lcom/facebook/orca/threads/FolderName;

    .line 160
    invoke-direct {p0}, Lcom/facebook/orca/threadlist/ThreadListLoader;->e()V

    .line 162
    :cond_0
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListLoader;->j:Lcom/google/common/util/concurrent/ListenableFuture;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Z
    .locals 2

    .prologue
    .line 248
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListLoader;->l:Lcom/facebook/orca/threadlist/ThreadListLoader$Params;

    iget-boolean v0, v0, Lcom/facebook/orca/threadlist/ThreadListLoader$Params;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListLoader;->d:Lcom/facebook/orca/cache/DataCache;

    iget-object v1, p0, Lcom/facebook/orca/threadlist/ThreadListLoader;->g:Lcom/facebook/orca/threads/FolderName;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/cache/DataCache;->e(Lcom/facebook/orca/threads/FolderName;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListLoader;->l:Lcom/facebook/orca/threadlist/ThreadListLoader$Params;

    iget-boolean v0, v0, Lcom/facebook/orca/threadlist/ThreadListLoader$Params;->b:Z

    return v0
.end method

.method public d()V
    .locals 5

    .prologue
    .line 366
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListLoader;->j:Lcom/google/common/util/concurrent/ListenableFuture;

    if-eqz v0, :cond_1

    .line 406
    :cond_0
    :goto_0
    return-void

    .line 370
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListLoader;->k:Lcom/google/common/util/concurrent/ListenableFuture;

    if-nez v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListLoader;->m:Lcom/facebook/orca/threadlist/ThreadListLoader$Result;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListLoader;->m:Lcom/facebook/orca/threadlist/ThreadListLoader$Result;

    iget-object v0, v0, Lcom/facebook/orca/threadlist/ThreadListLoader$Result;->a:Lcom/facebook/orca/threads/ThreadsCollection;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadsCollection;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListLoader;->m:Lcom/facebook/orca/threadlist/ThreadListLoader$Result;

    iget-object v0, v0, Lcom/facebook/orca/threadlist/ThreadListLoader$Result;->a:Lcom/facebook/orca/threads/ThreadsCollection;

    .line 382
    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadsCollection;->e()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threads/ThreadsCollection;->a(I)Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v0

    .line 384
    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadSummary;->k()J

    move-result-wide v0

    .line 385
    new-instance v2, Lcom/facebook/orca/server/FetchMoreThreadsParams;

    iget-object v3, p0, Lcom/facebook/orca/threadlist/ThreadListLoader;->g:Lcom/facebook/orca/threads/FolderName;

    const/16 v4, 0xa

    invoke-direct {v2, v3, v0, v1, v4}, Lcom/facebook/orca/server/FetchMoreThreadsParams;-><init>(Lcom/facebook/orca/threads/FolderName;JI)V

    .line 387
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 388
    const-string v0, "fetchMoreThreadsParams"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 389
    iget-object v2, p0, Lcom/facebook/orca/threadlist/ThreadListLoader;->e:Lcom/facebook/orca/ops/OrcaServiceOperationFactory;

    const-string v3, "fetch_more_threads"

    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListLoader;->c:Landroid/app/Activity;

    check-cast v0, Lcom/facebook/orca/activity/FbFragmentActivity;

    invoke-virtual {v2, v3, v1, v0}, Lcom/facebook/orca/ops/OrcaServiceOperationFactory;->a(Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/orca/activity/FbFragmentActivity;)Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;->d()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListLoader;->k:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 392
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListLoader;->h:Lcom/facebook/orca/threadlist/ThreadListLoader$Callback;

    sget-object v1, Lcom/facebook/orca/threadlist/ThreadListLoader$LoadType;->MORE_THREADS:Lcom/facebook/orca/threadlist/ThreadListLoader$LoadType;

    invoke-interface {v0, v1}, Lcom/facebook/orca/threadlist/ThreadListLoader$Callback;->a(Lcom/facebook/orca/threadlist/ThreadListLoader$LoadType;)V

    .line 393
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListLoader;->k:Lcom/google/common/util/concurrent/ListenableFuture;

    new-instance v1, Lcom/facebook/orca/threadlist/ThreadListLoader$2;

    invoke-direct {v1, p0}, Lcom/facebook/orca/threadlist/ThreadListLoader$2;-><init>(Lcom/facebook/orca/threadlist/ThreadListLoader;)V

    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/Futures;->a(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;)V

    goto :goto_0
.end method
