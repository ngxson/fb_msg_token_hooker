.class Lcom/google/common/collect/TreeBasedTable$MergingIterator;
.super Lcom/google/common/collect/AbstractIterator;
.source "TreeBasedTable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/AbstractIterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/common/collect/PeekingIterator",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-TT;>;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;Ljava/util/Comparator;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Ljava/util/Iterator",
            "<TT;>;>;",
            "Ljava/util/Comparator",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 372
    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    .line 368
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/TreeBasedTable$MergingIterator;->c:Ljava/lang/Object;

    .line 375
    iput-object p2, p0, Lcom/google/common/collect/TreeBasedTable$MergingIterator;->b:Ljava/util/Comparator;

    .line 379
    new-instance v0, Lcom/google/common/collect/TreeBasedTable$MergingIterator$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/TreeBasedTable$MergingIterator$1;-><init>(Lcom/google/common/collect/TreeBasedTable$MergingIterator;)V

    .line 389
    new-instance v1, Ljava/util/PriorityQueue;

    const/4 v2, 0x1

    invoke-static {p1}, Lcom/google/common/collect/Iterables;->a(Ljava/lang/Iterable;)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-direct {v1, v2, v0}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v1, p0, Lcom/google/common/collect/TreeBasedTable$MergingIterator;->a:Ljava/util/Queue;

    .line 391
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    .line 392
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 393
    iget-object v2, p0, Lcom/google/common/collect/TreeBasedTable$MergingIterator;->a:Ljava/util/Queue;

    invoke-static {v0}, Lcom/google/common/collect/Iterators;->h(Ljava/util/Iterator;)Lcom/google/common/collect/PeekingIterator;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 396
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/google/common/collect/TreeBasedTable$MergingIterator;)Ljava/util/Comparator;
    .locals 1
    .parameter

    .prologue
    .line 363
    iget-object v0, p0, Lcom/google/common/collect/TreeBasedTable$MergingIterator;->b:Ljava/util/Comparator;

    return-object v0
.end method


# virtual methods
.method protected a()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 399
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/TreeBasedTable$MergingIterator;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 400
    iget-object v0, p0, Lcom/google/common/collect/TreeBasedTable$MergingIterator;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/PeekingIterator;

    .line 402
    invoke-interface {v0}, Lcom/google/common/collect/PeekingIterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 403
    iget-object v1, p0, Lcom/google/common/collect/TreeBasedTable$MergingIterator;->c:Ljava/lang/Object;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/common/collect/TreeBasedTable$MergingIterator;->b:Ljava/util/Comparator;

    iget-object v3, p0, Lcom/google/common/collect/TreeBasedTable$MergingIterator;->c:Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    .line 407
    :goto_0
    invoke-interface {v0}, Lcom/google/common/collect/PeekingIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 408
    iget-object v3, p0, Lcom/google/common/collect/TreeBasedTable$MergingIterator;->a:Ljava/util/Queue;

    invoke-interface {v3, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 411
    :cond_1
    if-nez v1, :cond_0

    .line 412
    iput-object v2, p0, Lcom/google/common/collect/TreeBasedTable$MergingIterator;->c:Ljava/lang/Object;

    .line 413
    iget-object v0, p0, Lcom/google/common/collect/TreeBasedTable$MergingIterator;->c:Ljava/lang/Object;

    .line 418
    :goto_1
    return-object v0

    .line 403
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 417
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/TreeBasedTable$MergingIterator;->c:Ljava/lang/Object;

    .line 418
    invoke-virtual {p0}, Lcom/google/common/collect/TreeBasedTable$MergingIterator;->b()Ljava/lang/Object;

    move-result-object v0

    goto :goto_1
.end method
