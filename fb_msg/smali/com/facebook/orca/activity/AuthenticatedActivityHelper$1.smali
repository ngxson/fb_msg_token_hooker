.class Lcom/facebook/orca/activity/AuthenticatedActivityHelper$1;
.super Lcom/facebook/orca/activity/SafeLocalBroadcastReceiver;
.source "AuthenticatedActivityHelper.java"


# instance fields
.field final synthetic a:Lcom/facebook/orca/activity/AuthenticatedActivityHelper;


# direct methods
.method constructor <init>(Lcom/facebook/orca/activity/AuthenticatedActivityHelper;Landroid/content/Context;Landroid/content/IntentFilter;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/facebook/orca/activity/AuthenticatedActivityHelper$1;->a:Lcom/facebook/orca/activity/AuthenticatedActivityHelper;

    invoke-direct {p0, p2, p3}, Lcom/facebook/orca/activity/SafeLocalBroadcastReceiver;-><init>(Landroid/content/Context;Landroid/content/IntentFilter;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/facebook/orca/activity/AuthenticatedActivityHelper$1;->a:Lcom/facebook/orca/activity/AuthenticatedActivityHelper;

    invoke-static {v0}, Lcom/facebook/orca/activity/AuthenticatedActivityHelper;->a(Lcom/facebook/orca/activity/AuthenticatedActivityHelper;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 70
    return-void
.end method
