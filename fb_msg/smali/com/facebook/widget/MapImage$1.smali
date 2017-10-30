.class Lcom/facebook/widget/MapImage$1;
.super Ljava/lang/Object;
.source "MapImage.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/facebook/widget/MapImage;


# direct methods
.method constructor <init>(Lcom/facebook/widget/MapImage;)V
    .locals 0
    .parameter

    .prologue
    .line 220
    iput-object p1, p0, Lcom/facebook/widget/MapImage$1;->a:Lcom/facebook/widget/MapImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/facebook/widget/MapImage$1;->a:Lcom/facebook/widget/MapImage;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/widget/MapImage;->a(Lcom/facebook/widget/MapImage;Z)Z

    .line 224
    iget-object v0, p0, Lcom/facebook/widget/MapImage$1;->a:Lcom/facebook/widget/MapImage;

    invoke-static {v0}, Lcom/facebook/widget/MapImage;->a(Lcom/facebook/widget/MapImage;)V

    .line 225
    return-void
.end method
