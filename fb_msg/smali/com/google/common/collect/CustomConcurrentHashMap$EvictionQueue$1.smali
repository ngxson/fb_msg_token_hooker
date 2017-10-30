.class Lcom/google/common/collect/CustomConcurrentHashMap$EvictionQueue$1;
.super Lcom/google/common/collect/CustomConcurrentHashMap$AbstractReferenceEntry;
.source "CustomConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/CustomConcurrentHashMap$AbstractReferenceEntry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field a:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field b:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic c:Lcom/google/common/collect/CustomConcurrentHashMap$EvictionQueue;


# direct methods
.method constructor <init>(Lcom/google/common/collect/CustomConcurrentHashMap$EvictionQueue;)V
    .locals 0
    .parameter

    .prologue
    .line 3157
    iput-object p1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$EvictionQueue$1;->c:Lcom/google/common/collect/CustomConcurrentHashMap$EvictionQueue;

    invoke-direct {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$AbstractReferenceEntry;-><init>()V

    .line 3159
    iput-object p0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$EvictionQueue$1;->a:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    .line 3171
    iput-object p0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$EvictionQueue$1;->b:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    return-void
.end method


# virtual methods
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
    .line 3163
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$EvictionQueue$1;->a:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

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
    .line 3175
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$EvictionQueue$1;->b:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    return-object v0
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
    .line 3168
    iput-object p1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$EvictionQueue$1;->a:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    .line 3169
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
    .line 3180
    iput-object p1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$EvictionQueue$1;->b:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    .line 3181
    return-void
.end method
