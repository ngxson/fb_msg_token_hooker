.class abstract Lcom/google/common/collect/SortedTreeMultiset$MultisetModifier;
.super Ljava/lang/Object;
.source "SortedTreeMultiset.java"

# interfaces
.implements Lcom/google/common/collect/BstModifier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/BstModifier",
        "<TE;",
        "Lcom/google/common/collect/SortedTreeMultiset",
        "<TE;>.Node;>;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/google/common/collect/SortedTreeMultiset;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/SortedTreeMultiset;)V
    .locals 0
    .parameter

    .prologue
    .line 321
    iput-object p1, p0, Lcom/google/common/collect/SortedTreeMultiset$MultisetModifier;->b:Lcom/google/common/collect/SortedTreeMultiset;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/SortedTreeMultiset;Lcom/google/common/collect/SortedTreeMultiset$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 321
    invoke-direct {p0, p1}, Lcom/google/common/collect/SortedTreeMultiset$MultisetModifier;-><init>(Lcom/google/common/collect/SortedTreeMultiset;)V

    return-void
.end method


# virtual methods
.method abstract a(I)I
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/google/common/collect/BstNode;)Lcom/google/common/collect/BstModificationResult;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 321
    check-cast p2, Lcom/google/common/collect/SortedTreeMultiset$Node;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/SortedTreeMultiset$MultisetModifier;->a(Ljava/lang/Object;Lcom/google/common/collect/SortedTreeMultiset$Node;)Lcom/google/common/collect/BstModificationResult;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Object;Lcom/google/common/collect/SortedTreeMultiset$Node;)Lcom/google/common/collect/BstModificationResult;
    .locals 4
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lcom/google/common/collect/SortedTreeMultiset",
            "<TE;>.Node;)",
            "Lcom/google/common/collect/BstModificationResult",
            "<",
            "Lcom/google/common/collect/SortedTreeMultiset",
            "<TE;>.Node;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 327
    if-nez p2, :cond_0

    const/4 v0, 0x0

    .line 328
    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/common/collect/SortedTreeMultiset$MultisetModifier;->a(I)I

    move-result v1

    .line 329
    if-ne v0, v1, :cond_1

    .line 330
    invoke-static {p2}, Lcom/google/common/collect/BstModificationResult;->a(Lcom/google/common/collect/BstNode;)Lcom/google/common/collect/BstModificationResult;

    move-result-object v0

    .line 336
    :goto_1
    return-object v0

    .line 327
    :cond_0
    invoke-static {p2}, Lcom/google/common/collect/SortedTreeMultiset$Node;->a(Lcom/google/common/collect/SortedTreeMultiset$Node;)I

    move-result v0

    goto :goto_0

    .line 331
    :cond_1
    if-nez v1, :cond_2

    .line 332
    invoke-static {p2, v3}, Lcom/google/common/collect/BstModificationResult;->b(Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;)Lcom/google/common/collect/BstModificationResult;

    move-result-object v0

    goto :goto_1

    .line 333
    :cond_2
    if-nez v0, :cond_3

    .line 334
    new-instance v0, Lcom/google/common/collect/SortedTreeMultiset$Node;

    iget-object v2, p0, Lcom/google/common/collect/SortedTreeMultiset$MultisetModifier;->b:Lcom/google/common/collect/SortedTreeMultiset;

    invoke-direct {v0, v2, p1, v1, v3}, Lcom/google/common/collect/SortedTreeMultiset$Node;-><init>(Lcom/google/common/collect/SortedTreeMultiset;Ljava/lang/Object;ILcom/google/common/collect/SortedTreeMultiset$1;)V

    invoke-static {v3, v0}, Lcom/google/common/collect/BstModificationResult;->b(Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;)Lcom/google/common/collect/BstModificationResult;

    move-result-object v0

    goto :goto_1

    .line 336
    :cond_3
    new-instance v0, Lcom/google/common/collect/SortedTreeMultiset$Node;

    iget-object v2, p0, Lcom/google/common/collect/SortedTreeMultiset$MultisetModifier;->b:Lcom/google/common/collect/SortedTreeMultiset;

    invoke-direct {v0, v2, p1, v1, v3}, Lcom/google/common/collect/SortedTreeMultiset$Node;-><init>(Lcom/google/common/collect/SortedTreeMultiset;Ljava/lang/Object;ILcom/google/common/collect/SortedTreeMultiset$1;)V

    invoke-static {p2, v0}, Lcom/google/common/collect/BstModificationResult;->a(Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;)Lcom/google/common/collect/BstModificationResult;

    move-result-object v0

    goto :goto_1
.end method
