.class abstract Lcom/google/common/collect/CustomConcurrentHashMap$HashIterator;
.super Ljava/lang/Object;
.source "CustomConcurrentHashMap.java"


# instance fields
.field b:I

.field c:I

.field d:Lcom/google/common/collect/CustomConcurrentHashMap$Segment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/CustomConcurrentHashMap$Segment",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field e:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field f:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field g:Lcom/google/common/collect/CustomConcurrentHashMap$WriteThroughEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/CustomConcurrentHashMap",
            "<TK;TV;>.WriteThroughEntry;"
        }
    .end annotation
.end field

.field h:Lcom/google/common/collect/CustomConcurrentHashMap$WriteThroughEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/CustomConcurrentHashMap",
            "<TK;TV;>.WriteThroughEntry;"
        }
    .end annotation
.end field

.field final synthetic i:Lcom/google/common/collect/CustomConcurrentHashMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/CustomConcurrentHashMap;)V
    .locals 1
    .parameter

    .prologue
    .line 3656
    iput-object p1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$HashIterator;->i:Lcom/google/common/collect/CustomConcurrentHashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3657
    iget-object v0, p1, Lcom/google/common/collect/CustomConcurrentHashMap;->d:[Lcom/google/common/collect/CustomConcurrentHashMap$Segment;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$HashIterator;->b:I

    .line 3658
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$HashIterator;->c:I

    .line 3659
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$HashIterator;->b()V

    .line 3660
    return-void
.end method


# virtual methods
.method a(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)Z
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 3719
    :try_start_0
    invoke-interface {p1}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 3720
    iget-object v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$HashIterator;->i:Lcom/google/common/collect/CustomConcurrentHashMap;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/CustomConcurrentHashMap;->b(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)Ljava/lang/Object;

    move-result-object v1

    .line 3721
    if-eqz v1, :cond_0

    .line 3722
    new-instance v2, Lcom/google/common/collect/CustomConcurrentHashMap$WriteThroughEntry;

    iget-object v3, p0, Lcom/google/common/collect/CustomConcurrentHashMap$HashIterator;->i:Lcom/google/common/collect/CustomConcurrentHashMap;

    invoke-direct {v2, v3, v0, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$WriteThroughEntry;-><init>(Lcom/google/common/collect/CustomConcurrentHashMap;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/google/common/collect/CustomConcurrentHashMap$HashIterator;->g:Lcom/google/common/collect/CustomConcurrentHashMap$WriteThroughEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3723
    const/4 v0, 0x1

    .line 3729
    iget-object v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$HashIterator;->d:Lcom/google/common/collect/CustomConcurrentHashMap$Segment;

    invoke-virtual {v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->n()V

    :goto_0
    return v0

    .line 3726
    :cond_0
    const/4 v0, 0x0

    .line 3729
    iget-object v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$HashIterator;->d:Lcom/google/common/collect/CustomConcurrentHashMap$Segment;

    invoke-virtual {v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->n()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$HashIterator;->d:Lcom/google/common/collect/CustomConcurrentHashMap$Segment;

    invoke-virtual {v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->n()V

    throw v0
.end method

.method final b()V
    .locals 3

    .prologue
    .line 3663
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$HashIterator;->g:Lcom/google/common/collect/CustomConcurrentHashMap$WriteThroughEntry;

    .line 3665
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$HashIterator;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3683
    :cond_0
    :goto_0
    return-void

    .line 3669
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$HashIterator;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3673
    :cond_2
    iget v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$HashIterator;->b:I

    if-ltz v0, :cond_0

    .line 3674
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$HashIterator;->i:Lcom/google/common/collect/CustomConcurrentHashMap;

    iget-object v0, v0, Lcom/google/common/collect/CustomConcurrentHashMap;->d:[Lcom/google/common/collect/CustomConcurrentHashMap$Segment;

    iget v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$HashIterator;->b:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/common/collect/CustomConcurrentHashMap$HashIterator;->b:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$HashIterator;->d:Lcom/google/common/collect/CustomConcurrentHashMap$Segment;

    .line 3675
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$HashIterator;->d:Lcom/google/common/collect/CustomConcurrentHashMap$Segment;

    iget v0, v0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->b:I

    if-eqz v0, :cond_2

    .line 3676
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$HashIterator;->d:Lcom/google/common/collect/CustomConcurrentHashMap$Segment;

    iget-object v0, v0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iput-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$HashIterator;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3677
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$HashIterator;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$HashIterator;->c:I

    .line 3678
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$HashIterator;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0
.end method

.method c()Z
    .locals 1

    .prologue
    .line 3689
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$HashIterator;->f:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    if-eqz v0, :cond_1

    .line 3690
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$HashIterator;->f:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    invoke-interface {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getNext()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$HashIterator;->f:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    :goto_0
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$HashIterator;->f:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    if-eqz v0, :cond_1

    .line 3691
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$HashIterator;->f:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    invoke-virtual {p0, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$HashIterator;->a(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3692
    const/4 v0, 0x1

    .line 3696
    :goto_1
    return v0

    .line 3690
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$HashIterator;->f:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    invoke-interface {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getNext()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$HashIterator;->f:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    goto :goto_0

    .line 3696
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method d()Z
    .locals 3

    .prologue
    .line 3703
    :cond_0
    iget v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$HashIterator;->c:I

    if-ltz v0, :cond_2

    .line 3704
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$HashIterator;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iget v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$HashIterator;->c:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/common/collect/CustomConcurrentHashMap$HashIterator;->c:I

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    iput-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$HashIterator;->f:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    if-eqz v0, :cond_0

    .line 3705
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$HashIterator;->f:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    invoke-virtual {p0, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$HashIterator;->a(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$HashIterator;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3706
    :cond_1
    const/4 v0, 0x1

    .line 3710
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method e()Lcom/google/common/collect/CustomConcurrentHashMap$WriteThroughEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/CustomConcurrentHashMap",
            "<TK;TV;>.WriteThroughEntry;"
        }
    .end annotation

    .prologue
    .line 3738
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$HashIterator;->g:Lcom/google/common/collect/CustomConcurrentHashMap$WriteThroughEntry;

    if-nez v0, :cond_0

    .line 3739
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 3741
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$HashIterator;->g:Lcom/google/common/collect/CustomConcurrentHashMap$WriteThroughEntry;

    iput-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$HashIterator;->h:Lcom/google/common/collect/CustomConcurrentHashMap$WriteThroughEntry;

    .line 3742
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$HashIterator;->b()V

    .line 3743
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$HashIterator;->h:Lcom/google/common/collect/CustomConcurrentHashMap$WriteThroughEntry;

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 3734
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$HashIterator;->g:Lcom/google/common/collect/CustomConcurrentHashMap$WriteThroughEntry;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 3747
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$HashIterator;->h:Lcom/google/common/collect/CustomConcurrentHashMap$WriteThroughEntry;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 3748
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$HashIterator;->i:Lcom/google/common/collect/CustomConcurrentHashMap;

    iget-object v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$HashIterator;->h:Lcom/google/common/collect/CustomConcurrentHashMap$WriteThroughEntry;

    invoke-virtual {v1}, Lcom/google/common/collect/CustomConcurrentHashMap$WriteThroughEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/CustomConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3749
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$HashIterator;->h:Lcom/google/common/collect/CustomConcurrentHashMap$WriteThroughEntry;

    .line 3750
    return-void

    .line 3747
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
