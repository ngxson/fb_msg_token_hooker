.class Lcom/facebook/chatheads/ChatHeadsModule$ChatHeadWindowManagerProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "ChatHeadsModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/chatheads/ChatHeadWindowManager;",
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
    .line 45
    iput-object p1, p0, Lcom/facebook/chatheads/ChatHeadsModule$ChatHeadWindowManagerProvider;->a:Lcom/facebook/chatheads/ChatHeadsModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/chatheads/ChatHeadsModule;Lcom/facebook/chatheads/ChatHeadsModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/facebook/chatheads/ChatHeadsModule$ChatHeadWindowManagerProvider;-><init>(Lcom/facebook/chatheads/ChatHeadsModule;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/chatheads/ChatHeadWindowManager;
    .locals 6

    .prologue
    .line 49
    new-instance v0, Lcom/facebook/chatheads/ChatHeadWindowManager;

    const-class v1, Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/facebook/chatheads/ChatHeadsModule$ChatHeadWindowManagerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-class v2, Landroid/view/WindowManager;

    invoke-virtual {p0, v2}, Lcom/facebook/chatheads/ChatHeadsModule$ChatHeadWindowManagerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    const-class v3, Landroid/os/Handler;

    invoke-virtual {p0, v3}, Lcom/facebook/chatheads/ChatHeadsModule$ChatHeadWindowManagerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Handler;

    const-class v4, Lcom/facebook/chatheads/ChatHeadBroadcaster;

    invoke-virtual {p0, v4}, Lcom/facebook/chatheads/ChatHeadsModule$ChatHeadWindowManagerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/chatheads/ChatHeadBroadcaster;

    const-class v5, Lcom/facebook/chatheads/RecentTaskChangeDetector;

    invoke-virtual {p0, v5}, Lcom/facebook/chatheads/ChatHeadsModule$ChatHeadWindowManagerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/chatheads/RecentTaskChangeDetector;

    invoke-direct/range {v0 .. v5}, Lcom/facebook/chatheads/ChatHeadWindowManager;-><init>(Landroid/content/Context;Landroid/view/WindowManager;Landroid/os/Handler;Lcom/facebook/chatheads/ChatHeadBroadcaster;Lcom/facebook/chatheads/RecentTaskChangeDetector;)V

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/facebook/chatheads/ChatHeadsModule$ChatHeadWindowManagerProvider;->a()Lcom/facebook/chatheads/ChatHeadWindowManager;

    move-result-object v0

    return-object v0
.end method
