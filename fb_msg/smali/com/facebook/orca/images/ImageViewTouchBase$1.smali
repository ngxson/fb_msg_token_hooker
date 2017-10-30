.class Lcom/facebook/orca/images/ImageViewTouchBase$1;
.super Ljava/lang/Object;
.source "ImageViewTouchBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/facebook/orca/images/RotateBitmap;

.field final synthetic b:Z

.field final synthetic c:Lcom/facebook/orca/images/ImageViewTouchBase;


# direct methods
.method constructor <init>(Lcom/facebook/orca/images/ImageViewTouchBase;Lcom/facebook/orca/images/RotateBitmap;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 163
    iput-object p1, p0, Lcom/facebook/orca/images/ImageViewTouchBase$1;->c:Lcom/facebook/orca/images/ImageViewTouchBase;

    iput-object p2, p0, Lcom/facebook/orca/images/ImageViewTouchBase$1;->a:Lcom/facebook/orca/images/RotateBitmap;

    iput-boolean p3, p0, Lcom/facebook/orca/images/ImageViewTouchBase$1;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 166
    iget-object v0, p0, Lcom/facebook/orca/images/ImageViewTouchBase$1;->c:Lcom/facebook/orca/images/ImageViewTouchBase;

    iget-object v1, p0, Lcom/facebook/orca/images/ImageViewTouchBase$1;->a:Lcom/facebook/orca/images/RotateBitmap;

    iget-boolean v2, p0, Lcom/facebook/orca/images/ImageViewTouchBase$1;->b:Z

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/images/ImageViewTouchBase;->a(Lcom/facebook/orca/images/RotateBitmap;Z)V

    .line 167
    return-void
.end method
