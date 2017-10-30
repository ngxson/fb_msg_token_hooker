.class Lcom/facebook/orca/inject/ContextAwareInjector$1;
.super Ljava/lang/Object;
.source "ContextAwareInjector.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljavax/inject/Provider;

.field final synthetic b:Lcom/facebook/orca/inject/ContextAwareInjector;


# direct methods
.method constructor <init>(Lcom/facebook/orca/inject/ContextAwareInjector;Ljavax/inject/Provider;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/facebook/orca/inject/ContextAwareInjector$1;->b:Lcom/facebook/orca/inject/ContextAwareInjector;

    iput-object p2, p0, Lcom/facebook/orca/inject/ContextAwareInjector$1;->a:Ljavax/inject/Provider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lcom/facebook/orca/inject/ContextAwareInjector$1;->b:Lcom/facebook/orca/inject/ContextAwareInjector;

    invoke-static {v0}, Lcom/facebook/orca/inject/ContextAwareInjector;->b(Lcom/facebook/orca/inject/ContextAwareInjector;)Lcom/facebook/orca/inject/ContextScope;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/orca/inject/ContextAwareInjector$1;->b:Lcom/facebook/orca/inject/ContextAwareInjector;

    invoke-static {v1}, Lcom/facebook/orca/inject/ContextAwareInjector;->a(Lcom/facebook/orca/inject/ContextAwareInjector;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/ContextScope;->a(Landroid/content/Context;)V

    .line 40
    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/inject/ContextAwareInjector$1;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->b()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 42
    iget-object v1, p0, Lcom/facebook/orca/inject/ContextAwareInjector$1;->b:Lcom/facebook/orca/inject/ContextAwareInjector;

    invoke-static {v1}, Lcom/facebook/orca/inject/ContextAwareInjector;->b(Lcom/facebook/orca/inject/ContextAwareInjector;)Lcom/facebook/orca/inject/ContextScope;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/orca/inject/ContextScope;->a()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/orca/inject/ContextAwareInjector$1;->b:Lcom/facebook/orca/inject/ContextAwareInjector;

    invoke-static {v1}, Lcom/facebook/orca/inject/ContextAwareInjector;->b(Lcom/facebook/orca/inject/ContextAwareInjector;)Lcom/facebook/orca/inject/ContextScope;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/orca/inject/ContextScope;->a()V

    throw v0
.end method
