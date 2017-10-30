.class Lcom/facebook/orca/images/FetchImageExecutor$2;
.super Ljava/lang/Object;
.source "FetchImageExecutor.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/images/FetchImageParams;

.field final synthetic b:Lcom/facebook/orca/images/FetchImageExecutor;


# direct methods
.method constructor <init>(Lcom/facebook/orca/images/FetchImageExecutor;Lcom/facebook/orca/images/FetchImageParams;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 122
    iput-object p1, p0, Lcom/facebook/orca/images/FetchImageExecutor$2;->b:Lcom/facebook/orca/images/FetchImageExecutor;

    iput-object p2, p0, Lcom/facebook/orca/images/FetchImageExecutor$2;->a:Lcom/facebook/orca/images/FetchImageParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/facebook/orca/images/FetchImageExecutor$2;->b:Lcom/facebook/orca/images/FetchImageExecutor;

    invoke-static {v0}, Lcom/facebook/orca/images/FetchImageExecutor;->a(Lcom/facebook/orca/images/FetchImageExecutor;)Lcom/facebook/orca/images/FetchImageHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/orca/images/FetchImageExecutor$2;->a:Lcom/facebook/orca/images/FetchImageParams;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/images/FetchImageHelper;->b(Lcom/facebook/orca/images/FetchImageParams;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/facebook/orca/images/FetchImageExecutor$2;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
