.class Lcom/facebook/orca/auth/UpgradeScreenOrcaFragment$1;
.super Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;
.source "UpgradeScreenOrcaFragment.java"


# instance fields
.field final synthetic a:Lcom/facebook/orca/auth/UpgradeScreenOrcaFragment;


# direct methods
.method constructor <init>(Lcom/facebook/orca/auth/UpgradeScreenOrcaFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/facebook/orca/auth/UpgradeScreenOrcaFragment$1;->a:Lcom/facebook/orca/auth/UpgradeScreenOrcaFragment;

    invoke-direct {p0}, Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/orca/ops/ServiceException;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    return-void
.end method

.method public a(Lcom/facebook/orca/server/OperationResult;)V
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/facebook/orca/auth/UpgradeScreenOrcaFragment$1;->a:Lcom/facebook/orca/auth/UpgradeScreenOrcaFragment;

    invoke-static {v0}, Lcom/facebook/orca/auth/UpgradeScreenOrcaFragment;->a(Lcom/facebook/orca/auth/UpgradeScreenOrcaFragment;)V

    .line 60
    return-void
.end method
