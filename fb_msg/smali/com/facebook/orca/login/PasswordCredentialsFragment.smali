.class public Lcom/facebook/orca/login/PasswordCredentialsFragment;
.super Lcom/facebook/orca/login/AuthFragmentBase;
.source "PasswordCredentialsFragment.java"

# interfaces
.implements Lcom/facebook/orca/analytics/AnalyticsActivity;
.implements Lcom/facebook/orca/login/PasswordCredentialsFragmentControl;


# instance fields
.field private b:Lcom/facebook/orca/auth/AuthDataStore;

.field private c:Landroid/view/inputmethod/InputMethodManager;

.field private d:Lcom/facebook/orca/login/SsoLoginUtil;

.field private e:Lcom/facebook/orca/ops/OrcaServiceFragment;

.field private f:Lcom/facebook/orca/auth/PasswordCredentials;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/facebook/orca/login/AuthFragmentBase;-><init>()V

    return-void
.end method

.method private H()V
    .locals 0

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/facebook/orca/login/PasswordCredentialsFragment;->I()V

    .line 134
    return-void
.end method

.method private I()V
    .locals 2

    .prologue
    .line 158
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.facebook.orca.login.LoginActions.AUTH_COMPLETE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/facebook/orca/login/PasswordCredentialsFragment;->b(Landroid/content/Intent;)V

    .line 159
    return-void
.end method

.method private K()V
    .locals 2

    .prologue
    .line 162
    new-instance v0, Lcom/facebook/orca/login/OrcaReportingFragment$FinishIntentBuilder;

    const-class v1, Lcom/facebook/orca/login/LoginApprovalFragment;

    invoke-direct {v0, p0, v1}, Lcom/facebook/orca/login/OrcaReportingFragment$FinishIntentBuilder;-><init>(Lcom/facebook/orca/login/OrcaReportingFragment;Ljava/lang/Class;)V

    invoke-virtual {v0}, Lcom/facebook/orca/login/OrcaReportingFragment$FinishIntentBuilder;->a()Lcom/facebook/orca/login/OrcaReportingFragment$FinishIntentBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/login/OrcaReportingFragment$FinishIntentBuilder;->c()Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/orca/login/PasswordCredentialsFragment;->f:Lcom/facebook/orca/auth/PasswordCredentials;

    invoke-virtual {v1}, Lcom/facebook/orca/auth/PasswordCredentials;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/login/LoginApprovalFragment;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    .line 166
    invoke-virtual {p0, v0}, Lcom/facebook/orca/login/PasswordCredentialsFragment;->b(Landroid/content/Intent;)V

    .line 167
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/login/PasswordCredentialsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/facebook/orca/login/PasswordCredentialsFragment;->H()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/login/PasswordCredentialsFragment;Lcom/facebook/orca/ops/ServiceException;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/facebook/orca/login/PasswordCredentialsFragment;->a(Lcom/facebook/orca/ops/ServiceException;)V

    return-void
.end method

.method private a(Lcom/facebook/orca/ops/ServiceException;)V
    .locals 2
    .parameter

    .prologue
    .line 137
    invoke-virtual {p1}, Lcom/facebook/orca/ops/ServiceException;->a()Lcom/facebook/orca/server/ErrorCode;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/server/ErrorCode;->API_ERROR:Lcom/facebook/orca/server/ErrorCode;

    if-ne v0, v1, :cond_2

    .line 138
    invoke-virtual {p1}, Lcom/facebook/orca/ops/ServiceException;->b()Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/server/OperationResult;->h()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/protocol/base/ApiErrorResult;

    .line 139
    invoke-virtual {v0}, Lcom/facebook/orca/protocol/base/ApiErrorResult;->a()I

    move-result v0

    .line 140
    const/16 v1, 0x196

    if-ne v0, v1, :cond_0

    .line 142
    invoke-direct {p0}, Lcom/facebook/orca/login/PasswordCredentialsFragment;->K()V

    .line 155
    :goto_0
    return-void

    .line 144
    :cond_0
    const/16 v1, 0x190

    if-eq v0, v1, :cond_1

    const/16 v1, 0x191

    if-ne v0, v1, :cond_2

    .line 146
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/orca/login/PasswordCredentialsFragment;->l()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a(Landroid/content/Context;)Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;

    move-result-object v0

    sget v1, Lcom/facebook/R$string;->login_failed_message:I

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a(I)Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a()Landroid/app/AlertDialog;

    goto :goto_0

    .line 152
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/orca/login/PasswordCredentialsFragment;->l()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a(Landroid/content/Context;)Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a(Lcom/facebook/orca/ops/ServiceException;)Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a()Landroid/app/AlertDialog;

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 81
    const-class v0, Lcom/facebook/orca/login/PasswordCredentialsFragmentControl;

    invoke-virtual {p0, v0, p2}, Lcom/facebook/orca/login/PasswordCredentialsFragment;->a(Ljava/lang/Class;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/facebook/orca/login/AuthFragmentBase;->a(Landroid/os/Bundle;)V

    .line 55
    invoke-virtual {p0}, Lcom/facebook/orca/login/PasswordCredentialsFragment;->G()Lcom/facebook/orca/inject/FbInjector;

    move-result-object v1

    .line 56
    const-class v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/facebook/orca/login/PasswordCredentialsFragment;->c:Landroid/view/inputmethod/InputMethodManager;

    .line 57
    const-class v0, Lcom/facebook/orca/login/SsoLoginUtil;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/login/SsoLoginUtil;

    iput-object v0, p0, Lcom/facebook/orca/login/PasswordCredentialsFragment;->d:Lcom/facebook/orca/login/SsoLoginUtil;

    .line 59
    const-string v0, "authenticateOperation"

    invoke-static {p0, v0}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Landroid/support/v4/app/NestedFragment;Ljava/lang/String;)Lcom/facebook/orca/ops/OrcaServiceFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/login/PasswordCredentialsFragment;->e:Lcom/facebook/orca/ops/OrcaServiceFragment;

    .line 60
    iget-object v0, p0, Lcom/facebook/orca/login/PasswordCredentialsFragment;->e:Lcom/facebook/orca/ops/OrcaServiceFragment;

    new-instance v1, Lcom/facebook/orca/login/PasswordCredentialsFragment$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/login/PasswordCredentialsFragment$1;-><init>(Lcom/facebook/orca/login/PasswordCredentialsFragment;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;)V

    .line 73
    if-eqz p1, :cond_0

    .line 74
    const-string v0, "passwordCredentials"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/auth/PasswordCredentials;

    iput-object v0, p0, Lcom/facebook/orca/login/PasswordCredentialsFragment;->f:Lcom/facebook/orca/auth/PasswordCredentials;

    .line 76
    :cond_0
    return-void
.end method

.method public a(Lcom/facebook/orca/auth/PasswordCredentials;Lcom/facebook/orca/ops/OperationProgressIndicator;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 115
    iget-object v0, p0, Lcom/facebook/orca/login/PasswordCredentialsFragment;->e:Lcom/facebook/orca/ops/OrcaServiceFragment;

    invoke-virtual {v0}, Lcom/facebook/orca/ops/OrcaServiceFragment;->b()Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/ops/OrcaServiceOperation$State;->INIT:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    if-eq v0, v1, :cond_0

    .line 130
    :goto_0
    return-void

    .line 121
    :cond_0
    iput-object p1, p0, Lcom/facebook/orca/login/PasswordCredentialsFragment;->f:Lcom/facebook/orca/auth/PasswordCredentials;

    .line 123
    iget-object v0, p0, Lcom/facebook/orca/login/PasswordCredentialsFragment;->b:Lcom/facebook/orca/auth/AuthDataStore;

    instance-of v0, v0, Lcom/facebook/orca/login/AuthDataStoreProxy;

    if-eqz v0, :cond_1

    .line 124
    iget-object v0, p0, Lcom/facebook/orca/login/PasswordCredentialsFragment;->b:Lcom/facebook/orca/auth/AuthDataStore;

    check-cast v0, Lcom/facebook/orca/login/AuthDataStoreProxy;

    invoke-virtual {v0}, Lcom/facebook/orca/login/AuthDataStoreProxy;->g()V

    .line 126
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 127
    const-string v1, "passwordCredentials"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 128
    iget-object v1, p0, Lcom/facebook/orca/login/PasswordCredentialsFragment;->e:Lcom/facebook/orca/ops/OrcaServiceFragment;

    invoke-virtual {v1, p2}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Lcom/facebook/orca/ops/OperationProgressIndicator;)V

    .line 129
    iget-object v1, p0, Lcom/facebook/orca/login/PasswordCredentialsFragment;->e:Lcom/facebook/orca/ops/OrcaServiceFragment;

    const-string v2, "auth"

    invoke-virtual {v1, v2, v0}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public c(Landroid/content/Intent;)V
    .locals 0
    .parameter

    .prologue
    .line 170
    invoke-virtual {p0, p1}, Lcom/facebook/orca/login/PasswordCredentialsFragment;->b(Landroid/content/Intent;)V

    .line 171
    return-void
.end method

.method public d(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 86
    invoke-super {p0, p1}, Lcom/facebook/orca/login/AuthFragmentBase;->d(Landroid/os/Bundle;)V

    .line 87
    const-string v0, "com.facebook.orca.login.LoginActions.SHOWING_LOGIN_UI"

    invoke-virtual {p0, v0}, Lcom/facebook/orca/login/PasswordCredentialsFragment;->c(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/orca/login/PasswordCredentialsFragment;->c(Landroid/os/Bundle;)V

    .line 88
    invoke-virtual {p0}, Lcom/facebook/orca/login/PasswordCredentialsFragment;->c()Lcom/facebook/orca/login/AuthStateMachineConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/login/AuthStateMachineConfig;->a()Lcom/facebook/orca/login/AuthDataStoreProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/login/PasswordCredentialsFragment;->b:Lcom/facebook/orca/auth/AuthDataStore;

    .line 89
    return-void
.end method

.method public e(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 109
    invoke-super {p0, p1}, Lcom/facebook/orca/login/AuthFragmentBase;->e(Landroid/os/Bundle;)V

    .line 110
    const-string v0, "passwordCredentials"

    iget-object v1, p0, Lcom/facebook/orca/login/PasswordCredentialsFragment;->f:Lcom/facebook/orca/auth/PasswordCredentials;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 111
    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    const-string v0, "login_screen"

    return-object v0
.end method

.method public v()V
    .locals 1

    .prologue
    .line 93
    invoke-super {p0}, Lcom/facebook/orca/login/AuthFragmentBase;->v()V

    .line 94
    iget-object v0, p0, Lcom/facebook/orca/login/PasswordCredentialsFragment;->b:Lcom/facebook/orca/auth/AuthDataStore;

    invoke-interface {v0}, Lcom/facebook/orca/auth/AuthDataStore;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    invoke-direct {p0}, Lcom/facebook/orca/login/PasswordCredentialsFragment;->I()V

    .line 97
    :cond_0
    return-void
.end method

.method public x()V
    .locals 3

    .prologue
    .line 103
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/support/v4/app/Fragment;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/facebook/orca/login/PasswordCredentialsFragment;->e:Lcom/facebook/orca/ops/OrcaServiceFragment;

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/facebook/orca/login/PasswordCredentialsFragment;->a([Landroid/support/v4/app/Fragment;)V

    .line 104
    invoke-super {p0}, Lcom/facebook/orca/login/AuthFragmentBase;->x()V

    .line 105
    return-void
.end method
