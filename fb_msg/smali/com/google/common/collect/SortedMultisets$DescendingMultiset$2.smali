.class Lcom/google/common/collect/SortedMultisets$DescendingMultiset$2;
.super Lcom/google/common/collect/Multisets$EntrySet;
.source "SortedMultisets.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Multisets$EntrySet",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/SortedMultisets$DescendingMultiset;


# direct methods
.method constructor <init>(Lcom/google/common/collect/SortedMultisets$DescendingMultiset;)V
    .locals 0
    .parameter

    .prologue
    .line 165
    iput-object p1, p0, Lcom/google/common/collect/SortedMultisets$DescendingMultiset$2;->a:Lcom/google/common/collect/SortedMultisets$DescendingMultiset;

    invoke-direct {p0}, Lcom/google/common/collect/Multisets$EntrySet;-><init>()V

    return-void
.end method


# virtual methods
.method a()Lcom/google/common/collect/Multiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 167
    iget-object v0, p0, Lcom/google/common/collect/SortedMultisets$DescendingMultiset$2;->a:Lcom/google/common/collect/SortedMultisets$DescendingMultiset;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 171
    iget-object v0, p0, Lcom/google/common/collect/SortedMultisets$DescendingMultiset$2;->a:Lcom/google/common/collect/SortedMultisets$DescendingMultiset;

    invoke-virtual {v0}, Lcom/google/common/collect/SortedMultisets$DescendingMultiset;->e()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/google/common/collect/SortedMultisets$DescendingMultiset$2;->a:Lcom/google/common/collect/SortedMultisets$DescendingMultiset;

    invoke-virtual {v0}, Lcom/google/common/collect/SortedMultisets$DescendingMultiset;->d()Lcom/google/common/collect/SortedMultiset;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/SortedMultiset;->d_()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method
