.class Lcom/google/common/collect/StandardTable$Row$RowEntrySet$1;
.super Ljava/lang/Object;
.source "StandardTable.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/util/Map$Entry",
        "<TC;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Iterator;

.field final synthetic b:Lcom/google/common/collect/StandardTable$Row$RowEntrySet;


# direct methods
.method constructor <init>(Lcom/google/common/collect/StandardTable$Row$RowEntrySet;Ljava/util/Iterator;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 462
    iput-object p1, p0, Lcom/google/common/collect/StandardTable$Row$RowEntrySet$1;->b:Lcom/google/common/collect/StandardTable$Row$RowEntrySet;

    iput-object p2, p0, Lcom/google/common/collect/StandardTable$Row$RowEntrySet$1;->a:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TC;TV;>;"
        }
    .end annotation

    .prologue
    .line 467
    iget-object v0, p0, Lcom/google/common/collect/StandardTable$Row$RowEntrySet$1;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 468
    new-instance v1, Lcom/google/common/collect/StandardTable$Row$RowEntrySet$1$1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/StandardTable$Row$RowEntrySet$1$1;-><init>(Lcom/google/common/collect/StandardTable$Row$RowEntrySet$1;Ljava/util/Map$Entry;)V

    return-object v1
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 464
    iget-object v0, p0, Lcom/google/common/collect/StandardTable$Row$RowEntrySet$1;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 462
    invoke-virtual {p0}, Lcom/google/common/collect/StandardTable$Row$RowEntrySet$1;->a()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 485
    iget-object v0, p0, Lcom/google/common/collect/StandardTable$Row$RowEntrySet$1;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 486
    iget-object v0, p0, Lcom/google/common/collect/StandardTable$Row$RowEntrySet$1;->b:Lcom/google/common/collect/StandardTable$Row$RowEntrySet;

    iget-object v0, v0, Lcom/google/common/collect/StandardTable$Row$RowEntrySet;->a:Lcom/google/common/collect/StandardTable$Row;

    invoke-virtual {v0}, Lcom/google/common/collect/StandardTable$Row;->c()V

    .line 487
    return-void
.end method
