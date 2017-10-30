.class public Lcom/facebook/orca/compose/ComposeRootView;
.super Landroid/widget/RelativeLayout;
.source "ComposeRootView.java"


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/view/TouchDelegate;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    return-void
.end method

.method private a(II)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x5

    .line 56
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeRootView;->b:Landroid/view/View;

    invoke-static {v0, p1, p2, v1}, Lcom/facebook/orca/common/ui/util/TouchDelegateUtils;->a(Landroid/view/View;III)Landroid/view/TouchDelegate;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/compose/ComposeRootView;->d:Landroid/view/TouchDelegate;

    .line 61
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeRootView;->a:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/facebook/orca/common/ui/util/TouchDelegateUtils;->a(Landroid/view/View;I)Landroid/view/TouchDelegate;

    move-result-object v0

    .line 65
    iget-object v1, p0, Lcom/facebook/orca/compose/ComposeRootView;->c:Landroid/view/View;

    invoke-static {v1, p1, p2}, Lcom/facebook/orca/common/ui/util/TouchDelegateUtils;->a(Landroid/view/View;II)Landroid/view/TouchDelegate;

    move-result-object v1

    .line 68
    new-instance v2, Lcom/facebook/orca/common/ui/util/CompoundTouchDelegate;

    const/4 v3, 0x3

    new-array v3, v3, [Landroid/view/TouchDelegate;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/facebook/orca/compose/ComposeRootView;->d:Landroid/view/TouchDelegate;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    const/4 v0, 0x2

    aput-object v1, v3, v0

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/common/ui/util/CompoundTouchDelegate;-><init>(Landroid/view/View;[Landroid/view/TouchDelegate;)V

    .line 73
    invoke-virtual {p0, v2}, Lcom/facebook/orca/compose/ComposeRootView;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 74
    return-void
.end method


# virtual methods
.method public getEmojiAttachmentTouchDelegate()Landroid/view/TouchDelegate;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeRootView;->d:Landroid/view/TouchDelegate;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 39
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 41
    sget v0, Lcom/facebook/R$id;->compose_emoji_attachments:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/compose/ComposeRootView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/compose/ComposeRootView;->b:Landroid/view/View;

    .line 42
    sget v0, Lcom/facebook/R$id;->compose_button_send:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/compose/ComposeRootView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/compose/ComposeRootView;->a:Landroid/view/View;

    .line 43
    sget v0, Lcom/facebook/R$id;->compose_edit_container:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/compose/ComposeRootView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/compose/ComposeRootView;->c:Landroid/view/View;

    .line 44
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 50
    if-eqz p1, :cond_0

    .line 51
    invoke-direct {p0, p3, p5}, Lcom/facebook/orca/compose/ComposeRootView;->a(II)V

    .line 53
    :cond_0
    return-void
.end method
