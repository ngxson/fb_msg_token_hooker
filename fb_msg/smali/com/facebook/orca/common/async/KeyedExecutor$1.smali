.class Lcom/facebook/orca/common/async/KeyedExecutor$1;
.super Ljava/lang/Object;
.source "KeyedExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/facebook/orca/common/async/KeyedExecutor$Task;

.field final synthetic b:Lcom/facebook/orca/common/async/KeyedExecutor$TaskQueue;

.field final synthetic c:Lcom/facebook/orca/common/async/KeyedExecutor;


# direct methods
.method constructor <init>(Lcom/facebook/orca/common/async/KeyedExecutor;Lcom/facebook/orca/common/async/KeyedExecutor$Task;Lcom/facebook/orca/common/async/KeyedExecutor$TaskQueue;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lcom/facebook/orca/common/async/KeyedExecutor$1;->c:Lcom/facebook/orca/common/async/KeyedExecutor;

    iput-object p2, p0, Lcom/facebook/orca/common/async/KeyedExecutor$1;->a:Lcom/facebook/orca/common/async/KeyedExecutor$Task;

    iput-object p3, p0, Lcom/facebook/orca/common/async/KeyedExecutor$1;->b:Lcom/facebook/orca/common/async/KeyedExecutor$TaskQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 147
    iget-object v0, p0, Lcom/facebook/orca/common/async/KeyedExecutor$1;->c:Lcom/facebook/orca/common/async/KeyedExecutor;

    iget-object v1, p0, Lcom/facebook/orca/common/async/KeyedExecutor$1;->a:Lcom/facebook/orca/common/async/KeyedExecutor$Task;

    iget-object v2, p0, Lcom/facebook/orca/common/async/KeyedExecutor$1;->b:Lcom/facebook/orca/common/async/KeyedExecutor$TaskQueue;

    invoke-static {v0, v1, v2}, Lcom/facebook/orca/common/async/KeyedExecutor;->a(Lcom/facebook/orca/common/async/KeyedExecutor;Lcom/facebook/orca/common/async/KeyedExecutor$Task;Lcom/facebook/orca/common/async/KeyedExecutor$TaskQueue;)V

    .line 148
    return-void
.end method
