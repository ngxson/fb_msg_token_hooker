.class public abstract Lcom/facebook/orca/inject/FbInjector;
.super Ljava/lang/Object;
.source "FbInjector.java"


# static fields
.field private static a:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Landroid/content/Context;",
            "Lcom/facebook/orca/inject/ContextAwareInjector;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/google/common/collect/MapMaker;

    invoke-direct {v0}, Lcom/google/common/collect/MapMaker;-><init>()V

    invoke-virtual {v0}, Lcom/google/common/collect/MapMaker;->f()Lcom/google/common/collect/MapMaker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/MapMaker;->h()Lcom/google/common/collect/MapMaker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/MapMaker;->n()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    sput-object v0, Lcom/facebook/orca/inject/FbInjector;->a:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/facebook/orca/inject/FbInjector;
    .locals 3
    .parameter

    .prologue
    .line 78
    sget-object v0, Lcom/facebook/orca/inject/FbInjector;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/inject/ContextAwareInjector;

    .line 79
    if-nez v0, :cond_1

    .line 80
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/inject/FbInjectorProvider;

    .line 81
    invoke-interface {v0}, Lcom/facebook/orca/inject/FbInjectorProvider;->e()Lcom/facebook/orca/inject/FbInjector;

    move-result-object v2

    .line 82
    if-nez v2, :cond_0

    .line 83
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can NOT get FbInjector instance! Probably because this method was called in ContentProvider\'s onCreate."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_0
    new-instance v1, Lcom/facebook/orca/inject/ContextAwareInjector;

    const-class v0, Lcom/facebook/orca/inject/ContextScope;

    invoke-virtual {v2, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/inject/ContextScope;

    invoke-direct {v1, v2, v0, p0}, Lcom/facebook/orca/inject/ContextAwareInjector;-><init>(Lcom/facebook/orca/inject/FbInjector;Lcom/facebook/orca/inject/ContextScope;Landroid/content/Context;)V

    .line 91
    sget-object v0, Lcom/facebook/orca/inject/FbInjector;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0, v1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    .line 93
    :cond_1
    return-object v0
.end method

.method public static a(Ljava/util/List;)Lcom/facebook/orca/inject/FbInjector;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/facebook/orca/inject/Module;",
            ">;)",
            "Lcom/facebook/orca/inject/FbInjector;"
        }
    .end annotation

    .prologue
    .line 103
    new-instance v0, Lcom/facebook/orca/inject/FbInjectorImpl;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/facebook/orca/inject/FbInjectorImpl;-><init>(Ljava/util/List;Z)V

    return-object v0
.end method


# virtual methods
.method public abstract a(Lcom/google/inject/Key;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Key",
            "<TT;>;)TT;"
        }
    .end annotation
.end method

.method public abstract a(Ljava/lang/Class;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation
.end method

.method public abstract a(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)TT;"
        }
    .end annotation
.end method

.method public abstract b(Lcom/google/inject/Key;)Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Key",
            "<TT;>;)",
            "Ljavax/inject/Provider",
            "<TT;>;"
        }
    .end annotation
.end method

.method public abstract b(Ljava/lang/Class;)Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljavax/inject/Provider",
            "<TT;>;"
        }
    .end annotation
.end method

.method public abstract b(Ljava/lang/Class;Ljava/lang/Class;)Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Ljavax/inject/Provider",
            "<TT;>;"
        }
    .end annotation
.end method
