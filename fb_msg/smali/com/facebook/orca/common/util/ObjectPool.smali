.class public Lcom/facebook/orca/common/util/ObjectPool;
.super Ljava/lang/Object;
.source "ObjectPool.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:Lcom/facebook/orca/common/util/ObjectPool$Allocator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/orca/common/util/ObjectPool$Allocator",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final f:Lcom/facebook/orca/common/util/Clock;

.field private final g:J

.field private h:J

.field private i:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private j:I


# direct methods
.method public constructor <init>(Ljava/lang/Class;IIIJLcom/facebook/orca/common/util/ObjectPool$Allocator;Lcom/facebook/orca/common/util/Clock;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;IIIJ",
            "Lcom/facebook/orca/common/util/ObjectPool$Allocator",
            "<TT;>;",
            "Lcom/facebook/orca/common/util/Clock;",
            ")V"
        }
    .end annotation

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-object p1, p0, Lcom/facebook/orca/common/util/ObjectPool;->a:Ljava/lang/Class;

    .line 122
    const/4 v0, 0x0

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/facebook/orca/common/util/ObjectPool;->b:I

    .line 123
    iget v0, p0, Lcom/facebook/orca/common/util/ObjectPool;->b:I

    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/facebook/orca/common/util/ObjectPool;->c:I

    .line 124
    const/4 v0, 0x1

    invoke-static {p4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/facebook/orca/common/util/ObjectPool;->d:I

    .line 125
    iput-wide p5, p0, Lcom/facebook/orca/common/util/ObjectPool;->g:J

    .line 126
    iput-object p7, p0, Lcom/facebook/orca/common/util/ObjectPool;->e:Lcom/facebook/orca/common/util/ObjectPool$Allocator;

    .line 127
    iget-object v0, p0, Lcom/facebook/orca/common/util/ObjectPool;->e:Lcom/facebook/orca/common/util/ObjectPool$Allocator;

    invoke-interface {v0, p0}, Lcom/facebook/orca/common/util/ObjectPool$Allocator;->a(Lcom/facebook/orca/common/util/ObjectPool;)V

    .line 128
    iput-object p8, p0, Lcom/facebook/orca/common/util/ObjectPool;->f:Lcom/facebook/orca/common/util/Clock;

    .line 129
    iget-object v0, p0, Lcom/facebook/orca/common/util/ObjectPool;->a:Ljava/lang/Class;

    iget v1, p0, Lcom/facebook/orca/common/util/ObjectPool;->b:I

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/facebook/orca/common/util/ObjectPool;->i:[Ljava/lang/Object;

    .line 130
    return-void
.end method

.method private a(I)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 225
    move v0, p1

    :goto_0
    iget v1, p0, Lcom/facebook/orca/common/util/ObjectPool;->j:I

    if-ge v0, v1, :cond_0

    .line 226
    iget-object v1, p0, Lcom/facebook/orca/common/util/ObjectPool;->e:Lcom/facebook/orca/common/util/ObjectPool$Allocator;

    iget-object v2, p0, Lcom/facebook/orca/common/util/ObjectPool;->i:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Lcom/facebook/orca/common/util/ObjectPool$Allocator;->c(Ljava/lang/Object;)V

    .line 225
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/common/util/ObjectPool;->a:Ljava/lang/Class;

    invoke-static {v0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 229
    iget-object v1, p0, Lcom/facebook/orca/common/util/ObjectPool;->i:[Ljava/lang/Object;

    iget-object v2, p0, Lcom/facebook/orca/common/util/ObjectPool;->i:[Ljava/lang/Object;

    array-length v2, v2

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 230
    iput-object v0, p0, Lcom/facebook/orca/common/util/ObjectPool;->i:[Ljava/lang/Object;

    .line 231
    iget v0, p0, Lcom/facebook/orca/common/util/ObjectPool;->j:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/facebook/orca/common/util/ObjectPool;->j:I

    .line 232
    return-void
.end method


# virtual methods
.method public declared-synchronized a()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 139
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/facebook/orca/common/util/ObjectPool;->j:I

    if-lez v0, :cond_0

    .line 140
    iget v0, p0, Lcom/facebook/orca/common/util/ObjectPool;->j:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/facebook/orca/common/util/ObjectPool;->j:I

    .line 141
    iget-object v0, p0, Lcom/facebook/orca/common/util/ObjectPool;->i:[Ljava/lang/Object;

    iget v1, p0, Lcom/facebook/orca/common/util/ObjectPool;->j:I

    aget-object v0, v0, v1

    .line 142
    iget-object v1, p0, Lcom/facebook/orca/common/util/ObjectPool;->i:[Ljava/lang/Object;

    iget v2, p0, Lcom/facebook/orca/common/util/ObjectPool;->j:I

    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 146
    :goto_0
    iget-object v1, p0, Lcom/facebook/orca/common/util/ObjectPool;->e:Lcom/facebook/orca/common/util/ObjectPool$Allocator;

    invoke-interface {v1, v0}, Lcom/facebook/orca/common/util/ObjectPool$Allocator;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    monitor-exit p0

    return-object v0

    .line 144
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/facebook/orca/common/util/ObjectPool;->e:Lcom/facebook/orca/common/util/ObjectPool$Allocator;

    invoke-interface {v0}, Lcom/facebook/orca/common/util/ObjectPool$Allocator;->a()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 139
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/Object;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 156
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/orca/common/util/ObjectPool;->b()V

    .line 158
    iget-object v0, p0, Lcom/facebook/orca/common/util/ObjectPool;->e:Lcom/facebook/orca/common/util/ObjectPool$Allocator;

    invoke-interface {v0, p1}, Lcom/facebook/orca/common/util/ObjectPool$Allocator;->b(Ljava/lang/Object;)V

    .line 159
    iget v0, p0, Lcom/facebook/orca/common/util/ObjectPool;->j:I

    iget v1, p0, Lcom/facebook/orca/common/util/ObjectPool;->c:I

    if-ge v0, v1, :cond_1

    .line 160
    iget v0, p0, Lcom/facebook/orca/common/util/ObjectPool;->j:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/facebook/orca/common/util/ObjectPool;->i:[Ljava/lang/Object;

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 161
    iget v0, p0, Lcom/facebook/orca/common/util/ObjectPool;->c:I

    iget-object v1, p0, Lcom/facebook/orca/common/util/ObjectPool;->i:[Ljava/lang/Object;

    array-length v1, v1

    iget v2, p0, Lcom/facebook/orca/common/util/ObjectPool;->d:I

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/facebook/orca/common/util/ObjectPool;->a(I)V

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/common/util/ObjectPool;->i:[Ljava/lang/Object;

    iget v1, p0, Lcom/facebook/orca/common/util/ObjectPool;->j:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/facebook/orca/common/util/ObjectPool;->j:I

    aput-object p1, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    :goto_0
    monitor-exit p0

    return-void

    .line 165
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/facebook/orca/common/util/ObjectPool;->e:Lcom/facebook/orca/common/util/ObjectPool$Allocator;

    invoke-interface {v0, p1}, Lcom/facebook/orca/common/util/ObjectPool$Allocator;->c(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 156
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()V
    .locals 4

    .prologue
    .line 173
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/facebook/orca/common/util/ObjectPool;->j:I

    iget v1, p0, Lcom/facebook/orca/common/util/ObjectPool;->d:I

    mul-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_0

    .line 174
    iget-object v0, p0, Lcom/facebook/orca/common/util/ObjectPool;->f:Lcom/facebook/orca/common/util/Clock;

    invoke-interface {v0}, Lcom/facebook/orca/common/util/Clock;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/common/util/ObjectPool;->h:J

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/common/util/ObjectPool;->f:Lcom/facebook/orca/common/util/Clock;

    invoke-interface {v0}, Lcom/facebook/orca/common/util/Clock;->a()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/facebook/orca/common/util/ObjectPool;->h:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/facebook/orca/common/util/ObjectPool;->g:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 177
    invoke-virtual {p0}, Lcom/facebook/orca/common/util/ObjectPool;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    :cond_1
    monitor-exit p0

    return-void

    .line 173
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()V
    .locals 2

    .prologue
    .line 185
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/common/util/ObjectPool;->i:[Ljava/lang/Object;

    array-length v0, v0

    iget v1, p0, Lcom/facebook/orca/common/util/ObjectPool;->d:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/facebook/orca/common/util/ObjectPool;->b:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 186
    iget-object v1, p0, Lcom/facebook/orca/common/util/ObjectPool;->i:[Ljava/lang/Object;

    array-length v1, v1

    if-eq v0, v1, :cond_0

    .line 187
    invoke-direct {p0, v0}, Lcom/facebook/orca/common/util/ObjectPool;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    :cond_0
    monitor-exit p0

    return-void

    .line 185
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
