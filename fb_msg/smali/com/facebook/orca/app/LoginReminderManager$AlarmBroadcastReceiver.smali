.class public Lcom/facebook/orca/app/LoginReminderManager$AlarmBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LoginReminderManager.java"


# instance fields
.field private a:Lcom/facebook/orca/app/LoginReminderManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 216
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 223
    invoke-static {p1}, Lcom/facebook/orca/inject/FbInjector;->a(Landroid/content/Context;)Lcom/facebook/orca/inject/FbInjector;

    move-result-object v0

    .line 224
    const-class v1, Lcom/facebook/orca/app/LoginReminderManager;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/app/LoginReminderManager;

    iput-object v0, p0, Lcom/facebook/orca/app/LoginReminderManager$AlarmBroadcastReceiver;->a:Lcom/facebook/orca/app/LoginReminderManager;

    .line 226
    iget-object v0, p0, Lcom/facebook/orca/app/LoginReminderManager$AlarmBroadcastReceiver;->a:Lcom/facebook/orca/app/LoginReminderManager;

    invoke-static {v0}, Lcom/facebook/orca/app/LoginReminderManager;->a(Lcom/facebook/orca/app/LoginReminderManager;)V

    .line 227
    return-void
.end method
