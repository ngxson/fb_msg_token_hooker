.class public Lcom/facebook/orca/inject/FbInjectorImpl$LessEagerUiThreadSingletonInitializer;
.super Ljava/lang/Object;
.source "FbInjectorImpl.java"

# interfaces
.implements Lcom/facebook/orca/app/INeedInit;


# instance fields
.field final synthetic a:Lcom/facebook/orca/inject/FbInjectorImpl;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/inject/FbInjectorImpl;)V
    .locals 0
    .parameter

    .prologue
    .line 212
    iput-object p1, p0, Lcom/facebook/orca/inject/FbInjectorImpl$LessEagerUiThreadSingletonInitializer;->a:Lcom/facebook/orca/inject/FbInjectorImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 3

    .prologue
    .line 216
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    .line 217
    if-eqz v0, :cond_0

    .line 218
    new-instance v1, Lcom/facebook/orca/inject/FbInjectorImpl$LessEagerUiThreadSingletonInitializer$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/inject/FbInjectorImpl$LessEagerUiThreadSingletonInitializer$1;-><init>(Lcom/facebook/orca/inject/FbInjectorImpl$LessEagerUiThreadSingletonInitializer;)V

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 244
    :goto_0
    return-void

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/inject/FbInjectorImpl$LessEagerUiThreadSingletonInitializer;->a:Lcom/facebook/orca/inject/FbInjectorImpl;

    invoke-static {v0}, Lcom/facebook/orca/inject/FbInjectorImpl;->a(Lcom/facebook/orca/inject/FbInjectorImpl;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/inject/Key;

    .line 240
    iget-object v2, p0, Lcom/facebook/orca/inject/FbInjectorImpl$LessEagerUiThreadSingletonInitializer;->a:Lcom/facebook/orca/inject/FbInjectorImpl;

    invoke-virtual {v2, v0}, Lcom/facebook/orca/inject/FbInjectorImpl;->a(Lcom/google/inject/Key;)Ljava/lang/Object;

    goto :goto_1

    .line 242
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/inject/FbInjectorImpl$LessEagerUiThreadSingletonInitializer;->a:Lcom/facebook/orca/inject/FbInjectorImpl;

    invoke-static {v0}, Lcom/facebook/orca/inject/FbInjectorImpl;->a(Lcom/facebook/orca/inject/FbInjectorImpl;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    goto :goto_0
.end method
