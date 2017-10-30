.class Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$3;
.super Lcom/facebook/orca/server/ICompletionHandler$Stub;
.source "OrcaServiceOperationFactory.java"


# instance fields
.field final synthetic a:Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;


# direct methods
.method constructor <init>(Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;)V
    .locals 0
    .parameter

    .prologue
    .line 509
    iput-object p1, p0, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$3;->a:Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;

    invoke-direct {p0}, Lcom/facebook/orca/server/ICompletionHandler$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/orca/server/OperationResult;)V
    .locals 0
    .parameter

    .prologue
    .line 514
    return-void
.end method

.method public b(Lcom/facebook/orca/server/OperationResult;)V
    .locals 1
    .parameter

    .prologue
    .line 518
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$3;->a:Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;

    invoke-static {v0, p1}, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;->a(Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;Lcom/facebook/orca/server/OperationResult;)V

    .line 519
    return-void
.end method
