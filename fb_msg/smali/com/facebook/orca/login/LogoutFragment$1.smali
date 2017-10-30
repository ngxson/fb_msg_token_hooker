.class Lcom/facebook/orca/login/LogoutFragment$1;
.super Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;
.source "LogoutFragment.java"


# instance fields
.field final synthetic a:Lcom/facebook/orca/login/LogoutFragment;


# direct methods
.method constructor <init>(Lcom/facebook/orca/login/LogoutFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/facebook/orca/login/LogoutFragment$1;->a:Lcom/facebook/orca/login/LogoutFragment;

    invoke-direct {p0}, Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/orca/ops/ServiceException;)V
    .locals 1
    .parameter

    .prologue
    .line 99
    iget-object v0, p0, Lcom/facebook/orca/login/LogoutFragment$1;->a:Lcom/facebook/orca/login/LogoutFragment;

    invoke-static {v0, p1}, Lcom/facebook/orca/login/LogoutFragment;->a(Lcom/facebook/orca/login/LogoutFragment;Ljava/lang/Exception;)V

    .line 100
    return-void
.end method

.method public a(Lcom/facebook/orca/server/OperationResult;)V
    .locals 1
    .parameter

    .prologue
    .line 94
    iget-object v0, p0, Lcom/facebook/orca/login/LogoutFragment$1;->a:Lcom/facebook/orca/login/LogoutFragment;

    invoke-static {v0}, Lcom/facebook/orca/login/LogoutFragment;->a(Lcom/facebook/orca/login/LogoutFragment;)V

    .line 95
    return-void
.end method
