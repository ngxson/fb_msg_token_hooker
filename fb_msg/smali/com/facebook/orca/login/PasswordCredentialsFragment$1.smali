.class Lcom/facebook/orca/login/PasswordCredentialsFragment$1;
.super Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;
.source "PasswordCredentialsFragment.java"


# instance fields
.field final synthetic a:Lcom/facebook/orca/login/PasswordCredentialsFragment;


# direct methods
.method constructor <init>(Lcom/facebook/orca/login/PasswordCredentialsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/facebook/orca/login/PasswordCredentialsFragment$1;->a:Lcom/facebook/orca/login/PasswordCredentialsFragment;

    invoke-direct {p0}, Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/orca/ops/ServiceException;)V
    .locals 1
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/facebook/orca/login/PasswordCredentialsFragment$1;->a:Lcom/facebook/orca/login/PasswordCredentialsFragment;

    invoke-static {v0, p1}, Lcom/facebook/orca/login/PasswordCredentialsFragment;->a(Lcom/facebook/orca/login/PasswordCredentialsFragment;Lcom/facebook/orca/ops/ServiceException;)V

    .line 70
    return-void
.end method

.method public a(Lcom/facebook/orca/server/OperationResult;)V
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/facebook/orca/login/PasswordCredentialsFragment$1;->a:Lcom/facebook/orca/login/PasswordCredentialsFragment;

    invoke-static {v0}, Lcom/facebook/orca/login/PasswordCredentialsFragment;->a(Lcom/facebook/orca/login/PasswordCredentialsFragment;)V

    .line 65
    return-void
.end method
