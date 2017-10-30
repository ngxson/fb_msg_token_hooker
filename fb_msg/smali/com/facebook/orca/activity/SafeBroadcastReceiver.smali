.class public abstract Lcom/facebook/orca/activity/SafeBroadcastReceiver;
.super Ljava/lang/Object;
.source "SafeBroadcastReceiver.java"


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
.field private b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/facebook/orca/activity/SafeBroadcastReceiver;

    sput-object v0, Lcom/facebook/orca/activity/SafeBroadcastReceiver;->a:Ljava/lang/Class;

    return-void
.end method

.method static synthetic a()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/facebook/orca/activity/SafeBroadcastReceiver;->a:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/orca/activity/SafeBroadcastReceiver;)Z
    .locals 1
    .parameter

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/facebook/orca/activity/SafeBroadcastReceiver;->b:Z

    return v0
.end method


# virtual methods
.method public abstract a(Landroid/content/Context;Landroid/content/Intent;)V
.end method
