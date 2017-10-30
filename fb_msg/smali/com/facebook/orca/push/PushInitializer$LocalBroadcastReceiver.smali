.class public Lcom/facebook/orca/push/PushInitializer$LocalBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PushInitializer.java"


# instance fields
.field private a:Lcom/facebook/orca/push/PushInitializer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/push/PushInitializer$LocalBroadcastReceiver;)Lcom/facebook/orca/push/PushInitializer;
    .locals 1
    .parameter

    .prologue
    .line 94
    iget-object v0, p0, Lcom/facebook/orca/push/PushInitializer$LocalBroadcastReceiver;->a:Lcom/facebook/orca/push/PushInitializer;

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 100
    invoke-static {p1}, Lcom/facebook/orca/app/AppInitLockHelper;->a(Landroid/content/Context;)V

    .line 101
    invoke-static {p1}, Lcom/facebook/orca/inject/FbInjector;->a(Landroid/content/Context;)Lcom/facebook/orca/inject/FbInjector;

    move-result-object v0

    .line 102
    const-class v1, Lcom/facebook/orca/push/PushInitializer;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/push/PushInitializer;

    iput-object v0, p0, Lcom/facebook/orca/push/PushInitializer$LocalBroadcastReceiver;->a:Lcom/facebook/orca/push/PushInitializer;

    .line 104
    iget-object v0, p0, Lcom/facebook/orca/push/PushInitializer$LocalBroadcastReceiver;->a:Lcom/facebook/orca/push/PushInitializer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/orca/push/PushInitializer;->a(Lcom/facebook/orca/push/PushInitializer;Z)Z

    .line 107
    iget-object v0, p0, Lcom/facebook/orca/push/PushInitializer$LocalBroadcastReceiver;->a:Lcom/facebook/orca/push/PushInitializer;

    invoke-static {v0}, Lcom/facebook/orca/push/PushInitializer;->b(Lcom/facebook/orca/push/PushInitializer;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/push/PushInitializer$LocalBroadcastReceiver$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/push/PushInitializer$LocalBroadcastReceiver$1;-><init>(Lcom/facebook/orca/push/PushInitializer$LocalBroadcastReceiver;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 113
    return-void
.end method
