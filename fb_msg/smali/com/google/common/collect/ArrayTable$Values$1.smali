.class Lcom/google/common/collect/ArrayTable$Values$1;
.super Lcom/google/common/collect/AbstractIndexedListIterator;
.source "ArrayTable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractIndexedListIterator",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/ArrayTable$Values;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ArrayTable$Values;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 823
    iput-object p1, p0, Lcom/google/common/collect/ArrayTable$Values$1;->a:Lcom/google/common/collect/ArrayTable$Values;

    invoke-direct {p0, p2}, Lcom/google/common/collect/AbstractIndexedListIterator;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected a(I)Ljava/lang/Object;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .prologue
    .line 825
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable$Values$1;->a:Lcom/google/common/collect/ArrayTable$Values;

    iget-object v0, v0, Lcom/google/common/collect/ArrayTable$Values;->a:Lcom/google/common/collect/ArrayTable;

    invoke-static {v0}, Lcom/google/common/collect/ArrayTable;->a(Lcom/google/common/collect/ArrayTable;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    div-int v0, p1, v0

    .line 826
    iget-object v1, p0, Lcom/google/common/collect/ArrayTable$Values$1;->a:Lcom/google/common/collect/ArrayTable$Values;

    iget-object v1, v1, Lcom/google/common/collect/ArrayTable$Values;->a:Lcom/google/common/collect/ArrayTable;

    invoke-static {v1}, Lcom/google/common/collect/ArrayTable;->a(Lcom/google/common/collect/ArrayTable;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    rem-int v1, p1, v1

    .line 827
    iget-object v2, p0, Lcom/google/common/collect/ArrayTable$Values$1;->a:Lcom/google/common/collect/ArrayTable$Values;

    iget-object v2, v2, Lcom/google/common/collect/ArrayTable$Values;->a:Lcom/google/common/collect/ArrayTable;

    invoke-static {v2}, Lcom/google/common/collect/ArrayTable;->c(Lcom/google/common/collect/ArrayTable;)[[Ljava/lang/Object;

    move-result-object v2

    aget-object v0, v2, v0

    aget-object v0, v0, v1

    return-object v0
.end method
