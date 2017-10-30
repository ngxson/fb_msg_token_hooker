.class Lcom/facebook/orca/ops/OrcaServiceFragment$1;
.super Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;
.source "OrcaServiceFragment.java"


# instance fields
.field final synthetic a:Lcom/facebook/orca/ops/OrcaServiceFragment;


# direct methods
.method constructor <init>(Lcom/facebook/orca/ops/OrcaServiceFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/facebook/orca/ops/OrcaServiceFragment$1;->a:Lcom/facebook/orca/ops/OrcaServiceFragment;

    invoke-direct {p0}, Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/orca/ops/ServiceException;)V
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceFragment$1;->a:Lcom/facebook/orca/ops/OrcaServiceFragment;

    invoke-static {v0}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Lcom/facebook/orca/ops/OrcaServiceFragment;)Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceFragment$1;->a:Lcom/facebook/orca/ops/OrcaServiceFragment;

    invoke-static {v0}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Lcom/facebook/orca/ops/OrcaServiceFragment;)Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;->a(Lcom/facebook/orca/ops/ServiceException;)V

    .line 54
    :cond_0
    return-void
.end method

.method public a(Lcom/facebook/orca/server/OperationResult;)V
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceFragment$1;->a:Lcom/facebook/orca/ops/OrcaServiceFragment;

    invoke-static {v0}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Lcom/facebook/orca/ops/OrcaServiceFragment;)Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceFragment$1;->a:Lcom/facebook/orca/ops/OrcaServiceFragment;

    invoke-static {v0}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Lcom/facebook/orca/ops/OrcaServiceFragment;)Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;->a(Lcom/facebook/orca/server/OperationResult;)V

    .line 47
    :cond_0
    return-void
.end method
