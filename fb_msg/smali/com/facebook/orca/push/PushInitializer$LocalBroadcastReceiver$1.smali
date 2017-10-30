.class Lcom/facebook/orca/push/PushInitializer$LocalBroadcastReceiver$1;
.super Ljava/lang/Object;
.source "PushInitializer.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/facebook/orca/push/PushInitializer$LocalBroadcastReceiver;


# direct methods
.method constructor <init>(Lcom/facebook/orca/push/PushInitializer$LocalBroadcastReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/facebook/orca/push/PushInitializer$LocalBroadcastReceiver$1;->a:Lcom/facebook/orca/push/PushInitializer$LocalBroadcastReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/facebook/orca/push/PushInitializer$LocalBroadcastReceiver$1;->a:Lcom/facebook/orca/push/PushInitializer$LocalBroadcastReceiver;

    invoke-static {v0}, Lcom/facebook/orca/push/PushInitializer$LocalBroadcastReceiver;->a(Lcom/facebook/orca/push/PushInitializer$LocalBroadcastReceiver;)Lcom/facebook/orca/push/PushInitializer;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/push/PushInitializer;->a(Lcom/facebook/orca/push/PushInitializer;)V

    .line 111
    return-void
.end method
