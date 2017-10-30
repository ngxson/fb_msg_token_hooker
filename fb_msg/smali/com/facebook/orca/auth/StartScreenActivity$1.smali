.class Lcom/facebook/orca/auth/StartScreenActivity$1;
.super Ljava/lang/Object;
.source "StartScreenActivity.java"

# interfaces
.implements Lcom/facebook/fragment/ReportingFragment$Listener;


# instance fields
.field final synthetic a:Lcom/facebook/orca/auth/StartScreenActivity;


# direct methods
.method constructor <init>(Lcom/facebook/orca/auth/StartScreenActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lcom/facebook/orca/auth/StartScreenActivity$1;->a:Lcom/facebook/orca/auth/StartScreenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 144
    iget-object v0, p0, Lcom/facebook/orca/auth/StartScreenActivity$1;->a:Lcom/facebook/orca/auth/StartScreenActivity;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->a(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->a(Landroid/content/Intent;)Z

    .line 146
    return-void
.end method

.method public a(Lcom/facebook/fragment/ReportingFragment;Landroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 138
    iget-object v0, p0, Lcom/facebook/orca/auth/StartScreenActivity$1;->a:Lcom/facebook/orca/auth/StartScreenActivity;

    invoke-static {v0, p2}, Lcom/facebook/orca/auth/StartScreenActivity;->a(Lcom/facebook/orca/auth/StartScreenActivity;Landroid/content/Intent;)V

    .line 139
    return-void
.end method
