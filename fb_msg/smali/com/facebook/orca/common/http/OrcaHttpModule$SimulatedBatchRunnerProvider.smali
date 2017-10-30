.class Lcom/facebook/orca/common/http/OrcaHttpModule$SimulatedBatchRunnerProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "OrcaHttpModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/protocol/base/SimulatedBatchRunner;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/common/http/OrcaHttpModule;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/common/http/OrcaHttpModule;)V
    .locals 0
    .parameter

    .prologue
    .line 214
    iput-object p1, p0, Lcom/facebook/orca/common/http/OrcaHttpModule$SimulatedBatchRunnerProvider;->a:Lcom/facebook/orca/common/http/OrcaHttpModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/common/http/OrcaHttpModule;Lcom/facebook/orca/common/http/OrcaHttpModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 214
    invoke-direct {p0, p1}, Lcom/facebook/orca/common/http/OrcaHttpModule$SimulatedBatchRunnerProvider;-><init>(Lcom/facebook/orca/common/http/OrcaHttpModule;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/protocol/base/SimulatedBatchRunner;
    .locals 2

    .prologue
    .line 218
    new-instance v1, Lcom/facebook/orca/protocol/base/SimulatedBatchRunner;

    const-class v0, Lcom/facebook/orca/protocol/base/SingleMethodRunner;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/common/http/OrcaHttpModule$SimulatedBatchRunnerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/protocol/base/SingleMethodRunner;

    invoke-direct {v1, v0}, Lcom/facebook/orca/protocol/base/SimulatedBatchRunner;-><init>(Lcom/facebook/orca/protocol/base/SingleMethodRunner;)V

    return-object v1
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/facebook/orca/common/http/OrcaHttpModule$SimulatedBatchRunnerProvider;->a()Lcom/facebook/orca/protocol/base/SimulatedBatchRunner;

    move-result-object v0

    return-object v0
.end method
