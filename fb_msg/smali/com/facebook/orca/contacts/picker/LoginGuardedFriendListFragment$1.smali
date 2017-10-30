.class Lcom/facebook/orca/contacts/picker/LoginGuardedFriendListFragment$1;
.super Ljava/lang/Object;
.source "LoginGuardedFriendListFragment.java"

# interfaces
.implements Lcom/facebook/fragment/ReportingFragment$Listener;


# instance fields
.field final synthetic a:Lcom/facebook/orca/contacts/picker/LoginGuardedFriendListFragment;


# direct methods
.method constructor <init>(Lcom/facebook/orca/contacts/picker/LoginGuardedFriendListFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lcom/facebook/orca/contacts/picker/LoginGuardedFriendListFragment$1;->a:Lcom/facebook/orca/contacts/picker/LoginGuardedFriendListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 150
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/LoginGuardedFriendListFragment$1;->a:Lcom/facebook/orca/contacts/picker/LoginGuardedFriendListFragment;

    invoke-virtual {v0}, Lcom/facebook/orca/contacts/picker/LoginGuardedFriendListFragment;->l()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->a(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->a(Landroid/content/Intent;)Z

    .line 152
    return-void
.end method

.method public a(Lcom/facebook/fragment/ReportingFragment;Landroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 143
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/LoginGuardedFriendListFragment$1;->a:Lcom/facebook/orca/contacts/picker/LoginGuardedFriendListFragment;

    invoke-static {v0}, Lcom/facebook/orca/contacts/picker/LoginGuardedFriendListFragment;->a(Lcom/facebook/orca/contacts/picker/LoginGuardedFriendListFragment;)V

    .line 144
    return-void
.end method
