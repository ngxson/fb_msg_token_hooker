.class Lcom/google/common/collect/ImmutableMultiset$EntrySet;
.super Lcom/google/common/collect/ImmutableSet;
.source "ImmutableMultiset.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableSet",
        "<",
        "Lcom/google/common/collect/Multiset$Entry",
        "<TE;>;>;"
    }
.end annotation


# instance fields
.field final transient a:Lcom/google/common/collect/ImmutableMultiset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMultiset",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/collect/ImmutableMultiset;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableMultiset",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 363
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableSet;-><init>()V

    .line 364
    iput-object p1, p0, Lcom/google/common/collect/ImmutableMultiset$EntrySet;->a:Lcom/google/common/collect/ImmutableMultiset;

    .line 365
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 384
    instance-of v1, p1, Lcom/google/common/collect/Multiset$Entry;

    if-eqz v1, :cond_0

    .line 385
    check-cast p1, Lcom/google/common/collect/Multiset$Entry;

    .line 386
    invoke-interface {p1}, Lcom/google/common/collect/Multiset$Entry;->b()I

    move-result v1

    if-gtz v1, :cond_1

    .line 392
    :cond_0
    :goto_0
    return v0

    .line 389
    :cond_1
    iget-object v1, p0, Lcom/google/common/collect/ImmutableMultiset$EntrySet;->a:Lcom/google/common/collect/ImmutableMultiset;

    invoke-interface {p1}, Lcom/google/common/collect/Multiset$Entry;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/common/collect/ImmutableMultiset;->a(Ljava/lang/Object;)I

    move-result v1

    .line 390
    invoke-interface {p1}, Lcom/google/common/collect/Multiset$Entry;->b()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public g_()Lcom/google/common/collect/UnmodifiableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/UnmodifiableIterator",
            "<",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 369
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultiset$EntrySet;->a:Lcom/google/common/collect/ImmutableMultiset;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMultiset;->h()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultiset$EntrySet;->a:Lcom/google/common/collect/ImmutableMultiset;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMultiset;->hashCode()I

    move-result v0

    return v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 360
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMultiset$EntrySet;->g_()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method l()Z
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultiset$EntrySet;->a:Lcom/google/common/collect/ImmutableMultiset;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMultiset;->l()Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultiset$EntrySet;->a:Lcom/google/common/collect/ImmutableMultiset;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMultiset;->k()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 401
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMultiset$EntrySet;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    .line 402
    invoke-virtual {p0, v0}, Lcom/google/common/collect/ImmutableMultiset$EntrySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 411
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMultiset$EntrySet;->size()I

    move-result v0

    .line 412
    array-length v1, p1

    if-ge v1, v0, :cond_1

    .line 413
    invoke-static {p1, v0}, Lcom/google/common/collect/ObjectArrays;->a([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    .line 420
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 421
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMultiset$EntrySet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Multiset$Entry;

    .line 422
    add-int/lit8 v2, v1, 0x1

    aput-object v0, p1, v1

    move v1, v2

    goto :goto_1

    .line 414
    :cond_1
    array-length v1, p1

    if-le v1, v0, :cond_0

    .line 415
    const/4 v1, 0x0

    aput-object v1, p1, v0

    goto :goto_0

    .line 424
    :cond_2
    return-object p1
.end method
