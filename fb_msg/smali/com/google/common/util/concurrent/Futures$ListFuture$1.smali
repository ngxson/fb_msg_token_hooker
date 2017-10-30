.class Lcom/google/common/util/concurrent/Futures$ListFuture$1;
.super Ljava/lang/Object;
.source "Futures.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/common/util/concurrent/Futures$ListFuture;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/Futures$ListFuture;)V
    .locals 0
    .parameter

    .prologue
    .line 1401
    iput-object p1, p0, Lcom/google/common/util/concurrent/Futures$ListFuture$1;->a:Lcom/google/common/util/concurrent/Futures$ListFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1406
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$ListFuture$1;->a:Lcom/google/common/util/concurrent/Futures$ListFuture;

    iput-object v1, v0, Lcom/google/common/util/concurrent/Futures$ListFuture;->d:Ljava/util/List;

    .line 1409
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$ListFuture$1;->a:Lcom/google/common/util/concurrent/Futures$ListFuture;

    iput-object v1, v0, Lcom/google/common/util/concurrent/Futures$ListFuture;->a:Lcom/google/common/collect/ImmutableList;

    .line 1410
    return-void
.end method
