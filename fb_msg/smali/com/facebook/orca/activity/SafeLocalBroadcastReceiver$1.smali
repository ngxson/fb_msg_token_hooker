.class Lcom/facebook/orca/activity/SafeLocalBroadcastReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "SafeLocalBroadcastReceiver.java"


# instance fields
.field final synthetic a:Lcom/facebook/orca/activity/SafeLocalBroadcastReceiver;


# direct methods
.method constructor <init>(Lcom/facebook/orca/activity/SafeLocalBroadcastReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcom/facebook/orca/activity/SafeLocalBroadcastReceiver$1;->a:Lcom/facebook/orca/activity/SafeLocalBroadcastReceiver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/facebook/orca/activity/SafeLocalBroadcastReceiver$1;->a:Lcom/facebook/orca/activity/SafeLocalBroadcastReceiver;

    invoke-static {v0}, Lcom/facebook/orca/activity/SafeLocalBroadcastReceiver;->a(Lcom/facebook/orca/activity/SafeLocalBroadcastReceiver;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 36
    invoke-static {}, Lcom/facebook/orca/activity/SafeLocalBroadcastReceiver;->c()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "Called onReceive after it was unregistered."

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->e(Ljava/lang/Class;Ljava/lang/String;)V

    .line 40
    :goto_0
    return-void

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/activity/SafeLocalBroadcastReceiver$1;->a:Lcom/facebook/orca/activity/SafeLocalBroadcastReceiver;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/orca/activity/SafeLocalBroadcastReceiver;->a(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method
