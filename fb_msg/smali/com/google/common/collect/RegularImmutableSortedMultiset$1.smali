.class Lcom/google/common/collect/RegularImmutableSortedMultiset$1;
.super Lcom/google/common/collect/TransformedImmutableList;
.source "RegularImmutableSortedMultiset.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/TransformedImmutableList",
        "<",
        "Lcom/google/common/collect/RegularImmutableSortedMultiset$CumulativeCountEntry",
        "<TE;>;TE;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/RegularImmutableSortedMultiset;


# direct methods
.method constructor <init>(Lcom/google/common/collect/RegularImmutableSortedMultiset;Lcom/google/common/collect/ImmutableList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset$1;->a:Lcom/google/common/collect/RegularImmutableSortedMultiset;

    invoke-direct {p0, p2}, Lcom/google/common/collect/TransformedImmutableList;-><init>(Lcom/google/common/collect/ImmutableList;)V

    return-void
.end method


# virtual methods
.method a(Lcom/google/common/collect/RegularImmutableSortedMultiset$CumulativeCountEntry;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/RegularImmutableSortedMultiset$CumulativeCountEntry",
            "<TE;>;)TE;"
        }
    .end annotation

    .prologue
    .line 82
    invoke-virtual {p1}, Lcom/google/common/collect/RegularImmutableSortedMultiset$CumulativeCountEntry;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method synthetic b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 79
    check-cast p1, Lcom/google/common/collect/RegularImmutableSortedMultiset$CumulativeCountEntry;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/RegularImmutableSortedMultiset$1;->a(Lcom/google/common/collect/RegularImmutableSortedMultiset$CumulativeCountEntry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
