.class Lcom/google/common/cache/CustomConcurrentHashMap;
.super Ljava/util/AbstractMap;
.source "CustomConcurrentHashMap.java"

# interfaces
.implements Ljava/util/concurrent/ConcurrentMap;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap",
        "<TK;TV;>;",
        "Ljava/util/concurrent/ConcurrentMap",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field static final q:Lcom/google/common/cache/CustomConcurrentHashMap$ValueReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/CustomConcurrentHashMap$ValueReference",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field static final r:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final v:Ljava/util/logging/Logger;


# instance fields
.field final a:I

.field final b:I

.field final c:[Lcom/google/common/cache/CustomConcurrentHashMap$Segment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/common/cache/CustomConcurrentHashMap$Segment",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final d:Lcom/google/common/cache/CacheLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/CacheLoader",
            "<-TK;TV;>;"
        }
    .end annotation
.end field

.field final e:I

.field final f:Lcom/google/common/base/Equivalence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Equivalence",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final g:Lcom/google/common/base/Equivalence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Equivalence",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final h:Lcom/google/common/cache/CustomConcurrentHashMap$Strength;

.field final i:Lcom/google/common/cache/CustomConcurrentHashMap$Strength;

.field final j:I

.field final k:J

.field final l:J

.field final m:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/common/cache/RemovalNotification",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field final n:Lcom/google/common/cache/RemovalListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/RemovalListener",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final o:Lcom/google/common/cache/CustomConcurrentHashMap$EntryFactory;

.field final p:Lcom/google/common/base/Ticker;

.field s:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation
.end field

.field t:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation
.end field

.field u:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 137
    const-class v0, Lcom/google/common/cache/CustomConcurrentHashMap;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/common/cache/CustomConcurrentHashMap;->v:Ljava/util/logging/Logger;

    .line 636
    new-instance v0, Lcom/google/common/cache/CustomConcurrentHashMap$1;

    invoke-direct {v0}, Lcom/google/common/cache/CustomConcurrentHashMap$1;-><init>()V

    sput-object v0, Lcom/google/common/cache/CustomConcurrentHashMap;->q:Lcom/google/common/cache/CustomConcurrentHashMap$ValueReference;

    .line 927
    new-instance v0, Lcom/google/common/cache/CustomConcurrentHashMap$2;

    invoke-direct {v0}, Lcom/google/common/cache/CustomConcurrentHashMap$2;-><init>()V

    sput-object v0, Lcom/google/common/cache/CustomConcurrentHashMap;->r:Ljava/util/Queue;

    return-void
.end method

.method constructor <init>(Lcom/google/common/cache/CacheBuilder;Lcom/google/common/base/Supplier;Lcom/google/common/cache/CacheLoader;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/CacheBuilder",
            "<-TK;-TV;>;",
            "Lcom/google/common/base/Supplier",
            "<+",
            "Lcom/google/common/cache/AbstractCache$StatsCounter;",
            ">;",
            "Lcom/google/common/cache/CacheLoader",
            "<-TK;TV;>;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 201
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 202
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/CacheLoader;

    iput-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap;->d:Lcom/google/common/cache/CacheLoader;

    .line 204
    invoke-virtual {p1}, Lcom/google/common/cache/CacheBuilder;->d()I

    move-result v0

    const/high16 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap;->e:I

    .line 206
    invoke-virtual {p1}, Lcom/google/common/cache/CacheBuilder;->f()Lcom/google/common/cache/CustomConcurrentHashMap$Strength;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap;->h:Lcom/google/common/cache/CustomConcurrentHashMap$Strength;

    .line 207
    invoke-virtual {p1}, Lcom/google/common/cache/CacheBuilder;->g()Lcom/google/common/cache/CustomConcurrentHashMap$Strength;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap;->i:Lcom/google/common/cache/CustomConcurrentHashMap$Strength;

    .line 209
    invoke-virtual {p1}, Lcom/google/common/cache/CacheBuilder;->a()Lcom/google/common/base/Equivalence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap;->f:Lcom/google/common/base/Equivalence;

    .line 210
    invoke-virtual {p1}, Lcom/google/common/cache/CacheBuilder;->b()Lcom/google/common/base/Equivalence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap;->g:Lcom/google/common/base/Equivalence;

    .line 212
    iget v0, p1, Lcom/google/common/cache/CacheBuilder;->f:I

    iput v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap;->j:I

    .line 213
    invoke-virtual {p1}, Lcom/google/common/cache/CacheBuilder;->i()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap;->k:J

    .line 214
    invoke-virtual {p1}, Lcom/google/common/cache/CacheBuilder;->h()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap;->l:J

    .line 216
    iget-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap;->h:Lcom/google/common/cache/CustomConcurrentHashMap$Strength;

    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap;->b()Z

    move-result v1

    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap;->a()Z

    move-result v3

    invoke-static {v0, v1, v3}, Lcom/google/common/cache/CustomConcurrentHashMap$EntryFactory;->getFactory(Lcom/google/common/cache/CustomConcurrentHashMap$Strength;ZZ)Lcom/google/common/cache/CustomConcurrentHashMap$EntryFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap;->o:Lcom/google/common/cache/CustomConcurrentHashMap$EntryFactory;

    .line 217
    invoke-virtual {p1}, Lcom/google/common/cache/CacheBuilder;->j()Lcom/google/common/base/Ticker;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap;->p:Lcom/google/common/base/Ticker;

    .line 219
    invoke-virtual {p1}, Lcom/google/common/cache/CacheBuilder;->k()Lcom/google/common/cache/RemovalListener;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap;->n:Lcom/google/common/cache/RemovalListener;

    .line 220
    iget-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap;->n:Lcom/google/common/cache/RemovalListener;

    sget-object v1, Lcom/google/common/cache/CacheBuilder$NullListener;->INSTANCE:Lcom/google/common/cache/CacheBuilder$NullListener;

    if-ne v0, v1, :cond_2

    invoke-static {}, Lcom/google/common/cache/CustomConcurrentHashMap;->i()Ljava/util/Queue;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap;->m:Ljava/util/Queue;

    .line 224
    invoke-virtual {p1}, Lcom/google/common/cache/CacheBuilder;->c()I

    move-result v0

    const/high16 v1, 0x4000

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 225
    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 226
    iget v1, p0, Lcom/google/common/cache/CustomConcurrentHashMap;->j:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_0
    move v1, v2

    move v3, v4

    .line 235
    :goto_1
    iget v5, p0, Lcom/google/common/cache/CustomConcurrentHashMap;->e:I

    if-ge v1, v5, :cond_3

    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap;->a()Z

    move-result v5

    if-eqz v5, :cond_1

    mul-int/lit8 v5, v1, 0x2

    iget v6, p0, Lcom/google/common/cache/CustomConcurrentHashMap;->j:I

    if-gt v5, v6, :cond_3

    .line 236
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 237
    shl-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 220
    :cond_2
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    goto :goto_0

    .line 239
    :cond_3
    rsub-int/lit8 v3, v3, 0x20

    iput v3, p0, Lcom/google/common/cache/CustomConcurrentHashMap;->b:I

    .line 240
    add-int/lit8 v3, v1, -0x1

    iput v3, p0, Lcom/google/common/cache/CustomConcurrentHashMap;->a:I

    .line 242
    invoke-virtual {p0, v1}, Lcom/google/common/cache/CustomConcurrentHashMap;->c(I)[Lcom/google/common/cache/CustomConcurrentHashMap$Segment;

    move-result-object v3

    iput-object v3, p0, Lcom/google/common/cache/CustomConcurrentHashMap;->c:[Lcom/google/common/cache/CustomConcurrentHashMap$Segment;

    .line 244
    div-int v3, v0, v1

    .line 245
    mul-int v5, v3, v1

    if-ge v5, v0, :cond_8

    .line 246
    add-int/lit8 v0, v3, 0x1

    .line 250
    :goto_2
    if-ge v2, v0, :cond_4

    .line 251
    shl-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 254
    :cond_4
    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 256
    iget v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap;->j:I

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 257
    iget v3, p0, Lcom/google/common/cache/CustomConcurrentHashMap;->j:I

    rem-int/2addr v3, v1

    .line 258
    :goto_3
    iget-object v1, p0, Lcom/google/common/cache/CustomConcurrentHashMap;->c:[Lcom/google/common/cache/CustomConcurrentHashMap$Segment;

    array-length v1, v1

    if-ge v4, v1, :cond_6

    .line 259
    if-ne v4, v3, :cond_7

    .line 260
    add-int/lit8 v1, v0, -0x1

    .line 262
    :goto_4
    iget-object v5, p0, Lcom/google/common/cache/CustomConcurrentHashMap;->c:[Lcom/google/common/cache/CustomConcurrentHashMap$Segment;

    invoke-interface {p2}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/AbstractCache$StatsCounter;

    invoke-virtual {p0, v2, v1, v0}, Lcom/google/common/cache/CustomConcurrentHashMap;->a(IILcom/google/common/cache/AbstractCache$StatsCounter;)Lcom/google/common/cache/CustomConcurrentHashMap$Segment;

    move-result-object v0

    aput-object v0, v5, v4

    .line 258
    add-int/lit8 v4, v4, 0x1

    move v0, v1

    goto :goto_3

    .line 266
    :cond_5
    :goto_5
    iget-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap;->c:[Lcom/google/common/cache/CustomConcurrentHashMap$Segment;

    array-length v0, v0

    if-ge v4, v0, :cond_6

    .line 267
    iget-object v1, p0, Lcom/google/common/cache/CustomConcurrentHashMap;->c:[Lcom/google/common/cache/CustomConcurrentHashMap$Segment;

    const/4 v3, -0x1

    invoke-interface {p2}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/AbstractCache$StatsCounter;

    invoke-virtual {p0, v2, v3, v0}, Lcom/google/common/cache/CustomConcurrentHashMap;->a(IILcom/google/common/cache/AbstractCache$StatsCounter;)Lcom/google/common/cache/CustomConcurrentHashMap$Segment;

    move-result-object v0

    aput-object v0, v1, v4

    .line 266
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 271
    :cond_6
    return-void

    :cond_7
    move v1, v0

    goto :goto_4

    :cond_8
    move v0, v3

    goto :goto_2
.end method

.method static a(I)I
    .locals 3
    .parameter

    .prologue
    .line 1864
    shl-int/lit8 v0, p0, 0xf

    xor-int/lit16 v0, v0, -0x3283

    add-int/2addr v0, p0

    .line 1865
    ushr-int/lit8 v1, v0, 0xa

    xor-int/2addr v0, v1

    .line 1866
    shl-int/lit8 v1, v0, 0x3

    add-int/2addr v0, v1

    .line 1867
    ushr-int/lit8 v1, v0, 0x6

    xor-int/2addr v0, v1

    .line 1868
    shl-int/lit8 v1, v0, 0x2

    shl-int/lit8 v2, v0, 0xe

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 1869
    ushr-int/lit8 v1, v0, 0x10

    xor-int/2addr v0, v1

    return v0
.end method

.method static a(Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;",
            "Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 1981
    invoke-interface {p0, p1}, Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;->setNextExpirable(Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;)V

    .line 1982
    invoke-interface {p1, p0}, Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;->setPreviousExpirable(Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;)V

    .line 1983
    return-void
.end method

.method static b(Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;",
            "Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 2013
    invoke-interface {p0, p1}, Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;->setNextEvictable(Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;)V

    .line 2014
    invoke-interface {p1, p0}, Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;->setPreviousEvictable(Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;)V

    .line 2015
    return-void
.end method

.method static d(Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 1987
    invoke-static {}, Lcom/google/common/cache/CustomConcurrentHashMap;->h()Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    .line 1988
    invoke-interface {p0, v0}, Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;->setNextExpirable(Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;)V

    .line 1989
    invoke-interface {p0, v0}, Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;->setPreviousExpirable(Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;)V

    .line 1990
    return-void
.end method

.method static e(Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 2019
    invoke-static {}, Lcom/google/common/cache/CustomConcurrentHashMap;->h()Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    .line 2020
    invoke-interface {p0, v0}, Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;->setNextEvictable(Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;)V

    .line 2021
    invoke-interface {p0, v0}, Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;->setPreviousEvictable(Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;)V

    .line 2022
    return-void
.end method

.method static g()Lcom/google/common/cache/CustomConcurrentHashMap$ValueReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/cache/CustomConcurrentHashMap$ValueReference",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 672
    sget-object v0, Lcom/google/common/cache/CustomConcurrentHashMap;->q:Lcom/google/common/cache/CustomConcurrentHashMap$ValueReference;

    return-object v0
.end method

.method static h()Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 924
    sget-object v0, Lcom/google/common/cache/CustomConcurrentHashMap$NullEntry;->INSTANCE:Lcom/google/common/cache/CustomConcurrentHashMap$NullEntry;

    return-object v0
.end method

.method static i()Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Queue",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 959
    sget-object v0, Lcom/google/common/cache/CustomConcurrentHashMap;->r:Ljava/util/Queue;

    return-object v0
.end method


# virtual methods
.method a(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 1902
    iget-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap;->f:Lcom/google/common/base/Equivalence;

    invoke-virtual {v0, p1}, Lcom/google/common/base/Equivalence;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 1903
    invoke-static {v0}, Lcom/google/common/cache/CustomConcurrentHashMap;->a(I)I

    move-result v0

    return v0
.end method

.method a(IILcom/google/common/cache/AbstractCache$StatsCounter;)Lcom/google/common/cache/CustomConcurrentHashMap$Segment;
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/google/common/cache/AbstractCache$StatsCounter;",
            ")",
            "Lcom/google/common/cache/CustomConcurrentHashMap$Segment",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1939
    new-instance v0, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;-><init>(Lcom/google/common/cache/CustomConcurrentHashMap;IILcom/google/common/cache/AbstractCache$StatsCounter;)V

    return-object v0
.end method

.method a(Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1913
    invoke-interface {p1}, Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;->getHash()I

    move-result v0

    .line 1914
    invoke-virtual {p0, v0}, Lcom/google/common/cache/CustomConcurrentHashMap;->b(I)Lcom/google/common/cache/CustomConcurrentHashMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->a(Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;I)Z

    .line 1915
    return-void
.end method

.method a(Lcom/google/common/cache/CustomConcurrentHashMap$ValueReference;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/CustomConcurrentHashMap$ValueReference",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1907
    invoke-interface {p1}, Lcom/google/common/cache/CustomConcurrentHashMap$ValueReference;->a()Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    .line 1908
    invoke-interface {v0}, Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;->getHash()I

    move-result v1

    .line 1909
    invoke-virtual {p0, v1}, Lcom/google/common/cache/CustomConcurrentHashMap;->b(I)Lcom/google/common/cache/CustomConcurrentHashMap$Segment;

    move-result-object v2

    invoke-interface {v0}, Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0, v1, p1}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->a(Ljava/lang/Object;ILcom/google/common/cache/CustomConcurrentHashMap$ValueReference;)Z

    .line 1910
    return-void
.end method

.method a()Z
    .locals 2

    .prologue
    .line 274
    iget v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap;->j:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;J)Z
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;J)Z"
        }
    .end annotation

    .prologue
    .line 1976
    invoke-interface {p1}, Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;->getExpirationTime()J

    move-result-wide v0

    sub-long v0, p2, v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b(I)Lcom/google/common/cache/CustomConcurrentHashMap$Segment;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/cache/CustomConcurrentHashMap$Segment",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1934
    iget-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap;->c:[Lcom/google/common/cache/CustomConcurrentHashMap$Segment;

    iget v1, p0, Lcom/google/common/cache/CustomConcurrentHashMap;->b:I

    ushr-int v1, p1, v1

    iget v2, p0, Lcom/google/common/cache/CustomConcurrentHashMap;->a:I

    and-int/2addr v1, v2

    aget-object v0, v0, v1

    return-object v0
.end method

.method b(Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;)Ljava/lang/Object;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;)TV;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1948
    invoke-interface {p1}, Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1959
    :cond_0
    :goto_0
    return-object v0

    .line 1951
    :cond_1
    invoke-interface {p1}, Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;->getValueReference()Lcom/google/common/cache/CustomConcurrentHashMap$ValueReference;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/common/cache/CustomConcurrentHashMap$ValueReference;->get()Ljava/lang/Object;

    move-result-object v1

    .line 1952
    if-eqz v1, :cond_0

    .line 1956
    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap;->b()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, p1}, Lcom/google/common/cache/CustomConcurrentHashMap;->c(Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move-object v0, v1

    .line 1959
    goto :goto_0
.end method

.method b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 3801
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/cache/CustomConcurrentHashMap;->a(Ljava/lang/Object;)I

    move-result v0

    .line 3802
    invoke-virtual {p0, v0}, Lcom/google/common/cache/CustomConcurrentHashMap;->b(I)Lcom/google/common/cache/CustomConcurrentHashMap$Segment;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/cache/CustomConcurrentHashMap;->d:Lcom/google/common/cache/CacheLoader;

    invoke-virtual {v1, p1, v0, v2}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->a(Ljava/lang/Object;ILcom/google/common/cache/CacheLoader;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method b()Z
    .locals 1

    .prologue
    .line 278
    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap;->c()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method c()Z
    .locals 4

    .prologue
    .line 282
    iget-wide v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap;->l:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method c(Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 1968
    iget-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap;->p:Lcom/google/common/base/Ticker;

    invoke-virtual {v0}, Lcom/google/common/base/Ticker;->read()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/common/cache/CustomConcurrentHashMap;->a(Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;J)Z

    move-result v0

    return v0
.end method

.method final c(I)[Lcom/google/common/cache/CustomConcurrentHashMap$Segment;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Lcom/google/common/cache/CustomConcurrentHashMap$Segment",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2026
    new-array v0, p1, [Lcom/google/common/cache/CustomConcurrentHashMap$Segment;

    return-object v0
.end method

.method public clear()V
    .locals 4

    .prologue
    .line 3942
    iget-object v1, p0, Lcom/google/common/cache/CustomConcurrentHashMap;->c:[Lcom/google/common/cache/CustomConcurrentHashMap$Segment;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 3943
    invoke-virtual {v3}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->m()V

    .line 3942
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3945
    :cond_0
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 3833
    if-nez p1, :cond_0

    .line 3834
    const/4 v0, 0x0

    .line 3837
    :goto_0
    return v0

    .line 3836
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/cache/CustomConcurrentHashMap;->a(Ljava/lang/Object;)I

    move-result v0

    .line 3837
    invoke-virtual {p0, v0}, Lcom/google/common/cache/CustomConcurrentHashMap;->b(I)Lcom/google/common/cache/CustomConcurrentHashMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->d(Ljava/lang/Object;I)Z

    move-result v0

    goto :goto_0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 14
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 3843
    if-nez p1, :cond_0

    .line 3844
    const/4 v0, 0x0

    .line 3877
    :goto_0
    return v0

    .line 3852
    :cond_0
    iget-object v8, p0, Lcom/google/common/cache/CustomConcurrentHashMap;->c:[Lcom/google/common/cache/CustomConcurrentHashMap$Segment;

    .line 3853
    const-wide/16 v3, -0x1

    .line 3854
    const/4 v0, 0x0

    move v5, v0

    move-wide v6, v3

    :goto_1
    const/4 v0, 0x3

    if-ge v5, v0, :cond_5

    .line 3855
    const-wide/16 v1, 0x0

    .line 3856
    array-length v9, v8

    const/4 v0, 0x0

    move-wide v3, v1

    move v2, v0

    :goto_2
    if-ge v2, v9, :cond_4

    aget-object v10, v8, v2

    .line 3859
    iget v0, v10, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->b:I

    .line 3861
    iget-object v11, v10, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3862
    const/4 v0, 0x0

    move v1, v0

    :goto_3
    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 3863
    invoke-virtual {v11, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    :goto_4
    if-eqz v0, :cond_2

    .line 3864
    invoke-virtual {v10, v0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->f(Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;)Ljava/lang/Object;

    move-result-object v12

    .line 3865
    if-eqz v12, :cond_1

    iget-object v13, p0, Lcom/google/common/cache/CustomConcurrentHashMap;->g:Lcom/google/common/base/Equivalence;

    invoke-virtual {v13, p1, v12}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 3866
    const/4 v0, 0x1

    goto :goto_0

    .line 3863
    :cond_1
    invoke-interface {v0}, Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;->getNext()Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    goto :goto_4

    .line 3862
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 3870
    :cond_3
    iget v0, v10, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->c:I

    int-to-long v0, v0

    add-long/2addr v3, v0

    .line 3856
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 3872
    :cond_4
    cmp-long v0, v3, v6

    if-nez v0, :cond_6

    .line 3877
    :cond_5
    const/4 v0, 0x0

    goto :goto_0

    .line 3854
    :cond_6
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    move-wide v6, v3

    goto :goto_1
.end method

.method d()Z
    .locals 4

    .prologue
    .line 286
    iget-wide v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap;->k:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method e()Z
    .locals 2

    .prologue
    .line 290
    iget-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap;->h:Lcom/google/common/cache/CustomConcurrentHashMap$Strength;

    sget-object v1, Lcom/google/common/cache/CustomConcurrentHashMap$Strength;->STRONG:Lcom/google/common/cache/CustomConcurrentHashMap$Strength;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 3970
    iget-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap;->u:Ljava/util/Set;

    .line 3971
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/cache/CustomConcurrentHashMap$EntrySet;

    invoke-direct {v0, p0}, Lcom/google/common/cache/CustomConcurrentHashMap$EntrySet;-><init>(Lcom/google/common/cache/CustomConcurrentHashMap;)V

    iput-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap;->u:Ljava/util/Set;

    goto :goto_0
.end method

.method f()Z
    .locals 2

    .prologue
    .line 294
    iget-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap;->i:Lcom/google/common/cache/CustomConcurrentHashMap$Strength;

    sget-object v1, Lcom/google/common/cache/CustomConcurrentHashMap$Strength;->STRONG:Lcom/google/common/cache/CustomConcurrentHashMap$Strength;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 3793
    if-nez p1, :cond_0

    .line 3794
    const/4 v0, 0x0

    .line 3797
    :goto_0
    return-object v0

    .line 3796
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/cache/CustomConcurrentHashMap;->a(Ljava/lang/Object;)I

    move-result v0

    .line 3797
    invoke-virtual {p0, v0}, Lcom/google/common/cache/CustomConcurrentHashMap;->b(I)Lcom/google/common/cache/CustomConcurrentHashMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->c(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 9

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    .line 3754
    .line 3755
    iget-object v6, p0, Lcom/google/common/cache/CustomConcurrentHashMap;->c:[Lcom/google/common/cache/CustomConcurrentHashMap$Segment;

    move v0, v1

    move-wide v2, v4

    .line 3756
    :goto_0
    array-length v7, v6

    if-ge v0, v7, :cond_2

    .line 3757
    aget-object v7, v6, v0

    iget v7, v7, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->b:I

    if-eqz v7, :cond_1

    .line 3774
    :cond_0
    :goto_1
    return v1

    .line 3760
    :cond_1
    aget-object v7, v6, v0

    iget v7, v7, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->c:I

    int-to-long v7, v7

    add-long/2addr v2, v7

    .line 3756
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3763
    :cond_2
    cmp-long v0, v2, v4

    if-eqz v0, :cond_4

    move v0, v1

    .line 3764
    :goto_2
    array-length v7, v6

    if-ge v0, v7, :cond_3

    .line 3765
    aget-object v7, v6, v0

    iget v7, v7, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->b:I

    if-nez v7, :cond_0

    .line 3768
    aget-object v7, v6, v0

    iget v7, v7, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->c:I

    int-to-long v7, v7

    sub-long/2addr v2, v7

    .line 3764
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 3770
    :cond_3
    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    .line 3774
    :cond_4
    const/4 v1, 0x1

    goto :goto_1
.end method

.method j()V
    .locals 4

    .prologue
    .line 2001
    :goto_0
    iget-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap;->m:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/RemovalNotification;

    if-eqz v0, :cond_0

    .line 2003
    :try_start_0
    iget-object v1, p0, Lcom/google/common/cache/CustomConcurrentHashMap;->n:Lcom/google/common/cache/RemovalListener;

    invoke-interface {v1, v0}, Lcom/google/common/cache/RemovalListener;->onRemoval(Lcom/google/common/cache/RemovalNotification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2004
    :catch_0
    move-exception v0

    .line 2005
    sget-object v1, Lcom/google/common/cache/CustomConcurrentHashMap;->v:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "Exception thrown by removal listener"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2008
    :cond_0
    return-void
.end method

.method k()J
    .locals 6

    .prologue
    .line 3778
    iget-object v3, p0, Lcom/google/common/cache/CustomConcurrentHashMap;->c:[Lcom/google/common/cache/CustomConcurrentHashMap$Segment;

    .line 3779
    const-wide/16 v1, 0x0

    .line 3780
    const/4 v0, 0x0

    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_0

    .line 3781
    aget-object v4, v3, v0

    iget v4, v4, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->b:I

    int-to-long v4, v4

    add-long/2addr v1, v4

    .line 3780
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3783
    :cond_0
    return-wide v1
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 3952
    iget-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap;->s:Ljava/util/Set;

    .line 3953
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/cache/CustomConcurrentHashMap$KeySet;

    invoke-direct {v0, p0}, Lcom/google/common/cache/CustomConcurrentHashMap$KeySet;-><init>(Lcom/google/common/cache/CustomConcurrentHashMap;)V

    iput-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap;->s:Ljava/util/Set;

    goto :goto_0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 3882
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3883
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3884
    invoke-virtual {p0, p1}, Lcom/google/common/cache/CustomConcurrentHashMap;->a(Ljava/lang/Object;)I

    move-result v0

    .line 3885
    invoke-virtual {p0, v0}, Lcom/google/common/cache/CustomConcurrentHashMap;->b(I)Lcom/google/common/cache/CustomConcurrentHashMap$Segment;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, p2, v2}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->a(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 3898
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 3899
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/google/common/cache/CustomConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 3901
    :cond_0
    return-void
.end method

.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 3890
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3891
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3892
    invoke-virtual {p0, p1}, Lcom/google/common/cache/CustomConcurrentHashMap;->a(Ljava/lang/Object;)I

    move-result v0

    .line 3893
    invoke-virtual {p0, v0}, Lcom/google/common/cache/CustomConcurrentHashMap;->b(I)Lcom/google/common/cache/CustomConcurrentHashMap$Segment;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, p2, v2}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->a(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 3905
    if-nez p1, :cond_0

    .line 3906
    const/4 v0, 0x0

    .line 3909
    :goto_0
    return-object v0

    .line 3908
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/cache/CustomConcurrentHashMap;->a(Ljava/lang/Object;)I

    move-result v0

    .line 3909
    invoke-virtual {p0, v0}, Lcom/google/common/cache/CustomConcurrentHashMap;->b(I)Lcom/google/common/cache/CustomConcurrentHashMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->e(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 3914
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 3915
    :cond_0
    const/4 v0, 0x0

    .line 3918
    :goto_0
    return v0

    .line 3917
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/common/cache/CustomConcurrentHashMap;->a(Ljava/lang/Object;)I

    move-result v0

    .line 3918
    invoke-virtual {p0, v0}, Lcom/google/common/cache/CustomConcurrentHashMap;->b(I)Lcom/google/common/cache/CustomConcurrentHashMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->b(Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 3934
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3935
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3936
    invoke-virtual {p0, p1}, Lcom/google/common/cache/CustomConcurrentHashMap;->a(Ljava/lang/Object;)I

    move-result v0

    .line 3937
    invoke-virtual {p0, v0}, Lcom/google/common/cache/CustomConcurrentHashMap;->b(I)Lcom/google/common/cache/CustomConcurrentHashMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->a(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)Z"
        }
    .end annotation

    .prologue
    .line 3923
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3924
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3925
    if-nez p2, :cond_0

    .line 3926
    const/4 v0, 0x0

    .line 3929
    :goto_0
    return v0

    .line 3928
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/cache/CustomConcurrentHashMap;->a(Ljava/lang/Object;)I

    move-result v0

    .line 3929
    invoke-virtual {p0, v0}, Lcom/google/common/cache/CustomConcurrentHashMap;->b(I)Lcom/google/common/cache/CustomConcurrentHashMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2, p3}, Lcom/google/common/cache/CustomConcurrentHashMap$Segment;->a(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 3788
    invoke-virtual {p0}, Lcom/google/common/cache/CustomConcurrentHashMap;->k()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->b(J)I

    move-result v0

    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 3961
    iget-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap;->t:Ljava/util/Collection;

    .line 3962
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/cache/CustomConcurrentHashMap$Values;

    invoke-direct {v0, p0}, Lcom/google/common/cache/CustomConcurrentHashMap$Values;-><init>(Lcom/google/common/cache/CustomConcurrentHashMap;)V

    iput-object v0, p0, Lcom/google/common/cache/CustomConcurrentHashMap;->t:Ljava/util/Collection;

    goto :goto_0
.end method
