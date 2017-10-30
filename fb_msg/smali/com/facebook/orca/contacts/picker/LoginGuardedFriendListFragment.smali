.class public Lcom/facebook/orca/contacts/picker/LoginGuardedFriendListFragment;
.super Lcom/facebook/orca/activity/OrcaFragment;
.source "LoginGuardedFriendListFragment.java"


# instance fields
.field private a:Lcom/facebook/orca/login/AuthNavigationController;

.field private b:Lcom/facebook/orca/contacts/picker/ContactPickerOperations;

.field private c:Lcom/facebook/orca/login/AuthStateMachineConfig;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/facebook/orca/activity/OrcaFragment;-><init>()V

    return-void
.end method

.method private E()V
    .locals 4

    .prologue
    .line 138
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/LoginGuardedFriendListFragment;->b:Lcom/facebook/orca/contacts/picker/ContactPickerOperations;

    .line 139
    new-instance v0, Lcom/facebook/orca/login/AuthNavigationController;

    invoke-direct {v0}, Lcom/facebook/orca/login/AuthNavigationController;-><init>()V

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/LoginGuardedFriendListFragment;->a:Lcom/facebook/orca/login/AuthNavigationController;

    .line 140
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/LoginGuardedFriendListFragment;->a:Lcom/facebook/orca/login/AuthNavigationController;

    new-instance v1, Lcom/facebook/orca/contacts/picker/LoginGuardedFriendListFragment$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/contacts/picker/LoginGuardedFriendListFragment$1;-><init>(Lcom/facebook/orca/contacts/picker/LoginGuardedFriendListFragment;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/login/AuthNavigationController;->a(Lcom/facebook/fragment/ReportingFragment$Listener;)V

    .line 155
    invoke-virtual {p0}, Lcom/facebook/orca/contacts/picker/LoginGuardedFriendListFragment;->a()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    sget v1, Lcom/facebook/R$id;->orca_login_guarded_friend_list_fragment:I

    iget-object v2, p0, Lcom/facebook/orca/contacts/picker/LoginGuardedFriendListFragment;->a:Lcom/facebook/orca/login/AuthNavigationController;

    const-string v3, "login"

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->a()I

    .line 158
    invoke-virtual {p0}, Lcom/facebook/orca/contacts/picker/LoginGuardedFriendListFragment;->a()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->b()Z

    .line 159
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/contacts/picker/LoginGuardedFriendListFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/facebook/orca/contacts/picker/LoginGuardedFriendListFragment;->c()V

    return-void
.end method

.method private c()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 122
    iput-object v3, p0, Lcom/facebook/orca/contacts/picker/LoginGuardedFriendListFragment;->a:Lcom/facebook/orca/login/AuthNavigationController;

    .line 124
    invoke-virtual {p0}, Lcom/facebook/orca/contacts/picker/LoginGuardedFriendListFragment;->l()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/facebook/orca/contacts/picker/LoginGuardedFriendListFragment;->k()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "PickerClassName"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/support/v4/app/Fragment;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    move-object v0, v1

    .line 129
    check-cast v0, Lcom/facebook/orca/contacts/picker/ContactPickerOperations;

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/LoginGuardedFriendListFragment;->b:Lcom/facebook/orca/contacts/picker/ContactPickerOperations;

    .line 131
    invoke-virtual {p0}, Lcom/facebook/orca/contacts/picker/LoginGuardedFriendListFragment;->a()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    sget v2, Lcom/facebook/R$id;->orca_login_guarded_friend_list_fragment:I

    const-string v3, "tag"

    invoke-virtual {v0, v2, v1, v3}, Landroid/support/v4/app/FragmentTransaction;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->a()I

    .line 134
    invoke-virtual {p0}, Lcom/facebook/orca/contacts/picker/LoginGuardedFriendListFragment;->a()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->b()Z

    .line 135
    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 59
    sget v0, Lcom/facebook/R$layout;->orca_login_guarded_friend_list_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/facebook/orca/contacts/picker/ContactPickerOperations;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/LoginGuardedFriendListFragment;->b:Lcom/facebook/orca/contacts/picker/ContactPickerOperations;

    return-object v0
.end method

.method public d(Landroid/os/Bundle;)V
    .locals 8
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 64
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/OrcaFragment;->d(Landroid/os/Bundle;)V

    .line 66
    invoke-virtual {p0}, Lcom/facebook/orca/contacts/picker/LoginGuardedFriendListFragment;->G()Lcom/facebook/orca/inject/FbInjector;

    move-result-object v0

    .line 67
    const-class v1, Lcom/facebook/orca/auth/AuthDataStore;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/auth/AuthDataStore;

    .line 69
    if-eqz p1, :cond_1

    .line 70
    const-string v1, "authStateMachineConfig"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/login/AuthStateMachineConfig$ParcelableConfigInformation;

    .line 72
    new-instance v2, Lcom/facebook/orca/login/AuthStateMachineConfig;

    new-instance v3, Lcom/facebook/orca/login/LogoutFragment$Config;

    new-instance v4, Lcom/facebook/orca/ops/DialogBasedProgressIndicator;

    invoke-virtual {p0}, Lcom/facebook/orca/contacts/picker/LoginGuardedFriendListFragment;->l()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    sget v6, Lcom/facebook/R$string;->logging_out_progress:I

    invoke-direct {v4, v5, v6}, Lcom/facebook/orca/ops/DialogBasedProgressIndicator;-><init>(Landroid/content/Context;I)V

    invoke-direct {v3, v4}, Lcom/facebook/orca/login/LogoutFragment$Config;-><init>(Lcom/facebook/orca/ops/OperationProgressIndicator;)V

    invoke-direct {v2, v0, v1, v3}, Lcom/facebook/orca/login/AuthStateMachineConfig;-><init>(Lcom/facebook/orca/auth/AuthDataStore;Lcom/facebook/orca/login/AuthStateMachineConfig$ParcelableConfigInformation;Lcom/facebook/orca/login/LogoutFragment$Config;)V

    iput-object v2, p0, Lcom/facebook/orca/contacts/picker/LoginGuardedFriendListFragment;->c:Lcom/facebook/orca/login/AuthStateMachineConfig;

    .line 92
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/orca/contacts/picker/LoginGuardedFriendListFragment;->a()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "login"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/login/AuthNavigationController;

    iput-object v1, p0, Lcom/facebook/orca/contacts/picker/LoginGuardedFriendListFragment;->a:Lcom/facebook/orca/login/AuthNavigationController;

    .line 94
    invoke-virtual {p0}, Lcom/facebook/orca/contacts/picker/LoginGuardedFriendListFragment;->a()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "tag"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/contacts/picker/ContactPickerOperations;

    iput-object v1, p0, Lcom/facebook/orca/contacts/picker/LoginGuardedFriendListFragment;->b:Lcom/facebook/orca/contacts/picker/ContactPickerOperations;

    .line 99
    invoke-interface {v0}, Lcom/facebook/orca/auth/AuthDataStore;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 100
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/LoginGuardedFriendListFragment;->b:Lcom/facebook/orca/contacts/picker/ContactPickerOperations;

    if-nez v0, :cond_0

    .line 101
    invoke-direct {p0}, Lcom/facebook/orca/contacts/picker/LoginGuardedFriendListFragment;->c()V

    .line 112
    :cond_0
    :goto_1
    return-void

    .line 80
    :cond_1
    sget v1, Lcom/facebook/R$layout;->orca_tabbed_login_start_screen:I

    invoke-static {v1, v4, v4}, Lcom/facebook/orca/login/GenericFirstPartySsoViewGroup;->createParameterBundle(III)Landroid/os/Bundle;

    move-result-object v1

    sget v2, Lcom/facebook/R$layout;->orca_tabbed_login_silent:I

    invoke-static {v2}, Lcom/facebook/orca/login/OrcaSilentLoginViewGroup;->createParameterBundle(I)Landroid/os/Bundle;

    move-result-object v2

    sget v3, Lcom/facebook/R$layout;->orca_tabbed_login:I

    invoke-static {v3, v4, v4}, Lcom/facebook/orca/login/GenericPasswordCredentialsViewGroup;->createParameterBundle(III)Landroid/os/Bundle;

    move-result-object v3

    sget v4, Lcom/facebook/R$layout;->orca_tabbed_login_approval:I

    invoke-static {v4}, Lcom/facebook/orca/login/GenericLoginApprovalViewGroup;->createParameterBundle(I)Landroid/os/Bundle;

    move-result-object v4

    new-instance v5, Lcom/facebook/orca/ops/DialogBasedProgressIndicator;

    invoke-virtual {p0}, Lcom/facebook/orca/contacts/picker/LoginGuardedFriendListFragment;->l()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    sget v7, Lcom/facebook/R$string;->logging_out_progress:I

    invoke-direct {v5, v6, v7}, Lcom/facebook/orca/ops/DialogBasedProgressIndicator;-><init>(Landroid/content/Context;I)V

    invoke-static/range {v0 .. v5}, Lcom/facebook/orca/login/OrcaAuthStateMachineConfig;->a(Lcom/facebook/orca/auth/AuthDataStore;Landroid/os/Bundle;Landroid/os/Bundle;Landroid/os/Bundle;Landroid/os/Bundle;Lcom/facebook/orca/ops/OperationProgressIndicator;)Lcom/facebook/orca/login/AuthStateMachineConfig;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/orca/contacts/picker/LoginGuardedFriendListFragment;->c:Lcom/facebook/orca/login/AuthStateMachineConfig;

    goto :goto_0

    .line 103
    :cond_2
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/LoginGuardedFriendListFragment;->a:Lcom/facebook/orca/login/AuthNavigationController;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/LoginGuardedFriendListFragment;->b:Lcom/facebook/orca/contacts/picker/ContactPickerOperations;

    if-nez v0, :cond_0

    .line 104
    invoke-direct {p0}, Lcom/facebook/orca/contacts/picker/LoginGuardedFriendListFragment;->E()V

    .line 107
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/LoginGuardedFriendListFragment;->a:Lcom/facebook/orca/login/AuthNavigationController;

    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/LoginGuardedFriendListFragment;->c:Lcom/facebook/orca/login/AuthStateMachineConfig;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/login/AuthNavigationController;->a(Lcom/facebook/orca/login/AuthStateMachineConfig;)V

    .line 109
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.facebook.fragment.FRAGMENT_ACTION"

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/facebook/orca/contacts/picker/LoginGuardedFriendListFragment;->l()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-class v4, Lcom/facebook/orca/login/FirstPartySsoFragment;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 110
    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/LoginGuardedFriendListFragment;->a:Lcom/facebook/orca/login/AuthNavigationController;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/login/AuthNavigationController;->b(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method public e(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 116
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/OrcaFragment;->e(Landroid/os/Bundle;)V

    .line 117
    const-string v0, "authStateMachineConfig"

    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/LoginGuardedFriendListFragment;->c:Lcom/facebook/orca/login/AuthStateMachineConfig;

    invoke-virtual {v1}, Lcom/facebook/orca/login/AuthStateMachineConfig;->c()Lcom/facebook/orca/login/AuthStateMachineConfig$ParcelableConfigInformation;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 119
    return-void
.end method
