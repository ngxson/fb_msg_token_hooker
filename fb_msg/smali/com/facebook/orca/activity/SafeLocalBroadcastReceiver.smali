.class public abstract Lcom/facebook/orca/activity/SafeLocalBroadcastReceiver;
.super Ljava/lang/Object;
.source "SafeLocalBroadcastReceiver.java"


# static fields
.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Landroid/support/v4/content/LocalBroadcastManager;

.field private final c:Landroid/content/IntentFilter;

.field private final d:Landroid/content/BroadcastReceiver;

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/facebook/orca/activity/SafeLocalBroadcastReceiver;

    sput-object v0, Lcom/facebook/orca/activity/SafeLocalBroadcastReceiver;->a:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/IntentFilter;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->a(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/activity/SafeLocalBroadcastReceiver;->b:Landroid/support/v4/content/LocalBroadcastManager;

    .line 31
    iput-object p2, p0, Lcom/facebook/orca/activity/SafeLocalBroadcastReceiver;->c:Landroid/content/IntentFilter;

    .line 32
    new-instance v0, Lcom/facebook/orca/activity/SafeLocalBroadcastReceiver$1;

    invoke-direct {v0, p0}, Lcom/facebook/orca/activity/SafeLocalBroadcastReceiver$1;-><init>(Lcom/facebook/orca/activity/SafeLocalBroadcastReceiver;)V

    iput-object v0, p0, Lcom/facebook/orca/activity/SafeLocalBroadcastReceiver;->d:Landroid/content/BroadcastReceiver;

    .line 42
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/activity/SafeLocalBroadcastReceiver;)Z
    .locals 1
    .parameter

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/facebook/orca/activity/SafeLocalBroadcastReceiver;->e:Z

    return v0
.end method

.method static synthetic c()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/facebook/orca/activity/SafeLocalBroadcastReceiver;->a:Ljava/lang/Class;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/facebook/orca/activity/SafeLocalBroadcastReceiver;->e:Z

    if-eqz v0, :cond_0

    .line 46
    sget-object v0, Lcom/facebook/orca/activity/SafeLocalBroadcastReceiver;->a:Ljava/lang/Class;

    const-string v1, "Called registerNotificationReceiver twice."

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->e(Ljava/lang/Class;Ljava/lang/String;)V

    .line 51
    :goto_0
    return-void

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/activity/SafeLocalBroadcastReceiver;->b:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v1, p0, Lcom/facebook/orca/activity/SafeLocalBroadcastReceiver;->d:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/facebook/orca/activity/SafeLocalBroadcastReceiver;->c:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/orca/activity/SafeLocalBroadcastReceiver;->e:Z

    goto :goto_0
.end method

.method public abstract a(Landroid/content/Context;Landroid/content/Intent;)V
.end method

.method public b()V
    .locals 2

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/facebook/orca/activity/SafeLocalBroadcastReceiver;->e:Z

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/facebook/orca/activity/SafeLocalBroadcastReceiver;->b:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v1, p0, Lcom/facebook/orca/activity/SafeLocalBroadcastReceiver;->d:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->a(Landroid/content/BroadcastReceiver;)V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/orca/activity/SafeLocalBroadcastReceiver;->e:Z

    .line 58
    :cond_0
    return-void
.end method
