.class final Lcom/google/common/collect/CustomConcurrentHashMap$WeakExpirableEvictableEntry;
.super Lcom/google/common/collect/CustomConcurrentHashMap$WeakEntry;
.source "CustomConcurrentHashMap.java"

# interfaces
.implements Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/CustomConcurrentHashMap$WeakEntry",
        "<TK;TV;>;",
        "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field volatile d:J

.field e:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation
.end field

.field f:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation
.end field

.field g:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation
.end field

.field h:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V
    .locals 2
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue",
            "<TK;>;TK;I",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1663
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/common/collect/CustomConcurrentHashMap$WeakEntry;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V

    .line 1668
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$WeakExpirableEvictableEntry;->d:J

    .line 1680
    invoke-static {}, Lcom/google/common/collect/CustomConcurrentHashMap;->h()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$WeakExpirableEvictableEntry;->e:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    .line 1693
    invoke-static {}, Lcom/google/common/collect/CustomConcurrentHashMap;->h()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$WeakExpirableEvictableEntry;->f:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    .line 1708
    invoke-static {}, Lcom/google/common/collect/CustomConcurrentHashMap;->h()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$WeakExpirableEvictableEntry;->g:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    .line 1721
    invoke-static {}, Lcom/google/common/collect/CustomConcurrentHashMap;->h()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$WeakExpirableEvictableEntry;->h:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    .line 1664
    return-void
.end method


# virtual methods
.method public getExpirationTime()J
    .locals 2

    .prologue
    .line 1672
    iget-wide v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$WeakExpirableEvictableEntry;->d:J

    return-wide v0
.end method

.method public getNextEvictable()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1713
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$WeakExpirableEvictableEntry;->g:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    return-object v0
.end method

.method public getNextExpirable()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1685
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$WeakExpirableEvictableEntry;->e:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    return-object v0
.end method

.method public getPreviousEvictable()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1726
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$WeakExpirableEvictableEntry;->h:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    return-object v0
.end method

.method public getPreviousExpirable()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1698
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$WeakExpirableEvictableEntry;->f:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    return-object v0
.end method

.method public setExpirationTime(J)V
    .locals 0
    .parameter

    .prologue
    .line 1677
    iput-wide p1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$WeakExpirableEvictableEntry;->d:J

    .line 1678
    return-void
.end method

.method public setNextEvictable(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1718
    iput-object p1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$WeakExpirableEvictableEntry;->g:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    .line 1719
    return-void
.end method

.method public setNextExpirable(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1690
    iput-object p1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$WeakExpirableEvictableEntry;->e:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    .line 1691
    return-void
.end method

.method public setPreviousEvictable(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1731
    iput-object p1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$WeakExpirableEvictableEntry;->h:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    .line 1732
    return-void
.end method

.method public setPreviousExpirable(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1703
    iput-object p1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$WeakExpirableEvictableEntry;->f:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    .line 1704
    return-void
.end method
