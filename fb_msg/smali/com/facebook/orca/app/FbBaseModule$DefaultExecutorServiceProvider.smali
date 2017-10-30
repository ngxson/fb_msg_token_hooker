.class Lcom/facebook/orca/app/FbBaseModule$DefaultExecutorServiceProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "FbBaseModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Ljava/util/concurrent/ExecutorService;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/app/FbBaseModule;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/FbBaseModule;)V
    .locals 0
    .parameter

    .prologue
    .line 550
    iput-object p1, p0, Lcom/facebook/orca/app/FbBaseModule$DefaultExecutorServiceProvider;->a:Lcom/facebook/orca/app/FbBaseModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/FbBaseModule;Lcom/facebook/orca/app/FbBaseModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 550
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/FbBaseModule$DefaultExecutorServiceProvider;-><init>(Lcom/facebook/orca/app/FbBaseModule;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/concurrent/ExecutorService;
    .locals 8

    .prologue
    .line 555
    new-instance v7, Lcom/facebook/orca/app/FbBaseModule$DefaultExecutorServiceProvider$1;

    invoke-direct {v7, p0}, Lcom/facebook/orca/app/FbBaseModule$DefaultExecutorServiceProvider$1;-><init>(Lcom/facebook/orca/app/FbBaseModule$DefaultExecutorServiceProvider;)V

    .line 564
    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v0, 0xa

    invoke-direct {v6, v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    .line 565
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x5

    const/16 v2, 0x80

    const-wide/16 v3, 0x1

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 550
    invoke-virtual {p0}, Lcom/facebook/orca/app/FbBaseModule$DefaultExecutorServiceProvider;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method
