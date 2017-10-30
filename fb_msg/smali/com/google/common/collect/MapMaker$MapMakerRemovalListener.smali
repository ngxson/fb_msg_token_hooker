.class final Lcom/google/common/collect/MapMaker$MapMakerRemovalListener;
.super Ljava/lang/Object;
.source "MapMaker.java"

# interfaces
.implements Lcom/google/common/collect/MapMaker$RemovalListener;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/MapMaker$RemovalListener",
        "<TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/common/collect/MapEvictionListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/MapEvictionListener",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# virtual methods
.method public onRemoval(Lcom/google/common/collect/MapMaker$RemovalNotification;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMaker$RemovalNotification",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 588
    invoke-virtual {p1}, Lcom/google/common/collect/MapMaker$RemovalNotification;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 589
    iget-object v0, p0, Lcom/google/common/collect/MapMaker$MapMakerRemovalListener;->a:Lcom/google/common/collect/MapEvictionListener;

    invoke-virtual {p1}, Lcom/google/common/collect/MapMaker$RemovalNotification;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/common/collect/MapMaker$RemovalNotification;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/common/collect/MapEvictionListener;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 591
    :cond_0
    return-void
.end method
