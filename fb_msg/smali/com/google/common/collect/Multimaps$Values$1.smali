.class Lcom/google/common/collect/Multimaps$Values$1;
.super Ljava/lang/Object;
.source "Multimaps.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Iterator;

.field final synthetic b:Lcom/google/common/collect/Multimaps$Values;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Multimaps$Values;Ljava/util/Iterator;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2012
    iput-object p1, p0, Lcom/google/common/collect/Multimaps$Values$1;->b:Lcom/google/common/collect/Multimaps$Values;

    iput-object p2, p0, Lcom/google/common/collect/Multimaps$Values$1;->a:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 2014
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$Values$1;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 2018
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$Values$1;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 2022
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$Values$1;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 2023
    return-void
.end method
