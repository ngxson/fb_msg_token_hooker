.class Lcom/google/common/collect/ArrayTable$CellSet$1;
.super Lcom/google/common/collect/AbstractIndexedListIterator;
.source "ArrayTable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractIndexedListIterator",
        "<",
        "Lcom/google/common/collect/Table$Cell",
        "<TR;TC;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/ArrayTable$CellSet;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ArrayTable$CellSet;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 474
    iput-object p1, p0, Lcom/google/common/collect/ArrayTable$CellSet$1;->a:Lcom/google/common/collect/ArrayTable$CellSet;

    invoke-direct {p0, p2}, Lcom/google/common/collect/AbstractIndexedListIterator;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected synthetic a(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 474
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ArrayTable$CellSet$1;->b(I)Lcom/google/common/collect/Table$Cell;

    move-result-object v0

    return-object v0
.end method

.method protected b(I)Lcom/google/common/collect/Table$Cell;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/Table$Cell",
            "<TR;TC;TV;>;"
        }
    .end annotation

    .prologue
    .line 476
    new-instance v0, Lcom/google/common/collect/ArrayTable$CellSet$1$1;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/ArrayTable$CellSet$1$1;-><init>(Lcom/google/common/collect/ArrayTable$CellSet$1;I)V

    return-object v0
.end method
