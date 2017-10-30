.class Lcom/google/common/cache/CustomConcurrentHashMap$ExpirationQueue$1;
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

.field final synthetic c:Lcom/google/common/cache/CustomConcurrentHashMap$ExpirationQueue;


# direct methods
.method constructor <init>(Lcom/google/common/cache/CustomConcurrentHashMap$ExpirationQueue;)V
    .locals 0
    .parameter

    .prologue
    .line 3611
    iput-object p1, p0, Lcom/google/common/cache/CustomConcurrentHashMap$ExpirationQueue$1;->c:Lcom/google/common/cache/CustomConcurrentHashMap$ExpirationQueue;

    invoke-direct {p0}, Lcom/google/common/cache/CustomConcurrentHashMap$AbstractReferenceEntry;-><init>()V

    .line 3621
    iput-object p0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$ExpirationQueue$1;->a:Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    .line 3633
    iput-object p0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$ExpirationQueue$1;->b:Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    return-void
.end method


# virtual methods
.method public getExpirationTime()J
    .locals 2

    .prologue
    .line 3615
    const-wide v0, 0x7fffffffffffffffL

    return-wide v0
.end method

.method public getNextExpirable()Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3625
    iget-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$ExpirationQueue$1;->a:Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    return-object v0
.end method

.method public getPreviousExpirable()Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3637
    iget-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$ExpirationQueue$1;->b:Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    return-object v0
.end method

.method public setExpirationTime(J)V
    .locals 0
    .parameter

    .prologue
    .line 3619
    return-void
.end method

.method public setNextExpirable(Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;)V
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
    .line 3630
    iput-object p1, p0, Lcom/google/common/cache/CustomConcurrentHashMap$ExpirationQueue$1;->a:Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    .line 3631
    return-void
.end method

.method public setPreviousExpirable(Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;)V
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
    .line 3642
    iput-object p1, p0, Lcom/google/common/cache/CustomConcurrentHashMap$ExpirationQueue$1;->b:Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    .line 3643
    return-void
.end method
