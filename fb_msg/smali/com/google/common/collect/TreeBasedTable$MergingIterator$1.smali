.class Lcom/google/common/collect/TreeBasedTable$MergingIterator$1;
.super Ljava/lang/Object;
.source "TreeBasedTable.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/google/common/collect/PeekingIterator",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/TreeBasedTable$MergingIterator;


# direct methods
.method constructor <init>(Lcom/google/common/collect/TreeBasedTable$MergingIterator;)V
    .locals 0
    .parameter

    .prologue
    .line 380
    iput-object p1, p0, Lcom/google/common/collect/TreeBasedTable$MergingIterator$1;->a:Lcom/google/common/collect/TreeBasedTable$MergingIterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/common/collect/PeekingIterator;Lcom/google/common/collect/PeekingIterator;)I
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/PeekingIterator",
            "<TT;>;",
            "Lcom/google/common/collect/PeekingIterator",
            "<TT;>;)I"
        }
    .end annotation

    .prologue
    .line 383
    iget-object v0, p0, Lcom/google/common/collect/TreeBasedTable$MergingIterator$1;->a:Lcom/google/common/collect/TreeBasedTable$MergingIterator;

    invoke-static {v0}, Lcom/google/common/collect/TreeBasedTable$MergingIterator;->a(Lcom/google/common/collect/TreeBasedTable$MergingIterator;)Ljava/util/Comparator;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/common/collect/PeekingIterator;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2}, Lcom/google/common/collect/PeekingIterator;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 380
    check-cast p1, Lcom/google/common/collect/PeekingIterator;

    check-cast p2, Lcom/google/common/collect/PeekingIterator;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/TreeBasedTable$MergingIterator$1;->a(Lcom/google/common/collect/PeekingIterator;Lcom/google/common/collect/PeekingIterator;)I

    move-result v0

    return v0
.end method
