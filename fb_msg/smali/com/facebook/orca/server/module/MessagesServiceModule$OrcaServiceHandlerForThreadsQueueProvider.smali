.class Lcom/facebook/orca/server/module/MessagesServiceModule$OrcaServiceHandlerForThreadsQueueProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessagesServiceModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/server/OrcaServiceHandler;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/server/module/MessagesServiceModule;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/server/module/MessagesServiceModule;)V
    .locals 0
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/facebook/orca/server/module/MessagesServiceModule$OrcaServiceHandlerForThreadsQueueProvider;->a:Lcom/facebook/orca/server/module/MessagesServiceModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/server/module/MessagesServiceModule;Lcom/facebook/orca/server/module/MessagesServiceModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/facebook/orca/server/module/MessagesServiceModule$OrcaServiceHandlerForThreadsQueueProvider;-><init>(Lcom/facebook/orca/server/module/MessagesServiceModule;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/server/OrcaServiceHandler;
    .locals 11

    .prologue
    .line 68
    new-instance v5, Lcom/facebook/orca/server/FilterChainLink;

    const-class v0, Lcom/facebook/orca/server/PreProcessingServiceHandler;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/server/module/MessagesServiceModule$OrcaServiceHandlerForThreadsQueueProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/OrcaServiceHandler$Filter;

    new-instance v6, Lcom/facebook/orca/server/FilterChainLink;

    const-class v1, Lcom/facebook/orca/cache/CacheServiceHandler;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/server/module/MessagesServiceModule$OrcaServiceHandlerForThreadsQueueProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/server/OrcaServiceHandler$Filter;

    new-instance v7, Lcom/facebook/orca/server/FilterChainLink;

    const-class v2, Lcom/facebook/orca/merge/MergeServiceHandler;

    invoke-virtual {p0, v2}, Lcom/facebook/orca/server/module/MessagesServiceModule$OrcaServiceHandlerForThreadsQueueProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/orca/server/OrcaServiceHandler$Filter;

    new-instance v8, Lcom/facebook/orca/server/FilterChainLink;

    const-class v3, Lcom/facebook/orca/database/DbServiceHandler;

    invoke-virtual {p0, v3}, Lcom/facebook/orca/server/module/MessagesServiceModule$OrcaServiceHandlerForThreadsQueueProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/orca/server/OrcaServiceHandler$Filter;

    new-instance v9, Lcom/facebook/orca/server/FilterChainLink;

    const-class v4, Lcom/facebook/orca/dispatch/DispatchServiceHandler;

    invoke-virtual {p0, v4}, Lcom/facebook/orca/server/module/MessagesServiceModule$OrcaServiceHandlerForThreadsQueueProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/orca/server/OrcaServiceHandler$Filter;

    new-instance v10, Lcom/facebook/orca/server/TerminatingHandler;

    invoke-direct {v10}, Lcom/facebook/orca/server/TerminatingHandler;-><init>()V

    invoke-direct {v9, v4, v10}, Lcom/facebook/orca/server/FilterChainLink;-><init>(Lcom/facebook/orca/server/OrcaServiceHandler$Filter;Lcom/facebook/orca/server/OrcaServiceHandler;)V

    invoke-direct {v8, v3, v9}, Lcom/facebook/orca/server/FilterChainLink;-><init>(Lcom/facebook/orca/server/OrcaServiceHandler$Filter;Lcom/facebook/orca/server/OrcaServiceHandler;)V

    invoke-direct {v7, v2, v8}, Lcom/facebook/orca/server/FilterChainLink;-><init>(Lcom/facebook/orca/server/OrcaServiceHandler$Filter;Lcom/facebook/orca/server/OrcaServiceHandler;)V

    invoke-direct {v6, v1, v7}, Lcom/facebook/orca/server/FilterChainLink;-><init>(Lcom/facebook/orca/server/OrcaServiceHandler$Filter;Lcom/facebook/orca/server/OrcaServiceHandler;)V

    invoke-direct {v5, v0, v6}, Lcom/facebook/orca/server/FilterChainLink;-><init>(Lcom/facebook/orca/server/OrcaServiceHandler$Filter;Lcom/facebook/orca/server/OrcaServiceHandler;)V

    return-object v5
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/facebook/orca/server/module/MessagesServiceModule$OrcaServiceHandlerForThreadsQueueProvider;->a()Lcom/facebook/orca/server/OrcaServiceHandler;

    move-result-object v0

    return-object v0
.end method
