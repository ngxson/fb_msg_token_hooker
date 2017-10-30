.class Lcom/facebook/chatheads/ChatHeadsModule$RecentTaskChangeDetectorProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "ChatHeadsModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/chatheads/RecentTaskChangeDetector;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/chatheads/ChatHeadsModule;


# direct methods
.method private constructor <init>(Lcom/facebook/chatheads/ChatHeadsModule;)V
    .locals 0
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/facebook/chatheads/ChatHeadsModule$RecentTaskChangeDetectorProvider;->a:Lcom/facebook/chatheads/ChatHeadsModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/chatheads/ChatHeadsModule;Lcom/facebook/chatheads/ChatHeadsModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/facebook/chatheads/ChatHeadsModule$RecentTaskChangeDetectorProvider;-><init>(Lcom/facebook/chatheads/ChatHeadsModule;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/chatheads/RecentTaskChangeDetector;
    .locals 3

    .prologue
    .line 85
    new-instance v2, Lcom/facebook/chatheads/RecentTaskChangeDetector;

    const-class v0, Landroid/app/ActivityManager;

    invoke-virtual {p0, v0}, Lcom/facebook/chatheads/ChatHeadsModule$RecentTaskChangeDetectorProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const-class v1, Landroid/os/Handler;

    invoke-virtual {p0, v1}, Lcom/facebook/chatheads/ChatHeadsModule$RecentTaskChangeDetectorProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    invoke-direct {v2, v0, v1}, Lcom/facebook/chatheads/RecentTaskChangeDetector;-><init>(Landroid/app/ActivityManager;Landroid/os/Handler;)V

    return-object v2
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/facebook/chatheads/ChatHeadsModule$RecentTaskChangeDetectorProvider;->a()Lcom/facebook/chatheads/RecentTaskChangeDetector;

    move-result-object v0

    return-object v0
.end method
