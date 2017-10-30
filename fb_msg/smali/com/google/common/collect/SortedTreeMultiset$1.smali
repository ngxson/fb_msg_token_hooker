.class Lcom/google/common/collect/SortedTreeMultiset$1;
.super Lcom/google/common/collect/AbstractLinkedIterator;
.source "SortedTreeMultiset.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractLinkedIterator",
        "<",
        "Lcom/google/common/collect/BstInOrderPath",
        "<",
        "Lcom/google/common/collect/SortedTreeMultiset",
        "<TE;>.Node;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/BstSide;

.field final synthetic b:Lcom/google/common/collect/SortedTreeMultiset;


# direct methods
.method constructor <init>(Lcom/google/common/collect/SortedTreeMultiset;Lcom/google/common/collect/BstInOrderPath;Lcom/google/common/collect/BstSide;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 204
    iput-object p1, p0, Lcom/google/common/collect/SortedTreeMultiset$1;->b:Lcom/google/common/collect/SortedTreeMultiset;

    iput-object p3, p0, Lcom/google/common/collect/SortedTreeMultiset$1;->a:Lcom/google/common/collect/BstSide;

    invoke-direct {p0, p2}, Lcom/google/common/collect/AbstractLinkedIterator;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/google/common/collect/BstInOrderPath;)Lcom/google/common/collect/BstInOrderPath;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/BstInOrderPath",
            "<",
            "Lcom/google/common/collect/SortedTreeMultiset",
            "<TE;>.Node;>;)",
            "Lcom/google/common/collect/BstInOrderPath",
            "<",
            "Lcom/google/common/collect/SortedTreeMultiset",
            "<TE;>.Node;>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 207
    iget-object v0, p0, Lcom/google/common/collect/SortedTreeMultiset$1;->a:Lcom/google/common/collect/BstSide;

    invoke-virtual {p1, v0}, Lcom/google/common/collect/BstInOrderPath;->a(Lcom/google/common/collect/BstSide;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 212
    :goto_0
    return-object v2

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/SortedTreeMultiset$1;->a:Lcom/google/common/collect/BstSide;

    invoke-virtual {p1, v0}, Lcom/google/common/collect/BstInOrderPath;->b(Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/BstInOrderPath;

    move-result-object v1

    .line 212
    iget-object v0, p0, Lcom/google/common/collect/SortedTreeMultiset$1;->b:Lcom/google/common/collect/SortedTreeMultiset;

    invoke-static {v0}, Lcom/google/common/collect/SortedTreeMultiset;->a(Lcom/google/common/collect/SortedTreeMultiset;)Lcom/google/common/collect/GeneralRange;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/common/collect/BstInOrderPath;->b()Lcom/google/common/collect/BstNode;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/SortedTreeMultiset$Node;

    invoke-virtual {v0}, Lcom/google/common/collect/SortedTreeMultiset$Node;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/google/common/collect/GeneralRange;->c(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v1

    :goto_1
    move-object v2, v0

    goto :goto_0

    :cond_1
    move-object v0, v2

    goto :goto_1
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 204
    check-cast p1, Lcom/google/common/collect/BstInOrderPath;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/SortedTreeMultiset$1;->a(Lcom/google/common/collect/BstInOrderPath;)Lcom/google/common/collect/BstInOrderPath;

    move-result-object v0

    return-object v0
.end method
