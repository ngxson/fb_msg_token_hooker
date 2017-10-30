.class Lcom/google/common/collect/SortedTreeMultiset$3;
.super Ljava/lang/Object;
.source "SortedTreeMultiset.java"

# interfaces
.implements Lcom/google/common/collect/BstAggregate;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/BstAggregate",
        "<",
        "Lcom/google/common/collect/SortedTreeMultiset",
        "<TE;>.Node;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/SortedTreeMultiset;


# direct methods
.method constructor <init>(Lcom/google/common/collect/SortedTreeMultiset;)V
    .locals 0
    .parameter

    .prologue
    .line 290
    iput-object p1, p0, Lcom/google/common/collect/SortedTreeMultiset$3;->a:Lcom/google/common/collect/SortedTreeMultiset;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Lcom/google/common/collect/BstNode;)I
    .locals 1
    .parameter

    .prologue
    .line 290
    check-cast p1, Lcom/google/common/collect/SortedTreeMultiset$Node;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/SortedTreeMultiset$3;->b(Lcom/google/common/collect/SortedTreeMultiset$Node;)I

    move-result v0

    return v0
.end method

.method public a(Lcom/google/common/collect/SortedTreeMultiset$Node;)I
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/SortedTreeMultiset",
            "<TE;>.Node;)I"
        }
    .end annotation

    .prologue
    .line 293
    const/4 v0, 0x1

    return v0
.end method

.method public synthetic b(Lcom/google/common/collect/BstNode;)I
    .locals 1
    .parameter

    .prologue
    .line 290
    check-cast p1, Lcom/google/common/collect/SortedTreeMultiset$Node;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/SortedTreeMultiset$3;->a(Lcom/google/common/collect/SortedTreeMultiset$Node;)I

    move-result v0

    return v0
.end method

.method public b(Lcom/google/common/collect/SortedTreeMultiset$Node;)I
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/SortedTreeMultiset",
            "<TE;>.Node;)I"
        }
    .end annotation

    .prologue
    .line 298
    iget-object v0, p0, Lcom/google/common/collect/SortedTreeMultiset$3;->a:Lcom/google/common/collect/SortedTreeMultiset;

    invoke-static {v0, p1}, Lcom/google/common/collect/SortedTreeMultiset;->b(Lcom/google/common/collect/SortedTreeMultiset;Lcom/google/common/collect/SortedTreeMultiset$Node;)I

    move-result v0

    return v0
.end method
