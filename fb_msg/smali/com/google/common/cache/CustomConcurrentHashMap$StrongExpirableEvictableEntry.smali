.class final Lcom/google/common/cache/CustomConcurrentHashMap$StrongExpirableEvictableEntry;
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

.field h:Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;
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

.field i:Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;
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
    .line 1153
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/cache/CustomConcurrentHashMap$StrongEntry;-><init>(Ljava/lang/Object;ILcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;)V

    .line 1158
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$StrongExpirableEvictableEntry;->e:J

    .line 1170
    invoke-static {}, Lcom/google/common/cache/CustomConcurrentHashMap;->h()Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$StrongExpirableEvictableEntry;->f:Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    .line 1183
    invoke-static {}, Lcom/google/common/cache/CustomConcurrentHashMap;->h()Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$StrongExpirableEvictableEntry;->g:Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    .line 1198
    invoke-static {}, Lcom/google/common/cache/CustomConcurrentHashMap;->h()Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$StrongExpirableEvictableEntry;->h:Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    .line 1211
    invoke-static {}, Lcom/google/common/cache/CustomConcurrentHashMap;->h()Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$StrongExpirableEvictableEntry;->i:Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    .line 1154
    return-void
.end method


# virtual methods
.method public getExpirationTime()J
    .locals 2

    .prologue
    .line 1162
    iget-wide v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$StrongExpirableEvictableEntry;->e:J

    return-wide v0
.end method

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
    .line 1203
    iget-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$StrongExpirableEvictableEntry;->h:Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    return-object v0
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
    .line 1175
    iget-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$StrongExpirableEvictableEntry;->f:Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

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
    .line 1216
    iget-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$StrongExpirableEvictableEntry;->i:Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

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
    .line 1188
    iget-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap$StrongExpirableEvictableEntry;->g:Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    return-object v0
.end method

.method public setExpirationTime(J)V
    .locals 0
    .parameter

    .prologue
    .line 1167
    iput-wide p1, p0, Lcom/google/common/cache/CustomConcurrentHashMap$StrongExpirableEvictableEntry;->e:J

    .line 1168
    return-void
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
    .line 1208
    iput-object p1, p0, Lcom/google/common/cache/CustomConcurrentHashMap$StrongExpirableEvictableEntry;->h:Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    .line 1209
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
    .line 1180
    iput-object p1, p0, Lcom/google/common/cache/CustomConcurrentHashMap$StrongExpirableEvictableEntry;->f:Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    .line 1181
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
    .line 1221
    iput-object p1, p0, Lcom/google/common/cache/CustomConcurrentHashMap$StrongExpirableEvictableEntry;->i:Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    .line 1222
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
    .line 1193
    iput-object p1, p0, Lcom/google/common/cache/CustomConcurrentHashMap$StrongExpirableEvictableEntry;->g:Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    .line 1194
    return-void
.end method
