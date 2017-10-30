.class Lcom/facebook/app/UserActivityModule$UserActivityManagerProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "UserActivityModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/app/UserActivityManager;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/app/UserActivityModule;


# direct methods
.method private constructor <init>(Lcom/facebook/app/UserActivityModule;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/facebook/app/UserActivityModule$UserActivityManagerProvider;->a:Lcom/facebook/app/UserActivityModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/app/UserActivityModule;Lcom/facebook/app/UserActivityModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/facebook/app/UserActivityModule$UserActivityManagerProvider;-><init>(Lcom/facebook/app/UserActivityModule;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/app/UserActivityManager;
    .locals 6

    .prologue
    .line 38
    new-instance v4, Lcom/facebook/app/UserActivityManager;

    const-class v0, Lcom/facebook/orca/app/ActivityBroadcaster;

    invoke-virtual {p0, v0}, Lcom/facebook/app/UserActivityModule$UserActivityManagerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/app/ActivityBroadcaster;

    const-class v1, Lcom/facebook/orca/common/util/AndroidThreadUtil;

    invoke-virtual {p0, v1}, Lcom/facebook/app/UserActivityModule$UserActivityManagerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/common/util/AndroidThreadUtil;

    const-class v2, Lcom/facebook/orca/common/util/Clock;

    invoke-virtual {p0, v2}, Lcom/facebook/app/UserActivityModule$UserActivityManagerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/orca/common/util/Clock;

    const-class v3, Landroid/app/KeyguardManager;

    const-class v5, Lcom/facebook/orca/annotations/FromApplication;

    invoke-virtual {p0, v3, v5}, Lcom/facebook/app/UserActivityModule$UserActivityManagerProvider;->b(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/facebook/app/UserActivityManager;-><init>(Lcom/facebook/orca/app/ActivityBroadcaster;Lcom/facebook/orca/common/util/AndroidThreadUtil;Lcom/facebook/orca/common/util/Clock;Landroid/app/KeyguardManager;)V

    return-object v4
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/facebook/app/UserActivityModule$UserActivityManagerProvider;->a()Lcom/facebook/app/UserActivityManager;

    move-result-object v0

    return-object v0
.end method
