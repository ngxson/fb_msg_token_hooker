.class Lcom/google/common/collect/ArrayTable$ColumnMapEntrySet$1;
.super Lcom/google/common/collect/AbstractIndexedListIterator;
.source "ArrayTable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractIndexedListIterator",
        "<",
        "Ljava/util/Map$Entry",
        "<TC;",
        "Ljava/util/Map",
        "<TR;TV;>;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/ArrayTable$ColumnMapEntrySet;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ArrayTable$ColumnMapEntrySet;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 645
    iput-object p1, p0, Lcom/google/common/collect/ArrayTable$ColumnMapEntrySet$1;->a:Lcom/google/common/collect/ArrayTable$ColumnMapEntrySet;

    invoke-direct {p0, p2}, Lcom/google/common/collect/AbstractIndexedListIterator;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected synthetic a(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 645
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ArrayTable$ColumnMapEntrySet$1;->b(I)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method protected b(I)Ljava/util/Map$Entry;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map$Entry",
            "<TC;",
            "Ljava/util/Map",
            "<TR;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 647
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable$ColumnMapEntrySet$1;->a:Lcom/google/common/collect/ArrayTable$ColumnMapEntrySet;

    iget-object v0, v0, Lcom/google/common/collect/ArrayTable$ColumnMapEntrySet;->a:Lcom/google/common/collect/ArrayTable;

    invoke-static {v0}, Lcom/google/common/collect/ArrayTable;->a(Lcom/google/common/collect/ArrayTable;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Lcom/google/common/collect/ArrayTable$Column;

    iget-object v2, p0, Lcom/google/common/collect/ArrayTable$ColumnMapEntrySet$1;->a:Lcom/google/common/collect/ArrayTable$ColumnMapEntrySet;

    iget-object v2, v2, Lcom/google/common/collect/ArrayTable$ColumnMapEntrySet;->a:Lcom/google/common/collect/ArrayTable;

    invoke-direct {v1, v2, p1}, Lcom/google/common/collect/ArrayTable$Column;-><init>(Lcom/google/common/collect/ArrayTable;I)V

    invoke-static {v0, v1}, Lcom/google/common/collect/Maps;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method
