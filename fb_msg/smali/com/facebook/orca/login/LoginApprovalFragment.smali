.class public Lcom/facebook/orca/login/LoginApprovalFragment;
.super Lcom/facebook/orca/login/AuthFragmentBase;
.source "LoginApprovalFragment.java"

# interfaces
.implements Lcom/facebook/orca/analytics/AnalyticsActivity;
.implements Lcom/facebook/orca/login/LoginApprovalFragmentControl;


# instance fields
.field private b:Lcom/facebook/orca/ops/OrcaServiceFragment;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/facebook/orca/login/AuthFragmentBase;-><init>()V

    return-void
.end method

.method private H()V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/facebook/orca/login/LoginApprovalFragment;->I()V

    .line 107
    return-void
.end method

.method private I()V
    .locals 2

    .prologue
    .line 116
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.facebook.orca.login.LoginActions.AUTH_COMPLETE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/facebook/orca/login/LoginApprovalFragment;->b(Landroid/content/Intent;)V

    .line 117
    return-void
.end method

.method public static a(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2
    .parameter

    .prologue
    .line 49
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 50
    const-string v1, "orca:authparam:email"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    return-object v0
.end method

.method static synthetic a(Lcom/facebook/orca/login/LoginApprovalFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/facebook/orca/login/LoginApprovalFragment;->H()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/login/LoginApprovalFragment;Lcom/facebook/orca/ops/ServiceException;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/facebook/orca/login/LoginApprovalFragment;->a(Lcom/facebook/orca/ops/ServiceException;)V

    return-void
.end method

.method private a(Lcom/facebook/orca/ops/ServiceException;)V
    .locals 1
    .parameter

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/facebook/orca/login/LoginApprovalFragment;->l()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a(Landroid/content/Context;)Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a(Lcom/facebook/orca/ops/ServiceException;)Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a()Landroid/app/AlertDialog;

    .line 113
    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 82
    const-class v0, Lcom/facebook/orca/login/LoginApprovalFragmentControl;

    invoke-virtual {p0, v0, p2}, Lcom/facebook/orca/login/LoginApprovalFragment;->a(Ljava/lang/Class;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 61
    invoke-super {p0, p1}, Lcom/facebook/orca/login/AuthFragmentBase;->a(Landroid/os/Bundle;)V

    .line 63
    const-string v0, "authenticateOperation"

    invoke-static {p0, v0}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Landroid/support/v4/app/NestedFragment;Ljava/lang/String;)Lcom/facebook/orca/ops/OrcaServiceFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/login/LoginApprovalFragment;->b:Lcom/facebook/orca/ops/OrcaServiceFragment;

    .line 64
    iget-object v0, p0, Lcom/facebook/orca/login/LoginApprovalFragment;->b:Lcom/facebook/orca/ops/OrcaServiceFragment;

    new-instance v1, Lcom/facebook/orca/login/LoginApprovalFragment$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/login/LoginApprovalFragment$1;-><init>(Lcom/facebook/orca/login/LoginApprovalFragment;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;)V

    .line 76
    invoke-virtual {p0}, Lcom/facebook/orca/login/LoginApprovalFragment;->k()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "orca:authparam:email"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/login/LoginApprovalFragment;->c:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/facebook/orca/ops/OperationProgressIndicator;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 94
    iget-object v0, p0, Lcom/facebook/orca/login/LoginApprovalFragment;->b:Lcom/facebook/orca/ops/OrcaServiceFragment;

    invoke-virtual {v0}, Lcom/facebook/orca/ops/OrcaServiceFragment;->b()Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/ops/OrcaServiceOperation$State;->INIT:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    if-eq v0, v1, :cond_0

    .line 103
    :goto_0
    return-void

    .line 98
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 99
    new-instance v1, Lcom/facebook/orca/auth/PasswordCredentials;

    iget-object v2, p0, Lcom/facebook/orca/login/LoginApprovalFragment;->c:Ljava/lang/String;

    invoke-direct {v1, v2, p1}, Lcom/facebook/orca/auth/PasswordCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v2, "passwordCredentials"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 101
    iget-object v1, p0, Lcom/facebook/orca/login/LoginApprovalFragment;->b:Lcom/facebook/orca/ops/OrcaServiceFragment;

    invoke-virtual {v1, p2}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Lcom/facebook/orca/ops/OperationProgressIndicator;)V

    .line 102
    iget-object v1, p0, Lcom/facebook/orca/login/LoginApprovalFragment;->b:Lcom/facebook/orca/ops/OrcaServiceFragment;

    const-string v2, "auth"

    invoke-virtual {v1, v2, v0}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    const-string v0, "login_approval"

    return-object v0
.end method

.method public x()V
    .locals 3

    .prologue
    .line 89
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/support/v4/app/Fragment;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/facebook/orca/login/LoginApprovalFragment;->b:Lcom/facebook/orca/ops/OrcaServiceFragment;

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/facebook/orca/login/LoginApprovalFragment;->a([Landroid/support/v4/app/Fragment;)V

    .line 90
    invoke-super {p0}, Lcom/facebook/orca/login/AuthFragmentBase;->x()V

    .line 91
    return-void
.end method
