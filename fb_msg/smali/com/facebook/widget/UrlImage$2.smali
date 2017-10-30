.class Lcom/facebook/widget/UrlImage$2;
.super Ljava/lang/Object;
.source "UrlImage.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/FutureCallback",
        "<",
        "Ljava/util/List",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/widget/UrlImage;


# direct methods
.method constructor <init>(Lcom/facebook/widget/UrlImage;)V
    .locals 0
    .parameter

    .prologue
    .line 474
    iput-object p1, p0, Lcom/facebook/widget/UrlImage$2;->a:Lcom/facebook/widget/UrlImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 474
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/facebook/widget/UrlImage$2;->a(Ljava/util/List;)V

    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 1
    .parameter

    .prologue
    .line 482
    iget-object v0, p0, Lcom/facebook/widget/UrlImage$2;->a:Lcom/facebook/widget/UrlImage;

    invoke-static {v0, p1}, Lcom/facebook/widget/UrlImage;->a(Lcom/facebook/widget/UrlImage;Ljava/lang/Throwable;)V

    .line 483
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 477
    iget-object v0, p0, Lcom/facebook/widget/UrlImage$2;->a:Lcom/facebook/widget/UrlImage;

    invoke-static {v0, p1}, Lcom/facebook/widget/UrlImage;->a(Lcom/facebook/widget/UrlImage;Ljava/util/List;)V

    .line 478
    return-void
.end method
