.class Lcom/facebook/orca/app/MessagesModule$ThreadsCollectionMergerProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessagesModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/threads/ThreadsCollectionMerger;",
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
    .line 2190
    iput-object p1, p0, Lcom/facebook/orca/app/MessagesModule$ThreadsCollectionMergerProvider;->a:Lcom/facebook/orca/app/MessagesModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2190
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/MessagesModule$ThreadsCollectionMergerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/threads/ThreadsCollectionMerger;
    .locals 1

    .prologue
    .line 2194
    new-instance v0, Lcom/facebook/orca/threads/ThreadsCollectionMerger;

    invoke-direct {v0}, Lcom/facebook/orca/threads/ThreadsCollectionMerger;-><init>()V

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2190
    invoke-virtual {p0}, Lcom/facebook/orca/app/MessagesModule$ThreadsCollectionMergerProvider;->a()Lcom/facebook/orca/threads/ThreadsCollectionMerger;

    move-result-object v0

    return-object v0
.end method
