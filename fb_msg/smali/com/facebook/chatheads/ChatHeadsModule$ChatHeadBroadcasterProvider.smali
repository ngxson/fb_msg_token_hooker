.class Lcom/facebook/chatheads/ChatHeadsModule$ChatHeadBroadcasterProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "ChatHeadsModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/chatheads/ChatHeadBroadcaster;",
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
    .line 72
    iput-object p1, p0, Lcom/facebook/chatheads/ChatHeadsModule$ChatHeadBroadcasterProvider;->a:Lcom/facebook/chatheads/ChatHeadsModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/chatheads/ChatHeadsModule;Lcom/facebook/chatheads/ChatHeadsModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/facebook/chatheads/ChatHeadsModule$ChatHeadBroadcasterProvider;-><init>(Lcom/facebook/chatheads/ChatHeadsModule;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/chatheads/ChatHeadBroadcaster;
    .locals 2

    .prologue
    .line 76
    new-instance v0, Lcom/facebook/chatheads/ChatHeadBroadcaster;

    iget-object v1, p0, Lcom/facebook/chatheads/ChatHeadsModule$ChatHeadBroadcasterProvider;->a:Lcom/facebook/chatheads/ChatHeadsModule;

    invoke-static {v1}, Lcom/facebook/chatheads/ChatHeadsModule;->a(Lcom/facebook/chatheads/ChatHeadsModule;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/chatheads/ChatHeadBroadcaster;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/facebook/chatheads/ChatHeadsModule$ChatHeadBroadcasterProvider;->a()Lcom/facebook/chatheads/ChatHeadBroadcaster;

    move-result-object v0

    return-object v0
.end method
