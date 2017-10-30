.class Lcom/facebook/orca/inject/FbInjectorImpl$LessEagerUiThreadSingletonInitializer$1;
.super Ljava/lang/Object;
.source "FbInjectorImpl.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# instance fields
.field final synthetic a:Lcom/facebook/orca/inject/FbInjectorImpl$LessEagerUiThreadSingletonInitializer;


# direct methods
.method constructor <init>(Lcom/facebook/orca/inject/FbInjectorImpl$LessEagerUiThreadSingletonInitializer;)V
    .locals 0
    .parameter

    .prologue
    .line 218
    iput-object p1, p0, Lcom/facebook/orca/inject/FbInjectorImpl$LessEagerUiThreadSingletonInitializer$1;->a:Lcom/facebook/orca/inject/FbInjectorImpl$LessEagerUiThreadSingletonInitializer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public queueIdle()Z
    .locals 9

    .prologue
    .line 221
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 222
    const-string v0, "LessEagerUiThreadSingletonInitializer"

    invoke-static {v0}, Lcom/facebook/orca/debug/Tracer;->a(Ljava/lang/String;)Lcom/facebook/orca/debug/Tracer;

    move-result-object v3

    .line 223
    iget-object v0, p0, Lcom/facebook/orca/inject/FbInjectorImpl$LessEagerUiThreadSingletonInitializer$1;->a:Lcom/facebook/orca/inject/FbInjectorImpl$LessEagerUiThreadSingletonInitializer;

    iget-object v0, v0, Lcom/facebook/orca/inject/FbInjectorImpl$LessEagerUiThreadSingletonInitializer;->a:Lcom/facebook/orca/inject/FbInjectorImpl;

    invoke-static {v0}, Lcom/facebook/orca/inject/FbInjectorImpl;->a(Lcom/facebook/orca/inject/FbInjectorImpl;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 224
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 225
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/inject/Key;

    .line 226
    iget-object v5, p0, Lcom/facebook/orca/inject/FbInjectorImpl$LessEagerUiThreadSingletonInitializer$1;->a:Lcom/facebook/orca/inject/FbInjectorImpl$LessEagerUiThreadSingletonInitializer;

    iget-object v5, v5, Lcom/facebook/orca/inject/FbInjectorImpl$LessEagerUiThreadSingletonInitializer;->a:Lcom/facebook/orca/inject/FbInjectorImpl;

    invoke-virtual {v5, v0}, Lcom/facebook/orca/inject/FbInjectorImpl;->a(Lcom/google/inject/Key;)Ljava/lang/Object;

    .line 227
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 228
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    const-wide/16 v7, 0x32

    cmp-long v0, v5, v7

    if-lez v0, :cond_0

    .line 233
    :cond_1
    invoke-virtual {v3}, Lcom/facebook/orca/debug/Tracer;->a()J

    .line 234
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method
