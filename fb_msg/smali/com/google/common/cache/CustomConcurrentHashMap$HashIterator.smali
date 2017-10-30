.class abstract Lcom/google/common/cache/CustomConcurrentHashMap$HashIterator;
.super Ljava/lang/Object;
.source "CustomConcurrentHashMap.java"


# instance fields
.field b:I

.field c:I

.field d:Lcom/google/common/cache/CustomConcurrentHashMap$Segment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/CustomConcurrentHashMap$Segment",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field e:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field f:Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field g:Lcom/google/common/cache/CustomConcurrentHashMap$WriteThroughEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/CustomConcurrentHashMap",
            "<TK;TV;>.WriteThroughEntry;"
        }
    .end annotation
.end field

.field h:Lcom/google/common/cache/CustomConcurrentHashMap$WriteThroughEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/CustomConcurrentHashMap",
            "<TK;TV;>.WriteThroughEntry;"
        }
    .end annotation
.end field

.field final synthetic i:Lcom/google/common/cache/CustomConcurrentHashMap;


# direct methods
.method constructor <init>(Lcom/google/common/cache/CustomConcurrentHashMap;)V
    .locals 1
    .parameter

    .prologue
    .line 3986
    iput-object p1, p0, Lcom/google/common/cache/CustomConcurrentHashMap$HashIterator;->i:Lcom/google/common/cache/CustomConcurrentHashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3987
    iget-object v0, p1, Lcom/google/common/cache/CustomConcurrentHashMap;->c:[Lcom/google/common/cache/CustomConcurrentHashMap$Segment;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$HashIterator;->b:I

    .line 3988
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$HashIterator;->c:I

    .line 3989
    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$HashIterator;->b()V

    .line 3990
    return-void
.end method


# virtual methods
.method a(Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;)Z
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 4049
    :try_start_0
    invoke-interface {p1}, Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 4050
    iget-object v1, p0, Lcom/google/common/cache/CustomConcurrentHashMap$HashIterator;->i:Lcom/google/common/cache/CustomConcurrentHashMap;

    invoke-virtual {v1, p1}, Lcom/google/common/cache/CustomConcurrentHashMap;->b(Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;)Ljava/lang/Object;

    move-result-object v1

    .line 4051
    if-eqz v1, :cond_0

    .line 4052
    new-instance v2, Lcom/google/common/cache/CustomConcurrentHashMap$WriteThroughEntry;

    iget-object v3, p0, Lcom/google/common/cache/CustomConcurrentHashMap$HashIterator;->i:Lcom/google/common/cache/CustomConcurrentHashMap;

    invoke-direct {v2, v3, v0, v1}, Lcom/google/common/cache/CustomConcurrentHashMap$WriteThroughEntry;-><init>(Lcom/google/common/cache/CustomConcurrentHashMap;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/google/common/cache/CustomConcurrentHashMap$HashIterator;->g:Lcom/google/common/cache/CustomConcurrentHashMap$WriteThroughEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4053
    const/4 v0, 0x1

    .line 4059
    iget-object v1, p0, Lcom/google/common/cache/CustomConcurrentHashMap$HashIterator;->d:Lcom/google/common/cache/CustomConcurrentHashMap$Segment;

    invoke-virtual {v1}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->n()V

    :goto_0
    return v0

    .line 4056
    :cond_0
    const/4 v0, 0x0

    .line 4059
    iget-object v1, p0, Lcom/google/common/cache/CustomConcurrentHashMap$HashIterator;->d:Lcom/google/common/cache/CustomConcurrentHashMap$Segment;

    invoke-virtual {v1}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->n()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/common/cache/CustomConcurrentHashMap$HashIterator;->d:Lcom/google/common/cache/CustomConcurrentHashMap$Segment;

    invoke-virtual {v1}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->n()V

    throw v0
.end method

.method final b()V
    .locals 3

    .prologue
    .line 3993
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$HashIterator;->g:Lcom/google/common/cache/CustomConcurrentHashMap$WriteThroughEntry;

    .line 3995
    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$HashIterator;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4013
    :cond_0
    :goto_0
    return-void

    .line 3999
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$HashIterator;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4003
    :cond_2
    iget v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$HashIterator;->b:I

    if-ltz v0, :cond_0

    .line 4004
    iget-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$HashIterator;->i:Lcom/google/common/cache/CustomConcurrentHashMap;

    iget-object v0, v0, Lcom/google/common/cache/CustomConcurrentHashMap;->c:[Lcom/google/common/cache/CustomConcurrentHashMap$Segment;

    iget v1, p0, Lcom/google/common/cache/CustomConcurrentHashMap$HashIterator;->b:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/common/cache/CustomConcurrentHashMap$HashIterator;->b:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$HashIterator;->d:Lcom/google/common/cache/CustomConcurrentHashMap$Segment;

    .line 4005
    iget-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$HashIterator;->d:Lcom/google/common/cache/CustomConcurrentHashMap$Segment;

    iget v0, v0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->b:I

    if-eqz v0, :cond_2

    .line 4006
    iget-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$HashIterator;->d:Lcom/google/common/cache/CustomConcurrentHashMap$Segment;

    iget-object v0, v0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iput-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$HashIterator;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 4007
    iget-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$HashIterator;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$HashIterator;->c:I

    .line 4008
    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$HashIterator;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0
.end method

.method c()Z
    .locals 1

    .prologue
    .line 4019
    iget-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$HashIterator;->f:Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    if-eqz v0, :cond_1

    .line 4020
    iget-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$HashIterator;->f:Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    invoke-interface {v0}, Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;->getNext()Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$HashIterator;->f:Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    :goto_0
    iget-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$HashIterator;->f:Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    if-eqz v0, :cond_1

    .line 4021
    iget-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$HashIterator;->f:Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    invoke-virtual {p0, v0}, Lcom/google/common/cache/CustomConcurrentHashMap$HashIterator;->a(Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4022
    const/4 v0, 0x1

    .line 4026
    :goto_1
    return v0

    .line 4020
    :cond_0
    iget-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$HashIterator;->f:Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    invoke-interface {v0}, Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;->getNext()Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$HashIterator;->f:Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    goto :goto_0

    .line 4026
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method d()Z
    .locals 3

    .prologue
    .line 4033
    :cond_0
    iget v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$HashIterator;->c:I

    if-ltz v0, :cond_2

    .line 4034
    iget-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$HashIterator;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iget v1, p0, Lcom/google/common/cache/CustomConcurrentHashMap$HashIterator;->c:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/common/cache/CustomConcurrentHashMap$HashIterator;->c:I

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    iput-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$HashIterator;->f:Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    if-eqz v0, :cond_0

    .line 4035
    iget-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$HashIterator;->f:Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    invoke-virtual {p0, v0}, Lcom/google/common/cache/CustomConcurrentHashMap$HashIterator;->a(Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$HashIterator;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4036
    :cond_1
    const/4 v0, 0x1

    .line 4040
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method e()Lcom/google/common/cache/CustomConcurrentHashMap$WriteThroughEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/CustomConcurrentHashMap",
            "<TK;TV;>.WriteThroughEntry;"
        }
    .end annotation

    .prologue
    .line 4068
    iget-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$HashIterator;->g:Lcom/google/common/cache/CustomConcurrentHashMap$WriteThroughEntry;

    if-nez v0, :cond_0

    .line 4069
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 4071
    :cond_0
    iget-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$HashIterator;->g:Lcom/google/common/cache/CustomConcurrentHashMap$WriteThroughEntry;

    iput-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$HashIterator;->h:Lcom/google/common/cache/CustomConcurrentHashMap$WriteThroughEntry;

    .line 4072
    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$HashIterator;->b()V

    .line 4073
    iget-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$HashIterator;->h:Lcom/google/common/cache/CustomConcurrentHashMap$WriteThroughEntry;

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 4064
    iget-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$HashIterator;->g:Lcom/google/common/cache/CustomConcurrentHashMap$WriteThroughEntry;

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
    .line 4077
    iget-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$HashIterator;->h:Lcom/google/common/cache/CustomConcurrentHashMap$WriteThroughEntry;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 4078
    iget-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$HashIterator;->i:Lcom/google/common/cache/CustomConcurrentHashMap;

    iget-object v1, p0, Lcom/google/common/cache/CustomConcurrentHashMap$HashIterator;->h:Lcom/google/common/cache/CustomConcurrentHashMap$WriteThroughEntry;

    invoke-virtual {v1}, Lcom/google/common/cache/CustomConcurrentHashMap$WriteThroughEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/cache/CustomConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4079
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$HashIterator;->h:Lcom/google/common/cache/CustomConcurrentHashMap$WriteThroughEntry;

    .line 4080
    return-void

    .line 4077
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
