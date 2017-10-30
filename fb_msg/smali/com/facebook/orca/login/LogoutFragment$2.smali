.class Lcom/facebook/orca/login/LogoutFragment$2;
.super Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;
.source "LogoutFragment.java"


# instance fields
.field final synthetic a:Lcom/facebook/orca/login/LogoutFragment;


# direct methods
.method constructor <init>(Lcom/facebook/orca/login/LogoutFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/facebook/orca/login/LogoutFragment$2;->a:Lcom/facebook/orca/login/LogoutFragment;

    invoke-direct {p0}, Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/orca/ops/ServiceException;)V
    .locals 1
    .parameter

    .prologue
    .line 112
    iget-object v0, p0, Lcom/facebook/orca/login/LogoutFragment$2;->a:Lcom/facebook/orca/login/LogoutFragment;

    invoke-static {v0, p1}, Lcom/facebook/orca/login/LogoutFragment;->b(Lcom/facebook/orca/login/LogoutFragment;Ljava/lang/Exception;)V

    .line 113
    return-void
.end method

.method public a(Lcom/facebook/orca/server/OperationResult;)V
    .locals 1
    .parameter

    .prologue
    .line 107
    iget-object v0, p0, Lcom/facebook/orca/login/LogoutFragment$2;->a:Lcom/facebook/orca/login/LogoutFragment;

    invoke-static {v0}, Lcom/facebook/orca/login/LogoutFragment;->b(Lcom/facebook/orca/login/LogoutFragment;)V

    .line 108
    return-void
.end method
