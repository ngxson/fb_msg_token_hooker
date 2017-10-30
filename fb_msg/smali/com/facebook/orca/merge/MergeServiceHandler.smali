.class public Lcom/facebook/orca/merge/MergeServiceHandler;
.super Lcom/facebook/orca/server/AbstractOrcaServiceHandlerFilter;
.source "MergeServiceHandler.java"


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
.field private final b:Lcom/facebook/orca/threads/ThreadsCollectionMerger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/facebook/orca/merge/MergeServiceHandler;

    sput-object v0, Lcom/facebook/orca/merge/MergeServiceHandler;->a:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/orca/threads/ThreadsCollectionMerger;)V
    .locals 1
    .parameter

    .prologue
    .line 38
    const-string v0, "MergeServiceHandler"

    invoke-direct {p0, v0}, Lcom/facebook/orca/server/AbstractOrcaServiceHandlerFilter;-><init>(Ljava/lang/String;)V

    .line 39
    iput-object p1, p0, Lcom/facebook/orca/merge/MergeServiceHandler;->b:Lcom/facebook/orca/threads/ThreadsCollectionMerger;

    .line 40
    return-void
.end method

.method private a(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/threads/FolderName;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 125
    :try_start_0
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    .line 126
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/facebook/orca/merge/MergeServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/threads/FolderName;Lcom/google/common/base/Optional;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 143
    :goto_0
    return-object v0

    .line 127
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 128
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 129
    const-string v2, "fetchThreadListParams"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/FetchThreadListParams;

    .line 130
    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadListParams;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 131
    throw v1

    .line 133
    :cond_0
    sget-object v0, Lcom/facebook/orca/server/DataFreshnessParam;->DO_NOT_CHECK_SERVER:Lcom/facebook/orca/server/DataFreshnessParam;

    invoke-static {v0}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    .line 135
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/facebook/orca/merge/MergeServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/threads/FolderName;Lcom/google/common/base/Optional;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    .line 137
    invoke-virtual {v0}, Lcom/facebook/orca/server/OperationResult;->h()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/FetchThreadListResult;

    .line 138
    invoke-static {}, Lcom/facebook/orca/server/FetchThreadListResult;->newBuilder()Lcom/facebook/orca/server/FetchThreadListResultBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/facebook/orca/server/FetchThreadListResultBuilder;->a(Lcom/facebook/orca/server/FetchThreadListResult;)Lcom/facebook/orca/server/FetchThreadListResultBuilder;

    move-result-object v0

    invoke-static {v1}, Lcom/facebook/orca/ops/ServiceException;->a(Ljava/lang/Throwable;)Lcom/facebook/orca/ops/ServiceException;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/server/FetchThreadListResultBuilder;->a(Lcom/facebook/orca/ops/ServiceException;)Lcom/facebook/orca/server/FetchThreadListResultBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadListResultBuilder;->o()Lcom/facebook/orca/server/FetchThreadListResult;

    move-result-object v0

    .line 142
    invoke-static {v0}, Lcom/facebook/orca/server/OperationResult;->a(Landroid/os/Parcelable;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/threads/FolderName;Lcom/google/common/base/Optional;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/orca/server/OperationParams;",
            "Lcom/facebook/orca/threads/FolderName;",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/facebook/orca/server/DataFreshnessParam;",
            ">;",
            "Lcom/facebook/orca/server/OrcaServiceHandler;",
            ")",
            "Lcom/facebook/orca/server/OperationResult;"
        }
    .end annotation

    .prologue
    .line 152
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->a()Ljava/lang/String;

    move-result-object v1

    .line 153
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v2

    .line 154
    const-string v0, "fetchThreadListParams"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/FetchThreadListParams;

    .line 156
    invoke-static {}, Lcom/facebook/orca/server/FetchThreadListParams;->newBuilder()Lcom/facebook/orca/server/FetchThreadListParamsBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/facebook/orca/server/FetchThreadListParamsBuilder;->a(Lcom/facebook/orca/server/FetchThreadListParams;)Lcom/facebook/orca/server/FetchThreadListParamsBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/facebook/orca/server/FetchThreadListParamsBuilder;->a(Lcom/facebook/orca/threads/FolderName;)Lcom/facebook/orca/server/FetchThreadListParamsBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadListParams;->a()Lcom/facebook/orca/server/DataFreshnessParam;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/google/common/base/Optional;->or(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/DataFreshnessParam;

    invoke-virtual {v3, v0}, Lcom/facebook/orca/server/FetchThreadListParamsBuilder;->a(Lcom/facebook/orca/server/DataFreshnessParam;)Lcom/facebook/orca/server/FetchThreadListParamsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadListParamsBuilder;->f()Lcom/facebook/orca/server/FetchThreadListParams;

    move-result-object v3

    .line 161
    invoke-virtual {v2}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 162
    const-string v2, "fetchThreadListParams"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 163
    new-instance v2, Lcom/facebook/orca/server/OperationParams;

    invoke-direct {v2, v1, v0}, Lcom/facebook/orca/server/OperationParams;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 164
    invoke-interface {p4, v2}, Lcom/facebook/orca/server/OrcaServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method private b(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/threads/FolderName;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 231
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->a()Ljava/lang/String;

    move-result-object v1

    .line 232
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v2

    .line 233
    const-string v0, "fetchMoreThreadsParams"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/FetchMoreThreadsParams;

    .line 235
    new-instance v3, Lcom/facebook/orca/server/FetchMoreThreadsParams;

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchMoreThreadsParams;->b()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchMoreThreadsParams;->c()I

    move-result v0

    invoke-direct {v3, p2, v4, v5, v0}, Lcom/facebook/orca/server/FetchMoreThreadsParams;-><init>(Lcom/facebook/orca/threads/FolderName;JI)V

    .line 237
    invoke-virtual {v2}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 238
    const-string v2, "fetchMoreThreadsParams"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 239
    new-instance v2, Lcom/facebook/orca/server/OperationParams;

    invoke-direct {v2, v1, v0}, Lcom/facebook/orca/server/OperationParams;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 240
    invoke-interface {p3, v2}, Lcom/facebook/orca/server/OrcaServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected a(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 12
    .parameter
    .parameter

    .prologue
    const/4 v11, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 45
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->a()Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 47
    const-string v1, "fetchThreadListParams"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/FetchThreadListParams;

    .line 48
    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadListParams;->b()Lcom/facebook/orca/threads/FolderName;

    move-result-object v7

    .line 50
    sget-object v1, Lcom/facebook/orca/threads/FolderName;->e:Lcom/facebook/orca/threads/FolderName;

    if-eq v7, v1, :cond_0

    .line 51
    invoke-interface {p2, p1}, Lcom/facebook/orca/server/OrcaServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    .line 117
    :goto_0
    return-object v0

    .line 55
    :cond_0
    sget-object v1, Lcom/facebook/orca/threads/FolderName;->d:Lcom/facebook/orca/threads/FolderName;

    invoke-direct {p0, p1, v1, p2}, Lcom/facebook/orca/merge/MergeServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/threads/FolderName;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v1

    .line 57
    invoke-virtual {v1}, Lcom/facebook/orca/server/OperationResult;->h()Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/server/FetchThreadListResult;

    .line 61
    sget-object v2, Lcom/facebook/orca/threads/FolderName;->b:Lcom/facebook/orca/threads/FolderName;

    invoke-direct {p0, p1, v2, p2}, Lcom/facebook/orca/merge/MergeServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/threads/FolderName;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v2

    .line 63
    invoke-virtual {v2}, Lcom/facebook/orca/server/OperationResult;->h()Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/facebook/orca/server/FetchThreadListResult;

    .line 67
    const/4 v3, 0x0

    .line 69
    sget-object v6, Lcom/facebook/orca/threads/FolderName;->e:Lcom/facebook/orca/threads/FolderName;

    if-ne v7, v6, :cond_3

    .line 70
    sget-object v3, Lcom/facebook/orca/threads/FolderName;->b:Lcom/facebook/orca/threads/FolderName;

    sget-object v6, Lcom/facebook/orca/threads/FolderName;->d:Lcom/facebook/orca/threads/FolderName;

    invoke-static {v3, v2, v6, v1}, Lcom/google/common/collect/ImmutableMap;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v3

    .line 74
    invoke-virtual {v2}, Lcom/facebook/orca/server/FetchThreadListResult;->n()Lcom/facebook/orca/ops/ServiceException;

    move-result-object v6

    if-nez v6, :cond_1

    invoke-virtual {v1}, Lcom/facebook/orca/server/FetchThreadListResult;->n()Lcom/facebook/orca/ops/ServiceException;

    move-result-object v6

    if-eqz v6, :cond_2

    :cond_1
    move-object v6, v3

    move v3, v5

    .line 80
    :goto_1
    iget-object v8, p0, Lcom/facebook/orca/merge/MergeServiceHandler;->b:Lcom/facebook/orca/threads/ThreadsCollectionMerger;

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadListParams;->d()I

    move-result v0

    new-array v9, v11, [Lcom/facebook/orca/threads/ThreadsCollection;

    invoke-virtual {v2}, Lcom/facebook/orca/server/FetchThreadListResult;->b()Lcom/facebook/orca/threads/ThreadsCollection;

    move-result-object v10

    aput-object v10, v9, v4

    invoke-virtual {v1}, Lcom/facebook/orca/server/FetchThreadListResult;->b()Lcom/facebook/orca/threads/ThreadsCollection;

    move-result-object v10

    aput-object v10, v9, v5

    invoke-virtual {v8, v0, v9}, Lcom/facebook/orca/threads/ThreadsCollectionMerger;->a(I[Lcom/facebook/orca/threads/ThreadsCollection;)Lcom/facebook/orca/threads/ThreadsCollection;

    move-result-object v0

    .line 86
    invoke-static {}, Lcom/facebook/orca/server/FetchThreadListResult;->newBuilder()Lcom/facebook/orca/server/FetchThreadListResultBuilder;

    move-result-object v8

    new-array v9, v11, [Lcom/facebook/orca/server/DataFreshnessResult;

    invoke-virtual {v2}, Lcom/facebook/orca/server/FetchThreadListResult;->d()Lcom/facebook/orca/server/DataFreshnessResult;

    move-result-object v10

    aput-object v10, v9, v4

    invoke-virtual {v1}, Lcom/facebook/orca/server/FetchThreadListResult;->d()Lcom/facebook/orca/server/DataFreshnessResult;

    move-result-object v10

    aput-object v10, v9, v5

    invoke-static {v9}, Lcom/facebook/orca/merge/MergingUtil;->a([Lcom/facebook/orca/server/DataFreshnessResult;)Lcom/facebook/orca/server/DataFreshnessResult;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/facebook/orca/server/FetchThreadListResultBuilder;->a(Lcom/facebook/orca/server/DataFreshnessResult;)Lcom/facebook/orca/server/FetchThreadListResultBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/facebook/orca/server/FetchThreadListResultBuilder;->a(Lcom/facebook/orca/threads/FolderName;)Lcom/facebook/orca/server/FetchThreadListResultBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/facebook/orca/server/FetchThreadListResultBuilder;->a(Lcom/facebook/orca/threads/ThreadsCollection;)Lcom/facebook/orca/server/FetchThreadListResultBuilder;

    move-result-object v0

    new-array v7, v11, [Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2}, Lcom/facebook/orca/server/FetchThreadListResult;->c()Lcom/google/common/collect/ImmutableList;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-virtual {v1}, Lcom/facebook/orca/server/FetchThreadListResult;->c()Lcom/google/common/collect/ImmutableList;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-static {v7}, Lcom/facebook/orca/merge/MergingUtil;->a([Lcom/google/common/collect/ImmutableList;)Lcom/google/common/collect/ImmutableList;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/facebook/orca/server/FetchThreadListResultBuilder;->a(Lcom/google/common/collect/ImmutableList;)Lcom/facebook/orca/server/FetchThreadListResultBuilder;

    move-result-object v0

    new-array v7, v11, [Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2}, Lcom/facebook/orca/server/FetchThreadListResult;->f()Lcom/google/common/collect/ImmutableList;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-virtual {v1}, Lcom/facebook/orca/server/FetchThreadListResult;->f()Lcom/google/common/collect/ImmutableList;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-static {v7}, Lcom/facebook/orca/merge/MergingUtil;->a([Lcom/google/common/collect/ImmutableList;)Lcom/google/common/collect/ImmutableList;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/facebook/orca/server/FetchThreadListResultBuilder;->a(Ljava/util/List;)Lcom/facebook/orca/server/FetchThreadListResultBuilder;

    move-result-object v0

    new-array v7, v11, [Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2}, Lcom/facebook/orca/server/FetchThreadListResult;->g()Lcom/google/common/collect/ImmutableList;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-virtual {v1}, Lcom/facebook/orca/server/FetchThreadListResult;->g()Lcom/google/common/collect/ImmutableList;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-static {v7}, Lcom/facebook/orca/merge/MergingUtil;->a([Lcom/google/common/collect/ImmutableList;)Lcom/google/common/collect/ImmutableList;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/facebook/orca/server/FetchThreadListResultBuilder;->b(Ljava/util/List;)Lcom/facebook/orca/server/FetchThreadListResultBuilder;

    move-result-object v0

    new-array v7, v11, [Lcom/facebook/orca/threads/FolderCounts;

    invoke-virtual {v2}, Lcom/facebook/orca/server/FetchThreadListResult;->h()Lcom/facebook/orca/threads/FolderCounts;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-virtual {v1}, Lcom/facebook/orca/server/FetchThreadListResult;->h()Lcom/facebook/orca/threads/FolderCounts;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-static {v7}, Lcom/facebook/orca/merge/MergingUtil;->a([Lcom/facebook/orca/threads/FolderCounts;)Lcom/facebook/orca/threads/FolderCounts;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/facebook/orca/server/FetchThreadListResultBuilder;->a(Lcom/facebook/orca/threads/FolderCounts;)Lcom/facebook/orca/server/FetchThreadListResultBuilder;

    move-result-object v0

    invoke-virtual {v2}, Lcom/facebook/orca/server/FetchThreadListResult;->i()Lcom/facebook/orca/notify/NotificationSetting;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/facebook/orca/server/FetchThreadListResultBuilder;->a(Lcom/facebook/orca/notify/NotificationSetting;)Lcom/facebook/orca/server/FetchThreadListResultBuilder;

    move-result-object v0

    new-array v7, v11, [Z

    invoke-virtual {v2}, Lcom/facebook/orca/server/FetchThreadListResult;->j()Z

    move-result v8

    aput-boolean v8, v7, v4

    invoke-virtual {v1}, Lcom/facebook/orca/server/FetchThreadListResult;->j()Z

    move-result v8

    aput-boolean v8, v7, v5

    invoke-static {v7}, Lcom/facebook/orca/merge/MergingUtil;->a([Z)Z

    move-result v7

    invoke-virtual {v0, v7}, Lcom/facebook/orca/server/FetchThreadListResultBuilder;->a(Z)Lcom/facebook/orca/server/FetchThreadListResultBuilder;

    move-result-object v0

    new-array v7, v11, [J

    invoke-virtual {v2}, Lcom/facebook/orca/server/FetchThreadListResult;->e()J

    move-result-wide v8

    aput-wide v8, v7, v4

    invoke-virtual {v1}, Lcom/facebook/orca/server/FetchThreadListResult;->e()J

    move-result-wide v8

    aput-wide v8, v7, v5

    invoke-static {v7}, Lcom/facebook/orca/merge/MergingUtil;->a([J)J

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Lcom/facebook/orca/server/FetchThreadListResultBuilder;->a(J)Lcom/facebook/orca/server/FetchThreadListResultBuilder;

    move-result-object v0

    new-array v7, v11, [J

    invoke-virtual {v2}, Lcom/facebook/orca/server/FetchThreadListResult;->k()J

    move-result-wide v8

    aput-wide v8, v7, v4

    invoke-virtual {v1}, Lcom/facebook/orca/server/FetchThreadListResult;->k()J

    move-result-wide v1

    aput-wide v1, v7, v5

    invoke-static {v7}, Lcom/facebook/orca/merge/MergingUtil;->a([J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/server/FetchThreadListResultBuilder;->b(J)Lcom/facebook/orca/server/FetchThreadListResultBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/facebook/orca/server/FetchThreadListResultBuilder;->b(Z)Lcom/facebook/orca/server/FetchThreadListResultBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/facebook/orca/server/FetchThreadListResultBuilder;->a(Ljava/util/Map;)Lcom/facebook/orca/server/FetchThreadListResultBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadListResultBuilder;->o()Lcom/facebook/orca/server/FetchThreadListResult;

    move-result-object v0

    .line 117
    invoke-static {v0}, Lcom/facebook/orca/server/OperationResult;->a(Landroid/os/Parcelable;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    goto/16 :goto_0

    :cond_2
    move-object v6, v3

    move v3, v4

    goto/16 :goto_1

    :cond_3
    move-object v6, v3

    move v3, v4

    goto/16 :goto_1
.end method

.method protected b(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 13
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 169
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->a()Ljava/lang/String;

    .line 170
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 171
    const-string v1, "fetchMoreThreadsParams"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/FetchMoreThreadsParams;

    .line 172
    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchMoreThreadsParams;->a()Lcom/facebook/orca/threads/FolderName;

    move-result-object v2

    .line 176
    sget-object v1, Lcom/facebook/orca/threads/FolderName;->d:Lcom/facebook/orca/threads/FolderName;

    if-eq v2, v1, :cond_0

    sget-object v1, Lcom/facebook/orca/threads/FolderName;->e:Lcom/facebook/orca/threads/FolderName;

    if-ne v2, v1, :cond_3

    .line 177
    :cond_0
    sget-object v1, Lcom/facebook/orca/threads/FolderName;->d:Lcom/facebook/orca/threads/FolderName;

    invoke-direct {p0, p1, v1, p2}, Lcom/facebook/orca/merge/MergeServiceHandler;->b(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/threads/FolderName;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v1

    .line 183
    :goto_0
    invoke-virtual {v1}, Lcom/facebook/orca/server/OperationResult;->h()Landroid/os/Parcelable;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/facebook/orca/server/FetchMoreThreadsResult;

    .line 188
    sget-object v1, Lcom/facebook/orca/threads/FolderName;->b:Lcom/facebook/orca/threads/FolderName;

    if-eq v2, v1, :cond_1

    sget-object v1, Lcom/facebook/orca/threads/FolderName;->e:Lcom/facebook/orca/threads/FolderName;

    if-ne v2, v1, :cond_4

    .line 189
    :cond_1
    sget-object v1, Lcom/facebook/orca/threads/FolderName;->b:Lcom/facebook/orca/threads/FolderName;

    invoke-direct {p0, p1, v1, p2}, Lcom/facebook/orca/merge/MergeServiceHandler;->b(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/threads/FolderName;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v1

    .line 195
    :goto_1
    invoke-virtual {v1}, Lcom/facebook/orca/server/OperationResult;->h()Landroid/os/Parcelable;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/facebook/orca/server/FetchMoreThreadsResult;

    .line 199
    const/4 v7, 0x0

    .line 200
    sget-object v1, Lcom/facebook/orca/threads/FolderName;->e:Lcom/facebook/orca/threads/FolderName;

    if-ne v2, v1, :cond_2

    .line 201
    sget-object v1, Lcom/facebook/orca/threads/FolderName;->b:Lcom/facebook/orca/threads/FolderName;

    sget-object v3, Lcom/facebook/orca/threads/FolderName;->d:Lcom/facebook/orca/threads/FolderName;

    invoke-static {v1, v6, v3, v5}, Lcom/google/common/collect/ImmutableMap;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v7

    .line 206
    :cond_2
    iget-object v1, p0, Lcom/facebook/orca/merge/MergeServiceHandler;->b:Lcom/facebook/orca/threads/ThreadsCollectionMerger;

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchMoreThreadsParams;->c()I

    move-result v0

    new-array v3, v9, [Lcom/facebook/orca/threads/ThreadsCollection;

    invoke-virtual {v6}, Lcom/facebook/orca/server/FetchMoreThreadsResult;->b()Lcom/facebook/orca/threads/ThreadsCollection;

    move-result-object v4

    aput-object v4, v3, v11

    invoke-virtual {v5}, Lcom/facebook/orca/server/FetchMoreThreadsResult;->b()Lcom/facebook/orca/threads/ThreadsCollection;

    move-result-object v4

    aput-object v4, v3, v12

    invoke-virtual {v1, v0, v3}, Lcom/facebook/orca/threads/ThreadsCollectionMerger;->a(I[Lcom/facebook/orca/threads/ThreadsCollection;)Lcom/facebook/orca/threads/ThreadsCollection;

    move-result-object v3

    .line 212
    new-instance v0, Lcom/facebook/orca/server/FetchMoreThreadsResult;

    new-array v1, v9, [Lcom/facebook/orca/server/DataFreshnessResult;

    invoke-virtual {v6}, Lcom/facebook/orca/server/FetchMoreThreadsResult;->d()Lcom/facebook/orca/server/DataFreshnessResult;

    move-result-object v4

    aput-object v4, v1, v11

    invoke-virtual {v5}, Lcom/facebook/orca/server/FetchMoreThreadsResult;->d()Lcom/facebook/orca/server/DataFreshnessResult;

    move-result-object v4

    aput-object v4, v1, v12

    invoke-static {v1}, Lcom/facebook/orca/merge/MergingUtil;->a([Lcom/facebook/orca/server/DataFreshnessResult;)Lcom/facebook/orca/server/DataFreshnessResult;

    move-result-object v1

    new-array v4, v9, [Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v6}, Lcom/facebook/orca/server/FetchMoreThreadsResult;->c()Lcom/google/common/collect/ImmutableList;

    move-result-object v8

    aput-object v8, v4, v11

    invoke-virtual {v5}, Lcom/facebook/orca/server/FetchMoreThreadsResult;->c()Lcom/google/common/collect/ImmutableList;

    move-result-object v8

    aput-object v8, v4, v12

    invoke-static {v4}, Lcom/facebook/orca/merge/MergingUtil;->a([Lcom/google/common/collect/ImmutableList;)Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    new-array v8, v9, [J

    invoke-virtual {v6}, Lcom/facebook/orca/server/FetchMoreThreadsResult;->e()J

    move-result-wide v9

    aput-wide v9, v8, v11

    invoke-virtual {v5}, Lcom/facebook/orca/server/FetchMoreThreadsResult;->e()J

    move-result-wide v5

    aput-wide v5, v8, v12

    invoke-static {v8}, Lcom/facebook/orca/merge/MergingUtil;->a([J)J

    move-result-wide v5

    invoke-direct/range {v0 .. v7}, Lcom/facebook/orca/server/FetchMoreThreadsResult;-><init>(Lcom/facebook/orca/server/DataFreshnessResult;Lcom/facebook/orca/threads/FolderName;Lcom/facebook/orca/threads/ThreadsCollection;Lcom/google/common/collect/ImmutableList;JLcom/google/common/collect/ImmutableMap;)V

    .line 224
    invoke-static {v0}, Lcom/facebook/orca/server/OperationResult;->a(Landroid/os/Parcelable;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0

    .line 180
    :cond_3
    sget-object v1, Lcom/facebook/orca/threads/FolderName;->d:Lcom/facebook/orca/threads/FolderName;

    invoke-static {v1}, Lcom/facebook/orca/server/FetchMoreThreadsResult;->a(Lcom/facebook/orca/threads/FolderName;)Lcom/facebook/orca/server/FetchMoreThreadsResult;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/server/OperationResult;->a(Landroid/os/Parcelable;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v1

    goto/16 :goto_0

    .line 192
    :cond_4
    sget-object v1, Lcom/facebook/orca/threads/FolderName;->b:Lcom/facebook/orca/threads/FolderName;

    invoke-static {v1}, Lcom/facebook/orca/server/FetchMoreThreadsResult;->a(Lcom/facebook/orca/threads/FolderName;)Lcom/facebook/orca/server/FetchMoreThreadsResult;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/server/OperationResult;->a(Landroid/os/Parcelable;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v1

    goto/16 :goto_1
.end method

.method protected p(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 247
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v1

    .line 248
    const-string v0, "folderName"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/FolderName;

    .line 249
    sget-object v2, Lcom/facebook/orca/threads/FolderName;->e:Lcom/facebook/orca/threads/FolderName;

    if-ne v0, v2, :cond_0

    .line 250
    const-string v0, "folderName"

    sget-object v2, Lcom/facebook/orca/threads/FolderName;->d:Lcom/facebook/orca/threads/FolderName;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 251
    invoke-interface {p2, p1}, Lcom/facebook/orca/server/OrcaServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    .line 253
    const-string v0, "folderName"

    sget-object v2, Lcom/facebook/orca/threads/FolderName;->b:Lcom/facebook/orca/threads/FolderName;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 254
    invoke-interface {p2, p1}, Lcom/facebook/orca/server/OrcaServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    .line 256
    const-string v2, "folderName"

    sget-object v3, Lcom/facebook/orca/threads/FolderName;->e:Lcom/facebook/orca/threads/FolderName;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 259
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p2, p1}, Lcom/facebook/orca/server/OrcaServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    goto :goto_0
.end method
