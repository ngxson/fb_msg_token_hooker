.class Lcom/facebook/orca/database/ThreadsDbModule$DbThreadsPropertyUtilProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "ThreadsDbModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/database/DbThreadsPropertyUtil;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/database/ThreadsDbModule;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/database/ThreadsDbModule;)V
    .locals 0
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lcom/facebook/orca/database/ThreadsDbModule$DbThreadsPropertyUtilProvider;->a:Lcom/facebook/orca/database/ThreadsDbModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/database/ThreadsDbModule;Lcom/facebook/orca/database/ThreadsDbModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 140
    invoke-direct {p0, p1}, Lcom/facebook/orca/database/ThreadsDbModule$DbThreadsPropertyUtilProvider;-><init>(Lcom/facebook/orca/database/ThreadsDbModule;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/database/DbThreadsPropertyUtil;
    .locals 2

    .prologue
    .line 144
    new-instance v1, Lcom/facebook/orca/database/DbThreadsPropertyUtil;

    const-class v0, Lcom/facebook/orca/database/ThreadsDatabaseSupplier;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/database/ThreadsDbModule$DbThreadsPropertyUtilProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/database/ThreadsDatabaseSupplier;

    invoke-direct {v1, v0}, Lcom/facebook/orca/database/DbThreadsPropertyUtil;-><init>(Lcom/facebook/orca/database/ThreadsDatabaseSupplier;)V

    return-object v1
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/facebook/orca/database/ThreadsDbModule$DbThreadsPropertyUtilProvider;->a()Lcom/facebook/orca/database/DbThreadsPropertyUtil;

    move-result-object v0

    return-object v0
.end method
