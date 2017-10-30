.class Lcom/google/common/collect/Iterables$ConsumingQueueIterator;
.super Lcom/google/common/collect/AbstractIterator;
.source "Iterables.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/AbstractIterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/Queue;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 978
    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    .line 979
    iput-object p1, p0, Lcom/google/common/collect/Iterables$ConsumingQueueIterator;->a:Ljava/util/Queue;

    .line 980
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Queue;Lcom/google/common/collect/Iterables$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 975
    invoke-direct {p0, p1}, Lcom/google/common/collect/Iterables$ConsumingQueueIterator;-><init>(Ljava/util/Queue;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 984
    :try_start_0
    iget-object v0, p0, Lcom/google/common/collect/Iterables$ConsumingQueueIterator;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 986
    :goto_0
    return-object v0

    .line 985
    :catch_0
    move-exception v0

    .line 986
    invoke-virtual {p0}, Lcom/google/common/collect/Iterables$ConsumingQueueIterator;->b()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method
