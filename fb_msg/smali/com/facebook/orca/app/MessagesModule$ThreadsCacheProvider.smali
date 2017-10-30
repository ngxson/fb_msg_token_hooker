.class Lcom/facebook/orca/app/MessagesModule$ThreadsCacheProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessagesModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/cache/ThreadsCache;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/app/MessagesModule;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/MessagesModule;)V
    .locals 0
    .parameter

    .prologue
    .line 927
    iput-object p1, p0, Lcom/facebook/orca/app/MessagesModule$ThreadsCacheProvider;->a:Lcom/facebook/orca/app/MessagesModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 927
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/MessagesModule$ThreadsCacheProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/cache/ThreadsCache;
    .locals 4

    .prologue
    .line 931
    new-instance v3, Lcom/facebook/orca/cache/ThreadsCache;

    const-class v0, Lcom/facebook/orca/auth/AuthDataStore;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule$ThreadsCacheProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/auth/AuthDataStore;

    const-class v1, Lcom/facebook/orca/threads/MessagesCollectionMerger;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule$ThreadsCacheProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/threads/MessagesCollectionMerger;

    const-class v2, Lcom/facebook/orca/threads/ThreadSummaryStitching;

    invoke-virtual {p0, v2}, Lcom/facebook/orca/app/MessagesModule$ThreadsCacheProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/orca/threads/ThreadSummaryStitching;

    invoke-direct {v3, v0, v1, v2}, Lcom/facebook/orca/cache/ThreadsCache;-><init>(Lcom/facebook/orca/auth/AuthDataStore;Lcom/facebook/orca/threads/MessagesCollectionMerger;Lcom/facebook/orca/threads/ThreadSummaryStitching;)V

    return-object v3
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 927
    invoke-virtual {p0}, Lcom/facebook/orca/app/MessagesModule$ThreadsCacheProvider;->a()Lcom/facebook/orca/cache/ThreadsCache;

    move-result-object v0

    return-object v0
.end method
