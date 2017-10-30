.class public Lcom/facebook/orca/common/ui/titlebar/TitleBarViewStub;
.super Landroid/view/View;
.source "TitleBarViewStub.java"


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/Boolean;

.field private d:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 32
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/orca/common/ui/titlebar/TitleBarViewStub;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/orca/common/ui/titlebar/TitleBarViewStub;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/orca/common/ui/titlebar/TitleBarViewStub;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    return-void
.end method

.method private a()Landroid/view/View;
    .locals 4

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/titlebar/TitleBarViewStub;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 104
    if-eqz v0, :cond_5

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_5

    .line 105
    check-cast v0, Landroid/view/ViewGroup;

    .line 106
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/titlebar/TitleBarViewStub;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 107
    sget v2, Lcom/facebook/R$layout;->titlebar_wrapper:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 111
    instance-of v1, v2, Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;

    if-eqz v1, :cond_3

    move-object v1, v2

    .line 112
    check-cast v1, Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;

    .line 117
    :goto_0
    iget-object v3, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBarViewStub;->b:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 118
    iget-object v3, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBarViewStub;->b:Ljava/lang/String;

    invoke-interface {v1, v3}, Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;->setTitle(Ljava/lang/String;)V

    .line 120
    :cond_0
    iget-object v3, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBarViewStub;->c:Ljava/lang/Boolean;

    if-eqz v3, :cond_1

    .line 121
    iget-object v3, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBarViewStub;->c:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {v1, v3}, Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;->setHasProgressBar(Z)V

    .line 123
    :cond_1
    iget-object v3, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBarViewStub;->d:Ljava/lang/Boolean;

    if-eqz v3, :cond_2

    .line 124
    iget-object v3, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBarViewStub;->d:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {v1, v3}, Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;->setHasBackButton(Z)V

    .line 127
    :cond_2
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 128
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    .line 130
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/titlebar/TitleBarViewStub;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 131
    if-eqz v3, :cond_4

    .line 132
    invoke-virtual {v0, v2, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 137
    :goto_1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBarViewStub;->a:Ljava/lang/ref/WeakReference;

    .line 139
    return-object v2

    .line 115
    :cond_3
    sget v1, Lcom/facebook/R$id;->titlebar:I

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;

    goto :goto_0

    .line 134
    :cond_4
    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_1

    .line 141
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ViewStub must have a non-null ViewGroup viewParent"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(Landroid/content/res/TypedArray;I)Ljava/lang/Boolean;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 48
    sget-object v0, Lcom/facebook/R$styleable;->TitleBarViewStub:[I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 49
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBarViewStub;->b:Ljava/lang/String;

    .line 50
    invoke-direct {p0, v0, v2}, Lcom/facebook/orca/common/ui/titlebar/TitleBarViewStub;->a(Landroid/content/res/TypedArray;I)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBarViewStub;->c:Ljava/lang/Boolean;

    .line 51
    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/common/ui/titlebar/TitleBarViewStub;->a(Landroid/content/res/TypedArray;I)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBarViewStub;->d:Ljava/lang/Boolean;

    .line 53
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 55
    invoke-virtual {p0, v2}, Lcom/facebook/orca/common/ui/titlebar/TitleBarViewStub;->setWillNotDraw(Z)V

    .line 56
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter

    .prologue
    .line 73
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 64
    invoke-virtual {p0, v0, v0}, Lcom/facebook/orca/common/ui/titlebar/TitleBarViewStub;->setMeasuredDimension(II)V

    .line 65
    return-void
.end method

.method public setVisibility(I)V
    .locals 2
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBarViewStub;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    .line 87
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBarViewStub;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 88
    if-eqz v0, :cond_1

    .line 89
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setVisibility called on un-referenced view"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_2
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 95
    if-eqz p1, :cond_3

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 96
    :cond_3
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/titlebar/TitleBarViewStub;->a()Landroid/view/View;

    goto :goto_0
.end method
