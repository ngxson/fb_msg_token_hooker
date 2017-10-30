.class Lcom/facebook/orca/login/LoginApprovalFragment$1;
.super Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;
.source "LoginApprovalFragment.java"


# instance fields
.field final synthetic a:Lcom/facebook/orca/login/LoginApprovalFragment;


# direct methods
.method constructor <init>(Lcom/facebook/orca/login/LoginApprovalFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/facebook/orca/login/LoginApprovalFragment$1;->a:Lcom/facebook/orca/login/LoginApprovalFragment;

    invoke-direct {p0}, Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/orca/ops/ServiceException;)V
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/facebook/orca/login/LoginApprovalFragment$1;->a:Lcom/facebook/orca/login/LoginApprovalFragment;

    invoke-static {v0, p1}, Lcom/facebook/orca/login/LoginApprovalFragment;->a(Lcom/facebook/orca/login/LoginApprovalFragment;Lcom/facebook/orca/ops/ServiceException;)V

    .line 73
    return-void
.end method

.method public a(Lcom/facebook/orca/server/OperationResult;)V
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/facebook/orca/login/LoginApprovalFragment$1;->a:Lcom/facebook/orca/login/LoginApprovalFragment;

    invoke-static {v0}, Lcom/facebook/orca/login/LoginApprovalFragment;->a(Lcom/facebook/orca/login/LoginApprovalFragment;)V

    .line 68
    return-void
.end method
