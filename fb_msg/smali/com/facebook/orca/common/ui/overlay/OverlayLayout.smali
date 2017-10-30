.class public Lcom/facebook/orca/common/ui/overlay/OverlayLayout;
.super Lcom/facebook/widget/CustomViewGroup;
.source "OverlayLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/facebook/widget/CustomViewGroup;-><init>(Landroid/content/Context;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/facebook/widget/CustomViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/widget/CustomViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    return-void
.end method


# virtual methods
.method protected a()Lcom/facebook/orca/common/ui/overlay/OverlayLayout$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 144
    new-instance v0, Lcom/facebook/orca/common/ui/overlay/OverlayLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Lcom/facebook/orca/common/ui/overlay/OverlayLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public a(Landroid/util/AttributeSet;)Lcom/facebook/orca/common/ui/overlay/OverlayLayout$LayoutParams;
    .locals 2
    .parameter

    .prologue
    .line 149
    new-instance v0, Lcom/facebook/orca/common/ui/overlay/OverlayLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/overlay/OverlayLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/facebook/orca/common/ui/overlay/OverlayLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected a(Landroid/view/ViewGroup$LayoutParams;)Lcom/facebook/orca/common/ui/overlay/OverlayLayout$LayoutParams;
    .locals 1
    .parameter

    .prologue
    .line 159
    new-instance v0, Lcom/facebook/orca/common/ui/overlay/OverlayLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/facebook/orca/common/ui/overlay/OverlayLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter

    .prologue
    .line 154
    instance-of v0, p1, Lcom/facebook/orca/common/ui/overlay/OverlayLayout$LayoutParams;

    return v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter

    .prologue
    .line 71
    const-string v0, "Overlayout.dispatchDraw"

    invoke-static {v0}, Lcom/facebook/orca/debug/Tracer;->a(Ljava/lang/String;)Lcom/facebook/orca/debug/Tracer;

    move-result-object v0

    .line 73
    :try_start_0
    invoke-super {p0, p1}, Lcom/facebook/widget/CustomViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    invoke-virtual {v0}, Lcom/facebook/orca/debug/Tracer;->a()J

    .line 77
    return-void

    .line 75
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/facebook/orca/debug/Tracer;->a()J

    throw v1
.end method

.method protected synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/overlay/OverlayLayout;->a()Lcom/facebook/orca/common/ui/overlay/OverlayLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lcom/facebook/orca/common/ui/overlay/OverlayLayout;->a(Landroid/util/AttributeSet;)Lcom/facebook/orca/common/ui/overlay/OverlayLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lcom/facebook/orca/common/ui/overlay/OverlayLayout;->a(Landroid/view/ViewGroup$LayoutParams;)Lcom/facebook/orca/common/ui/overlay/OverlayLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected layoutChild(IIIILandroid/view/View;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 82
    invoke-virtual {p5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/ui/overlay/OverlayLayout$LayoutParams;

    .line 83
    iget-boolean v1, v0, Lcom/facebook/orca/common/ui/overlay/OverlayLayout$LayoutParams;->a:Z

    if-nez v1, :cond_1

    .line 84
    invoke-super/range {p0 .. p5}, Lcom/facebook/widget/CustomViewGroup;->layoutChild(IIIILandroid/view/View;)V

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    iget v1, v0, Lcom/facebook/orca/common/ui/overlay/OverlayLayout$LayoutParams;->b:I

    .line 89
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 92
    invoke-virtual {p0, v1}, Lcom/facebook/orca/common/ui/overlay/OverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 93
    if-eqz v1, :cond_0

    .line 97
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 98
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 99
    invoke-virtual {v1, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 100
    invoke-virtual {p0, v3}, Lcom/facebook/orca/common/ui/overlay/OverlayLayout;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 101
    iget v1, v3, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    iget v3, v3, Landroid/graphics/Rect;->top:I

    neg-int v3, v3

    invoke-virtual {v2, v1, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 103
    iget v1, v0, Lcom/facebook/orca/common/ui/overlay/OverlayLayout$LayoutParams;->c:I

    .line 104
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 105
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 109
    and-int/lit8 v5, v1, 0x1

    const/4 v6, 0x1

    if-ne v5, v6, :cond_4

    .line 110
    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    iget v6, v0, Lcom/facebook/orca/common/ui/overlay/OverlayLayout$LayoutParams;->topMargin:I

    add-int p3, v5, v6

    .line 124
    :cond_2
    :goto_1
    and-int/lit8 v5, v1, 0x10

    const/16 v6, 0x10

    if-ne v5, v6, :cond_8

    .line 125
    iget v1, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v3

    iget v0, v0, Lcom/facebook/orca/common/ui/overlay/OverlayLayout$LayoutParams;->rightMargin:I

    sub-int p1, v1, v0

    .line 139
    :cond_3
    :goto_2
    add-int v0, p1, v3

    add-int v1, p3, v4

    invoke-virtual {p5, p1, p3, v0, v1}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 111
    :cond_4
    and-int/lit8 v5, v1, 0x2

    const/4 v6, 0x2

    if-ne v5, v6, :cond_5

    .line 112
    iget v5, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v4

    iget v6, v0, Lcom/facebook/orca/common/ui/overlay/OverlayLayout$LayoutParams;->bottomMargin:I

    sub-int p3, v5, v6

    goto :goto_1

    .line 113
    :cond_5
    and-int/lit8 v5, v1, 0x4

    const/4 v6, 0x4

    if-ne v5, v6, :cond_6

    .line 114
    iget v5, v2, Landroid/graphics/Rect;->top:I

    iget v6, v0, Lcom/facebook/orca/common/ui/overlay/OverlayLayout$LayoutParams;->topMargin:I

    add-int p3, v5, v6

    goto :goto_1

    .line 115
    :cond_6
    and-int/lit8 v5, v1, 0x8

    const/16 v6, 0x8

    if-ne v5, v6, :cond_7

    .line 116
    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v4

    iget v6, v0, Lcom/facebook/orca/common/ui/overlay/OverlayLayout$LayoutParams;->bottomMargin:I

    sub-int p3, v5, v6

    goto :goto_1

    .line 117
    :cond_7
    and-int/lit16 v5, v1, 0x100

    const/16 v6, 0x100

    if-ne v5, v6, :cond_2

    .line 118
    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    iget v6, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v6

    sub-int/2addr v5, v4

    div-int/lit8 v5, v5, 0x2

    iget v6, v0, Lcom/facebook/orca/common/ui/overlay/OverlayLayout$LayoutParams;->topMargin:I

    iget v7, v0, Lcom/facebook/orca/common/ui/overlay/OverlayLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    add-int p3, v5, v6

    goto :goto_1

    .line 126
    :cond_8
    and-int/lit8 v5, v1, 0x20

    const/16 v6, 0x20

    if-ne v5, v6, :cond_9

    .line 127
    iget v1, v2, Landroid/graphics/Rect;->right:I

    iget v0, v0, Lcom/facebook/orca/common/ui/overlay/OverlayLayout$LayoutParams;->leftMargin:I

    add-int p1, v1, v0

    goto :goto_2

    .line 128
    :cond_9
    and-int/lit8 v5, v1, 0x40

    const/16 v6, 0x40

    if-ne v5, v6, :cond_a

    .line 129
    iget v1, v2, Landroid/graphics/Rect;->left:I

    iget v0, v0, Lcom/facebook/orca/common/ui/overlay/OverlayLayout$LayoutParams;->leftMargin:I

    add-int p1, v1, v0

    goto :goto_2

    .line 130
    :cond_a
    and-int/lit16 v5, v1, 0x80

    const/16 v6, 0x80

    if-ne v5, v6, :cond_b

    .line 131
    iget v1, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v3

    iget v0, v0, Lcom/facebook/orca/common/ui/overlay/OverlayLayout$LayoutParams;->rightMargin:I

    sub-int p1, v1, v0

    goto :goto_2

    .line 132
    :cond_b
    and-int/lit16 v1, v1, 0x200

    const/16 v5, 0x200

    if-ne v1, v5, :cond_3

    .line 133
    iget v1, v2, Landroid/graphics/Rect;->right:I

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    iget v2, v0, Lcom/facebook/orca/common/ui/overlay/OverlayLayout$LayoutParams;->leftMargin:I

    iget v0, v0, Lcom/facebook/orca/common/ui/overlay/OverlayLayout$LayoutParams;->rightMargin:I

    sub-int v0, v2, v0

    div-int/lit8 v0, v0, 0x2

    add-int p1, v1, v0

    goto/16 :goto_2
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 61
    const-string v0, "Overlayout.onLayout"

    invoke-static {v0}, Lcom/facebook/orca/debug/Tracer;->a(Ljava/lang/String;)Lcom/facebook/orca/debug/Tracer;

    move-result-object v0

    .line 63
    :try_start_0
    invoke-super/range {p0 .. p5}, Lcom/facebook/widget/CustomViewGroup;->onLayout(ZIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    invoke-virtual {v0}, Lcom/facebook/orca/debug/Tracer;->a()J

    .line 67
    return-void

    .line 65
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/facebook/orca/debug/Tracer;->a()J

    throw v1
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 51
    const-string v0, "Overlayout.onMeasure"

    invoke-static {v0}, Lcom/facebook/orca/debug/Tracer;->a(Ljava/lang/String;)Lcom/facebook/orca/debug/Tracer;

    move-result-object v0

    .line 53
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/facebook/widget/CustomViewGroup;->onMeasure(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    invoke-virtual {v0}, Lcom/facebook/orca/debug/Tracer;->a()J

    .line 57
    return-void

    .line 55
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/facebook/orca/debug/Tracer;->a()J

    throw v1
.end method
