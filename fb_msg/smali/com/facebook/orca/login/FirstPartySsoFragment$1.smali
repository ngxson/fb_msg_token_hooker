.class Lcom/facebook/orca/login/FirstPartySsoFragment$1;
.super Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;
.source "FirstPartySsoFragment.java"


# instance fields
.field final synthetic a:Lcom/facebook/orca/login/FirstPartySsoFragment;


# direct methods
.method constructor <init>(Lcom/facebook/orca/login/FirstPartySsoFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/facebook/orca/login/FirstPartySsoFragment$1;->a:Lcom/facebook/orca/login/FirstPartySsoFragment;

    invoke-direct {p0}, Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/orca/ops/ServiceException;)V
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/facebook/orca/login/FirstPartySsoFragment$1;->a:Lcom/facebook/orca/login/FirstPartySsoFragment;

    invoke-static {v0, p1}, Lcom/facebook/orca/login/FirstPartySsoFragment;->a(Lcom/facebook/orca/login/FirstPartySsoFragment;Lcom/facebook/orca/ops/ServiceException;)V

    .line 62
    return-void
.end method

.method public a(Lcom/facebook/orca/server/OperationResult;)V
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/facebook/orca/login/FirstPartySsoFragment$1;->a:Lcom/facebook/orca/login/FirstPartySsoFragment;

    invoke-static {v0}, Lcom/facebook/orca/login/FirstPartySsoFragment;->a(Lcom/facebook/orca/login/FirstPartySsoFragment;)V

    .line 57
    return-void
.end method
