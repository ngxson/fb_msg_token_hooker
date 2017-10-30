.class Lcom/google/common/collect/Iterables$10$1;
.super Ljava/lang/Object;
.source "Iterables.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Ljava/util/Iterator;

.field final synthetic c:Lcom/google/common/collect/Iterables$10;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Iterables$10;Ljava/util/Iterator;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 879
    iput-object p1, p0, Lcom/google/common/collect/Iterables$10$1;->c:Lcom/google/common/collect/Iterables$10;

    iput-object p2, p0, Lcom/google/common/collect/Iterables$10$1;->b:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 880
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/collect/Iterables$10$1;->a:Z

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 884
    iget-object v0, p0, Lcom/google/common/collect/Iterables$10$1;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 889
    invoke-virtual {p0}, Lcom/google/common/collect/Iterables$10$1;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 890
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 894
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/common/collect/Iterables$10$1;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 896
    iput-boolean v1, p0, Lcom/google/common/collect/Iterables$10$1;->a:Z

    return-object v0

    :catchall_0
    move-exception v0

    iput-boolean v1, p0, Lcom/google/common/collect/Iterables$10$1;->a:Z

    throw v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 902
    iget-boolean v0, p0, Lcom/google/common/collect/Iterables$10$1;->a:Z

    if-eqz v0, :cond_0

    .line 903
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 905
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/Iterables$10$1;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 906
    return-void
.end method
