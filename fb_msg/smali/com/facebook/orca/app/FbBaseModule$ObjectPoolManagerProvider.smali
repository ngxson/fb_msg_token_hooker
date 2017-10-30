.class Lcom/facebook/orca/app/FbBaseModule$ObjectPoolManagerProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "FbBaseModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/common/util/ObjectPoolManager;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/app/FbBaseModule;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/FbBaseModule;)V
    .locals 0
    .parameter

    .prologue
    .line 622
    iput-object p1, p0, Lcom/facebook/orca/app/FbBaseModule$ObjectPoolManagerProvider;->a:Lcom/facebook/orca/app/FbBaseModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/FbBaseModule;Lcom/facebook/orca/app/FbBaseModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 622
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/FbBaseModule$ObjectPoolManagerProvider;-><init>(Lcom/facebook/orca/app/FbBaseModule;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/common/util/ObjectPoolManager;
    .locals 2

    .prologue
    .line 626
    new-instance v1, Lcom/facebook/orca/common/util/ObjectPoolManager;

    const-class v0, Lcom/facebook/orca/common/util/SystemClock;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/FbBaseModule$ObjectPoolManagerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/util/Clock;

    invoke-direct {v1, v0}, Lcom/facebook/orca/common/util/ObjectPoolManager;-><init>(Lcom/facebook/orca/common/util/Clock;)V

    .line 629
    const-class v0, Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/common/util/ObjectPoolManager;->a(Ljava/lang/Class;)Lcom/facebook/orca/common/util/ObjectPoolManager$ObjectPoolBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/common/util/ObjectPoolManager$ObjectPoolBuilder;->a()Lcom/facebook/orca/common/util/ObjectPool;

    .line 631
    return-object v1
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 622
    invoke-virtual {p0}, Lcom/facebook/orca/app/FbBaseModule$ObjectPoolManagerProvider;->a()Lcom/facebook/orca/common/util/ObjectPoolManager;

    move-result-object v0

    return-object v0
.end method
