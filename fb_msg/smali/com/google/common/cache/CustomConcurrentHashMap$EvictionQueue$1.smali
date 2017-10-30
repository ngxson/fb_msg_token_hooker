.class Lcom/google/common/cache/CustomConcurrentHashMap$EvictionQueue$1;
.super Lcom/google/common/cache/CustomConcurrentHashMap$AbstractReferenceEntry;
.source "CustomConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/cache/CustomConcurrentHashMap$AbstractReferenceEntry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field a:Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field b:Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic c:Lcom/google/common/cache/CustomConcurrentHashMap$EvictionQueue;


# direct methods
.method constructor <init>(Lcom/google/common/cache/CustomConcurrentHashMap$EvictionQueue;)V
    .locals 0
    .parameter

    .prologue
    .line 3483
    iput-object p1, p0, Lcom/google/common/cache/CustomConcurrentHashMap$EvictionQueue$1;->c:Lcom/google/common/cache/CustomConcurrentHashMap$EvictionQueue;

    invoke-direct {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$AbstractReferenceEntry;-><init>()V

    .line 3485
    iput-object p0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$EvictionQueue$1;->a:Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    .line 3497
    iput-object p0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$EvictionQueue$1;->b:Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

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
    .line 3489
    iget-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$EvictionQueue$1;->a:Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

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
    .line 3501
    iget-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$EvictionQueue$1;->b:Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

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
    .line 3494
    iput-object p1, p0, Lcom/google/common/cache/CustomConcurrentHashMap$EvictionQueue$1;->a:Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    .line 3495
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
    .line 3506
    iput-object p1, p0, Lcom/google/common/cache/CustomConcurrentHashMap$EvictionQueue$1;->b:Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    .line 3507
    return-void
.end method
