.class Lcom/facebook/orca/activity/SafeBroadcastReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "SafeBroadcastReceiver.java"


# instance fields
.field final synthetic a:Lcom/facebook/orca/activity/SafeBroadcastReceiver;


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/facebook/orca/activity/SafeBroadcastReceiver$1;->a:Lcom/facebook/orca/activity/SafeBroadcastReceiver;

    invoke-static {v0}, Lcom/facebook/orca/activity/SafeBroadcastReceiver;->a(Lcom/facebook/orca/activity/SafeBroadcastReceiver;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 34
    invoke-static {}, Lcom/facebook/orca/activity/SafeBroadcastReceiver;->a()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "Called onReceive after it was unregistered."

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->e(Ljava/lang/Class;Ljava/lang/String;)V

    .line 38
    :goto_0
    return-void

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/activity/SafeBroadcastReceiver$1;->a:Lcom/facebook/orca/activity/SafeBroadcastReceiver;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/orca/activity/SafeBroadcastReceiver;->a(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method
