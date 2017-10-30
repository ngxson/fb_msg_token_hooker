.class final Lcom/google/common/collect/Iterables$12;
.super Ljava/lang/Object;
.source "Iterables.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Iterable;


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 960
    new-instance v1, Lcom/google/common/collect/Iterables$ConsumingQueueIterator;

    iget-object v0, p0, Lcom/google/common/collect/Iterables$12;->a:Ljava/lang/Iterable;

    check-cast v0, Ljava/util/Queue;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/google/common/collect/Iterables$ConsumingQueueIterator;-><init>(Ljava/util/Queue;Lcom/google/common/collect/Iterables$1;)V

    return-object v1
.end method
