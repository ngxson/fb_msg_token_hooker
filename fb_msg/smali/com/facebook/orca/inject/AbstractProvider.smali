.class public abstract Lcom/facebook/orca/inject/AbstractProvider;
.super Ljava/lang/Object;
.source "AbstractProvider.java"

# interfaces
.implements Lcom/facebook/orca/inject/ProviderWithInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/facebook/orca/inject/ProviderWithInjector",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private a:Lcom/facebook/orca/inject/FbInjector;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/google/inject/Key;)Ljavax/inject/Provider;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Key",
            "<TS;>;)",
            "Ljavax/inject/Provider",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Lcom/facebook/orca/inject/AbstractProvider;->a:Lcom/facebook/orca/inject/FbInjector;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/inject/FbInjector;->b(Lcom/google/inject/Key;)Ljavax/inject/Provider;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/Class;)Ljavax/inject/Provider;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TS;>;)",
            "Ljavax/inject/Provider",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 28
    iget-object v0, p0, Lcom/facebook/orca/inject/AbstractProvider;->a:Lcom/facebook/orca/inject/FbInjector;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/inject/FbInjector;->b(Ljava/lang/Class;)Ljavax/inject/Provider;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/Class;Ljava/lang/Class;)Ljavax/inject/Provider;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TS;>;",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Ljavax/inject/Provider",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 32
    iget-object v0, p0, Lcom/facebook/orca/inject/AbstractProvider;->a:Lcom/facebook/orca/inject/FbInjector;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/orca/inject/FbInjector;->b(Ljava/lang/Class;Ljava/lang/Class;)Ljavax/inject/Provider;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/facebook/orca/inject/FbInjector;)V
    .locals 0
    .parameter

    .prologue
    .line 20
    iput-object p1, p0, Lcom/facebook/orca/inject/AbstractProvider;->a:Lcom/facebook/orca/inject/FbInjector;

    .line 21
    return-void
.end method

.method protected b(Lcom/google/inject/Key;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Key",
            "<TS;>;)TS;"
        }
    .end annotation

    .prologue
    .line 48
    iget-object v0, p0, Lcom/facebook/orca/inject/AbstractProvider;->a:Lcom/facebook/orca/inject/FbInjector;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/inject/FbInjector;->a(Lcom/google/inject/Key;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected b(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TS;>;)TS;"
        }
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Lcom/facebook/orca/inject/AbstractProvider;->a:Lcom/facebook/orca/inject/FbInjector;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected b(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TS;>;",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)TS;"
        }
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Lcom/facebook/orca/inject/AbstractProvider;->a:Lcom/facebook/orca/inject/FbInjector;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected c()Lcom/facebook/orca/inject/FbInjector;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/facebook/orca/inject/AbstractProvider;->a:Lcom/facebook/orca/inject/FbInjector;

    return-object v0
.end method
