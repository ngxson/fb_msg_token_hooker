.class public Lcom/facebook/orca/common/ui/widgets/SlidingOutSuggestionView;
.super Lcom/facebook/widget/CustomFrameLayout;
.source "SlidingOutSuggestionView.java"


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Landroid/widget/TextView;

.field private final c:Landroid/view/View;

.field private final d:Landroid/view/View;

.field private final e:Landroid/widget/Button;

.field private f:Landroid/widget/FrameLayout;

.field private g:Z

.field private h:I

.field private i:I

.field private j:Lcom/facebook/orca/common/ui/widgets/SlidingOutSuggestionView$DesiredVisibility;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/orca/common/ui/widgets/SlidingOutSuggestionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/orca/common/ui/widgets/SlidingOutSuggestionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/widget/CustomFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    iput v1, p0, Lcom/facebook/orca/common/ui/widgets/SlidingOutSuggestionView;->h:I

    .line 43
    iput v1, p0, Lcom/facebook/orca/common/ui/widgets/SlidingOutSuggestionView;->i:I

    .line 45
    sget-object v0, Lcom/facebook/orca/common/ui/widgets/SlidingOutSuggestionView$DesiredVisibility;->WHATEVER:Lcom/facebook/orca/common/ui/widgets/SlidingOutSuggestionView$DesiredVisibility;

    iput-object v0, p0, Lcom/facebook/orca/common/ui/widgets/SlidingOutSuggestionView;->j:Lcom/facebook/orca/common/ui/widgets/SlidingOutSuggestionView$DesiredVisibility;

    .line 58
    sget v0, Lcom/facebook/R$layout;->orca_sliding_out_suggestion:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/common/ui/widgets/SlidingOutSuggestionView;->setContentView(I)V

    .line 60
    sget v0, Lcom/facebook/R$id;->mute_warning_container:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/common/ui/widgets/SlidingOutSuggestionView;->c(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/common/ui/widgets/SlidingOutSuggestionView;->a:Landroid/view/View;

    .line 61
    sget v0, Lcom/facebook/R$id;->sliding_out_suggestion_text:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/common/ui/widgets/SlidingOutSuggestionView;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/orca/common/ui/widgets/SlidingOutSuggestionView;->b:Landroid/widget/TextView;

    .line 62
    sget v0, Lcom/facebook/R$id;->sliding_out_suggestion_separator_top:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/common/ui/widgets/SlidingOutSuggestionView;->c(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/common/ui/widgets/SlidingOutSuggestionView;->c:Landroid/view/View;

    .line 63
    sget v0, Lcom/facebook/R$id;->sliding_out_suggestion_separator_bottom:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/common/ui/widgets/SlidingOutSuggestionView;->c(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/common/ui/widgets/SlidingOutSuggestionView;->d:Landroid/view/View;

    .line 64
    sget v0, Lcom/facebook/R$id;->sliding_out_suggestion_button:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/common/ui/widgets/SlidingOutSuggestionView;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/facebook/orca/common/ui/widgets/SlidingOutSuggestionView;->e:Landroid/widget/Button;

    .line 66
    sget-object v0, Lcom/facebook/R$styleable;->SlidingOutSuggestionView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 67
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v3

    move v0, v1

    .line 68
    :goto_0
    if-ge v0, v3, :cond_0

    .line 69
    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    .line 70
    packed-switch v1, :pswitch_data_0

    .line 68
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 72
    :pswitch_0
    iget v4, p0, Lcom/facebook/orca/common/ui/widgets/SlidingOutSuggestionView;->h:I

    invoke-virtual {v2, v1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/facebook/orca/common/ui/widgets/SlidingOutSuggestionView;->setDividerPosition(I)V

    goto :goto_1

    .line 75
    :pswitch_1
    iget v4, p0, Lcom/facebook/orca/common/ui/widgets/SlidingOutSuggestionView;->i:I

    invoke-virtual {v2, v1, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/facebook/orca/common/ui/widgets/SlidingOutSuggestionView;->i:I

    goto :goto_1

    .line 78
    :pswitch_2
    invoke-virtual {v2, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/facebook/orca/common/ui/widgets/SlidingOutSuggestionView;->setSuggestionText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 81
    :pswitch_3
    invoke-virtual {v2, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/facebook/orca/common/ui/widgets/SlidingOutSuggestionView;->setButtonText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 85
    :cond_0
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 86
    return-void

    .line 70
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic a(Lcom/facebook/orca/common/ui/widgets/SlidingOutSuggestionView;)Landroid/widget/FrameLayout;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/SlidingOutSuggestionView;->f:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/orca/common/ui/widgets/SlidingOutSuggestionView;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/facebook/orca/common/ui/widgets/SlidingOutSuggestionView;->g:Z

    return p1
.end method

.method static synthetic b(Lcom/facebook/orca/common/ui/widgets/SlidingOutSuggestionView;)V
    .locals 0
    .parameter

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/SlidingOutSuggestionView;->g()V

    return-void
.end method

.method private g()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 132
    iget-boolean v0, p0, Lcom/facebook/orca/common/ui/widgets/SlidingOutSuggestionView;->g:Z

    if-eqz v0, :cond_0

    .line 153
    :goto_0
    return-void

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/SlidingOutSuggestionView;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 137
    :goto_1
    sget-object v2, Lcom/facebook/orca/common/ui/widgets/SlidingOutSuggestionView$2;->a:[I

    iget-object v3, p0, Lcom/facebook/orca/common/ui/widgets/SlidingOutSuggestionView;->j:Lcom/facebook/orca/common/ui/widgets/SlidingOutSuggestionView$DesiredVisibility;

    invoke-virtual {v3}, Lcom/facebook/orca/common/ui/widgets/SlidingOutSuggestionView$DesiredVisibility;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 152
    :cond_1
    :goto_2
    :pswitch_0
    sget-object v0, Lcom/facebook/orca/common/ui/widgets/SlidingOutSuggestionView$DesiredVisibility;->WHATEVER:Lcom/facebook/orca/common/ui/widgets/SlidingOutSuggestionView$DesiredVisibility;

    iput-object v0, p0, Lcom/facebook/orca/common/ui/widgets/SlidingOutSuggestionView;->j:Lcom/facebook/orca/common/ui/widgets/SlidingOutSuggestionView$DesiredVisibility;

    goto :goto_0

    :cond_2
    move v0, v1

    .line 136
    goto :goto_1

    .line 139
    :pswitch_1
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/SlidingOutSuggestionView;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 142
    :pswitch_2
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/SlidingOutSuggestionView;->a:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 147
    :pswitch_3
    if-eqz v0, :cond_1

    .line 148
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/SlidingOutSuggestionView;->h()V

    goto :goto_2

    .line 137
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private h()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 165
    new-instance v1, Lcom/facebook/orca/common/ui/animation/CanvasCaptureView;

    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/SlidingOutSuggestionView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/facebook/orca/common/ui/animation/CanvasCaptureView;-><init>(Landroid/content/Context;)V

    .line 166
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/SlidingOutSuggestionView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/SlidingOutSuggestionView;->getHeight()I

    move-result v3

    invoke-direct {v0, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 167
    iget v2, p0, Lcom/facebook/orca/common/ui/widgets/SlidingOutSuggestionView;->i:I

    if-ne v2, v5, :cond_0

    .line 168
    const/16 v2, 0x50

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 170
    :cond_0
    invoke-virtual {v1, v0}, Lcom/facebook/orca/common/ui/animation/CanvasCaptureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 171
    invoke-virtual {v1, p0}, Lcom/facebook/orca/common/ui/animation/CanvasCaptureView;->a(Landroid/view/View;)V

    .line 173
    iget v0, p0, Lcom/facebook/orca/common/ui/widgets/SlidingOutSuggestionView;->i:I

    if-ne v0, v5, :cond_1

    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/SlidingOutSuggestionView;->getHeight()I

    move-result v0

    .line 174
    :goto_0
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    int-to-float v0, v0

    invoke-direct {v2, v4, v4, v4, v0}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 175
    const-wide/16 v3, 0x12c

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 176
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 177
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v2, v0}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 178
    new-instance v0, Lcom/facebook/orca/common/ui/widgets/SlidingOutSuggestionView$1;

    invoke-direct {v0, p0, v1}, Lcom/facebook/orca/common/ui/widgets/SlidingOutSuggestionView$1;-><init>(Lcom/facebook/orca/common/ui/widgets/SlidingOutSuggestionView;Lcom/facebook/orca/common/ui/animation/CanvasCaptureView;)V

    invoke-virtual {v2, v0}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 194
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/SlidingOutSuggestionView;->f:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 195
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/SlidingOutSuggestionView;->f:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 196
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/SlidingOutSuggestionView;->a:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 197
    iput-boolean v5, p0, Lcom/facebook/orca/common/ui/widgets/SlidingOutSuggestionView;->g:Z

    .line 198
    return-void

    .line 173
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/SlidingOutSuggestionView;->getHeight()I

    move-result v0

    neg-int v0, v0

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/SlidingOutSuggestionView;->b:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 114
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 117
    sget-object v0, Lcom/facebook/orca/common/ui/widgets/SlidingOutSuggestionView$DesiredVisibility;->SHOW:Lcom/facebook/orca/common/ui/widgets/SlidingOutSuggestionView$DesiredVisibility;

    iput-object v0, p0, Lcom/facebook/orca/common/ui/widgets/SlidingOutSuggestionView;->j:Lcom/facebook/orca/common/ui/widgets/SlidingOutSuggestionView$DesiredVisibility;

    .line 118
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/SlidingOutSuggestionView;->g()V

    .line 119
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 122
    sget-object v0, Lcom/facebook/orca/common/ui/widgets/SlidingOutSuggestionView$DesiredVisibility;->HIDE:Lcom/facebook/orca/common/ui/widgets/SlidingOutSuggestionView$DesiredVisibility;

    iput-object v0, p0, Lcom/facebook/orca/common/ui/widgets/SlidingOutSuggestionView;->j:Lcom/facebook/orca/common/ui/widgets/SlidingOutSuggestionView$DesiredVisibility;

    .line 123
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/SlidingOutSuggestionView;->g()V

    .line 124
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 127
    sget-object v0, Lcom/facebook/orca/common/ui/widgets/SlidingOutSuggestionView$DesiredVisibility;->ANIMATE_OUT:Lcom/facebook/orca/common/ui/widgets/SlidingOutSuggestionView$DesiredVisibility;

    iput-object v0, p0, Lcom/facebook/orca/common/ui/widgets/SlidingOutSuggestionView;->j:Lcom/facebook/orca/common/ui/widgets/SlidingOutSuggestionView$DesiredVisibility;

    .line 128
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/SlidingOutSuggestionView;->g()V

    .line 129
    return-void
.end method

.method public e()Z
    .locals 2

    .prologue
    .line 211
    iget v0, p0, Lcom/facebook/orca/common/ui/widgets/SlidingOutSuggestionView;->h:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Z
    .locals 2

    .prologue
    .line 215
    iget v0, p0, Lcom/facebook/orca/common/ui/widgets/SlidingOutSuggestionView;->h:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAnimateOutDirection()I
    .locals 1

    .prologue
    .line 219
    iget v0, p0, Lcom/facebook/orca/common/ui/widgets/SlidingOutSuggestionView;->i:I

    return v0
.end method

.method public setAnimateOutDirection(I)V
    .locals 0
    .parameter

    .prologue
    .line 223
    iput p1, p0, Lcom/facebook/orca/common/ui/widgets/SlidingOutSuggestionView;->i:I

    .line 224
    return-void
.end method

.method public setAnimationContainer(Landroid/widget/FrameLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/facebook/orca/common/ui/widgets/SlidingOutSuggestionView;->f:Landroid/widget/FrameLayout;

    .line 90
    return-void
.end method

.method public setButtonText(I)V
    .locals 1
    .parameter

    .prologue
    .line 101
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/SlidingOutSuggestionView;->e:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    .line 102
    return-void
.end method

.method public setButtonText(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter

    .prologue
    .line 105
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/SlidingOutSuggestionView;->e:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 106
    return-void
.end method

.method public setDividerPosition(I)V
    .locals 4
    .parameter

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 205
    iput p1, p0, Lcom/facebook/orca/common/ui/widgets/SlidingOutSuggestionView;->h:I

    .line 206
    iget-object v3, p0, Lcom/facebook/orca/common/ui/widgets/SlidingOutSuggestionView;->c:Landroid/view/View;

    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/SlidingOutSuggestionView;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 207
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/SlidingOutSuggestionView;->d:Landroid/view/View;

    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/SlidingOutSuggestionView;->f()Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 208
    return-void

    :cond_0
    move v0, v2

    .line 206
    goto :goto_0

    :cond_1
    move v1, v2

    .line 207
    goto :goto_1
.end method

.method public setOnButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter

    .prologue
    .line 109
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/SlidingOutSuggestionView;->e:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    return-void
.end method

.method public setSuggestionText(I)V
    .locals 1
    .parameter

    .prologue
    .line 93
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/SlidingOutSuggestionView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 94
    return-void
.end method

.method public setSuggestionText(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/SlidingOutSuggestionView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    return-void
.end method
