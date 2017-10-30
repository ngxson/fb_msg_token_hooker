.class public Lcom/facebook/orca/common/util/ObjectPoolManager$ObjectPoolBuilder;
.super Ljava/lang/Object;
.source "ObjectPoolManager.java"


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
.field final synthetic a:Lcom/facebook/orca/common/util/ObjectPoolManager;

.field private b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field private c:I

.field private d:I

.field private e:I

.field private f:J

.field private g:Lcom/facebook/orca/common/util/ObjectPool$Allocator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/orca/common/util/ObjectPool$Allocator",
            "<TT;>;"
        }
    .end annotation
.end field

.field private h:Lcom/facebook/orca/common/util/Clock;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/common/util/ObjectPoolManager;Ljava/lang/Class;Lcom/facebook/orca/common/util/Clock;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/facebook/orca/common/util/Clock;",
            ")V"
        }
    .end annotation

    .prologue
    const/16 v1, 0x10

    .line 34
    iput-object p1, p0, Lcom/facebook/orca/common/util/ObjectPoolManager$ObjectPoolBuilder;->a:Lcom/facebook/orca/common/util/ObjectPoolManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput v1, p0, Lcom/facebook/orca/common/util/ObjectPoolManager$ObjectPoolBuilder;->c:I

    .line 22
    const/16 v0, 0x400

    iput v0, p0, Lcom/facebook/orca/common/util/ObjectPoolManager$ObjectPoolBuilder;->d:I

    .line 23
    iput v1, p0, Lcom/facebook/orca/common/util/ObjectPoolManager$ObjectPoolBuilder;->e:I

    .line 24
    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lcom/facebook/orca/common/util/ObjectPoolManager$ObjectPoolBuilder;->f:J

    .line 35
    iput-object p2, p0, Lcom/facebook/orca/common/util/ObjectPoolManager$ObjectPoolBuilder;->b:Ljava/lang/Class;

    .line 36
    iput-object p3, p0, Lcom/facebook/orca/common/util/ObjectPoolManager$ObjectPoolBuilder;->h:Lcom/facebook/orca/common/util/Clock;

    .line 37
    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/common/util/ObjectPoolManager;Ljava/lang/Class;Lcom/facebook/orca/common/util/Clock;Lcom/facebook/orca/common/util/ObjectPoolManager$1;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/orca/common/util/ObjectPoolManager$ObjectPoolBuilder;-><init>(Lcom/facebook/orca/common/util/ObjectPoolManager;Ljava/lang/Class;Lcom/facebook/orca/common/util/Clock;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/common/util/ObjectPool;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/orca/common/util/ObjectPool",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 94
    iget-object v0, p0, Lcom/facebook/orca/common/util/ObjectPoolManager$ObjectPoolBuilder;->h:Lcom/facebook/orca/common/util/Clock;

    if-nez v0, :cond_0

    .line 95
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must add a clock to the object pool builder"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_0
    iget-object v7, p0, Lcom/facebook/orca/common/util/ObjectPoolManager$ObjectPoolBuilder;->g:Lcom/facebook/orca/common/util/ObjectPool$Allocator;

    .line 98
    if-nez v7, :cond_1

    .line 99
    new-instance v7, Lcom/facebook/orca/common/util/ObjectPool$BasicAllocator;

    iget-object v0, p0, Lcom/facebook/orca/common/util/ObjectPoolManager$ObjectPoolBuilder;->b:Ljava/lang/Class;

    invoke-direct {v7, v0}, Lcom/facebook/orca/common/util/ObjectPool$BasicAllocator;-><init>(Ljava/lang/Class;)V

    .line 101
    :cond_1
    new-instance v0, Lcom/facebook/orca/common/util/ObjectPool;

    iget-object v1, p0, Lcom/facebook/orca/common/util/ObjectPoolManager$ObjectPoolBuilder;->b:Ljava/lang/Class;

    iget v2, p0, Lcom/facebook/orca/common/util/ObjectPoolManager$ObjectPoolBuilder;->c:I

    iget v3, p0, Lcom/facebook/orca/common/util/ObjectPoolManager$ObjectPoolBuilder;->d:I

    iget v4, p0, Lcom/facebook/orca/common/util/ObjectPoolManager$ObjectPoolBuilder;->e:I

    iget-wide v5, p0, Lcom/facebook/orca/common/util/ObjectPoolManager$ObjectPoolBuilder;->f:J

    iget-object v8, p0, Lcom/facebook/orca/common/util/ObjectPoolManager$ObjectPoolBuilder;->h:Lcom/facebook/orca/common/util/Clock;

    invoke-direct/range {v0 .. v8}, Lcom/facebook/orca/common/util/ObjectPool;-><init>(Ljava/lang/Class;IIIJLcom/facebook/orca/common/util/ObjectPool$Allocator;Lcom/facebook/orca/common/util/Clock;)V

    .line 103
    iget-object v1, p0, Lcom/facebook/orca/common/util/ObjectPoolManager$ObjectPoolBuilder;->a:Lcom/facebook/orca/common/util/ObjectPoolManager;

    invoke-static {v1}, Lcom/facebook/orca/common/util/ObjectPoolManager;->a(Lcom/facebook/orca/common/util/ObjectPoolManager;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/orca/common/util/ObjectPoolManager$ObjectPoolBuilder;->b:Ljava/lang/Class;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    return-object v0
.end method
