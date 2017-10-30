.class Lcom/facebook/orca/app/MessagesModule$ThreadViewLoaderProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessagesModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/threadview/ThreadViewLoader;",
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
    .line 2383
    iput-object p1, p0, Lcom/facebook/orca/app/MessagesModule$ThreadViewLoaderProvider;->a:Lcom/facebook/orca/app/MessagesModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2383
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/MessagesModule$ThreadViewLoaderProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/threadview/ThreadViewLoader;
    .locals 9

    .prologue
    .line 2387
    new-instance v0, Lcom/facebook/orca/threadview/ThreadViewLoader;

    const-class v1, Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule$ThreadViewLoaderProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/activity/FbFragmentActivity;

    const-class v2, Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {p0, v2}, Lcom/facebook/orca/app/MessagesModule$ThreadViewLoaderProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/orca/cache/DataCache;

    const-class v3, Lcom/facebook/orca/ops/OrcaServiceOperationFactory;

    invoke-virtual {p0, v3}, Lcom/facebook/orca/app/MessagesModule$ThreadViewLoaderProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/orca/ops/OrcaServiceOperationFactory;

    const-class v4, Lcom/facebook/orca/threads/MessagesUiReorderer;

    invoke-virtual {p0, v4}, Lcom/facebook/orca/app/MessagesModule$ThreadViewLoaderProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/orca/threads/MessagesUiReorderer;

    const-class v5, Lcom/facebook/orca/cache/SendMessageManager;

    invoke-virtual {p0, v5}, Lcom/facebook/orca/app/MessagesModule$ThreadViewLoaderProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/orca/cache/SendMessageManager;

    const-class v6, Lcom/facebook/orca/threadview/PendingSendsDeduper;

    invoke-virtual {p0, v6}, Lcom/facebook/orca/app/MessagesModule$ThreadViewLoaderProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/facebook/orca/threadview/PendingSendsDeduper;

    const-class v7, Lcom/facebook/orca/threads/MessagesCollectionMerger;

    invoke-virtual {p0, v7}, Lcom/facebook/orca/app/MessagesModule$ThreadViewLoaderProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/facebook/orca/threads/MessagesCollectionMerger;

    const-class v8, Lcom/facebook/orca/common/util/Clock;

    invoke-virtual {p0, v8}, Lcom/facebook/orca/app/MessagesModule$ThreadViewLoaderProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/facebook/orca/common/util/Clock;

    invoke-direct/range {v0 .. v8}, Lcom/facebook/orca/threadview/ThreadViewLoader;-><init>(Landroid/app/Activity;Lcom/facebook/orca/cache/DataCache;Lcom/facebook/orca/ops/OrcaServiceOperationFactory;Lcom/facebook/orca/threads/MessagesUiReorderer;Lcom/facebook/orca/cache/SendMessageManager;Lcom/facebook/orca/threadview/PendingSendsDeduper;Lcom/facebook/orca/threads/MessagesCollectionMerger;Lcom/facebook/orca/common/util/Clock;)V

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2383
    invoke-virtual {p0}, Lcom/facebook/orca/app/MessagesModule$ThreadViewLoaderProvider;->a()Lcom/facebook/orca/threadview/ThreadViewLoader;

    move-result-object v0

    return-object v0
.end method
