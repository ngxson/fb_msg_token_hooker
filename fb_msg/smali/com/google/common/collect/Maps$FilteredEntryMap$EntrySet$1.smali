.class Lcom/google/common/collect/Maps$FilteredEntryMap$EntrySet$1;
.super Lcom/google/common/collect/UnmodifiableIterator;
.source "Maps.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/UnmodifiableIterator",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Iterator;

.field final synthetic b:Lcom/google/common/collect/Maps$FilteredEntryMap$EntrySet;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Maps$FilteredEntryMap$EntrySet;Ljava/util/Iterator;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1352
    iput-object p1, p0, Lcom/google/common/collect/Maps$FilteredEntryMap$EntrySet$1;->b:Lcom/google/common/collect/Maps$FilteredEntryMap$EntrySet;

    iput-object p2, p0, Lcom/google/common/collect/Maps$FilteredEntryMap$EntrySet$1;->a:Ljava/util/Iterator;

    invoke-direct {p0}, Lcom/google/common/collect/UnmodifiableIterator;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1360
    iget-object v0, p0, Lcom/google/common/collect/Maps$FilteredEntryMap$EntrySet$1;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1361
    new-instance v1, Lcom/google/common/collect/Maps$FilteredEntryMap$EntrySet$1$1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/Maps$FilteredEntryMap$EntrySet$1$1;-><init>(Lcom/google/common/collect/Maps$FilteredEntryMap$EntrySet$1;Ljava/util/Map$Entry;)V

    return-object v1
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 1355
    iget-object v0, p0, Lcom/google/common/collect/Maps$FilteredEntryMap$EntrySet$1;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1352
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$FilteredEntryMap$EntrySet$1;->a()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method
