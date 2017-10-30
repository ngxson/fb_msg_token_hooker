.class final Lcom/google/common/cache/CustomConcurrentHashMap$SoftExpirableEntry;
.super Lcom/google/common/cache/CustomConcurrentHashMap$SoftEntry;
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
        "Lcom/google/common/cache/CustomConcurrentHashMap$SoftEntry",
        "<TK;TV;>;",
        "Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field volatile d:J

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

.field f:Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;
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
            "Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1324
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/common/cache/CustomConcurrentHashMap$SoftEntry;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;)V

    .line 1329
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$SoftExpirableEntry;->d:J

    .line 1341
    invoke-static {}, Lcom/google/common/cache/CustomConcurrentHashMap;->h()Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$SoftExpirableEntry;->e:Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    .line 1354
    invoke-static {}, Lcom/google/common/cache/CustomConcurrentHashMap;->h()Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$SoftExpirableEntry;->f:Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    .line 1325
    return-void
.end method


# virtual methods
.method public getExpirationTime()J
    .locals 2

    .prologue
    .line 1333
    iget-wide v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$SoftExpirableEntry;->d:J

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
    .line 1346
    iget-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$SoftExpirableEntry;->e:Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

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
    .line 1359
    iget-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$SoftExpirableEntry;->f:Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    return-object v0
.end method

.method public setExpirationTime(J)V
    .locals 0
    .parameter

    .prologue
    .line 1338
    iput-wide p1, p0, Lcom/google/common/cache/CustomConcurrentHashMap$SoftExpirableEntry;->d:J

    .line 1339
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
    .line 1351
    iput-object p1, p0, Lcom/google/common/cache/CustomConcurrentHashMap$SoftExpirableEntry;->e:Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    .line 1352
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
    .line 1364
    iput-object p1, p0, Lcom/google/common/cache/CustomConcurrentHashMap$SoftExpirableEntry;->f:Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    .line 1365
    return-void
.end method
