.class Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$4;
.super Ljava/lang/Object;
.source "OrcaServiceOperationFactory.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/facebook/orca/server/OperationResult;

.field final synthetic b:Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;


# direct methods
.method constructor <init>(Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;Lcom/facebook/orca/server/OperationResult;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 537
    iput-object p1, p0, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$4;->b:Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;

    iput-object p2, p0, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$4;->a:Lcom/facebook/orca/server/OperationResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 540
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$4;->b:Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;

    invoke-virtual {v0}, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 541
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$4;->b:Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;

    iget-object v1, p0, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$4;->a:Lcom/facebook/orca/server/OperationResult;

    invoke-static {v0, v1}, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;->b(Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;Lcom/facebook/orca/server/OperationResult;)V

    .line 543
    :cond_0
    return-void
.end method
