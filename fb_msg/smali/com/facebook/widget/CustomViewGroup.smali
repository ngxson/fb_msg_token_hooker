.class public Lcom/facebook/widget/CustomViewGroup;
.super Landroid/view/ViewGroup;
.source "CustomViewGroup.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 27
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter

    .prologue
    .line 158
    instance-of v0, p1, Landroid/widget/FrameLayout$LayoutParams;

    return v0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 142
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .parameter

    .prologue
    .line 150
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/facebook/widget/CustomViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter

    .prologue
    .line 163
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getInjector()Lcom/facebook/orca/inject/FbInjector;
    .locals 1

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/facebook/widget/CustomViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/inject/FbInjector;->a(Landroid/content/Context;)Lcom/facebook/orca/inject/FbInjector;

    move-result-object v0

    return-object v0
.end method

.method protected getView(I)Landroid/view/View;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .prologue
    .line 179
    invoke-virtual {p0, p1}, Lcom/facebook/widget/CustomViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected layoutChild(IIIILandroid/view/View;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 87
    invoke-virtual {p5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 89
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 90
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 95
    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 97
    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 98
    and-int/lit8 v4, v3, 0x7

    .line 99
    and-int/lit8 v3, v3, 0x70

    .line 101
    packed-switch v4, :pswitch_data_0

    .line 113
    :pswitch_0
    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr p1, v4

    .line 116
    :goto_0
    sparse-switch v3, :sswitch_data_0

    .line 128
    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr p3, v0

    .line 132
    :cond_0
    :goto_1
    add-int v0, p1, v1

    add-int v1, p3, v2

    invoke-virtual {p5, p1, p3, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 133
    return-void

    .line 103
    :pswitch_1
    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr p1, v4

    .line 104
    goto :goto_0

    .line 106
    :pswitch_2
    sub-int v4, p2, p1

    sub-int/2addr v4, v1

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, p1

    iget v5, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v4, v5

    iget v5, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int p1, v4, v5

    .line 108
    goto :goto_0

    .line 110
    :pswitch_3
    sub-int v4, p2, v1

    iget v5, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int p1, v4, v5

    .line 111
    goto :goto_0

    .line 118
    :sswitch_0
    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr p3, v0

    .line 119
    goto :goto_1

    .line 121
    :sswitch_1
    sub-int v3, p4, p3

    sub-int/2addr v3, v2

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, p3

    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, v4

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int p3, v3, v0

    .line 123
    goto :goto_1

    .line 125
    :sswitch_2
    sub-int v3, p4, v2

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int p3, v3, v0

    .line 126
    goto :goto_1

    .line 101
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 116
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x30 -> :sswitch_0
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/facebook/widget/CustomViewGroup;->getChildCount()I

    move-result v7

    .line 71
    invoke-virtual {p0}, Lcom/facebook/widget/CustomViewGroup;->getPaddingLeft()I

    move-result v1

    .line 72
    invoke-virtual {p0}, Lcom/facebook/widget/CustomViewGroup;->getRight()I

    move-result v0

    invoke-virtual {p0}, Lcom/facebook/widget/CustomViewGroup;->getLeft()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/facebook/widget/CustomViewGroup;->getPaddingRight()I

    move-result v2

    sub-int v2, v0, v2

    .line 74
    invoke-virtual {p0}, Lcom/facebook/widget/CustomViewGroup;->getPaddingTop()I

    move-result v3

    .line 75
    invoke-virtual {p0}, Lcom/facebook/widget/CustomViewGroup;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Lcom/facebook/widget/CustomViewGroup;->getTop()I

    move-result v4

    sub-int/2addr v0, v4

    invoke-virtual {p0}, Lcom/facebook/widget/CustomViewGroup;->getPaddingBottom()I

    move-result v4

    sub-int v4, v0, v4

    .line 77
    const/4 v0, 0x0

    move v6, v0

    :goto_0
    if-ge v6, v7, :cond_1

    .line 78
    invoke-virtual {p0, v6}, Lcom/facebook/widget/CustomViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 79
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v8, 0x8

    if-eq v0, v8, :cond_0

    move-object v0, p0

    .line 80
    invoke-virtual/range {v0 .. v5}, Lcom/facebook/widget/CustomViewGroup;->layoutChild(IIIILandroid/view/View;)V

    .line 77
    :cond_0
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 83
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 11
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 40
    invoke-virtual {p0}, Lcom/facebook/widget/CustomViewGroup;->getChildCount()I

    move-result v10

    move v9, v3

    move v7, v3

    move v8, v3

    .line 46
    :goto_0
    if-ge v9, v10, :cond_0

    .line 47
    invoke-virtual {p0, v9}, Lcom/facebook/widget/CustomViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 48
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_1

    .line 49
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object v0, p0

    move v2, p1

    move v4, p2

    move v5, v3

    .line 50
    invoke-virtual/range {v0 .. v5}, Lcom/facebook/widget/CustomViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 51
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget v2, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v0, v2

    iget v2, v6, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v0, v2

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 52
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v1, v2

    iget v2, v6, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    invoke-static {v8, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 46
    :goto_1
    add-int/lit8 v2, v9, 0x1

    move v9, v2

    move v7, v0

    move v8, v1

    goto :goto_0

    .line 57
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/widget/CustomViewGroup;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/facebook/widget/CustomViewGroup;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v0, v7

    .line 58
    invoke-virtual {p0}, Lcom/facebook/widget/CustomViewGroup;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/facebook/widget/CustomViewGroup;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v1, v8

    .line 60
    invoke-virtual {p0}, Lcom/facebook/widget/CustomViewGroup;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 61
    invoke-virtual {p0}, Lcom/facebook/widget/CustomViewGroup;->getSuggestedMinimumWidth()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 62
    invoke-static {v0, p1}, Lcom/facebook/widget/CustomViewGroup;->resolveSize(II)I

    move-result v0

    invoke-static {v1, p2}, Lcom/facebook/widget/CustomViewGroup;->resolveSize(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/facebook/widget/CustomViewGroup;->setMeasuredDimension(II)V

    .line 65
    return-void

    :cond_1
    move v0, v7

    move v1, v8

    goto :goto_1
.end method

.method protected setContentView(I)V
    .locals 2
    .parameter

    .prologue
    .line 167
    const-string v0, "CustomViewGroup.setContentView"

    invoke-static {v0}, Lcom/facebook/orca/debug/Tracer;->a(Ljava/lang/String;)Lcom/facebook/orca/debug/Tracer;

    move-result-object v0

    .line 168
    invoke-virtual {p0}, Lcom/facebook/widget/CustomViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 169
    invoke-virtual {v1, p1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 170
    invoke-virtual {v0}, Lcom/facebook/orca/debug/Tracer;->a()J

    .line 171
    return-void
.end method
