.class Lcom/facebook/orca/login/SilentLoginFragment$1;
.super Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;
.source "SilentLoginFragment.java"


# instance fields
.field final synthetic a:Lcom/facebook/orca/login/SilentLoginFragment;


# direct methods
.method constructor <init>(Lcom/facebook/orca/login/SilentLoginFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/facebook/orca/login/SilentLoginFragment$1;->a:Lcom/facebook/orca/login/SilentLoginFragment;

    invoke-direct {p0}, Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/orca/ops/ServiceException;)V
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/facebook/orca/login/SilentLoginFragment$1;->a:Lcom/facebook/orca/login/SilentLoginFragment;

    invoke-static {v0}, Lcom/facebook/orca/login/SilentLoginFragment;->b(Lcom/facebook/orca/login/SilentLoginFragment;)V

    .line 53
    return-void
.end method

.method public a(Lcom/facebook/orca/server/OperationResult;)V
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/facebook/orca/login/SilentLoginFragment$1;->a:Lcom/facebook/orca/login/SilentLoginFragment;

    invoke-static {v0}, Lcom/facebook/orca/login/SilentLoginFragment;->a(Lcom/facebook/orca/login/SilentLoginFragment;)V

    .line 48
    return-void
.end method
