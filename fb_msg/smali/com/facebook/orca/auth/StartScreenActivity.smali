.class public Lcom/facebook/orca/auth/StartScreenActivity;
.super Lcom/facebook/orca/activity/FbFragmentActivity;
.source "StartScreenActivity.java"

# interfaces
.implements Lcom/facebook/orca/analytics/AnalyticsActivity;


# annotations
.annotation runtime Lcom/facebook/orca/annotations/AuthNotRequired;
.end annotation


# instance fields
.field private n:Lcom/facebook/orca/login/AuthNavigationController;

.field private o:Ljava/lang/Class;

.field private p:Lcom/facebook/orca/login/AuthStateMachineConfig;

.field private q:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private r:Lcom/facebook/orca/activity/MessengerLoginFlowHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/facebook/orca/activity/FbFragmentActivity;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/Class;
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 225
    .line 226
    if-eqz p1, :cond_0

    .line 228
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 234
    :cond_0
    :goto_0
    return-object v0

    .line 229
    :catch_0
    move-exception v1

    .line 230
    const-string v1, "orca:StartScreenActivity"

    const-string v2, "Cannot find class %s. Returning null."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private a(Landroid/content/Intent;)V
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 194
    const-string v0, "com.facebook.orca.login.LoginActions.GET_LOGIN_INTENT"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 196
    iget-object v0, p0, Lcom/facebook/orca/auth/StartScreenActivity;->r:Lcom/facebook/orca/activity/MessengerLoginFlowHelper;

    invoke-virtual {v0}, Lcom/facebook/orca/activity/MessengerLoginFlowHelper;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/facebook/orca/auth/StartScreenActivity;->n:Lcom/facebook/orca/login/AuthNavigationController;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.facebook.fragment.FRAGMENT_ACTION"

    const-class v3, Lcom/facebook/orca/auth/UpgradeScreenOrcaFragment;

    invoke-direct {v1, v2, v4, p0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/login/AuthNavigationController;->b(Landroid/content/Intent;)V

    .line 222
    :goto_0
    return-void

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/auth/StartScreenActivity;->r:Lcom/facebook/orca/activity/MessengerLoginFlowHelper;

    invoke-virtual {v0, p0}, Lcom/facebook/orca/activity/MessengerLoginFlowHelper;->m(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/orca/auth/StartScreenActivity;->startActivity(Landroid/content/Intent;)V

    .line 202
    invoke-virtual {p0, v2, v2}, Lcom/facebook/orca/auth/StartScreenActivity;->overridePendingTransition(II)V

    .line 203
    invoke-virtual {p0}, Lcom/facebook/orca/auth/StartScreenActivity;->finish()V

    goto :goto_0

    .line 205
    :cond_1
    const-string v0, "com.facebook.orca.login.LoginActions.GET_LOGOUT_INTENT"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 207
    invoke-direct {p0}, Lcom/facebook/orca/auth/StartScreenActivity;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 208
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.facebook.orca.login.LoginActions.GET_LOGIN_INTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/facebook/orca/auth/StartScreenActivity;->a(Landroid/content/Intent;)V

    goto :goto_0

    .line 211
    :cond_2
    iget-object v0, p0, Lcom/facebook/orca/auth/StartScreenActivity;->n:Lcom/facebook/orca/login/AuthNavigationController;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.facebook.fragment.FRAGMENT_ACTION"

    const-class v3, Lcom/facebook/orca/login/FirstPartySsoFragment;

    invoke-direct {v1, v2, v4, p0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/login/AuthNavigationController;->b(Landroid/content/Intent;)V

    goto :goto_0

    .line 214
    :cond_3
    const-string v0, "com.facebook.orca.login.LoginActions.AUTH_COMPLETE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 217
    iget-object v0, p0, Lcom/facebook/orca/auth/StartScreenActivity;->n:Lcom/facebook/orca/login/AuthNavigationController;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.facebook.fragment.FRAGMENT_ACTION"

    const-class v3, Lcom/facebook/orca/login/SilentLoginFragment;

    invoke-direct {v1, v2, v4, p0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/login/AuthNavigationController;->b(Landroid/content/Intent;)V

    goto :goto_0

    .line 220
    :cond_4
    invoke-virtual {p0, p1}, Lcom/facebook/orca/auth/StartScreenActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/facebook/orca/auth/StartScreenActivity;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/facebook/orca/auth/StartScreenActivity;->a(Landroid/content/Intent;)V

    return-void
.end method

.method private i()Z
    .locals 3

    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/facebook/orca/auth/StartScreenActivity;->l()Lcom/facebook/orca/inject/FbInjector;

    move-result-object v0

    const-class v1, Ljava/lang/Boolean;

    const-class v2, Lcom/facebook/orca/annotations/IsSmsOnlyModeEnabled;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/auth/StartScreenActivity;->q:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 7
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 71
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/FbFragmentActivity;->a(Landroid/os/Bundle;)V

    .line 73
    invoke-virtual {p0}, Lcom/facebook/orca/auth/StartScreenActivity;->l()Lcom/facebook/orca/inject/FbInjector;

    move-result-object v1

    .line 74
    const-class v0, Ljava/lang/Boolean;

    const-class v2, Lcom/facebook/orca/annotations/IsSmsOnlyModeActive;

    invoke-virtual {v1, v0, v2}, Lcom/facebook/orca/inject/FbInjector;->b(Ljava/lang/Class;Ljava/lang/Class;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/auth/StartScreenActivity;->q:Ljavax/inject/Provider;

    .line 75
    const-class v0, Lcom/facebook/orca/activity/MessengerLoginFlowHelper;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/activity/MessengerLoginFlowHelper;

    iput-object v0, p0, Lcom/facebook/orca/auth/StartScreenActivity;->r:Lcom/facebook/orca/activity/MessengerLoginFlowHelper;

    .line 77
    const-class v0, Lcom/facebook/orca/auth/AuthDataStore;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/auth/AuthDataStore;

    .line 80
    invoke-virtual {p0}, Lcom/facebook/orca/auth/StartScreenActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 81
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/facebook/orca/auth/StartScreenActivity;->o:Ljava/lang/Class;

    .line 82
    if-eqz v1, :cond_0

    .line 83
    iget-object v2, p0, Lcom/facebook/orca/auth/StartScreenActivity;->r:Lcom/facebook/orca/activity/MessengerLoginFlowHelper;

    invoke-virtual {v2, v1}, Lcom/facebook/orca/activity/MessengerLoginFlowHelper;->a(Landroid/content/Intent;)V

    .line 84
    const-string v2, "orca:loginparam:LoginFragmentState"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/facebook/orca/auth/StartScreenActivity;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    iput-object v2, p0, Lcom/facebook/orca/auth/StartScreenActivity;->o:Ljava/lang/Class;

    .line 85
    const-string v2, "orca:loginparam:LoginFragmentState"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 88
    :cond_0
    iget-object v1, p0, Lcom/facebook/orca/auth/StartScreenActivity;->r:Lcom/facebook/orca/activity/MessengerLoginFlowHelper;

    invoke-virtual {v1}, Lcom/facebook/orca/activity/MessengerLoginFlowHelper;->a()Z

    move-result v1

    if-nez v1, :cond_2

    .line 90
    invoke-direct {p0}, Lcom/facebook/orca/auth/StartScreenActivity;->i()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 91
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.facebook.orca.login.LoginActions.GET_LOGIN_INTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/facebook/orca/auth/StartScreenActivity;->a(Landroid/content/Intent;)V

    .line 148
    :goto_0
    return-void

    .line 98
    :cond_1
    if-nez p1, :cond_2

    iget-object v1, p0, Lcom/facebook/orca/auth/StartScreenActivity;->o:Ljava/lang/Class;

    if-nez v1, :cond_2

    invoke-interface {v0}, Lcom/facebook/orca/auth/AuthDataStore;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Lcom/facebook/orca/auth/AuthDataStore;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 102
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.facebook.orca.login.LoginActions.GET_LOGIN_INTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/facebook/orca/auth/StartScreenActivity;->a(Landroid/content/Intent;)V

    goto :goto_0

    .line 109
    :cond_2
    if-eqz p1, :cond_3

    .line 110
    const-string v1, "authStateMachineConfig"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/login/AuthStateMachineConfig$ParcelableConfigInformation;

    .line 112
    new-instance v2, Lcom/facebook/orca/login/AuthStateMachineConfig;

    new-instance v3, Lcom/facebook/orca/login/LogoutFragment$Config;

    new-instance v4, Lcom/facebook/orca/ops/DialogBasedProgressIndicator;

    sget v5, Lcom/facebook/R$string;->logging_out_progress:I

    invoke-direct {v4, p0, v5}, Lcom/facebook/orca/ops/DialogBasedProgressIndicator;-><init>(Landroid/content/Context;I)V

    invoke-direct {v3, v4}, Lcom/facebook/orca/login/LogoutFragment$Config;-><init>(Lcom/facebook/orca/ops/OperationProgressIndicator;)V

    invoke-direct {v2, v0, v1, v3}, Lcom/facebook/orca/login/AuthStateMachineConfig;-><init>(Lcom/facebook/orca/auth/AuthDataStore;Lcom/facebook/orca/login/AuthStateMachineConfig$ParcelableConfigInformation;Lcom/facebook/orca/login/LogoutFragment$Config;)V

    iput-object v2, p0, Lcom/facebook/orca/auth/StartScreenActivity;->p:Lcom/facebook/orca/login/AuthStateMachineConfig;

    .line 129
    :goto_1
    sget v0, Lcom/facebook/R$layout;->new_start_screen:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/auth/StartScreenActivity;->setContentView(I)V

    .line 130
    invoke-virtual {p0}, Lcom/facebook/orca/auth/StartScreenActivity;->f()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    sget v1, Lcom/facebook/R$id;->login_fragment_controller:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/login/AuthNavigationController;

    iput-object v0, p0, Lcom/facebook/orca/auth/StartScreenActivity;->n:Lcom/facebook/orca/login/AuthNavigationController;

    .line 132
    iget-object v0, p0, Lcom/facebook/orca/auth/StartScreenActivity;->n:Lcom/facebook/orca/login/AuthNavigationController;

    iget-object v1, p0, Lcom/facebook/orca/auth/StartScreenActivity;->p:Lcom/facebook/orca/login/AuthStateMachineConfig;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/login/AuthNavigationController;->a(Lcom/facebook/orca/login/AuthStateMachineConfig;)V

    .line 135
    iget-object v0, p0, Lcom/facebook/orca/auth/StartScreenActivity;->n:Lcom/facebook/orca/login/AuthNavigationController;

    new-instance v1, Lcom/facebook/orca/auth/StartScreenActivity$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/auth/StartScreenActivity$1;-><init>(Lcom/facebook/orca/auth/StartScreenActivity;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/login/AuthNavigationController;->a(Lcom/facebook/fragment/ReportingFragment$Listener;)V

    goto :goto_0

    .line 120
    :cond_3
    invoke-static {v4, v4, v4}, Lcom/facebook/orca/login/GenericFirstPartySsoViewGroup;->createParameterBundle(III)Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v4}, Lcom/facebook/orca/login/OrcaSilentLoginViewGroup;->createParameterBundle(I)Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v4, v4, v4}, Lcom/facebook/orca/login/GenericPasswordCredentialsViewGroup;->createParameterBundle(III)Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v4}, Lcom/facebook/orca/login/GenericLoginApprovalViewGroup;->createParameterBundle(I)Landroid/os/Bundle;

    move-result-object v4

    new-instance v5, Lcom/facebook/orca/ops/DialogBasedProgressIndicator;

    sget v6, Lcom/facebook/R$string;->logging_out_progress:I

    invoke-direct {v5, p0, v6}, Lcom/facebook/orca/ops/DialogBasedProgressIndicator;-><init>(Landroid/content/Context;I)V

    invoke-static/range {v0 .. v5}, Lcom/facebook/orca/login/OrcaAuthStateMachineConfig;->a(Lcom/facebook/orca/auth/AuthDataStore;Landroid/os/Bundle;Landroid/os/Bundle;Landroid/os/Bundle;Landroid/os/Bundle;Lcom/facebook/orca/ops/OperationProgressIndicator;)Lcom/facebook/orca/login/AuthStateMachineConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/auth/StartScreenActivity;->p:Lcom/facebook/orca/login/AuthStateMachineConfig;

    goto :goto_1
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    const-string v0, "start_screen"

    return-object v0
.end method

.method public onAttachedToWindow()V
    .locals 2

    .prologue
    .line 58
    invoke-super {p0}, Lcom/facebook/orca/activity/FbFragmentActivity;->onAttachedToWindow()V

    .line 59
    invoke-virtual {p0}, Lcom/facebook/orca/auth/StartScreenActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 61
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setFormat(I)V

    .line 62
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/facebook/orca/auth/StartScreenActivity;->n:Lcom/facebook/orca/login/AuthNavigationController;

    invoke-virtual {v0}, Lcom/facebook/orca/login/AuthNavigationController;->a()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 176
    invoke-super {p0}, Lcom/facebook/orca/activity/FbFragmentActivity;->onBackPressed()V

    .line 178
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 182
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/FbFragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 183
    const-string v0, "authStateMachineConfig"

    iget-object v1, p0, Lcom/facebook/orca/auth/StartScreenActivity;->p:Lcom/facebook/orca/login/AuthStateMachineConfig;

    invoke-virtual {v1}, Lcom/facebook/orca/login/AuthStateMachineConfig;->c()Lcom/facebook/orca/login/AuthStateMachineConfig$ParcelableConfigInformation;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 185
    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 152
    invoke-super {p0}, Lcom/facebook/orca/activity/FbFragmentActivity;->onStart()V

    .line 156
    iget-object v0, p0, Lcom/facebook/orca/auth/StartScreenActivity;->o:Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 157
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.facebook.fragment.FRAGMENT_ACTION"

    iget-object v3, p0, Lcom/facebook/orca/auth/StartScreenActivity;->o:Ljava/lang/Class;

    invoke-direct {v0, v2, v1, p0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 158
    iput-object v1, p0, Lcom/facebook/orca/auth/StartScreenActivity;->o:Ljava/lang/Class;

    .line 164
    :goto_0
    if-eqz v0, :cond_0

    .line 165
    iget-object v1, p0, Lcom/facebook/orca/auth/StartScreenActivity;->n:Lcom/facebook/orca/login/AuthNavigationController;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/login/AuthNavigationController;->b(Landroid/content/Intent;)V

    .line 167
    :cond_0
    return-void

    .line 159
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/auth/StartScreenActivity;->n:Lcom/facebook/orca/login/AuthNavigationController;

    invoke-virtual {v0}, Lcom/facebook/orca/login/AuthNavigationController;->b()Z

    move-result v0

    if-nez v0, :cond_2

    .line 160
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.facebook.fragment.FRAGMENT_ACTION"

    const-class v3, Lcom/facebook/orca/login/FirstPartySsoFragment;

    invoke-direct {v0, v2, v1, p0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method
