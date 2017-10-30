.class public Lcom/facebook/orca/sms/MmsSmsServiceHandler;
.super Lcom/facebook/orca/server/AbstractOrcaServiceHandlerFilter;
.source "MmsSmsServiceHandler.java"


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
.field private final b:Lcom/facebook/orca/sms/MmsSmsFetchThreadsHandler;

.field private final c:Lcom/facebook/orca/sms/MmsSmsFetchThreadHandler;

.field private final d:Lcom/facebook/orca/sms/MmsSmsSendMessageHandler;

.field private final e:Lcom/facebook/orca/sms/MmsSmsContentResolverHandler;

.field private final f:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

.field private final g:Lcom/facebook/orca/sms/MmsSmsLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/facebook/orca/sms/MmsSmsServiceHandler;

    sput-object v0, Lcom/facebook/orca/sms/MmsSmsServiceHandler;->a:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/orca/sms/MmsSmsFetchThreadsHandler;Lcom/facebook/orca/sms/MmsSmsFetchThreadHandler;Lcom/facebook/orca/sms/MmsSmsSendMessageHandler;Lcom/facebook/orca/sms/MmsSmsContentResolverHandler;Lcom/facebook/orca/prefs/OrcaSharedPreferences;Lcom/facebook/orca/sms/MmsSmsLogger;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 56
    const-string v0, "MmsSmsServiceHandler"

    invoke-direct {p0, v0}, Lcom/facebook/orca/server/AbstractOrcaServiceHandlerFilter;-><init>(Ljava/lang/String;)V

    .line 57
    iput-object p1, p0, Lcom/facebook/orca/sms/MmsSmsServiceHandler;->b:Lcom/facebook/orca/sms/MmsSmsFetchThreadsHandler;

    .line 58
    iput-object p2, p0, Lcom/facebook/orca/sms/MmsSmsServiceHandler;->c:Lcom/facebook/orca/sms/MmsSmsFetchThreadHandler;

    .line 59
    iput-object p3, p0, Lcom/facebook/orca/sms/MmsSmsServiceHandler;->d:Lcom/facebook/orca/sms/MmsSmsSendMessageHandler;

    .line 60
    iput-object p4, p0, Lcom/facebook/orca/sms/MmsSmsServiceHandler;->e:Lcom/facebook/orca/sms/MmsSmsContentResolverHandler;

    .line 61
    iput-object p5, p0, Lcom/facebook/orca/sms/MmsSmsServiceHandler;->f:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    .line 62
    iput-object p6, p0, Lcom/facebook/orca/sms/MmsSmsServiceHandler;->g:Lcom/facebook/orca/sms/MmsSmsLogger;

    .line 63
    return-void
.end method


# virtual methods
.method protected a(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 69
    const-string v0, "MmsSmsServiceHandler.handleFetchThreadList"

    invoke-static {v0}, Lcom/facebook/orca/debug/Tracer;->a(Ljava/lang/String;)Lcom/facebook/orca/debug/Tracer;

    move-result-object v1

    .line 71
    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 72
    const-string v2, "fetchThreadListParams"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/FetchThreadListParams;

    .line 73
    iget-object v2, p0, Lcom/facebook/orca/sms/MmsSmsServiceHandler;->b:Lcom/facebook/orca/sms/MmsSmsFetchThreadsHandler;

    invoke-virtual {v2, v0}, Lcom/facebook/orca/sms/MmsSmsFetchThreadsHandler;->a(Lcom/facebook/orca/server/FetchThreadListParams;)Lcom/facebook/orca/server/FetchThreadListResult;

    move-result-object v0

    .line 75
    invoke-static {v0}, Lcom/facebook/orca/server/OperationResult;->a(Landroid/os/Parcelable;)Lcom/facebook/orca/server/OperationResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 77
    invoke-virtual {v1}, Lcom/facebook/orca/debug/Tracer;->a()J

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/facebook/orca/debug/Tracer;->a()J

    throw v0
.end method

.method protected b(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 85
    const-string v0, "MmsSmsServiceHandler.handleFetchMoreThreads"

    invoke-static {v0}, Lcom/facebook/orca/debug/Tracer;->a(Ljava/lang/String;)Lcom/facebook/orca/debug/Tracer;

    move-result-object v1

    .line 87
    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 88
    const-string v2, "fetchMoreThreadsParams"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/FetchMoreThreadsParams;

    .line 90
    iget-object v2, p0, Lcom/facebook/orca/sms/MmsSmsServiceHandler;->b:Lcom/facebook/orca/sms/MmsSmsFetchThreadsHandler;

    invoke-virtual {v2, v0}, Lcom/facebook/orca/sms/MmsSmsFetchThreadsHandler;->a(Lcom/facebook/orca/server/FetchMoreThreadsParams;)Lcom/facebook/orca/server/FetchMoreThreadsResult;

    move-result-object v0

    .line 92
    invoke-static {v0}, Lcom/facebook/orca/server/OperationResult;->a(Landroid/os/Parcelable;)Lcom/facebook/orca/server/OperationResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 94
    invoke-virtual {v1}, Lcom/facebook/orca/debug/Tracer;->a()J

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/facebook/orca/debug/Tracer;->a()J

    throw v0
.end method

.method protected c(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 102
    const-string v0, "MmsSmsServiceHandler.handleFetchThread"

    invoke-static {v0}, Lcom/facebook/orca/debug/Tracer;->a(Ljava/lang/String;)Lcom/facebook/orca/debug/Tracer;

    move-result-object v1

    .line 104
    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 105
    const-string v2, "fetchThreadParams"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/FetchThreadParams;

    .line 106
    iget-object v2, p0, Lcom/facebook/orca/sms/MmsSmsServiceHandler;->c:Lcom/facebook/orca/sms/MmsSmsFetchThreadHandler;

    invoke-virtual {v2, v0}, Lcom/facebook/orca/sms/MmsSmsFetchThreadHandler;->a(Lcom/facebook/orca/server/FetchThreadParams;)Lcom/facebook/orca/server/FetchThreadResult;

    move-result-object v0

    .line 108
    invoke-static {v0}, Lcom/facebook/orca/server/OperationResult;->a(Landroid/os/Parcelable;)Lcom/facebook/orca/server/OperationResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 110
    invoke-virtual {v1}, Lcom/facebook/orca/debug/Tracer;->a()J

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/facebook/orca/debug/Tracer;->a()J

    throw v0
.end method

.method protected d(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 192
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 193
    const-string v1, "createThreadParams"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/CreateThreadParams;

    .line 195
    const/4 v2, 0x0

    .line 197
    :try_start_0
    iget-object v1, p0, Lcom/facebook/orca/sms/MmsSmsServiceHandler;->d:Lcom/facebook/orca/sms/MmsSmsSendMessageHandler;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/sms/MmsSmsSendMessageHandler;->a(Lcom/facebook/orca/server/CreateThreadParams;)Lcom/facebook/orca/server/FetchThreadResult;

    move-result-object v1

    .line 199
    const/4 v2, 0x1

    .line 200
    invoke-static {v1}, Lcom/facebook/orca/server/OperationResult;->a(Landroid/os/Parcelable;)Lcom/facebook/orca/server/OperationResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 202
    iget-object v3, p0, Lcom/facebook/orca/sms/MmsSmsServiceHandler;->g:Lcom/facebook/orca/sms/MmsSmsLogger;

    invoke-virtual {v0}, Lcom/facebook/orca/server/CreateThreadParams;->d()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    invoke-virtual {v3, v0, v2}, Lcom/facebook/orca/sms/MmsSmsLogger;->a(IZ)V

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v3, p0, Lcom/facebook/orca/sms/MmsSmsServiceHandler;->g:Lcom/facebook/orca/sms/MmsSmsLogger;

    invoke-virtual {v0}, Lcom/facebook/orca/server/CreateThreadParams;->d()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    invoke-virtual {v3, v0, v2}, Lcom/facebook/orca/sms/MmsSmsLogger;->a(IZ)V

    throw v1
.end method

.method protected f(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 210
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 211
    const-string v1, "outgoingMessage"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/Message;

    .line 213
    iget-object v1, p0, Lcom/facebook/orca/sms/MmsSmsServiceHandler;->d:Lcom/facebook/orca/sms/MmsSmsSendMessageHandler;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/sms/MmsSmsSendMessageHandler;->a(Lcom/facebook/orca/threads/Message;)Lcom/facebook/orca/server/NewMessageResult;

    move-result-object v0

    .line 215
    invoke-static {v0}, Lcom/facebook/orca/server/OperationResult;->a(Landroid/os/Parcelable;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method protected i(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 135
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 136
    const-string v1, "markThreadParams"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/MarkThreadParams;

    .line 137
    invoke-virtual {v0}, Lcom/facebook/orca/server/MarkThreadParams;->a()Ljava/lang/String;

    move-result-object v1

    .line 138
    invoke-virtual {v0}, Lcom/facebook/orca/server/MarkThreadParams;->b()Lcom/facebook/orca/server/MarkThreadParams$Mark;

    move-result-object v2

    .line 139
    sget-object v3, Lcom/facebook/orca/server/MarkThreadParams$Mark;->READ:Lcom/facebook/orca/server/MarkThreadParams$Mark;

    if-ne v2, v3, :cond_0

    invoke-virtual {v0}, Lcom/facebook/orca/server/MarkThreadParams;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    invoke-static {v1}, Lcom/facebook/orca/threads/MessagingIdUtil;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 141
    iget-object v1, p0, Lcom/facebook/orca/sms/MmsSmsServiceHandler;->e:Lcom/facebook/orca/sms/MmsSmsContentResolverHandler;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/sms/MmsSmsContentResolverHandler;->e(Ljava/lang/String;)V

    .line 143
    :cond_0
    invoke-static {}, Lcom/facebook/orca/server/OperationResult;->b()Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method protected l(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 150
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 151
    const-string v1, "deleteThreadParams"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/DeleteThreadParams;

    .line 152
    invoke-virtual {v0}, Lcom/facebook/orca/server/DeleteThreadParams;->a()Ljava/lang/String;

    move-result-object v2

    .line 153
    invoke-static {v2}, Lcom/facebook/orca/threads/MessagingIdUtil;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 155
    const/4 v1, 0x0

    .line 157
    :try_start_0
    iget-object v3, p0, Lcom/facebook/orca/sms/MmsSmsServiceHandler;->e:Lcom/facebook/orca/sms/MmsSmsContentResolverHandler;

    invoke-virtual {v3, v0}, Lcom/facebook/orca/sms/MmsSmsContentResolverHandler;->f(Ljava/lang/String;)V

    .line 158
    const/4 v1, 0x1

    .line 159
    invoke-static {}, Lcom/facebook/orca/server/OperationResult;->b()Lcom/facebook/orca/server/OperationResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 161
    iget-object v3, p0, Lcom/facebook/orca/sms/MmsSmsServiceHandler;->g:Lcom/facebook/orca/sms/MmsSmsLogger;

    invoke-virtual {v3, v2, v1}, Lcom/facebook/orca/sms/MmsSmsLogger;->c(Ljava/lang/String;Z)V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v3, p0, Lcom/facebook/orca/sms/MmsSmsServiceHandler;->g:Lcom/facebook/orca/sms/MmsSmsLogger;

    invoke-virtual {v3, v2, v1}, Lcom/facebook/orca/sms/MmsSmsLogger;->c(Ljava/lang/String;Z)V

    throw v0
.end method

.method protected m(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 169
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 170
    const-string v1, "deleteMessagesParams"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/DeleteMessagesParams;

    .line 172
    invoke-virtual {v0}, Lcom/facebook/orca/server/DeleteMessagesParams;->b()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 175
    :try_start_0
    iget-object v4, p0, Lcom/facebook/orca/sms/MmsSmsServiceHandler;->e:Lcom/facebook/orca/sms/MmsSmsContentResolverHandler;

    invoke-virtual {v4, v0}, Lcom/facebook/orca/sms/MmsSmsContentResolverHandler;->g(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    const/4 v4, 0x1

    .line 180
    iget-object v5, p0, Lcom/facebook/orca/sms/MmsSmsServiceHandler;->g:Lcom/facebook/orca/sms/MmsSmsLogger;

    invoke-virtual {v5, v0, v4}, Lcom/facebook/orca/sms/MmsSmsLogger;->d(Ljava/lang/String;Z)V

    move v0, v1

    :goto_1
    move v1, v0

    .line 182
    goto :goto_0

    .line 177
    :catch_0
    move-exception v4

    .line 178
    add-int/lit8 v1, v1, 0x1

    .line 180
    iget-object v4, p0, Lcom/facebook/orca/sms/MmsSmsServiceHandler;->g:Lcom/facebook/orca/sms/MmsSmsLogger;

    invoke-virtual {v4, v0, v2}, Lcom/facebook/orca/sms/MmsSmsLogger;->d(Ljava/lang/String;Z)V

    move v0, v1

    .line 181
    goto :goto_1

    .line 180
    :catchall_0
    move-exception v1

    iget-object v3, p0, Lcom/facebook/orca/sms/MmsSmsServiceHandler;->g:Lcom/facebook/orca/sms/MmsSmsLogger;

    invoke-virtual {v3, v0, v2}, Lcom/facebook/orca/sms/MmsSmsLogger;->d(Ljava/lang/String;Z)V

    throw v1

    .line 183
    :cond_0
    if-lez v1, :cond_1

    .line 184
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Some Mms or Sms message deletes failed"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 186
    :cond_1
    invoke-static {}, Lcom/facebook/orca/server/OperationResult;->b()Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method protected n(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 233
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 234
    const-string v1, "modifyThreadParams"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/ModifyThreadParams;

    .line 236
    new-instance v1, Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    invoke-direct {v1}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;-><init>()V

    sget-object v2, Lcom/facebook/orca/server/DataFreshnessParam;->CHECK_SERVER_FOR_NEW_DATA:Lcom/facebook/orca/server/DataFreshnessParam;

    invoke-virtual {v1, v2}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->a(Lcom/facebook/orca/server/DataFreshnessParam;)Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/facebook/orca/server/ModifyThreadParams;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/server/ThreadCriteria;->a(Ljava/lang/String;)Lcom/facebook/orca/server/ThreadCriteria;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->a(Lcom/facebook/orca/server/ThreadCriteria;)Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->a(I)Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->g()Lcom/facebook/orca/server/FetchThreadParams;

    move-result-object v0

    .line 241
    iget-object v1, p0, Lcom/facebook/orca/sms/MmsSmsServiceHandler;->c:Lcom/facebook/orca/sms/MmsSmsFetchThreadHandler;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/sms/MmsSmsFetchThreadHandler;->a(Lcom/facebook/orca/server/FetchThreadParams;)Lcom/facebook/orca/server/FetchThreadResult;

    move-result-object v0

    .line 243
    invoke-static {v0}, Lcom/facebook/orca/server/OperationResult;->a(Landroid/os/Parcelable;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method protected p(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 222
    iget-object v0, p0, Lcom/facebook/orca/sms/MmsSmsServiceHandler;->f:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-interface {v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->b()Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    move-result-object v0

    .line 223
    sget-object v1, Lcom/facebook/orca/prefs/MessagesPrefKeys;->e:Lcom/facebook/orca/prefs/PrefKey;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a(Lcom/facebook/orca/prefs/PrefKey;J)Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    .line 224
    invoke-interface {v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a()V

    .line 225
    invoke-static {}, Lcom/facebook/orca/server/OperationResult;->b()Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method protected u(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 118
    const-string v0, "MmsSmsServiceHandler.handleFetchMoreMessages"

    invoke-static {v0}, Lcom/facebook/orca/debug/Tracer;->a(Ljava/lang/String;)Lcom/facebook/orca/debug/Tracer;

    move-result-object v1

    .line 120
    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 121
    const-string v2, "fetchMoreMessagesParams"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/FetchMoreMessagesParams;

    .line 123
    iget-object v2, p0, Lcom/facebook/orca/sms/MmsSmsServiceHandler;->c:Lcom/facebook/orca/sms/MmsSmsFetchThreadHandler;

    invoke-virtual {v2, v0}, Lcom/facebook/orca/sms/MmsSmsFetchThreadHandler;->a(Lcom/facebook/orca/server/FetchMoreMessagesParams;)Lcom/facebook/orca/server/FetchMoreMessagesResult;

    move-result-object v0

    .line 125
    invoke-static {v0}, Lcom/facebook/orca/server/OperationResult;->a(Landroid/os/Parcelable;)Lcom/facebook/orca/server/OperationResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 127
    invoke-virtual {v1}, Lcom/facebook/orca/debug/Tracer;->a()J

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/facebook/orca/debug/Tracer;->a()J

    throw v0
.end method
