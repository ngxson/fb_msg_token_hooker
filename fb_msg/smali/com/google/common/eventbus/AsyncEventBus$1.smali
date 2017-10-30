.class Lcom/google/common/eventbus/AsyncEventBus$1;
.super Ljava/lang/Object;
.source "AsyncEventBus.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lcom/google/common/eventbus/EventHandler;

.field final synthetic c:Lcom/google/common/eventbus/AsyncEventBus;


# direct methods
.method constructor <init>(Lcom/google/common/eventbus/AsyncEventBus;Ljava/lang/Object;Lcom/google/common/eventbus/EventHandler;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/google/common/eventbus/AsyncEventBus$1;->c:Lcom/google/common/eventbus/AsyncEventBus;

    iput-object p2, p0, Lcom/google/common/eventbus/AsyncEventBus$1;->a:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/common/eventbus/AsyncEventBus$1;->b:Lcom/google/common/eventbus/EventHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/common/eventbus/AsyncEventBus$1;->c:Lcom/google/common/eventbus/AsyncEventBus;

    iget-object v1, p0, Lcom/google/common/eventbus/AsyncEventBus$1;->a:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/common/eventbus/AsyncEventBus$1;->b:Lcom/google/common/eventbus/EventHandler;

    invoke-static {v0, v1, v2}, Lcom/google/common/eventbus/AsyncEventBus;->a(Lcom/google/common/eventbus/AsyncEventBus;Ljava/lang/Object;Lcom/google/common/eventbus/EventHandler;)V

    .line 95
    return-void
.end method
