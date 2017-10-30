.class Lcom/facebook/orca/compose/ComposeFragment$14;
.super Lcom/facebook/orca/emoji/EmojiAttachmentPopup$EmojiAttachmentPopupListener;
.source "ComposeFragment.java"


# instance fields
.field final synthetic a:Lcom/facebook/orca/compose/ComposeFragment;


# direct methods
.method constructor <init>(Lcom/facebook/orca/compose/ComposeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1276
    iput-object p1, p0, Lcom/facebook/orca/compose/ComposeFragment$14;->a:Lcom/facebook/orca/compose/ComposeFragment;

    invoke-direct {p0}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$EmojiAttachmentPopupListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 1295
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment$14;->a:Lcom/facebook/orca/compose/ComposeFragment;

    invoke-static {v0}, Lcom/facebook/orca/compose/ComposeFragment;->c(Lcom/facebook/orca/compose/ComposeFragment;)Landroid/widget/EditText;

    move-result-object v0

    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x0

    const/16 v3, 0x43

    invoke-direct {v1, v2, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 1296
    return-void
.end method

.method public a(I)V
    .locals 1
    .parameter

    .prologue
    .line 1285
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment$14;->a:Lcom/facebook/orca/compose/ComposeFragment;

    invoke-static {v0, p1}, Lcom/facebook/orca/compose/ComposeFragment;->a(Lcom/facebook/orca/compose/ComposeFragment;I)V

    .line 1286
    return-void
.end method

.method public a(Lcom/facebook/orca/attachments/MediaAttachment;)V
    .locals 1
    .parameter

    .prologue
    .line 1290
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment$14;->a:Lcom/facebook/orca/compose/ComposeFragment;

    invoke-static {v0, p1}, Lcom/facebook/orca/compose/ComposeFragment;->a(Lcom/facebook/orca/compose/ComposeFragment;Lcom/facebook/orca/attachments/MediaAttachment;)V

    .line 1291
    return-void
.end method

.method public a(Lcom/facebook/orca/emoji/Emoji;)V
    .locals 1
    .parameter

    .prologue
    .line 1280
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment$14;->a:Lcom/facebook/orca/compose/ComposeFragment;

    invoke-static {v0, p1}, Lcom/facebook/orca/compose/ComposeFragment;->a(Lcom/facebook/orca/compose/ComposeFragment;Lcom/facebook/orca/emoji/Emoji;)V

    .line 1281
    return-void
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter

    .prologue
    .line 1306
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1307
    iget-object v1, p0, Lcom/facebook/orca/compose/ComposeFragment$14;->a:Lcom/facebook/orca/compose/ComposeFragment;

    invoke-static {v1}, Lcom/facebook/orca/compose/ComposeFragment;->m(Lcom/facebook/orca/compose/ComposeFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1308
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 1311
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    const/4 v4, 0x1

    aget v0, v0, v4

    int-to-float v0, v0

    sub-float v0, v3, v0

    invoke-virtual {p1, v2, v0}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 1312
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment$14;->a:Lcom/facebook/orca/compose/ComposeFragment;

    invoke-static {v0}, Lcom/facebook/orca/compose/ComposeFragment;->m(Lcom/facebook/orca/compose/ComposeFragment;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/compose/ComposeRootView;

    invoke-virtual {v0}, Lcom/facebook/orca/compose/ComposeRootView;->getEmojiAttachmentTouchDelegate()Landroid/view/TouchDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/TouchDelegate;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1314
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1, v2, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 1315
    return v0
.end method

.method public b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1300
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment$14;->a:Lcom/facebook/orca/compose/ComposeFragment;

    invoke-static {v0, v1}, Lcom/facebook/orca/compose/ComposeFragment;->b(Lcom/facebook/orca/compose/ComposeFragment;Z)V

    .line 1301
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment$14;->a:Lcom/facebook/orca/compose/ComposeFragment;

    invoke-static {v0, v1}, Lcom/facebook/orca/compose/ComposeFragment;->c(Lcom/facebook/orca/compose/ComposeFragment;Z)Z

    .line 1302
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 1320
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment$14;->a:Lcom/facebook/orca/compose/ComposeFragment;

    invoke-static {v0}, Lcom/facebook/orca/compose/ComposeFragment;->n(Lcom/facebook/orca/compose/ComposeFragment;)V

    .line 1321
    return-void
.end method
