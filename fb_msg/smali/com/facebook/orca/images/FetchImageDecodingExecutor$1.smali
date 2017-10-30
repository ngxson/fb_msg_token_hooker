.class Lcom/facebook/orca/images/FetchImageDecodingExecutor$1;
.super Ljava/lang/Object;
.source "FetchImageDecodingExecutor.java"

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

.field final synthetic b:Lcom/facebook/orca/images/FetchImageDecodingExecutor;


# direct methods
.method constructor <init>(Lcom/facebook/orca/images/FetchImageDecodingExecutor;Lcom/facebook/orca/images/FetchImageParams;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/facebook/orca/images/FetchImageDecodingExecutor$1;->b:Lcom/facebook/orca/images/FetchImageDecodingExecutor;

    iput-object p2, p0, Lcom/facebook/orca/images/FetchImageDecodingExecutor$1;->a:Lcom/facebook/orca/images/FetchImageParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 56
    const-wide/16 v0, 0xa

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/Tracer;->b(J)V

    .line 57
    iget-object v0, p0, Lcom/facebook/orca/images/FetchImageDecodingExecutor$1;->b:Lcom/facebook/orca/images/FetchImageDecodingExecutor;

    invoke-static {v0}, Lcom/facebook/orca/images/FetchImageDecodingExecutor;->a(Lcom/facebook/orca/images/FetchImageDecodingExecutor;)Lcom/facebook/orca/images/FetchImageHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/orca/images/FetchImageDecodingExecutor$1;->a:Lcom/facebook/orca/images/FetchImageParams;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/images/FetchImageHelper;->a(Lcom/facebook/orca/images/FetchImageParams;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 58
    const-string v1, "ImageDecodingExecutor"

    invoke-static {v1}, Lcom/facebook/orca/debug/Tracer;->c(Ljava/lang/String;)V

    .line 59
    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/facebook/orca/images/FetchImageDecodingExecutor$1;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
