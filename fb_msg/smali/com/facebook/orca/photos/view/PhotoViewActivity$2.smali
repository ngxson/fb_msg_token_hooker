.class Lcom/facebook/orca/photos/view/PhotoViewActivity$2;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "PhotoViewActivity.java"


# instance fields
.field final synthetic a:Lcom/facebook/orca/photos/view/PhotoViewActivity;


# direct methods
.method constructor <init>(Lcom/facebook/orca/photos/view/PhotoViewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 146
    iput-object p1, p0, Lcom/facebook/orca/photos/view/PhotoViewActivity$2;->a:Lcom/facebook/orca/photos/view/PhotoViewActivity;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 150
    iget-object v0, p0, Lcom/facebook/orca/photos/view/PhotoViewActivity$2;->a:Lcom/facebook/orca/photos/view/PhotoViewActivity;

    invoke-static {v0}, Lcom/facebook/orca/photos/view/PhotoViewActivity;->k(Lcom/facebook/orca/photos/view/PhotoViewActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/facebook/orca/photos/view/PhotoViewActivity$2;->a:Lcom/facebook/orca/photos/view/PhotoViewActivity;

    invoke-static {v0}, Lcom/facebook/orca/photos/view/PhotoViewActivity;->l(Lcom/facebook/orca/photos/view/PhotoViewActivity;)V

    .line 155
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/photos/view/PhotoViewActivity$2;->a:Lcom/facebook/orca/photos/view/PhotoViewActivity;

    invoke-static {v0}, Lcom/facebook/orca/photos/view/PhotoViewActivity;->a(Lcom/facebook/orca/photos/view/PhotoViewActivity;)V

    goto :goto_0
.end method
