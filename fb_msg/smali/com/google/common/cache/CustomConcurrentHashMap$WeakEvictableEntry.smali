.class final Lcom/google/common/cache/CustomConcurrentHashMap$WeakEvictableEntry;
.super Lcom/google/common/cache/CustomConcurrentHashMap$WeakEntry;
.source "CustomConcurrentHashMap.java"

# interfaces
.implements Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/cache/CustomConcurrentHashMap$WeakEntry",
        "<TK;TV;>;",
        "Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field d:Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation
.end field

.field e:Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;)V
    .locals 1
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
            "Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1628
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/common/cache/CustomConcurrentHashMap$WeakEntry;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;)V

    .line 1633
    invoke-static {}, Lcom/google/common/cache/CustomConcurrentHashMap;->h()Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$WeakEvictableEntry;->d:Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    .line 1646
    invoke-static {}, Lcom/google/common/cache/CustomConcurrentHashMap;->h()Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$WeakEvictableEntry;->e:Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    .line 1629
    return-void
.end method


# virtual methods
.method public getNextEvictable()Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1638
    iget-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$WeakEvictableEntry;->d:Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    return-object v0
.end method

.method public getPreviousEvictable()Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1651
    iget-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$WeakEvictableEntry;->e:Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    return-object v0
.end method

.method public setNextEvictable(Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1643
    iput-object p1, p0, Lcom/google/common/cache/CustomConcurrentHashMap$WeakEvictableEntry;->d:Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    .line 1644
    return-void
.end method

.method public setPreviousEvictable(Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1656
    iput-object p1, p0, Lcom/google/common/cache/CustomConcurrentHashMap$WeakEvictableEntry;->e:Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    .line 1657
    return-void
.end method
