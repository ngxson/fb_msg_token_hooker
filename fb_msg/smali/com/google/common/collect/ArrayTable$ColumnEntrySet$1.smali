.class Lcom/google/common/collect/ArrayTable$ColumnEntrySet$1;
.super Lcom/google/common/collect/AbstractIndexedListIterator;
.source "ArrayTable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractIndexedListIterator",
        "<",
        "Ljava/util/Map$Entry",
        "<TR;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/ArrayTable$ColumnEntrySet;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ArrayTable$ColumnEntrySet;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 576
    iput-object p1, p0, Lcom/google/common/collect/ArrayTable$ColumnEntrySet$1;->a:Lcom/google/common/collect/ArrayTable$ColumnEntrySet;

    invoke-direct {p0, p2}, Lcom/google/common/collect/AbstractIndexedListIterator;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected synthetic a(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 576
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ArrayTable$ColumnEntrySet$1;->b(I)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method protected b(I)Ljava/util/Map$Entry;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map$Entry",
            "<TR;TV;>;"
        }
    .end annotation

    .prologue
    .line 578
    new-instance v0, Lcom/google/common/collect/ArrayTable$ColumnEntrySet$1$1;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/ArrayTable$ColumnEntrySet$1$1;-><init>(Lcom/google/common/collect/ArrayTable$ColumnEntrySet$1;I)V

    return-object v0
.end method
