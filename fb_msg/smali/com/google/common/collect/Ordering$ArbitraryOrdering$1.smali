.class Lcom/google/common/collect/Ordering$ArbitraryOrdering$1;
.super Ljava/lang/Object;
.source "Ordering.java"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic b:Lcom/google/common/collect/Ordering$ArbitraryOrdering;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Ordering$ArbitraryOrdering;)V
    .locals 2
    .parameter

    .prologue
    .line 212
    iput-object p1, p0, Lcom/google/common/collect/Ordering$ArbitraryOrdering$1;->b:Lcom/google/common/collect/Ordering$ArbitraryOrdering;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/google/common/collect/Ordering$ArbitraryOrdering$1;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 1
    .parameter

    .prologue
    .line 216
    iget-object v0, p0, Lcom/google/common/collect/Ordering$ArbitraryOrdering$1;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 212
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Ordering$ArbitraryOrdering$1;->a(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
