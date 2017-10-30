.class public Lcom/facebook/orca/protocol/methods/FetchThreadListMethod;
.super Ljava/lang/Object;
.source "FetchThreadListMethod.java"

# interfaces
.implements Lcom/facebook/orca/protocol/base/ApiMethod;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/orca/protocol/base/ApiMethod",
        "<",
        "Lcom/facebook/orca/server/FetchThreadListParams;",
        "Lcom/facebook/orca/server/FetchThreadListResult;",
        ">;"
    }
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
.field private final b:Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/facebook/orca/protocol/methods/FetchThreadListMethod;

    sput-object v0, Lcom/facebook/orca/protocol/methods/FetchThreadListMethod;->a:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/facebook/orca/protocol/methods/FetchThreadListMethod;->b:Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper;

    .line 37
    return-void
.end method

.method private b(Lcom/facebook/orca/server/FetchThreadListParams;)Ljava/lang/String;
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 57
    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchThreadListParams;->b()Lcom/facebook/orca/threads/FolderName;

    move-result-object v2

    .line 58
    new-instance v1, Lcom/facebook/orca/protocol/methods/FqlMultiQueryHelper;

    invoke-direct {v1}, Lcom/facebook/orca/protocol/methods/FqlMultiQueryHelper;-><init>()V

    .line 59
    iget-object v0, p0, Lcom/facebook/orca/protocol/methods/FetchThreadListMethod;->b:Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper;->a(Lcom/facebook/orca/protocol/methods/FqlMultiQueryHelper;)V

    .line 60
    iget-object v0, p0, Lcom/facebook/orca/protocol/methods/FetchThreadListMethod;->b:Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper;->a(Lcom/facebook/orca/protocol/methods/FqlMultiQueryHelper;Lcom/facebook/orca/threads/FolderName;)V

    .line 63
    iget-object v0, p0, Lcom/facebook/orca/protocol/methods/FetchThreadListMethod;->b:Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper;

    const-string v3, "folder=\'%1$s\' AND archived=0"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/facebook/orca/threads/FolderName;->a()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "timestamp DESC"

    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchThreadListParams;->d()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper;->a(Lcom/facebook/orca/protocol/methods/FqlMultiQueryHelper;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 70
    invoke-virtual {v1}, Lcom/facebook/orca/protocol/methods/FqlMultiQueryHelper;->a()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c(Lcom/facebook/orca/server/FetchThreadListParams;)Ljava/lang/String;
    .locals 8
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 76
    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchThreadListParams;->b()Lcom/facebook/orca/threads/FolderName;

    move-result-object v2

    .line 77
    new-instance v1, Lcom/facebook/orca/protocol/methods/FqlMultiQueryHelper;

    invoke-direct {v1}, Lcom/facebook/orca/protocol/methods/FqlMultiQueryHelper;-><init>()V

    .line 78
    iget-object v0, p0, Lcom/facebook/orca/protocol/methods/FetchThreadListMethod;->b:Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper;->a(Lcom/facebook/orca/protocol/methods/FqlMultiQueryHelper;)V

    .line 79
    iget-object v0, p0, Lcom/facebook/orca/protocol/methods/FetchThreadListMethod;->b:Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper;->a(Lcom/facebook/orca/protocol/methods/FqlMultiQueryHelper;Lcom/facebook/orca/threads/FolderName;)V

    .line 80
    iget-object v0, p0, Lcom/facebook/orca/protocol/methods/FetchThreadListMethod;->b:Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper;

    const-string v3, "folder=\'%1$s\' AND action_id > %2$d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v2}, Lcom/facebook/orca/threads/FolderName;->a()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v6

    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchThreadListParams;->c()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "timestamp DESC"

    const/16 v4, 0x64

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper;->a(Lcom/facebook/orca/protocol/methods/FqlMultiQueryHelper;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 88
    invoke-virtual {v1}, Lcom/facebook/orca/protocol/methods/FqlMultiQueryHelper;->a()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lcom/facebook/orca/server/FetchThreadListParams;)Lcom/facebook/orca/protocol/base/ApiRequest;
    .locals 6
    .parameter

    .prologue
    .line 41
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v4

    .line 42
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "format"

    const-string v2, "json"

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchThreadListParams;->c()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "queries"

    invoke-direct {p0, p1}, Lcom/facebook/orca/protocol/methods/FetchThreadListMethod;->b(Lcom/facebook/orca/server/FetchThreadListParams;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    :goto_0
    new-instance v0, Lcom/facebook/orca/protocol/base/ApiRequest;

    const-string v1, "fetchThreads"

    const-string v2, "GET"

    const-string v3, "method/fql.multiquery"

    sget-object v5, Lcom/facebook/orca/protocol/base/ApiResponseType;->JSON:Lcom/facebook/orca/protocol/base/ApiResponseType;

    invoke-direct/range {v0 .. v5}, Lcom/facebook/orca/protocol/base/ApiRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/facebook/orca/protocol/base/ApiResponseType;)V

    return-object v0

    .line 46
    :cond_0
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "queries"

    invoke-direct {p0, p1}, Lcom/facebook/orca/protocol/methods/FetchThreadListMethod;->c(Lcom/facebook/orca/server/FetchThreadListParams;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Lcom/facebook/orca/protocol/base/ApiRequest;
    .locals 1
    .parameter

    .prologue
    .line 27
    check-cast p1, Lcom/facebook/orca/server/FetchThreadListParams;

    invoke-virtual {p0, p1}, Lcom/facebook/orca/protocol/methods/FetchThreadListMethod;->a(Lcom/facebook/orca/server/FetchThreadListParams;)Lcom/facebook/orca/protocol/base/ApiRequest;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/facebook/orca/server/FetchThreadListParams;Lcom/facebook/orca/protocol/base/ApiResponse;)Lcom/facebook/orca/server/FetchThreadListResult;
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 94
    invoke-virtual {p2}, Lcom/facebook/orca/protocol/base/ApiResponse;->b()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    .line 95
    new-instance v3, Lcom/facebook/orca/protocol/methods/FqlResultHelper;

    invoke-direct {v3, v0}, Lcom/facebook/orca/protocol/methods/FqlResultHelper;-><init>(Lcom/fasterxml/jackson/databind/JsonNode;)V

    .line 97
    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchThreadListParams;->c()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-eqz v0, :cond_0

    move v0, v1

    .line 98
    :goto_0
    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchThreadListParams;->d()I

    move-result v4

    .line 99
    iget-object v5, p0, Lcom/facebook/orca/protocol/methods/FetchThreadListMethod;->b:Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper;

    invoke-virtual {v5, v3, v0, v4}, Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper;->a(Lcom/facebook/orca/protocol/methods/FqlResultHelper;ZI)Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper$ThreadsResult;

    move-result-object v4

    .line 104
    if-nez v0, :cond_1

    iget v5, v4, Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper$ThreadsResult;->e:I

    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchThreadListParams;->d()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    if-ge v5, v6, :cond_1

    .line 108
    :goto_1
    new-instance v2, Lcom/facebook/orca/threads/ThreadsCollection;

    iget-object v5, v4, Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper$ThreadsResult;->a:Lcom/google/common/collect/ImmutableList;

    invoke-direct {v2, v5, v1}, Lcom/facebook/orca/threads/ThreadsCollection;-><init>(Lcom/google/common/collect/ImmutableList;Z)V

    .line 112
    iget-object v1, p0, Lcom/facebook/orca/protocol/methods/FetchThreadListMethod;->b:Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper;

    invoke-virtual {v1, v3}, Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper;->b(Lcom/facebook/orca/protocol/methods/FqlResultHelper;)Lcom/facebook/orca/threads/FolderName;

    move-result-object v1

    .line 113
    iget-object v5, p0, Lcom/facebook/orca/protocol/methods/FetchThreadListMethod;->b:Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper;

    invoke-virtual {v5, v3}, Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper;->c(Lcom/facebook/orca/protocol/methods/FqlResultHelper;)Lcom/facebook/orca/threads/FolderCounts;

    move-result-object v5

    .line 114
    iget-object v6, p0, Lcom/facebook/orca/protocol/methods/FetchThreadListMethod;->b:Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper;

    invoke-virtual {v6, v3}, Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper;->d(Lcom/facebook/orca/protocol/methods/FqlResultHelper;)Lcom/facebook/orca/notify/NotificationSetting;

    move-result-object v3

    .line 117
    invoke-static {}, Lcom/facebook/orca/server/FetchThreadListResult;->newBuilder()Lcom/facebook/orca/server/FetchThreadListResultBuilder;

    move-result-object v6

    sget-object v7, Lcom/facebook/orca/server/DataFreshnessResult;->FROM_SERVER:Lcom/facebook/orca/server/DataFreshnessResult;

    invoke-virtual {v6, v7}, Lcom/facebook/orca/server/FetchThreadListResultBuilder;->a(Lcom/facebook/orca/server/DataFreshnessResult;)Lcom/facebook/orca/server/FetchThreadListResultBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/facebook/orca/server/FetchThreadListResultBuilder;->a(Lcom/facebook/orca/threads/FolderName;)Lcom/facebook/orca/server/FetchThreadListResultBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/facebook/orca/server/FetchThreadListResultBuilder;->a(Lcom/facebook/orca/threads/ThreadsCollection;)Lcom/facebook/orca/server/FetchThreadListResultBuilder;

    move-result-object v1

    iget-object v2, v4, Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper$ThreadsResult;->d:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1, v2}, Lcom/facebook/orca/server/FetchThreadListResultBuilder;->a(Lcom/google/common/collect/ImmutableList;)Lcom/facebook/orca/server/FetchThreadListResultBuilder;

    move-result-object v1

    iget-object v2, v4, Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper$ThreadsResult;->b:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1, v2}, Lcom/facebook/orca/server/FetchThreadListResultBuilder;->a(Ljava/util/List;)Lcom/facebook/orca/server/FetchThreadListResultBuilder;

    move-result-object v1

    iget-object v2, v4, Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper$ThreadsResult;->c:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1, v2}, Lcom/facebook/orca/server/FetchThreadListResultBuilder;->b(Ljava/util/List;)Lcom/facebook/orca/server/FetchThreadListResultBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/facebook/orca/server/FetchThreadListResultBuilder;->a(Lcom/facebook/orca/threads/FolderCounts;)Lcom/facebook/orca/server/FetchThreadListResultBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/facebook/orca/server/FetchThreadListResultBuilder;->a(Lcom/facebook/orca/notify/NotificationSetting;)Lcom/facebook/orca/server/FetchThreadListResultBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/facebook/orca/server/FetchThreadListResultBuilder;->a(Z)Lcom/facebook/orca/server/FetchThreadListResultBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/server/FetchThreadListResultBuilder;->a(J)Lcom/facebook/orca/server/FetchThreadListResultBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchThreadListParams;->c()J

    move-result-wide v1

    iget-wide v3, v4, Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper$ThreadsResult;->f:J

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/server/FetchThreadListResultBuilder;->b(J)Lcom/facebook/orca/server/FetchThreadListResultBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadListResultBuilder;->o()Lcom/facebook/orca/server/FetchThreadListResult;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v2

    .line 97
    goto :goto_0

    :cond_1
    move v1, v2

    .line 104
    goto :goto_1
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/facebook/orca/protocol/base/ApiResponse;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 27
    check-cast p1, Lcom/facebook/orca/server/FetchThreadListParams;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/orca/protocol/methods/FetchThreadListMethod;->a(Lcom/facebook/orca/server/FetchThreadListParams;Lcom/facebook/orca/protocol/base/ApiResponse;)Lcom/facebook/orca/server/FetchThreadListResult;

    move-result-object v0

    return-object v0
.end method
