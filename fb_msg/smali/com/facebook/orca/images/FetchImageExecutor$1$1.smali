.class Lcom/facebook/orca/images/FetchImageExecutor$1$1;
.super Ljava/lang/Object;
.source "FetchImageExecutor.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/FutureCallback",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/images/FetchImageExecutor$1;


# direct methods
.method constructor <init>(Lcom/facebook/orca/images/FetchImageExecutor$1;)V
    .locals 0
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/facebook/orca/images/FetchImageExecutor$1$1;->a:Lcom/facebook/orca/images/FetchImageExecutor$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter

    .prologue
    .line 83
    iget-object v0, p0, Lcom/facebook/orca/images/FetchImageExecutor$1$1;->a:Lcom/facebook/orca/images/FetchImageExecutor$1;

    iget-object v0, v0, Lcom/facebook/orca/images/FetchImageExecutor$1;->a:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/SettableFuture;->a(Ljava/lang/Object;)Z

    .line 84
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 80
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/facebook/orca/images/FetchImageExecutor$1$1;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 1
    .parameter

    .prologue
    .line 88
    iget-object v0, p0, Lcom/facebook/orca/images/FetchImageExecutor$1$1;->a:Lcom/facebook/orca/images/FetchImageExecutor$1;

    iget-object v0, v0, Lcom/facebook/orca/images/FetchImageExecutor$1;->a:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/SettableFuture;->a(Ljava/lang/Throwable;)Z

    .line 89
    return-void
.end method
