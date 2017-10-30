.class Lcom/google/common/collect/StandardRowSortedTable;
.super Lcom/google/common/collect/StandardTable;
.source "StandardRowSortedTable.java"

# interfaces
.implements Lcom/google/common/collect/RowSortedTable;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/StandardTable",
        "<TR;TC;TV;>;",
        "Lcom/google/common/collect/RowSortedTable",
        "<TR;TC;TV;>;"
    }
.end annotation


# instance fields
.field private transient c:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet",
            "<TR;>;"
        }
    .end annotation
.end field

.field private transient d:Lcom/google/common/collect/StandardRowSortedTable$RowSortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/StandardRowSortedTable",
            "<TR;TC;TV;>.RowSortedMap;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/SortedMap;Lcom/google/common/base/Supplier;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedMap",
            "<TR;",
            "Ljava/util/Map",
            "<TC;TV;>;>;",
            "Lcom/google/common/base/Supplier",
            "<+",
            "Ljava/util/Map",
            "<TC;TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/StandardTable;-><init>(Ljava/util/Map;Lcom/google/common/base/Supplier;)V

    .line 60
    return-void
.end method

.method static synthetic a(Lcom/google/common/collect/StandardRowSortedTable;)Ljava/util/SortedMap;
    .locals 1
    .parameter

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/google/common/collect/StandardRowSortedTable;->j()Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method private j()Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap",
            "<TR;",
            "Ljava/util/Map",
            "<TC;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/common/collect/StandardRowSortedTable;->a:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    return-object v0
.end method


# virtual methods
.method public synthetic c()Ljava/util/Set;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/google/common/collect/StandardRowSortedTable;->g()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public synthetic f()Ljava/util/Map;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/google/common/collect/StandardRowSortedTable;->h()Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/util/SortedSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/common/collect/StandardRowSortedTable;->c:Ljava/util/SortedSet;

    .line 76
    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/StandardRowSortedTable$RowKeySortedSet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/StandardRowSortedTable$RowKeySortedSet;-><init>(Lcom/google/common/collect/StandardRowSortedTable;Lcom/google/common/collect/StandardRowSortedTable$1;)V

    iput-object v0, p0, Lcom/google/common/collect/StandardRowSortedTable;->c:Ljava/util/SortedSet;

    :cond_0
    return-object v0
.end method

.method public h()Ljava/util/SortedMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap",
            "<TR;",
            "Ljava/util/Map",
            "<TC;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 128
    iget-object v0, p0, Lcom/google/common/collect/StandardRowSortedTable;->d:Lcom/google/common/collect/StandardRowSortedTable$RowSortedMap;

    .line 129
    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/StandardRowSortedTable$RowSortedMap;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/StandardRowSortedTable$RowSortedMap;-><init>(Lcom/google/common/collect/StandardRowSortedTable;Lcom/google/common/collect/StandardRowSortedTable$1;)V

    iput-object v0, p0, Lcom/google/common/collect/StandardRowSortedTable;->d:Lcom/google/common/collect/StandardRowSortedTable$RowSortedMap;

    :cond_0
    return-object v0
.end method
