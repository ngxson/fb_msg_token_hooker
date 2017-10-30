.class Lcom/google/common/collect/CustomConcurrentHashMap$ExpirationQueue$1;
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

.field final synthetic c:Lcom/google/common/collect/CustomConcurrentHashMap$ExpirationQueue;


# direct methods
.method constructor <init>(Lcom/google/common/collect/CustomConcurrentHashMap$ExpirationQueue;)V
    .locals 0
    .parameter

    .prologue
    .line 3285
    iput-object p1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$ExpirationQueue$1;->c:Lcom/google/common/collect/CustomConcurrentHashMap$ExpirationQueue;

    invoke-direct {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$AbstractReferenceEntry;-><init>()V

    .line 3295
    iput-object p0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$ExpirationQueue$1;->a:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    .line 3307
    iput-object p0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$ExpirationQueue$1;->b:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    return-void
.end method


# virtual methods
.method public getExpirationTime()J
    .locals 2

    .prologue
    .line 3289
    const-wide v0, 0x7fffffffffffffffL

    return-wide v0
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
    .line 3299
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$ExpirationQueue$1;->a:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

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
    .line 3311
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$ExpirationQueue$1;->b:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    return-object v0
.end method

.method public setExpirationTime(J)V
    .locals 0
    .parameter

    .prologue
    .line 3293
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
    .line 3304
    iput-object p1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$ExpirationQueue$1;->a:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    .line 3305
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
    .line 3316
    iput-object p1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$ExpirationQueue$1;->b:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    .line 3317
    return-void
.end method
