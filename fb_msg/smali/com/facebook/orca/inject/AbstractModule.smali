.class public abstract Lcom/facebook/orca/inject/AbstractModule;
.super Ljava/lang/Object;
.source "AbstractModule.java"

# interfaces
.implements Lcom/facebook/orca/inject/Module;


# instance fields
.field private a:Lcom/facebook/orca/inject/Binder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/google/inject/Key;)Lcom/facebook/orca/inject/MultiBinding;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Key",
            "<TT;>;)",
            "Lcom/facebook/orca/inject/MultiBinding",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lcom/facebook/orca/inject/AbstractModule;->a:Lcom/facebook/orca/inject/Binder;

    invoke-interface {v0, p1}, Lcom/facebook/orca/inject/Binder;->a(Lcom/google/inject/Key;)Lcom/facebook/orca/inject/MultiBinding;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 32
    iget-object v0, p0, Lcom/facebook/orca/inject/AbstractModule;->a:Lcom/facebook/orca/inject/Binder;

    invoke-interface {v0, p1}, Lcom/facebook/orca/inject/Binder;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    return-object v0
.end method

.method protected abstract a()V
.end method

.method public final a(Lcom/facebook/orca/inject/Binder;)V
    .locals 0
    .parameter

    .prologue
    .line 19
    iput-object p1, p0, Lcom/facebook/orca/inject/AbstractModule;->a:Lcom/facebook/orca/inject/Binder;

    .line 20
    invoke-virtual {p0}, Lcom/facebook/orca/inject/AbstractModule;->a()V

    .line 21
    return-void
.end method

.method protected a(Lcom/facebook/orca/inject/Module;)V
    .locals 1
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, Lcom/facebook/orca/inject/AbstractModule;->a:Lcom/facebook/orca/inject/Binder;

    invoke-interface {v0, p1}, Lcom/facebook/orca/inject/Binder;->a(Lcom/facebook/orca/inject/Module;)V

    .line 90
    return-void
.end method

.method protected b(Ljava/lang/Class;)Lcom/facebook/orca/inject/MultiBinding;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/facebook/orca/inject/MultiBinding",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lcom/facebook/orca/inject/AbstractModule;->a:Lcom/facebook/orca/inject/Binder;

    invoke-interface {v0, p1}, Lcom/facebook/orca/inject/Binder;->b(Ljava/lang/Class;)Lcom/facebook/orca/inject/MultiBinding;

    move-result-object v0

    return-object v0
.end method
