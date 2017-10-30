.class Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$1;
.super Lcom/facebook/dispose/AbstractDisposable;
.source "OrcaServiceOperationFactory.java"


# instance fields
.field final synthetic a:Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;


# direct methods
.method constructor <init>(Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;)V
    .locals 0
    .parameter

    .prologue
    .line 248
    iput-object p1, p0, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$1;->a:Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;

    invoke-direct {p0}, Lcom/facebook/dispose/AbstractDisposable;-><init>()V

    return-void
.end method


# virtual methods
.method protected b()V
    .locals 2

    .prologue
    .line 251
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$1;->a:Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;

    invoke-static {v0}, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;->d(Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;)V

    .line 252
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$1;->a:Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;->a(Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;Lcom/facebook/orca/server/IOrcaService;)Lcom/facebook/orca/server/IOrcaService;

    .line 253
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$1;->a:Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;

    invoke-static {v0}, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;->e(Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;)V

    .line 256
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$1;->a:Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;

    invoke-static {v0}, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;->f(Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;)Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$ThreadCheckingFuture;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$ThreadCheckingFuture;->cancel(Z)Z

    .line 257
    return-void
.end method
