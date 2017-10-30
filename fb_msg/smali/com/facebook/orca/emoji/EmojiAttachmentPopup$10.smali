.class Lcom/facebook/orca/emoji/EmojiAttachmentPopup$10;
.super Landroid/app/Dialog;
.source "EmojiAttachmentPopup.java"


# instance fields
.field final synthetic a:Lcom/facebook/orca/emoji/EmojiAttachmentPopup;


# direct methods
.method constructor <init>(Lcom/facebook/orca/emoji/EmojiAttachmentPopup;Landroid/content/Context;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 404
    iput-object p1, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$10;->a:Lcom/facebook/orca/emoji/EmojiAttachmentPopup;

    invoke-direct {p0, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 407
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_3

    .line 408
    iget-object v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$10;->a:Lcom/facebook/orca/emoji/EmojiAttachmentPopup;

    invoke-static {v0}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->i(Lcom/facebook/orca/emoji/EmojiAttachmentPopup;)Lcom/facebook/orca/emoji/EmojiAttachmentPopup$EmojiAttachmentPopupListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 409
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 410
    iget-object v2, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$10;->a:Lcom/facebook/orca/emoji/EmojiAttachmentPopup;

    invoke-virtual {v2}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->l()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 412
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 413
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 415
    iget-object v4, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$10;->a:Lcom/facebook/orca/emoji/EmojiAttachmentPopup;

    invoke-static {v4}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->j(Lcom/facebook/orca/emoji/EmojiAttachmentPopup;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 420
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget-object v5, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$10;->a:Lcom/facebook/orca/emoji/EmojiAttachmentPopup;

    invoke-static {v5}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->k(Lcom/facebook/orca/emoji/EmojiAttachmentPopup;)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    add-float/2addr v0, v4

    .line 429
    :goto_0
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->setAction(I)V

    .line 430
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1, v4, v0}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 431
    iget-object v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$10;->a:Lcom/facebook/orca/emoji/EmojiAttachmentPopup;

    invoke-static {v0}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->i(Lcom/facebook/orca/emoji/EmojiAttachmentPopup;)Lcom/facebook/orca/emoji/EmojiAttachmentPopup$EmojiAttachmentPopupListener;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$EmojiAttachmentPopupListener;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 441
    :goto_1
    return v0

    .line 427
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v4, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$10;->a:Lcom/facebook/orca/emoji/EmojiAttachmentPopup;

    invoke-static {v4}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->l(Lcom/facebook/orca/emoji/EmojiAttachmentPopup;)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v0, v4

    iget-object v4, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$10;->a:Lcom/facebook/orca/emoji/EmojiAttachmentPopup;

    invoke-static {v4}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->k(Lcom/facebook/orca/emoji/EmojiAttachmentPopup;)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v0, v4

    iget-object v4, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$10;->a:Lcom/facebook/orca/emoji/EmojiAttachmentPopup;

    invoke-static {v4}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->m(Lcom/facebook/orca/emoji/EmojiAttachmentPopup;)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v0, v4

    goto :goto_0

    .line 434
    :cond_1
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 435
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1, v0, v3}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 436
    iget-object v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$10;->a:Lcom/facebook/orca/emoji/EmojiAttachmentPopup;

    invoke-static {v0}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->i(Lcom/facebook/orca/emoji/EmojiAttachmentPopup;)Lcom/facebook/orca/emoji/EmojiAttachmentPopup$EmojiAttachmentPopupListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$EmojiAttachmentPopupListener;->b()V

    .line 438
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$10;->dismiss()V

    move v0, v1

    .line 439
    goto :goto_1

    .line 441
    :cond_3
    invoke-super {p0, p1}, Landroid/app/Dialog;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_1
.end method
