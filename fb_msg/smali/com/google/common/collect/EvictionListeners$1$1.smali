.class Lcom/google/common/collect/EvictionListeners$1$1;
.super Ljava/lang/Object;
.source "EvictionListeners.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Ljava/lang/Object;

.field final synthetic c:Lcom/google/common/collect/EvictionListeners$1;


# direct methods
.method constructor <init>(Lcom/google/common/collect/EvictionListeners$1;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/google/common/collect/EvictionListeners$1$1;->c:Lcom/google/common/collect/EvictionListeners$1;

    iput-object p2, p0, Lcom/google/common/collect/EvictionListeners$1$1;->a:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/common/collect/EvictionListeners$1$1;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/common/collect/EvictionListeners$1$1;->c:Lcom/google/common/collect/EvictionListeners$1;

    iget-object v0, v0, Lcom/google/common/collect/EvictionListeners$1;->b:Lcom/google/common/collect/MapEvictionListener;

    iget-object v1, p0, Lcom/google/common/collect/EvictionListeners$1$1;->a:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/common/collect/EvictionListeners$1$1;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/common/collect/MapEvictionListener;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 66
    return-void
.end method
