.class final Lcom/google/common/collect/Multisets$MultisetIteratorImpl;
.super Ljava/lang/Object;
.source "Multisets.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/common/collect/Multiset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Multiset",
            "<TE;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;>;"
        }
    .end annotation
.end field

.field private c:Lcom/google/common/collect/Multiset$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;"
        }
    .end annotation
.end field

.field private d:I

.field private e:I

.field private f:Z


# direct methods
.method constructor <init>(Lcom/google/common/collect/Multiset;Ljava/util/Iterator;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Multiset",
            "<TE;>;",
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;>;)V"
        }
    .end annotation

    .prologue
    .line 787
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 788
    iput-object p1, p0, Lcom/google/common/collect/Multisets$MultisetIteratorImpl;->a:Lcom/google/common/collect/Multiset;

    .line 789
    iput-object p2, p0, Lcom/google/common/collect/Multisets$MultisetIteratorImpl;->b:Ljava/util/Iterator;

    .line 790
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 794
    iget v0, p0, Lcom/google/common/collect/Multisets$MultisetIteratorImpl;->d:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/Multisets$MultisetIteratorImpl;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 799
    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$MultisetIteratorImpl;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 800
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 802
    :cond_0
    iget v0, p0, Lcom/google/common/collect/Multisets$MultisetIteratorImpl;->d:I

    if-nez v0, :cond_1

    .line 803
    iget-object v0, p0, Lcom/google/common/collect/Multisets$MultisetIteratorImpl;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Multiset$Entry;

    iput-object v0, p0, Lcom/google/common/collect/Multisets$MultisetIteratorImpl;->c:Lcom/google/common/collect/Multiset$Entry;

    .line 804
    iget-object v0, p0, Lcom/google/common/collect/Multisets$MultisetIteratorImpl;->c:Lcom/google/common/collect/Multiset$Entry;

    invoke-interface {v0}, Lcom/google/common/collect/Multiset$Entry;->b()I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/Multisets$MultisetIteratorImpl;->d:I

    iput v0, p0, Lcom/google/common/collect/Multisets$MultisetIteratorImpl;->e:I

    .line 806
    :cond_1
    iget v0, p0, Lcom/google/common/collect/Multisets$MultisetIteratorImpl;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/Multisets$MultisetIteratorImpl;->d:I

    .line 807
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/collect/Multisets$MultisetIteratorImpl;->f:Z

    .line 808
    iget-object v0, p0, Lcom/google/common/collect/Multisets$MultisetIteratorImpl;->c:Lcom/google/common/collect/Multiset$Entry;

    invoke-interface {v0}, Lcom/google/common/collect/Multiset$Entry;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 813
    iget-boolean v0, p0, Lcom/google/common/collect/Multisets$MultisetIteratorImpl;->f:Z

    const-string v1, "no calls to next() since the last call to remove()"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 815
    iget v0, p0, Lcom/google/common/collect/Multisets$MultisetIteratorImpl;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 816
    iget-object v0, p0, Lcom/google/common/collect/Multisets$MultisetIteratorImpl;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 820
    :goto_0
    iget v0, p0, Lcom/google/common/collect/Multisets$MultisetIteratorImpl;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/Multisets$MultisetIteratorImpl;->e:I

    .line 821
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/common/collect/Multisets$MultisetIteratorImpl;->f:Z

    .line 822
    return-void

    .line 818
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/Multisets$MultisetIteratorImpl;->a:Lcom/google/common/collect/Multiset;

    iget-object v1, p0, Lcom/google/common/collect/Multisets$MultisetIteratorImpl;->c:Lcom/google/common/collect/Multiset$Entry;

    invoke-interface {v1}, Lcom/google/common/collect/Multiset$Entry;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/common/collect/Multiset;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method
