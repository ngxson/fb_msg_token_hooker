.class public Lcom/facebook/orca/common/ui/overlay/OverlayLayout$LayoutParams;
.super Landroid/widget/FrameLayout$LayoutParams;
.source "OverlayLayout.java"


# instance fields
.field public a:Z

.field public b:I

.field public c:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 178
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 179
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 169
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 170
    sget-object v0, Lcom/facebook/R$styleable;->OverlayLayout_Layout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 171
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/facebook/orca/common/ui/overlay/OverlayLayout$LayoutParams;->a:Z

    .line 172
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/facebook/orca/common/ui/overlay/OverlayLayout$LayoutParams;->b:I

    .line 173
    const/16 v1, 0x81

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/facebook/orca/common/ui/overlay/OverlayLayout$LayoutParams;->c:I

    .line 174
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 175
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .parameter

    .prologue
    .line 182
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 183
    return-void
.end method
