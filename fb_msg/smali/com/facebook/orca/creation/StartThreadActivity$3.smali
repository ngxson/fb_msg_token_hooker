.class Lcom/facebook/orca/creation/StartThreadActivity$3;
.super Lcom/facebook/orca/activity/SafeLocalBroadcastReceiver;
.source "StartThreadActivity.java"


# instance fields
.field final synthetic a:Lcom/facebook/orca/creation/StartThreadActivity;


# direct methods
.method constructor <init>(Lcom/facebook/orca/creation/StartThreadActivity;Landroid/content/Context;Landroid/content/IntentFilter;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 213
    iput-object p1, p0, Lcom/facebook/orca/creation/StartThreadActivity$3;->a:Lcom/facebook/orca/creation/StartThreadActivity;

    invoke-direct {p0, p2, p3}, Lcom/facebook/orca/activity/SafeLocalBroadcastReceiver;-><init>(Landroid/content/Context;Landroid/content/IntentFilter;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 216
    iget-object v0, p0, Lcom/facebook/orca/creation/StartThreadActivity$3;->a:Lcom/facebook/orca/creation/StartThreadActivity;

    invoke-static {v0}, Lcom/facebook/orca/creation/StartThreadActivity;->c(Lcom/facebook/orca/creation/StartThreadActivity;)V

    .line 217
    return-void
.end method
