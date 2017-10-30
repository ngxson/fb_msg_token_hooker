.class Lcom/google/common/collect/SortedTreeMultiset$5;
.super Lcom/google/common/collect/BstNodeFactory;
.source "SortedTreeMultiset.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/BstNodeFactory",
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
    .line 314
    iput-object p1, p0, Lcom/google/common/collect/SortedTreeMultiset$5;->a:Lcom/google/common/collect/SortedTreeMultiset;

    invoke-direct {p0}, Lcom/google/common/collect/BstNodeFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;)Lcom/google/common/collect/BstNode;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 314
    check-cast p1, Lcom/google/common/collect/SortedTreeMultiset$Node;

    check-cast p2, Lcom/google/common/collect/SortedTreeMultiset$Node;

    check-cast p3, Lcom/google/common/collect/SortedTreeMultiset$Node;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/SortedTreeMultiset$5;->a(Lcom/google/common/collect/SortedTreeMultiset$Node;Lcom/google/common/collect/SortedTreeMultiset$Node;Lcom/google/common/collect/SortedTreeMultiset$Node;)Lcom/google/common/collect/SortedTreeMultiset$Node;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/common/collect/SortedTreeMultiset$Node;Lcom/google/common/collect/SortedTreeMultiset$Node;Lcom/google/common/collect/SortedTreeMultiset$Node;)Lcom/google/common/collect/SortedTreeMultiset$Node;
    .locals 7
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/SortedTreeMultiset",
            "<TE;>.Node;",
            "Lcom/google/common/collect/SortedTreeMultiset",
            "<TE;>.Node;",
            "Lcom/google/common/collect/SortedTreeMultiset",
            "<TE;>.Node;)",
            "Lcom/google/common/collect/SortedTreeMultiset",
            "<TE;>.Node;"
        }
    .end annotation

    .prologue
    .line 317
    new-instance v0, Lcom/google/common/collect/SortedTreeMultiset$Node;

    iget-object v1, p0, Lcom/google/common/collect/SortedTreeMultiset$5;->a:Lcom/google/common/collect/SortedTreeMultiset;

    invoke-virtual {p1}, Lcom/google/common/collect/SortedTreeMultiset$Node;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1}, Lcom/google/common/collect/SortedTreeMultiset$Node;->a(Lcom/google/common/collect/SortedTreeMultiset$Node;)I

    move-result v3

    const/4 v6, 0x0

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/common/collect/SortedTreeMultiset$Node;-><init>(Lcom/google/common/collect/SortedTreeMultiset;Ljava/lang/Object;ILcom/google/common/collect/SortedTreeMultiset$Node;Lcom/google/common/collect/SortedTreeMultiset$Node;Lcom/google/common/collect/SortedTreeMultiset$1;)V

    return-object v0
.end method
