.class public Lcom/facebook/orca/common/ui/widgets/text/UrlSpanLinkHook;
.super Ljava/lang/Object;
.source "UrlSpanLinkHook.java"

# interfaces
.implements Lcom/facebook/widget/BetterTextViewHook;


# instance fields
.field private final a:Landroid/widget/TextView;

.field private final b:Landroid/graphics/Paint;

.field private c:Landroid/text/style/URLSpan;

.field private d:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 1
    .parameter

    .prologue
    .line 35
    const v0, -0x333334

    invoke-direct {p0, p1, v0}, Lcom/facebook/orca/common/ui/widgets/text/UrlSpanLinkHook;-><init>(Landroid/widget/TextView;I)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/widget/TextView;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/facebook/orca/common/ui/widgets/text/UrlSpanLinkHook;->d:Landroid/graphics/Path;

    .line 39
    iput-object p1, p0, Lcom/facebook/orca/common/ui/widgets/text/UrlSpanLinkHook;->a:Landroid/widget/TextView;

    .line 40
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/facebook/orca/common/ui/widgets/text/UrlSpanLinkHook;->b:Landroid/graphics/Paint;

    .line 41
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/text/UrlSpanLinkHook;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 42
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/text/UrlSpanLinkHook;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 44
    return-void
.end method

.method private a()Landroid/graphics/Rect;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 142
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/facebook/orca/common/ui/widgets/text/UrlSpanLinkHook;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/facebook/orca/common/ui/widgets/text/UrlSpanLinkHook;->a:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getHeight()I

    move-result v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 149
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/facebook/orca/common/ui/widgets/text/UrlSpanLinkHook;->a:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 150
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/facebook/orca/common/ui/widgets/text/UrlSpanLinkHook;->a:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 151
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/facebook/orca/common/ui/widgets/text/UrlSpanLinkHook;->a:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTotalPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 152
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/facebook/orca/common/ui/widgets/text/UrlSpanLinkHook;->a:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTotalPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 153
    return-object v0
.end method

.method private b(Landroid/view/MotionEvent;)Landroid/text/style/URLSpan;
    .locals 3
    .parameter

    .prologue
    .line 111
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 112
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 114
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/text/UrlSpanLinkHook;->a()Landroid/graphics/Rect;

    move-result-object v2

    .line 115
    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 116
    iget-object v2, p0, Lcom/facebook/orca/common/ui/widgets/text/UrlSpanLinkHook;->a:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v2

    sub-int/2addr v0, v2

    .line 117
    iget-object v2, p0, Lcom/facebook/orca/common/ui/widgets/text/UrlSpanLinkHook;->a:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    .line 118
    iget-object v2, p0, Lcom/facebook/orca/common/ui/widgets/text/UrlSpanLinkHook;->a:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    .line 119
    invoke-virtual {v2, v1}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v1

    .line 120
    int-to-float v0, v0

    invoke-virtual {v2, v1, v0}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v1

    .line 121
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/text/UrlSpanLinkHook;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spanned;

    .line 122
    const-class v2, Landroid/text/style/URLSpan;

    invoke-interface {v0, v1, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/URLSpan;

    .line 123
    array-length v1, v0

    if-lez v1, :cond_0

    .line 124
    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 128
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/text/UrlSpanLinkHook;->c:Landroid/text/style/URLSpan;

    if-nez v0, :cond_0

    .line 108
    :goto_0
    return-void

    .line 90
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 91
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/text/UrlSpanLinkHook;->a()Landroid/graphics/Rect;

    move-result-object v0

    .line 93
    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 99
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/text/UrlSpanLinkHook;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    .line 100
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/text/UrlSpanLinkHook;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spanned;

    .line 101
    iget-object v2, p0, Lcom/facebook/orca/common/ui/widgets/text/UrlSpanLinkHook;->c:Landroid/text/style/URLSpan;

    invoke-interface {v0, v2}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    .line 102
    iget-object v3, p0, Lcom/facebook/orca/common/ui/widgets/text/UrlSpanLinkHook;->c:Landroid/text/style/URLSpan;

    invoke-interface {v0, v3}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 103
    iget-object v3, p0, Lcom/facebook/orca/common/ui/widgets/text/UrlSpanLinkHook;->d:Landroid/graphics/Path;

    invoke-virtual {v1, v2, v0, v3}, Landroid/text/Layout;->getSelectionPath(IILandroid/graphics/Path;)V

    .line 105
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/text/UrlSpanLinkHook;->d:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/facebook/orca/common/ui/widgets/text/UrlSpanLinkHook;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 107
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 48
    iget-object v2, p0, Lcom/facebook/orca/common/ui/widgets/text/UrlSpanLinkHook;->a:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    instance-of v2, v2, Landroid/text/Spanned;

    if-nez v2, :cond_1

    .line 80
    :cond_0
    :goto_0
    return v0

    .line 52
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 54
    if-nez v2, :cond_3

    .line 55
    invoke-direct {p0, p1}, Lcom/facebook/orca/common/ui/widgets/text/UrlSpanLinkHook;->b(Landroid/view/MotionEvent;)Landroid/text/style/URLSpan;

    move-result-object v2

    iput-object v2, p0, Lcom/facebook/orca/common/ui/widgets/text/UrlSpanLinkHook;->c:Landroid/text/style/URLSpan;

    .line 56
    iget-object v2, p0, Lcom/facebook/orca/common/ui/widgets/text/UrlSpanLinkHook;->a:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->invalidate()V

    .line 76
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/facebook/orca/common/ui/widgets/text/UrlSpanLinkHook;->c:Landroid/text/style/URLSpan;

    if-eqz v2, :cond_0

    move v0, v1

    .line 80
    goto :goto_0

    .line 57
    :cond_3
    if-ne v2, v1, :cond_5

    .line 58
    iget-object v2, p0, Lcom/facebook/orca/common/ui/widgets/text/UrlSpanLinkHook;->c:Landroid/text/style/URLSpan;

    if-eqz v2, :cond_2

    .line 59
    iget-object v2, p0, Lcom/facebook/orca/common/ui/widgets/text/UrlSpanLinkHook;->c:Landroid/text/style/URLSpan;

    invoke-direct {p0, p1}, Lcom/facebook/orca/common/ui/widgets/text/UrlSpanLinkHook;->b(Landroid/view/MotionEvent;)Landroid/text/style/URLSpan;

    move-result-object v3

    if-ne v2, v3, :cond_4

    .line 60
    iget-object v2, p0, Lcom/facebook/orca/common/ui/widgets/text/UrlSpanLinkHook;->c:Landroid/text/style/URLSpan;

    .line 61
    iput-object v4, p0, Lcom/facebook/orca/common/ui/widgets/text/UrlSpanLinkHook;->c:Landroid/text/style/URLSpan;

    .line 62
    iget-object v3, p0, Lcom/facebook/orca/common/ui/widgets/text/UrlSpanLinkHook;->a:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->invalidate()V

    .line 63
    iget-object v3, p0, Lcom/facebook/orca/common/ui/widgets/text/UrlSpanLinkHook;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/text/style/URLSpan;->onClick(Landroid/view/View;)V

    goto :goto_1

    .line 65
    :cond_4
    iput-object v4, p0, Lcom/facebook/orca/common/ui/widgets/text/UrlSpanLinkHook;->c:Landroid/text/style/URLSpan;

    .line 66
    iget-object v2, p0, Lcom/facebook/orca/common/ui/widgets/text/UrlSpanLinkHook;->a:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->invalidate()V

    goto :goto_1

    .line 69
    :cond_5
    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 70
    iget-object v2, p0, Lcom/facebook/orca/common/ui/widgets/text/UrlSpanLinkHook;->c:Landroid/text/style/URLSpan;

    if-eqz v2, :cond_2

    .line 71
    iput-object v4, p0, Lcom/facebook/orca/common/ui/widgets/text/UrlSpanLinkHook;->c:Landroid/text/style/URLSpan;

    .line 72
    iget-object v2, p0, Lcom/facebook/orca/common/ui/widgets/text/UrlSpanLinkHook;->a:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->invalidate()V

    goto :goto_1
.end method
