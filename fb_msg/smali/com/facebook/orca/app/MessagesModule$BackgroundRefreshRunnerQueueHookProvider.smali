.class Lcom/facebook/orca/app/MessagesModule$BackgroundRefreshRunnerQueueHookProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessagesModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/server/BackgroundRefreshRunner$QueueHook;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/app/MessagesModule;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/MessagesModule;)V
    .locals 0
    .parameter

    .prologue
    .line 1974
    iput-object p1, p0, Lcom/facebook/orca/app/MessagesModule$BackgroundRefreshRunnerQueueHookProvider;->a:Lcom/facebook/orca/app/MessagesModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1974
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/MessagesModule$BackgroundRefreshRunnerQueueHookProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/server/BackgroundRefreshRunner$QueueHook;
    .locals 1

    .prologue
    .line 1979
    const-class v0, Lcom/facebook/orca/server/BackgroundRefreshRunner;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule$BackgroundRefreshRunnerQueueHookProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/BackgroundRefreshRunner;

    invoke-virtual {v0}, Lcom/facebook/orca/server/BackgroundRefreshRunner;->a()Lcom/facebook/orca/server/BackgroundRefreshRunner$QueueHook;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1974
    invoke-virtual {p0}, Lcom/facebook/orca/app/MessagesModule$BackgroundRefreshRunnerQueueHookProvider;->a()Lcom/facebook/orca/server/BackgroundRefreshRunner$QueueHook;

    move-result-object v0

    return-object v0
.end method
