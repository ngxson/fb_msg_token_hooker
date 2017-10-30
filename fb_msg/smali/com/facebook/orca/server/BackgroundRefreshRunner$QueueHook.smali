.class public Lcom/facebook/orca/server/BackgroundRefreshRunner$QueueHook;
.super Ljava/lang/Object;
.source "BackgroundRefreshRunner.java"

# interfaces
.implements Lcom/facebook/orca/server/OrcaServiceQueueHook;


# instance fields
.field final synthetic a:Lcom/facebook/orca/server/BackgroundRefreshRunner;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/server/BackgroundRefreshRunner;)V
    .locals 0
    .parameter

    .prologue
    .line 425
    iput-object p1, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner$QueueHook;->a:Lcom/facebook/orca/server/BackgroundRefreshRunner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 434
    iget-object v0, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner$QueueHook;->a:Lcom/facebook/orca/server/BackgroundRefreshRunner;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/facebook/orca/server/BackgroundRefreshRunner;->a(Lcom/facebook/orca/server/BackgroundRefreshRunner;Z)Z

    .line 435
    iget-object v0, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner$QueueHook;->a:Lcom/facebook/orca/server/BackgroundRefreshRunner;

    invoke-static {v0}, Lcom/facebook/orca/server/BackgroundRefreshRunner;->a(Lcom/facebook/orca/server/BackgroundRefreshRunner;)V

    .line 436
    return-void
.end method

.method public a(Lcom/facebook/orca/server/Operation;)V
    .locals 2
    .parameter

    .prologue
    .line 429
    iget-object v0, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner$QueueHook;->a:Lcom/facebook/orca/server/BackgroundRefreshRunner;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/orca/server/BackgroundRefreshRunner;->a(Lcom/facebook/orca/server/BackgroundRefreshRunner;Z)Z

    .line 430
    return-void
.end method
