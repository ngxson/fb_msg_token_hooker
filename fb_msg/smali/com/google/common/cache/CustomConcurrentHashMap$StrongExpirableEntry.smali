.class final Lcom/google/common/cache/CustomConcurrentHashMap$StrongExpirableEntry;
.super Lcom/google/common/cache/CustomConcurrentHashMap$StrongEntry;
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
        "Lcom/google/common/cache/CustomConcurrentHashMap$StrongEntry",
        "<TK;TV;>;",
        "Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field volatile e:J

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

.field g:Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;
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
.method constructor <init>(Ljava/lang/Object;ILcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;)V
    .locals 2
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
            "(TK;I",
            "Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1071
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/cache/CustomConcurrentHashMap$StrongEntry;-><init>(Ljava/lang/Object;ILcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;)V

    .line 1076
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$StrongExpirableEntry;->e:J

    .line 1088
    invoke-static {}, Lcom/google/common/cache/CustomConcurrentHashMap;->h()Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$StrongExpirableEntry;->f:Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    .line 1101
    invoke-static {}, Lcom/google/common/cache/CustomConcurrentHashMap;->h()Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$StrongExpirableEntry;->g:Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    .line 1072
    return-void
.end method


# virtual methods
.method public getExpirationTime()J
    .locals 2

    .prologue
    .line 1080
    iget-wide v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$StrongExpirableEntry;->e:J

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
    .line 1093
    iget-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$StrongExpirableEntry;->f:Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

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
    .line 1106
    iget-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$StrongExpirableEntry;->g:Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    return-object v0
.end method

.method public setExpirationTime(J)V
    .locals 0
    .parameter

    .prologue
    .line 1085
    iput-wide p1, p0, Lcom/google/common/cache/CustomConcurrentHashMap$StrongExpirableEntry;->e:J

    .line 1086
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
    .line 1098
    iput-object p1, p0, Lcom/google/common/cache/CustomConcurrentHashMap$StrongExpirableEntry;->f:Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    .line 1099
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
    .line 1111
    iput-object p1, p0, Lcom/google/common/cache/CustomConcurrentHashMap$StrongExpirableEntry;->g:Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    .line 1112
    return-void
.end method
