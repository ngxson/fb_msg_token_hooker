.class Lcom/google/common/collect/SortedMultisets$DescendingMultiset$1;
.super Lcom/google/common/collect/SortedMultisets$ElementSet;
.source "SortedMultisets.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/SortedMultisets$ElementSet",
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
    .line 104
    iput-object p1, p0, Lcom/google/common/collect/SortedMultisets$DescendingMultiset$1;->a:Lcom/google/common/collect/SortedMultisets$DescendingMultiset;

    invoke-direct {p0}, Lcom/google/common/collect/SortedMultisets$ElementSet;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic a()Lcom/google/common/collect/Multiset;
    .locals 1

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/google/common/collect/SortedMultisets$DescendingMultiset$1;->b()Lcom/google/common/collect/SortedMultiset;

    move-result-object v0

    return-object v0
.end method

.method b()Lcom/google/common/collect/SortedMultiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/SortedMultiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/common/collect/SortedMultisets$DescendingMultiset$1;->a:Lcom/google/common/collect/SortedMultisets$DescendingMultiset;

    return-object v0
.end method
