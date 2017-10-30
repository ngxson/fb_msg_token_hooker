.class Lcom/google/common/collect/SortedTreeMultiset$2;
.super Ljava/lang/Object;
.source "SortedTreeMultiset.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lcom/google/common/collect/Multiset$Entry",
        "<TE;>;>;"
    }
.end annotation


# instance fields
.field a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field final synthetic b:Ljava/util/Iterator;

.field final synthetic c:Lcom/google/common/collect/SortedTreeMultiset;


# direct methods
.method constructor <init>(Lcom/google/common/collect/SortedTreeMultiset;Ljava/util/Iterator;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 215
    iput-object p1, p0, Lcom/google/common/collect/SortedTreeMultiset$2;->c:Lcom/google/common/collect/SortedTreeMultiset;

    iput-object p2, p0, Lcom/google/common/collect/SortedTreeMultiset$2;->b:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 216
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/SortedTreeMultiset$2;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/common/collect/Multiset$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 225
    iget-object v0, p0, Lcom/google/common/collect/SortedTreeMultiset$2;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/BstInOrderPath;

    .line 226
    invoke-virtual {v0}, Lcom/google/common/collect/BstInOrderPath;->b()Lcom/google/common/collect/BstNode;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/SortedTreeMultiset$Node;

    invoke-virtual {v1}, Lcom/google/common/collect/SortedTreeMultiset$Node;->a()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/SortedTreeMultiset$2;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/common/collect/BstInOrderPath;->b()Lcom/google/common/collect/BstNode;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/SortedTreeMultiset$Node;

    invoke-static {v0}, Lcom/google/common/collect/SortedTreeMultiset$Node;->a(Lcom/google/common/collect/SortedTreeMultiset$Node;)I

    move-result v0

    invoke-static {v1, v0}, Lcom/google/common/collect/Multisets;->a(Ljava/lang/Object;I)Lcom/google/common/collect/Multiset$Entry;

    move-result-object v0

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/google/common/collect/SortedTreeMultiset$2;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 215
    invoke-virtual {p0}, Lcom/google/common/collect/SortedTreeMultiset$2;->a()Lcom/google/common/collect/Multiset$Entry;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 232
    iget-object v0, p0, Lcom/google/common/collect/SortedTreeMultiset$2;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 233
    iget-object v0, p0, Lcom/google/common/collect/SortedTreeMultiset$2;->c:Lcom/google/common/collect/SortedTreeMultiset;

    iget-object v2, p0, Lcom/google/common/collect/SortedTreeMultiset$2;->a:Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Lcom/google/common/collect/SortedTreeMultiset;->c(Ljava/lang/Object;I)I

    .line 234
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/SortedTreeMultiset$2;->a:Ljava/lang/Object;

    .line 235
    return-void

    :cond_0
    move v0, v1

    .line 232
    goto :goto_0
.end method
