.class Lcom/facebook/chatheads/ChatHeadsModule$ChatHeadPushHandlerProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "ChatHeadsModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/chatheads/ChatHeadPushHandler;",
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
    .line 59
    iput-object p1, p0, Lcom/facebook/chatheads/ChatHeadsModule$ChatHeadPushHandlerProvider;->a:Lcom/facebook/chatheads/ChatHeadsModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/chatheads/ChatHeadsModule;Lcom/facebook/chatheads/ChatHeadsModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/facebook/chatheads/ChatHeadsModule$ChatHeadPushHandlerProvider;-><init>(Lcom/facebook/chatheads/ChatHeadsModule;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/chatheads/ChatHeadPushHandler;
    .locals 6

    .prologue
    .line 63
    new-instance v2, Lcom/facebook/chatheads/ChatHeadPushHandler;

    iget-object v0, p0, Lcom/facebook/chatheads/ChatHeadsModule$ChatHeadPushHandlerProvider;->a:Lcom/facebook/chatheads/ChatHeadsModule;

    invoke-static {v0}, Lcom/facebook/chatheads/ChatHeadsModule;->a(Lcom/facebook/chatheads/ChatHeadsModule;)Landroid/content/Context;

    move-result-object v3

    const-class v0, Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {p0, v0}, Lcom/facebook/chatheads/ChatHeadsModule$ChatHeadPushHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/cache/DataCache;

    const-class v1, Lcom/facebook/app/UserActivityManager;

    invoke-virtual {p0, v1}, Lcom/facebook/chatheads/ChatHeadsModule$ChatHeadPushHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/app/UserActivityManager;

    const-class v4, Ljava/lang/Boolean;

    const-class v5, Lcom/facebook/chatheads/annotations/IsChatHeadsEnabled;

    invoke-virtual {p0, v4, v5}, Lcom/facebook/chatheads/ChatHeadsModule$ChatHeadPushHandlerProvider;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljavax/inject/Provider;

    move-result-object v4

    invoke-direct {v2, v3, v0, v1, v4}, Lcom/facebook/chatheads/ChatHeadPushHandler;-><init>(Landroid/content/Context;Lcom/facebook/orca/cache/DataCache;Lcom/facebook/app/UserActivityManager;Ljavax/inject/Provider;)V

    return-object v2
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/facebook/chatheads/ChatHeadsModule$ChatHeadPushHandlerProvider;->a()Lcom/facebook/chatheads/ChatHeadPushHandler;

    move-result-object v0

    return-object v0
.end method
