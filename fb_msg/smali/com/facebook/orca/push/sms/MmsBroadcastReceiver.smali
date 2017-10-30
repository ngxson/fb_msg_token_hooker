.class public Lcom/facebook/orca/push/sms/MmsBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MmsBroadcastReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 26
    invoke-static {p1}, Lcom/facebook/orca/app/AppInitLockHelper;->a(Landroid/content/Context;)V

    .line 27
    invoke-static {p1}, Lcom/facebook/orca/inject/FbInjector;->a(Landroid/content/Context;)Lcom/facebook/orca/inject/FbInjector;

    move-result-object v1

    .line 28
    const-class v0, Ljava/lang/Boolean;

    const-class v2, Lcom/facebook/orca/annotations/IsSmsNotifyEnabled;

    invoke-virtual {v1, v0, v2}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 29
    const-class v0, Lcom/facebook/orca/nux/OrcaNuxManager;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/nux/OrcaNuxManager;

    .line 30
    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/facebook/orca/nux/OrcaNuxManager;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    invoke-static {p1, p2}, Lcom/facebook/orca/push/sms/MmsReceiver;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 32
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v3, v3}, Lcom/facebook/orca/push/sms/MmsBroadcastReceiver;->setResult(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 35
    invoke-virtual {p0}, Lcom/facebook/orca/push/sms/MmsBroadcastReceiver;->abortBroadcast()V

    .line 37
    :cond_0
    return-void
.end method
