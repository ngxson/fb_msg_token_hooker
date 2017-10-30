.class public Lcom/facebook/orca/sms/MmsTransactionStateBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MmsTransactionStateBroadcastReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 19
    invoke-static {p1}, Lcom/facebook/orca/app/AppInitLockHelper;->a(Landroid/content/Context;)V

    .line 20
    invoke-static {p1, p2}, Lcom/facebook/orca/sms/MmsTransactionStateReceiver;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 21
    return-void
.end method
