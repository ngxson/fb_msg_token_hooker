.class public Lcom/facebook/orca/common/util/ObjectPoolManager;
.super Ljava/lang/Object;
.source "ObjectPoolManager.java"


# instance fields
.field private final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class;",
            "Lcom/facebook/orca/common/util/ObjectPool;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/facebook/orca/common/util/Clock;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/common/util/Clock;)V
    .locals 1
    .parameter

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/orca/common/util/ObjectPoolManager;->a:Ljava/util/HashMap;

    .line 110
    iput-object p1, p0, Lcom/facebook/orca/common/util/ObjectPoolManager;->b:Lcom/facebook/orca/common/util/Clock;

    .line 111
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/common/util/ObjectPoolManager;)Ljava/util/HashMap;
    .locals 1
    .parameter

    .prologue
    .line 11
    iget-object v0, p0, Lcom/facebook/orca/common/util/ObjectPoolManager;->a:Ljava/util/HashMap;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Lcom/facebook/orca/common/util/ObjectPoolManager$ObjectPoolBuilder;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/facebook/orca/common/util/ObjectPoolManager$ObjectPoolBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 121
    new-instance v0, Lcom/facebook/orca/common/util/ObjectPoolManager$ObjectPoolBuilder;

    iget-object v1, p0, Lcom/facebook/orca/common/util/ObjectPoolManager;->b:Lcom/facebook/orca/common/util/Clock;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/facebook/orca/common/util/ObjectPoolManager$ObjectPoolBuilder;-><init>(Lcom/facebook/orca/common/util/ObjectPoolManager;Ljava/lang/Class;Lcom/facebook/orca/common/util/Clock;Lcom/facebook/orca/common/util/ObjectPoolManager$1;)V

    return-object v0
.end method

.method public b(Ljava/lang/Class;)Lcom/facebook/orca/common/util/ObjectPool;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/facebook/orca/common/util/ObjectPool",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 131
    iget-object v0, p0, Lcom/facebook/orca/common/util/ObjectPoolManager;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/util/ObjectPool;

    return-object v0
.end method
