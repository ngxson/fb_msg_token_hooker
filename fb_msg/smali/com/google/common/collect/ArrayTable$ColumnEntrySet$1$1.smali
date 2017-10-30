.class Lcom/google/common/collect/ArrayTable$ColumnEntrySet$1$1;
.super Lcom/google/common/collect/AbstractMapEntry;
.source "ArrayTable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractMapEntry",
        "<TR;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/google/common/collect/ArrayTable$ColumnEntrySet$1;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ArrayTable$ColumnEntrySet$1;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 578
    iput-object p1, p0, Lcom/google/common/collect/ArrayTable$ColumnEntrySet$1$1;->b:Lcom/google/common/collect/ArrayTable$ColumnEntrySet$1;

    iput p2, p0, Lcom/google/common/collect/ArrayTable$ColumnEntrySet$1$1;->a:I

    invoke-direct {p0}, Lcom/google/common/collect/AbstractMapEntry;-><init>()V

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .prologue
    .line 580
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable$ColumnEntrySet$1$1;->b:Lcom/google/common/collect/ArrayTable$ColumnEntrySet$1;

    iget-object v0, v0, Lcom/google/common/collect/ArrayTable$ColumnEntrySet$1;->a:Lcom/google/common/collect/ArrayTable$ColumnEntrySet;

    iget-object v0, v0, Lcom/google/common/collect/ArrayTable$ColumnEntrySet;->b:Lcom/google/common/collect/ArrayTable;

    invoke-static {v0}, Lcom/google/common/collect/ArrayTable;->b(Lcom/google/common/collect/ArrayTable;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iget v1, p0, Lcom/google/common/collect/ArrayTable$ColumnEntrySet$1$1;->a:I

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 583
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable$ColumnEntrySet$1$1;->b:Lcom/google/common/collect/ArrayTable$ColumnEntrySet$1;

    iget-object v0, v0, Lcom/google/common/collect/ArrayTable$ColumnEntrySet$1;->a:Lcom/google/common/collect/ArrayTable$ColumnEntrySet;

    iget-object v0, v0, Lcom/google/common/collect/ArrayTable$ColumnEntrySet;->b:Lcom/google/common/collect/ArrayTable;

    invoke-static {v0}, Lcom/google/common/collect/ArrayTable;->c(Lcom/google/common/collect/ArrayTable;)[[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/google/common/collect/ArrayTable$ColumnEntrySet$1$1;->a:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/google/common/collect/ArrayTable$ColumnEntrySet$1$1;->b:Lcom/google/common/collect/ArrayTable$ColumnEntrySet$1;

    iget-object v1, v1, Lcom/google/common/collect/ArrayTable$ColumnEntrySet$1;->a:Lcom/google/common/collect/ArrayTable$ColumnEntrySet;

    iget v1, v1, Lcom/google/common/collect/ArrayTable$ColumnEntrySet;->a:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .prologue
    .line 586
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable$ColumnEntrySet$1$1;->b:Lcom/google/common/collect/ArrayTable$ColumnEntrySet$1;

    iget-object v0, v0, Lcom/google/common/collect/ArrayTable$ColumnEntrySet$1;->a:Lcom/google/common/collect/ArrayTable$ColumnEntrySet;

    iget-object v0, v0, Lcom/google/common/collect/ArrayTable$ColumnEntrySet;->b:Lcom/google/common/collect/ArrayTable;

    iget v1, p0, Lcom/google/common/collect/ArrayTable$ColumnEntrySet$1$1;->a:I

    iget-object v2, p0, Lcom/google/common/collect/ArrayTable$ColumnEntrySet$1$1;->b:Lcom/google/common/collect/ArrayTable$ColumnEntrySet$1;

    iget-object v2, v2, Lcom/google/common/collect/ArrayTable$ColumnEntrySet$1;->a:Lcom/google/common/collect/ArrayTable$ColumnEntrySet;

    iget v2, v2, Lcom/google/common/collect/ArrayTable$ColumnEntrySet;->a:I

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/common/collect/ArrayTable;->a(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
