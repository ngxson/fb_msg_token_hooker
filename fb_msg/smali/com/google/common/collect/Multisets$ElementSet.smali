.class abstract Lcom/google/common/collect/Multisets$ElementSet;
.super Ljava/util/AbstractSet;
.source "Multisets.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet",
        "<TE;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 697
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method abstract a()Lcom/google/common/collect/Multiset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multiset",
            "<TE;>;"
        }
    .end annotation
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 701
    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$ElementSet;->a()Lcom/google/common/collect/Multiset;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/Multiset;->clear()V

    .line 702
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 705
    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$ElementSet;->a()Lcom/google/common/collect/Multiset;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/Multiset;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 709
    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$ElementSet;->a()Lcom/google/common/collect/Multiset;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/Multiset;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 713
    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$ElementSet;->a()Lcom/google/common/collect/Multiset;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/Multiset;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 717
    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$ElementSet;->a()Lcom/google/common/collect/Multiset;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/Multiset;->d_()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Lcom/google/common/collect/Multisets$ElementSet$1;

    invoke-direct {v1, p0}, Lcom/google/common/collect/Multisets$ElementSet$1;-><init>(Lcom/google/common/collect/Multisets$ElementSet;)V

    invoke-static {v0, v1}, Lcom/google/common/collect/Iterators;->a(Ljava/util/Iterator;Lcom/google/common/base/Function;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 727
    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$ElementSet;->a()Lcom/google/common/collect/Multiset;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/Multiset;->a(Ljava/lang/Object;)I

    move-result v0

    .line 728
    if-lez v0, :cond_0

    .line 729
    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$ElementSet;->a()Lcom/google/common/collect/Multiset;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lcom/google/common/collect/Multiset;->b(Ljava/lang/Object;I)I

    .line 730
    const/4 v0, 0x1

    .line 732
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 736
    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$ElementSet;->a()Lcom/google/common/collect/Multiset;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/Multiset;->d_()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method
