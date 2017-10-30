.class Lcom/google/common/cache/ComputingCache;
.super Lcom/google/common/cache/AbstractCache;
.source "ComputingCache.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/cache/AbstractCache",
        "<TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field final a:Lcom/google/common/cache/CustomConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/CustomConcurrentHashMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/cache/CacheBuilder;Lcom/google/common/base/Supplier;Lcom/google/common/cache/CacheLoader;)V
    .locals 1
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
    .line 38
    invoke-direct {p0}, Lcom/google/common/cache/AbstractCache;-><init>()V

    .line 39
    new-instance v0, Lcom/google/common/cache/CustomConcurrentHashMap;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/common/cache/CustomConcurrentHashMap;-><init>(Lcom/google/common/cache/CacheBuilder;Lcom/google/common/base/Supplier;Lcom/google/common/cache/CacheLoader;)V

    iput-object v0, p0, Lcom/google/common/cache/ComputingCache;->a:Lcom/google/common/cache/CustomConcurrentHashMap;

    .line 40
    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/common/cache/ComputingCache;->a:Lcom/google/common/cache/CustomConcurrentHashMap;

    invoke-virtual {v0, p1}, Lcom/google/common/cache/CustomConcurrentHashMap;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
