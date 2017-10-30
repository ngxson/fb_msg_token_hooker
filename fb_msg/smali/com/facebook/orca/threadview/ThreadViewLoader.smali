.class public Lcom/facebook/orca/threadview/ThreadViewLoader;
.super Ljava/lang/Object;
.source "ThreadViewLoader.java"


# static fields
.field public static a:Lcom/facebook/orca/threadview/ThreadViewLoader$Result;

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

.field private final f:Lcom/facebook/orca/threads/MessagesUiReorderer;

.field private final g:Lcom/facebook/orca/cache/SendMessageManager;

.field private final h:Lcom/facebook/orca/threadview/PendingSendsDeduper;

.field private final i:Lcom/facebook/orca/threads/MessagesCollectionMerger;

.field private final j:Lcom/facebook/orca/common/util/Clock;

.field private k:Ljava/lang/String;

.field private l:Lcom/facebook/orca/threadview/ThreadViewLoader$Callback;

.field private m:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/facebook/orca/server/OperationResult;",
            ">;"
        }
    .end annotation
.end field

.field private n:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/facebook/orca/server/OperationResult;",
            ">;"
        }
    .end annotation
.end field

.field private o:Lcom/facebook/orca/server/DataFreshnessParam;

.field private p:Lcom/facebook/orca/threadview/ThreadViewLoader$Params;

.field private q:Lcom/facebook/orca/threadview/ThreadViewLoader$Result;

.field private r:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 50
    const-class v0, Lcom/facebook/orca/threadview/ThreadViewLoader;

    sput-object v0, Lcom/facebook/orca/threadview/ThreadViewLoader;->b:Ljava/lang/Class;

    .line 65
    new-instance v0, Lcom/facebook/orca/threadview/ThreadViewLoader$Result;

    invoke-direct {v0, v1, v1, v1}, Lcom/facebook/orca/threadview/ThreadViewLoader$Result;-><init>(Lcom/facebook/orca/threads/ThreadSummary;Lcom/facebook/orca/threads/MessagesCollection;Lcom/google/common/collect/ImmutableList;)V

    sput-object v0, Lcom/facebook/orca/threadview/ThreadViewLoader;->a:Lcom/facebook/orca/threadview/ThreadViewLoader$Result;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/facebook/orca/cache/DataCache;Lcom/facebook/orca/ops/OrcaServiceOperationFactory;Lcom/facebook/orca/threads/MessagesUiReorderer;Lcom/facebook/orca/cache/SendMessageManager;Lcom/facebook/orca/threadview/PendingSendsDeduper;Lcom/facebook/orca/threads/MessagesCollectionMerger;Lcom/facebook/orca/common/util/Clock;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    iput-object p1, p0, Lcom/facebook/orca/threadview/ThreadViewLoader;->c:Landroid/app/Activity;

    .line 152
    iput-object p2, p0, Lcom/facebook/orca/threadview/ThreadViewLoader;->d:Lcom/facebook/orca/cache/DataCache;

    .line 153
    iput-object p3, p0, Lcom/facebook/orca/threadview/ThreadViewLoader;->e:Lcom/facebook/orca/ops/OrcaServiceOperationFactory;

    .line 154
    iput-object p4, p0, Lcom/facebook/orca/threadview/ThreadViewLoader;->f:Lcom/facebook/orca/threads/MessagesUiReorderer;

    .line 155
    iput-object p5, p0, Lcom/facebook/orca/threadview/ThreadViewLoader;->g:Lcom/facebook/orca/cache/SendMessageManager;

    .line 156
    iput-object p6, p0, Lcom/facebook/orca/threadview/ThreadViewLoader;->h:Lcom/facebook/orca/threadview/PendingSendsDeduper;

    .line 157
    iput-object p7, p0, Lcom/facebook/orca/threadview/ThreadViewLoader;->i:Lcom/facebook/orca/threads/MessagesCollectionMerger;

    .line 158
    iput-object p8, p0, Lcom/facebook/orca/threadview/ThreadViewLoader;->j:Lcom/facebook/orca/common/util/Clock;

    .line 159
    return-void
.end method

.method private static a(Lcom/facebook/orca/threadview/ThreadViewLoader$Params;Lcom/facebook/orca/threadview/ThreadViewLoader$Params;)Lcom/facebook/orca/threadview/ThreadViewLoader$Params;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 215
    iget-boolean v0, p0, Lcom/facebook/orca/threadview/ThreadViewLoader$Params;->a:Z

    if-nez v0, :cond_0

    iget-boolean v0, p1, Lcom/facebook/orca/threadview/ThreadViewLoader$Params;->a:Z

    if-eqz v0, :cond_5

    :cond_0
    move v0, v2

    .line 216
    :goto_0
    iget-boolean v3, p0, Lcom/facebook/orca/threadview/ThreadViewLoader$Params;->b:Z

    if-nez v3, :cond_1

    iget-boolean v3, p1, Lcom/facebook/orca/threadview/ThreadViewLoader$Params;->b:Z

    if-eqz v3, :cond_2

    :cond_1
    move v1, v2

    .line 217
    :cond_2
    iget-boolean v2, p0, Lcom/facebook/orca/threadview/ThreadViewLoader$Params;->a:Z

    if-ne v2, v0, :cond_3

    iget-boolean v2, p0, Lcom/facebook/orca/threadview/ThreadViewLoader$Params;->b:Z

    if-eq v2, v1, :cond_4

    .line 219
    :cond_3
    new-instance p0, Lcom/facebook/orca/threadview/ThreadViewLoader$Params;

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/threadview/ThreadViewLoader$Params;-><init>(ZZ)V

    .line 221
    :cond_4
    return-object p0

    :cond_5
    move v0, v1

    .line 215
    goto :goto_0
.end method

.method private a(Lcom/facebook/orca/threads/ThreadSummary;Lcom/facebook/orca/threads/MessagesCollection;)Lcom/facebook/orca/threadview/ThreadViewLoader$Result;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 321
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewLoader;->f:Lcom/facebook/orca/threads/MessagesUiReorderer;

    invoke-virtual {v0, p2}, Lcom/facebook/orca/threads/MessagesUiReorderer;->a(Lcom/facebook/orca/threads/MessagesCollection;)Lcom/facebook/orca/threads/MessagesCollection;

    move-result-object v0

    .line 322
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewLoader;->h:Lcom/facebook/orca/threadview/PendingSendsDeduper;

    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewLoader;->g:Lcom/facebook/orca/cache/SendMessageManager;

    iget-object v3, p0, Lcom/facebook/orca/threadview/ThreadViewLoader;->k:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/facebook/orca/cache/SendMessageManager;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/facebook/orca/threadview/PendingSendsDeduper;->a(Lcom/facebook/orca/threads/MessagesCollection;Ljava/util/List;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    .line 326
    new-instance v2, Lcom/facebook/orca/threadview/ThreadViewLoader$Result;

    invoke-direct {v2, p1, v0, v1}, Lcom/facebook/orca/threadview/ThreadViewLoader$Result;-><init>(Lcom/facebook/orca/threads/ThreadSummary;Lcom/facebook/orca/threads/MessagesCollection;Lcom/google/common/collect/ImmutableList;)V

    return-object v2
.end method

.method static synthetic a(Lcom/facebook/orca/threadview/ThreadViewLoader;Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/facebook/orca/threadview/ThreadViewLoader;->m:Lcom/google/common/util/concurrent/ListenableFuture;

    return-object p1
.end method

.method private a(Lcom/facebook/orca/ops/ServiceException;)V
    .locals 3
    .parameter

    .prologue
    .line 314
    new-instance v0, Lcom/facebook/orca/threadview/ThreadViewLoader$Error;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewLoader;->p:Lcom/facebook/orca/threadview/ThreadViewLoader$Params;

    iget-boolean v1, v1, Lcom/facebook/orca/threadview/ThreadViewLoader$Params;->b:Z

    invoke-direct {v0, p1, v1}, Lcom/facebook/orca/threadview/ThreadViewLoader$Error;-><init>(Lcom/facebook/orca/ops/ServiceException;Z)V

    .line 315
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewLoader;->l:Lcom/facebook/orca/threadview/ThreadViewLoader$Callback;

    sget-object v2, Lcom/facebook/orca/threadview/ThreadViewLoader$LoadType;->THREAD_VIEW:Lcom/facebook/orca/threadview/ThreadViewLoader$LoadType;

    invoke-interface {v1, v2, v0}, Lcom/facebook/orca/threadview/ThreadViewLoader$Callback;->a(Lcom/facebook/orca/threadview/ThreadViewLoader$LoadType;Lcom/facebook/orca/threadview/ThreadViewLoader$Error;)V

    .line 316
    return-void
.end method

.method private a(Lcom/facebook/orca/server/DataFreshnessParam;)V
    .locals 4
    .parameter

    .prologue
    .line 247
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewLoader;->m:Lcom/google/common/util/concurrent/ListenableFuture;

    if-eqz v0, :cond_0

    .line 280
    :goto_0
    return-void

    .line 252
    :cond_0
    sget-object v0, Lcom/facebook/orca/threadview/ThreadViewLoader;->b:Ljava/lang/Class;

    const-string v1, "Starting thread fetch (%s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 253
    iput-object p1, p0, Lcom/facebook/orca/threadview/ThreadViewLoader;->o:Lcom/facebook/orca/server/DataFreshnessParam;

    .line 256
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 257
    new-instance v0, Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    invoke-direct {v0}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;-><init>()V

    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewLoader;->k:Ljava/lang/String;

    invoke-static {v2}, Lcom/facebook/orca/server/ThreadCriteria;->a(Ljava/lang/String;)Lcom/facebook/orca/server/ThreadCriteria;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->a(Lcom/facebook/orca/server/ThreadCriteria;)Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->a(Lcom/facebook/orca/server/DataFreshnessParam;)Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    move-result-object v0

    const/16 v2, 0x32

    invoke-virtual {v0, v2}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->a(I)Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->g()Lcom/facebook/orca/server/FetchThreadParams;

    move-result-object v0

    .line 262
    const-string v2, "fetchThreadParams"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 263
    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewLoader;->e:Lcom/facebook/orca/ops/OrcaServiceOperationFactory;

    const-string v3, "fetch_thread"

    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewLoader;->c:Landroid/app/Activity;

    check-cast v0, Lcom/facebook/orca/activity/FbFragmentActivity;

    invoke-virtual {v2, v3, v1, v0}, Lcom/facebook/orca/ops/OrcaServiceOperationFactory;->a(Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/orca/activity/FbFragmentActivity;)Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;->d()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewLoader;->m:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 266
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewLoader;->l:Lcom/facebook/orca/threadview/ThreadViewLoader$Callback;

    sget-object v1, Lcom/facebook/orca/threadview/ThreadViewLoader$LoadType;->THREAD_VIEW:Lcom/facebook/orca/threadview/ThreadViewLoader$LoadType;

    invoke-interface {v0, v1}, Lcom/facebook/orca/threadview/ThreadViewLoader$Callback;->a(Lcom/facebook/orca/threadview/ThreadViewLoader$LoadType;)V

    .line 267
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewLoader;->m:Lcom/google/common/util/concurrent/ListenableFuture;

    new-instance v1, Lcom/facebook/orca/threadview/ThreadViewLoader$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/threadview/ThreadViewLoader$1;-><init>(Lcom/facebook/orca/threadview/ThreadViewLoader;)V

    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/Futures;->a(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;)V

    goto :goto_0
.end method

.method private a(Lcom/facebook/orca/server/OperationResult;)V
    .locals 4
    .parameter

    .prologue
    .line 286
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationResult;->h()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/FetchThreadResult;

    .line 288
    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadResult;->a()Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v1

    .line 289
    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadResult;->b()Lcom/facebook/orca/threads/MessagesCollection;

    move-result-object v2

    .line 290
    invoke-direct {p0, v1, v2}, Lcom/facebook/orca/threadview/ThreadViewLoader;->a(Lcom/facebook/orca/threads/ThreadSummary;Lcom/facebook/orca/threads/MessagesCollection;)Lcom/facebook/orca/threadview/ThreadViewLoader$Result;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewLoader;->q:Lcom/facebook/orca/threadview/ThreadViewLoader$Result;

    .line 291
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewLoader;->l:Lcom/facebook/orca/threadview/ThreadViewLoader$Callback;

    sget-object v2, Lcom/facebook/orca/threadview/ThreadViewLoader$LoadType;->THREAD_VIEW:Lcom/facebook/orca/threadview/ThreadViewLoader$LoadType;

    iget-object v3, p0, Lcom/facebook/orca/threadview/ThreadViewLoader;->q:Lcom/facebook/orca/threadview/ThreadViewLoader$Result;

    invoke-interface {v1, v2, v3}, Lcom/facebook/orca/threadview/ThreadViewLoader$Callback;->a(Lcom/facebook/orca/threadview/ThreadViewLoader$LoadType;Lcom/facebook/orca/threadview/ThreadViewLoader$Result;)V

    .line 293
    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadResult;->d()Lcom/facebook/orca/server/DataFreshnessResult;

    move-result-object v0

    .line 294
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewLoader;->p:Lcom/facebook/orca/threadview/ThreadViewLoader$Params;

    iget-boolean v1, v1, Lcom/facebook/orca/threadview/ThreadViewLoader$Params;->a:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewLoader;->o:Lcom/facebook/orca/server/DataFreshnessParam;

    sget-object v2, Lcom/facebook/orca/server/DataFreshnessParam;->CHECK_SERVER_FOR_NEW_DATA:Lcom/facebook/orca/server/DataFreshnessParam;

    if-eq v1, v2, :cond_0

    sget-object v1, Lcom/facebook/orca/server/DataFreshnessResult;->FROM_SERVER:Lcom/facebook/orca/server/DataFreshnessResult;

    if-eq v0, v1, :cond_0

    .line 298
    sget-object v0, Lcom/facebook/orca/threadview/ThreadViewLoader;->b:Ljava/lang/Class;

    const-string v1, "Starting load because need to hit server"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/Class;Ljava/lang/String;)V

    .line 299
    sget-object v0, Lcom/facebook/orca/server/DataFreshnessParam;->CHECK_SERVER_FOR_NEW_DATA:Lcom/facebook/orca/server/DataFreshnessParam;

    invoke-direct {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewLoader;->a(Lcom/facebook/orca/server/DataFreshnessParam;)V

    .line 308
    :goto_0
    return-void

    .line 300
    :cond_0
    sget-object v1, Lcom/facebook/orca/server/DataFreshnessResult;->FROM_CACHE_STALE:Lcom/facebook/orca/server/DataFreshnessResult;

    if-ne v0, v1, :cond_1

    .line 302
    sget-object v0, Lcom/facebook/orca/threadview/ThreadViewLoader;->b:Ljava/lang/Class;

    const-string v1, "Starting load because data from cache was stale"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/Class;Ljava/lang/String;)V

    .line 303
    sget-object v0, Lcom/facebook/orca/server/DataFreshnessParam;->PREFER_CACHE_IF_UP_TO_DATE:Lcom/facebook/orca/server/DataFreshnessParam;

    invoke-direct {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewLoader;->a(Lcom/facebook/orca/server/DataFreshnessParam;)V

    goto :goto_0

    .line 305
    :cond_1
    sget-object v0, Lcom/facebook/orca/threadview/ThreadViewLoader;->b:Ljava/lang/Class;

    const-string v1, "Finished loading"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/Class;Ljava/lang/String;)V

    .line 306
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewLoader;->l:Lcom/facebook/orca/threadview/ThreadViewLoader$Callback;

    sget-object v1, Lcom/facebook/orca/threadview/ThreadViewLoader$LoadType;->THREAD_VIEW:Lcom/facebook/orca/threadview/ThreadViewLoader$LoadType;

    invoke-interface {v0, v1}, Lcom/facebook/orca/threadview/ThreadViewLoader$Callback;->b(Lcom/facebook/orca/threadview/ThreadViewLoader$LoadType;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/facebook/orca/threadview/ThreadViewLoader;Lcom/facebook/orca/ops/ServiceException;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/facebook/orca/threadview/ThreadViewLoader;->a(Lcom/facebook/orca/ops/ServiceException;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/threadview/ThreadViewLoader;Lcom/facebook/orca/server/OperationResult;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/facebook/orca/threadview/ThreadViewLoader;->a(Lcom/facebook/orca/server/OperationResult;)V

    return-void
.end method

.method static synthetic b(Lcom/facebook/orca/threadview/ThreadViewLoader;Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/facebook/orca/threadview/ThreadViewLoader;->n:Lcom/google/common/util/concurrent/ListenableFuture;

    return-object p1
.end method

.method private b()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 235
    iput-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewLoader;->p:Lcom/facebook/orca/threadview/ThreadViewLoader$Params;

    .line 236
    iput-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewLoader;->q:Lcom/facebook/orca/threadview/ThreadViewLoader$Result;

    .line 237
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewLoader;->m:Lcom/google/common/util/concurrent/ListenableFuture;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewLoader;->m:Lcom/google/common/util/concurrent/ListenableFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/common/util/concurrent/ListenableFuture;->cancel(Z)Z

    .line 239
    iput-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewLoader;->m:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 241
    :cond_0
    return-void
.end method

.method private b(Lcom/facebook/orca/ops/ServiceException;)V
    .locals 4
    .parameter

    .prologue
    .line 414
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewLoader;->l:Lcom/facebook/orca/threadview/ThreadViewLoader$Callback;

    sget-object v1, Lcom/facebook/orca/threadview/ThreadViewLoader$LoadType;->MORE_MESSAGES:Lcom/facebook/orca/threadview/ThreadViewLoader$LoadType;

    new-instance v2, Lcom/facebook/orca/threadview/ThreadViewLoader$Error;

    iget-boolean v3, p0, Lcom/facebook/orca/threadview/ThreadViewLoader;->r:Z

    invoke-direct {v2, p1, v3}, Lcom/facebook/orca/threadview/ThreadViewLoader$Error;-><init>(Lcom/facebook/orca/ops/ServiceException;Z)V

    invoke-interface {v0, v1, v2}, Lcom/facebook/orca/threadview/ThreadViewLoader$Callback;->a(Lcom/facebook/orca/threadview/ThreadViewLoader$LoadType;Lcom/facebook/orca/threadview/ThreadViewLoader$Error;)V

    .line 415
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/orca/threadview/ThreadViewLoader;->r:Z

    .line 416
    return-void
.end method

.method private b(Lcom/facebook/orca/server/OperationResult;)V
    .locals 4
    .parameter

    .prologue
    .line 394
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/orca/threadview/ThreadViewLoader;->r:Z

    .line 395
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewLoader;->q:Lcom/facebook/orca/threadview/ThreadViewLoader$Result;

    iget-object v0, v0, Lcom/facebook/orca/threadview/ThreadViewLoader$Result;->a:Lcom/facebook/orca/threads/ThreadSummary;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewLoader;->q:Lcom/facebook/orca/threadview/ThreadViewLoader$Result;

    iget-object v0, v0, Lcom/facebook/orca/threadview/ThreadViewLoader$Result;->b:Lcom/facebook/orca/threads/MessagesCollection;

    if-eqz v0, :cond_0

    .line 396
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationResult;->h()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/FetchMoreMessagesResult;

    .line 397
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewLoader;->i:Lcom/facebook/orca/threads/MessagesCollectionMerger;

    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewLoader;->q:Lcom/facebook/orca/threadview/ThreadViewLoader$Result;

    iget-object v2, v2, Lcom/facebook/orca/threadview/ThreadViewLoader$Result;->b:Lcom/facebook/orca/threads/MessagesCollection;

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchMoreMessagesResult;->a()Lcom/facebook/orca/threads/MessagesCollection;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/facebook/orca/threads/MessagesCollectionMerger;->a(Lcom/facebook/orca/threads/MessagesCollection;Lcom/facebook/orca/threads/MessagesCollection;)Lcom/facebook/orca/threads/MessagesCollection;

    move-result-object v0

    .line 401
    new-instance v1, Lcom/facebook/orca/threadview/ThreadViewLoader$Result;

    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewLoader;->q:Lcom/facebook/orca/threadview/ThreadViewLoader$Result;

    iget-object v2, v2, Lcom/facebook/orca/threadview/ThreadViewLoader$Result;->a:Lcom/facebook/orca/threads/ThreadSummary;

    iget-object v3, p0, Lcom/facebook/orca/threadview/ThreadViewLoader;->q:Lcom/facebook/orca/threadview/ThreadViewLoader$Result;

    iget-object v3, v3, Lcom/facebook/orca/threadview/ThreadViewLoader$Result;->c:Lcom/google/common/collect/ImmutableList;

    invoke-direct {v1, v2, v0, v3}, Lcom/facebook/orca/threadview/ThreadViewLoader$Result;-><init>(Lcom/facebook/orca/threads/ThreadSummary;Lcom/facebook/orca/threads/MessagesCollection;Lcom/google/common/collect/ImmutableList;)V

    iput-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewLoader;->q:Lcom/facebook/orca/threadview/ThreadViewLoader$Result;

    .line 406
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewLoader;->l:Lcom/facebook/orca/threadview/ThreadViewLoader$Callback;

    sget-object v1, Lcom/facebook/orca/threadview/ThreadViewLoader$LoadType;->MORE_MESSAGES:Lcom/facebook/orca/threadview/ThreadViewLoader$LoadType;

    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewLoader;->q:Lcom/facebook/orca/threadview/ThreadViewLoader$Result;

    invoke-interface {v0, v1, v2}, Lcom/facebook/orca/threadview/ThreadViewLoader$Callback;->a(Lcom/facebook/orca/threadview/ThreadViewLoader$LoadType;Lcom/facebook/orca/threadview/ThreadViewLoader$Result;)V

    .line 408
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/facebook/orca/threadview/ThreadViewLoader;Lcom/facebook/orca/ops/ServiceException;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/facebook/orca/threadview/ThreadViewLoader;->b(Lcom/facebook/orca/ops/ServiceException;)V

    return-void
.end method

.method static synthetic b(Lcom/facebook/orca/threadview/ThreadViewLoader;Lcom/facebook/orca/server/OperationResult;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/facebook/orca/threadview/ThreadViewLoader;->b(Lcom/facebook/orca/server/OperationResult;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/orca/threadview/ThreadViewLoader$Callback;)V
    .locals 0
    .parameter

    .prologue
    .line 170
    iput-object p1, p0, Lcom/facebook/orca/threadview/ThreadViewLoader;->l:Lcom/facebook/orca/threadview/ThreadViewLoader$Callback;

    .line 171
    return-void
.end method

.method public a(Lcom/facebook/orca/threadview/ThreadViewLoader$Params;)V
    .locals 4
    .parameter

    .prologue
    .line 174
    const/4 v0, 0x0

    .line 175
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewLoader;->d:Lcom/facebook/orca/cache/DataCache;

    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewLoader;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/facebook/orca/cache/DataCache;->b(Ljava/lang/String;)Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v1

    .line 176
    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewLoader;->d:Lcom/facebook/orca/cache/DataCache;

    iget-object v3, p0, Lcom/facebook/orca/threadview/ThreadViewLoader;->k:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/facebook/orca/cache/DataCache;->c(Ljava/lang/String;)Lcom/facebook/orca/threads/MessagesCollection;

    move-result-object v2

    .line 177
    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 178
    invoke-direct {p0, v1, v2}, Lcom/facebook/orca/threadview/ThreadViewLoader;->a(Lcom/facebook/orca/threads/ThreadSummary;Lcom/facebook/orca/threads/MessagesCollection;)Lcom/facebook/orca/threadview/ThreadViewLoader$Result;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewLoader;->q:Lcom/facebook/orca/threadview/ThreadViewLoader$Result;

    .line 179
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewLoader;->l:Lcom/facebook/orca/threadview/ThreadViewLoader$Callback;

    sget-object v1, Lcom/facebook/orca/threadview/ThreadViewLoader$LoadType;->THREAD_VIEW:Lcom/facebook/orca/threadview/ThreadViewLoader$LoadType;

    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewLoader;->q:Lcom/facebook/orca/threadview/ThreadViewLoader$Result;

    invoke-interface {v0, v1, v2}, Lcom/facebook/orca/threadview/ThreadViewLoader$Callback;->a(Lcom/facebook/orca/threadview/ThreadViewLoader$LoadType;Lcom/facebook/orca/threadview/ThreadViewLoader$Result;)V

    .line 180
    const/4 v0, 0x1

    .line 185
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewLoader;->m:Lcom/google/common/util/concurrent/ListenableFuture;

    if-nez v1, :cond_2

    .line 186
    iput-object p1, p0, Lcom/facebook/orca/threadview/ThreadViewLoader;->p:Lcom/facebook/orca/threadview/ThreadViewLoader$Params;

    .line 193
    if-eqz v0, :cond_5

    .line 195
    iget-boolean v0, p1, Lcom/facebook/orca/threadview/ThreadViewLoader$Params;->a:Z

    if-eqz v0, :cond_3

    .line 197
    sget-object v0, Lcom/facebook/orca/threadview/ThreadViewLoader;->b:Ljava/lang/Class;

    const-string v1, "Starting load because need to hit server"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/Class;Ljava/lang/String;)V

    .line 198
    sget-object v0, Lcom/facebook/orca/server/DataFreshnessParam;->CHECK_SERVER_FOR_NEW_DATA:Lcom/facebook/orca/server/DataFreshnessParam;

    invoke-direct {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewLoader;->a(Lcom/facebook/orca/server/DataFreshnessParam;)V

    .line 212
    :goto_1
    return-void

    .line 181
    :cond_1
    if-eqz v1, :cond_0

    .line 182
    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewLoader;->l:Lcom/facebook/orca/threadview/ThreadViewLoader$Callback;

    invoke-interface {v2, v1}, Lcom/facebook/orca/threadview/ThreadViewLoader$Callback;->a(Lcom/facebook/orca/threads/ThreadSummary;)V

    goto :goto_0

    .line 188
    :cond_2
    sget-object v0, Lcom/facebook/orca/threadview/ThreadViewLoader;->b:Ljava/lang/Class;

    const-string v1, "Load already in progress"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/Class;Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewLoader;->p:Lcom/facebook/orca/threadview/ThreadViewLoader$Params;

    invoke-static {v0, p1}, Lcom/facebook/orca/threadview/ThreadViewLoader;->a(Lcom/facebook/orca/threadview/ThreadViewLoader$Params;Lcom/facebook/orca/threadview/ThreadViewLoader$Params;)Lcom/facebook/orca/threadview/ThreadViewLoader$Params;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewLoader;->p:Lcom/facebook/orca/threadview/ThreadViewLoader$Params;

    goto :goto_1

    .line 199
    :cond_3
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewLoader;->d:Lcom/facebook/orca/cache/DataCache;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewLoader;->k:Ljava/lang/String;

    invoke-static {v1}, Lcom/facebook/orca/server/ThreadCriteria;->a(Ljava/lang/String;)Lcom/facebook/orca/server/ThreadCriteria;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/cache/DataCache;->a(Lcom/facebook/orca/server/ThreadCriteria;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 200
    sget-object v0, Lcom/facebook/orca/threadview/ThreadViewLoader;->b:Ljava/lang/Class;

    const-string v1, "Starting load because data cache said to request new update"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/Class;Ljava/lang/String;)V

    .line 201
    sget-object v0, Lcom/facebook/orca/server/DataFreshnessParam;->PREFER_CACHE_IF_UP_TO_DATE:Lcom/facebook/orca/server/DataFreshnessParam;

    invoke-direct {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewLoader;->a(Lcom/facebook/orca/server/DataFreshnessParam;)V

    goto :goto_1

    .line 203
    :cond_4
    sget-object v0, Lcom/facebook/orca/threadview/ThreadViewLoader;->b:Ljava/lang/Class;

    const-string v1, "Finished loading"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/Class;Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewLoader;->l:Lcom/facebook/orca/threadview/ThreadViewLoader$Callback;

    sget-object v1, Lcom/facebook/orca/threadview/ThreadViewLoader$LoadType;->THREAD_VIEW:Lcom/facebook/orca/threadview/ThreadViewLoader$LoadType;

    invoke-interface {v0, v1}, Lcom/facebook/orca/threadview/ThreadViewLoader$Callback;->b(Lcom/facebook/orca/threadview/ThreadViewLoader$LoadType;)V

    goto :goto_1

    .line 209
    :cond_5
    sget-object v0, Lcom/facebook/orca/threadview/ThreadViewLoader;->b:Ljava/lang/Class;

    const-string v1, "No cached data. Starting load"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/Class;Ljava/lang/String;)V

    .line 210
    sget-object v0, Lcom/facebook/orca/server/DataFreshnessParam;->STALE_DATA_OKAY:Lcom/facebook/orca/server/DataFreshnessParam;

    invoke-direct {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewLoader;->a(Lcom/facebook/orca/server/DataFreshnessParam;)V

    goto :goto_1
.end method

.method public a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 162
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewLoader;->k:Ljava/lang/String;

    if-eq p1, v0, :cond_0

    .line 164
    iput-object p1, p0, Lcom/facebook/orca/threadview/ThreadViewLoader;->k:Ljava/lang/String;

    .line 165
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewLoader;->b()V

    .line 167
    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 7
    .parameter

    .prologue
    .line 334
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewLoader;->m:Lcom/google/common/util/concurrent/ListenableFuture;

    if-eqz v0, :cond_1

    .line 388
    :cond_0
    :goto_0
    return-void

    .line 338
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewLoader;->n:Lcom/google/common/util/concurrent/ListenableFuture;

    if-nez v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewLoader;->q:Lcom/facebook/orca/threadview/ThreadViewLoader$Result;

    iget-object v0, v0, Lcom/facebook/orca/threadview/ThreadViewLoader$Result;->a:Lcom/facebook/orca/threads/ThreadSummary;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewLoader;->q:Lcom/facebook/orca/threadview/ThreadViewLoader$Result;

    iget-object v0, v0, Lcom/facebook/orca/threadview/ThreadViewLoader$Result;->b:Lcom/facebook/orca/threads/MessagesCollection;

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewLoader;->q:Lcom/facebook/orca/threadview/ThreadViewLoader$Result;

    iget-object v0, v0, Lcom/facebook/orca/threadview/ThreadViewLoader$Result;->b:Lcom/facebook/orca/threads/MessagesCollection;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/MessagesCollection;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 349
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 353
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewLoader;->q:Lcom/facebook/orca/threadview/ThreadViewLoader$Result;

    iget-object v1, v1, Lcom/facebook/orca/threadview/ThreadViewLoader$Result;->b:Lcom/facebook/orca/threads/MessagesCollection;

    invoke-virtual {v1}, Lcom/facebook/orca/threads/MessagesCollection;->d()Z

    move-result v1

    if-nez v1, :cond_0

    .line 358
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/Message;

    .line 360
    const-wide/16 v2, 0x0

    .line 361
    invoke-virtual {v0}, Lcom/facebook/orca/threads/Message;->c()J

    move-result-wide v4

    .line 362
    new-instance v0, Lcom/facebook/orca/server/FetchMoreMessagesParams;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewLoader;->k:Ljava/lang/String;

    invoke-static {v1}, Lcom/facebook/orca/server/ThreadCriteria;->a(Ljava/lang/String;)Lcom/facebook/orca/server/ThreadCriteria;

    move-result-object v1

    const/16 v6, 0x32

    invoke-direct/range {v0 .. v6}, Lcom/facebook/orca/server/FetchMoreMessagesParams;-><init>(Lcom/facebook/orca/server/ThreadCriteria;JJI)V

    .line 368
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 369
    const-string v2, "fetchMoreMessagesParams"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 370
    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewLoader;->e:Lcom/facebook/orca/ops/OrcaServiceOperationFactory;

    const-string v3, "fetch_more_messages"

    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewLoader;->c:Landroid/app/Activity;

    check-cast v0, Lcom/facebook/orca/activity/FbFragmentActivity;

    invoke-virtual {v2, v3, v1, v0}, Lcom/facebook/orca/ops/OrcaServiceOperationFactory;->a(Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/orca/activity/FbFragmentActivity;)Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;->d()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewLoader;->n:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 373
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewLoader;->l:Lcom/facebook/orca/threadview/ThreadViewLoader$Callback;

    sget-object v1, Lcom/facebook/orca/threadview/ThreadViewLoader$LoadType;->MORE_MESSAGES:Lcom/facebook/orca/threadview/ThreadViewLoader$LoadType;

    invoke-interface {v0, v1}, Lcom/facebook/orca/threadview/ThreadViewLoader$Callback;->a(Lcom/facebook/orca/threadview/ThreadViewLoader$LoadType;)V

    .line 374
    iput-boolean p1, p0, Lcom/facebook/orca/threadview/ThreadViewLoader;->r:Z

    .line 375
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewLoader;->n:Lcom/google/common/util/concurrent/ListenableFuture;

    new-instance v1, Lcom/facebook/orca/threadview/ThreadViewLoader$2;

    invoke-direct {v1, p0}, Lcom/facebook/orca/threadview/ThreadViewLoader$2;-><init>(Lcom/facebook/orca/threadview/ThreadViewLoader;)V

    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/Futures;->a(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;)V

    goto :goto_0
.end method

.method public a()Z
    .locals 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewLoader;->p:Lcom/facebook/orca/threadview/ThreadViewLoader$Params;

    iget-boolean v0, v0, Lcom/facebook/orca/threadview/ThreadViewLoader$Params;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewLoader;->d:Lcom/facebook/orca/cache/DataCache;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewLoader;->k:Ljava/lang/String;

    invoke-static {v1}, Lcom/facebook/orca/server/ThreadCriteria;->a(Ljava/lang/String;)Lcom/facebook/orca/server/ThreadCriteria;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/cache/DataCache;->b(Lcom/facebook/orca/server/ThreadCriteria;)Z

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
