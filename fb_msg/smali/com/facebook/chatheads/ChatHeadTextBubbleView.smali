.class public Lcom/facebook/chatheads/ChatHeadTextBubbleView;
.super Lcom/facebook/widget/CustomFrameLayout;
.source "ChatHeadTextBubbleView.java"


# instance fields
.field private final a:Lcom/facebook/orca/common/ui/util/MessageRenderingUtil;

.field private final b:Landroid/widget/TextView;

.field private final c:Ljava/lang/Runnable;

.field private final d:Landroid/view/View$OnClickListener;

.field private final e:Landroid/view/GestureDetector$OnGestureListener;

.field private f:Lcom/nineoldandroids/animation/ObjectAnimator;

.field private g:Landroid/view/GestureDetector;

.field private h:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/facebook/widget/CustomFrameLayout;-><init>(Landroid/content/Context;)V

    .line 37
    new-instance v0, Lcom/facebook/chatheads/ChatHeadTextBubbleView$1;

    invoke-direct {v0, p0}, Lcom/facebook/chatheads/ChatHeadTextBubbleView$1;-><init>(Lcom/facebook/chatheads/ChatHeadTextBubbleView;)V

    iput-object v0, p0, Lcom/facebook/chatheads/ChatHeadTextBubbleView;->c:Ljava/lang/Runnable;

    .line 48
    new-instance v0, Lcom/facebook/chatheads/ChatHeadTextBubbleView$2;

    invoke-direct {v0, p0}, Lcom/facebook/chatheads/ChatHeadTextBubbleView$2;-><init>(Lcom/facebook/chatheads/ChatHeadTextBubbleView;)V

    iput-object v0, p0, Lcom/facebook/chatheads/ChatHeadTextBubbleView;->d:Landroid/view/View$OnClickListener;

    .line 66
    new-instance v0, Lcom/facebook/chatheads/ChatHeadTextBubbleView$3;

    invoke-direct {v0, p0}, Lcom/facebook/chatheads/ChatHeadTextBubbleView$3;-><init>(Lcom/facebook/chatheads/ChatHeadTextBubbleView;)V

    iput-object v0, p0, Lcom/facebook/chatheads/ChatHeadTextBubbleView;->e:Landroid/view/GestureDetector$OnGestureListener;

    .line 100
    invoke-static {p1}, Lcom/facebook/orca/inject/FbInjector;->a(Landroid/content/Context;)Lcom/facebook/orca/inject/FbInjector;

    move-result-object v0

    .line 101
    const-class v1, Lcom/facebook/orca/common/ui/util/MessageRenderingUtil;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/ui/util/MessageRenderingUtil;

    iput-object v0, p0, Lcom/facebook/chatheads/ChatHeadTextBubbleView;->a:Lcom/facebook/orca/common/ui/util/MessageRenderingUtil;

    .line 103
    sget v0, Lcom/facebook/R$layout;->chat_head_text_bubble:I

    invoke-virtual {p0, v0}, Lcom/facebook/chatheads/ChatHeadTextBubbleView;->setContentView(I)V

    .line 104
    sget v0, Lcom/facebook/R$id;->chat_head_text_bubble_text:I

    invoke-virtual {p0, v0}, Lcom/facebook/chatheads/ChatHeadTextBubbleView;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/chatheads/ChatHeadTextBubbleView;->b:Landroid/widget/TextView;

    .line 107
    iget-object v0, p0, Lcom/facebook/chatheads/ChatHeadTextBubbleView;->d:Landroid/view/View$OnClickListener;

    invoke-super {p0, v0}, Lcom/facebook/widget/CustomFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/facebook/chatheads/ChatHeadTextBubbleView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/chatheads/ChatHeadTextBubbleView;->e:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/facebook/chatheads/ChatHeadTextBubbleView;->g:Landroid/view/GestureDetector;

    .line 110
    return-void
.end method

.method static synthetic a(Lcom/facebook/chatheads/ChatHeadTextBubbleView;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/facebook/chatheads/ChatHeadTextBubbleView;->h:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method private a(FJ)Lcom/nineoldandroids/animation/ObjectAnimator;
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 184
    iget-object v0, p0, Lcom/facebook/chatheads/ChatHeadTextBubbleView;->f:Lcom/nineoldandroids/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/chatheads/ChatHeadTextBubbleView;->f:Lcom/nineoldandroids/animation/ObjectAnimator;

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/ObjectAnimator;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/facebook/chatheads/ChatHeadTextBubbleView;->f:Lcom/nineoldandroids/animation/ObjectAnimator;

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/ObjectAnimator;->d()V

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/facebook/chatheads/ChatHeadTextBubbleView;->b:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->a(Landroid/view/View;)Lcom/nineoldandroids/view/animation/AnimatorProxy;

    move-result-object v0

    .line 190
    iget-object v1, p0, Lcom/facebook/chatheads/ChatHeadTextBubbleView;->b:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->b(F)V

    .line 191
    iget-object v1, p0, Lcom/facebook/chatheads/ChatHeadTextBubbleView;->b:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->c(F)V

    .line 193
    const-string v1, "scaleX"

    new-array v2, v5, [F

    aput p1, v2, v4

    invoke-static {v1, v2}, Lcom/nineoldandroids/animation/PropertyValuesHolder;->a(Ljava/lang/String;[F)Lcom/nineoldandroids/animation/PropertyValuesHolder;

    move-result-object v1

    .line 194
    const-string v2, "scaleY"

    new-array v3, v5, [F

    aput p1, v3, v4

    invoke-static {v2, v3}, Lcom/nineoldandroids/animation/PropertyValuesHolder;->a(Ljava/lang/String;[F)Lcom/nineoldandroids/animation/PropertyValuesHolder;

    move-result-object v2

    .line 195
    const/4 v3, 0x2

    new-array v3, v3, [Lcom/nineoldandroids/animation/PropertyValuesHolder;

    aput-object v1, v3, v4

    aput-object v2, v3, v5

    invoke-static {v0, v3}, Lcom/nineoldandroids/animation/ObjectAnimator;->a(Ljava/lang/Object;[Lcom/nineoldandroids/animation/PropertyValuesHolder;)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/chatheads/ChatHeadTextBubbleView;->f:Lcom/nineoldandroids/animation/ObjectAnimator;

    .line 196
    iget-object v0, p0, Lcom/facebook/chatheads/ChatHeadTextBubbleView;->f:Lcom/nineoldandroids/animation/ObjectAnimator;

    invoke-virtual {v0, p2, p3}, Lcom/nineoldandroids/animation/ObjectAnimator;->a_(J)Lcom/nineoldandroids/animation/ObjectAnimator;

    .line 197
    iget-object v0, p0, Lcom/facebook/chatheads/ChatHeadTextBubbleView;->f:Lcom/nineoldandroids/animation/ObjectAnimator;

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/ObjectAnimator;->c()V

    .line 199
    iget-object v0, p0, Lcom/facebook/chatheads/ChatHeadTextBubbleView;->f:Lcom/nineoldandroids/animation/ObjectAnimator;

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/chatheads/ChatHeadTextBubbleView;)Lcom/nineoldandroids/animation/ObjectAnimator;
    .locals 1
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/facebook/chatheads/ChatHeadTextBubbleView;->g()Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method private c()V
    .locals 3

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/facebook/chatheads/ChatHeadTextBubbleView;->d()V

    .line 143
    iget-object v0, p0, Lcom/facebook/chatheads/ChatHeadTextBubbleView;->c:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1388

    invoke-virtual {p0, v0, v1, v2}, Lcom/facebook/chatheads/ChatHeadTextBubbleView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 144
    return-void
.end method

.method static synthetic c(Lcom/facebook/chatheads/ChatHeadTextBubbleView;)V
    .locals 0
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/facebook/chatheads/ChatHeadTextBubbleView;->d()V

    return-void
.end method

.method static synthetic d(Lcom/facebook/chatheads/ChatHeadTextBubbleView;)Lcom/nineoldandroids/animation/ObjectAnimator;
    .locals 1
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/facebook/chatheads/ChatHeadTextBubbleView;->h()Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method private d()V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/facebook/chatheads/ChatHeadTextBubbleView;->c:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/facebook/chatheads/ChatHeadTextBubbleView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 148
    return-void
.end method

.method private e()V
    .locals 2

    .prologue
    .line 154
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/chatheads/ChatHeadTextBubbleView;->setVisibility(I)V

    .line 155
    invoke-virtual {p0}, Lcom/facebook/chatheads/ChatHeadTextBubbleView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/facebook/R$anim;->chat_head_text_bubble_pop_up:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 157
    iget-object v1, p0, Lcom/facebook/chatheads/ChatHeadTextBubbleView;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 158
    return-void
.end method

.method private f()V
    .locals 2

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/facebook/chatheads/ChatHeadTextBubbleView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/facebook/R$anim;->chat_head_text_bubble_pop_back:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 166
    iget-object v1, p0, Lcom/facebook/chatheads/ChatHeadTextBubbleView;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 167
    new-instance v1, Lcom/facebook/chatheads/ChatHeadTextBubbleView$4;

    invoke-direct {v1, p0}, Lcom/facebook/chatheads/ChatHeadTextBubbleView$4;-><init>(Lcom/facebook/chatheads/ChatHeadTextBubbleView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 173
    return-void
.end method

.method private g()Lcom/nineoldandroids/animation/ObjectAnimator;
    .locals 3

    .prologue
    .line 176
    const/high16 v0, 0x3f80

    const-wide/16 v1, 0x78

    invoke-direct {p0, v0, v1, v2}, Lcom/facebook/chatheads/ChatHeadTextBubbleView;->a(FJ)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method private h()Lcom/nineoldandroids/animation/ObjectAnimator;
    .locals 3

    .prologue
    .line 180
    const v0, 0x3f68f5c3

    const-wide/16 v1, 0x21

    invoke-direct {p0, v0, v1, v2}, Lcom/facebook/chatheads/ChatHeadTextBubbleView;->a(FJ)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/facebook/chatheads/ChatHeadTextBubbleView;->c()V

    .line 132
    invoke-direct {p0}, Lcom/facebook/chatheads/ChatHeadTextBubbleView;->e()V

    .line 133
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/facebook/chatheads/ChatHeadTextBubbleView;->d()V

    .line 137
    invoke-direct {p0}, Lcom/facebook/chatheads/ChatHeadTextBubbleView;->f()V

    .line 138
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 114
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eq v1, v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 116
    :cond_0
    invoke-direct {p0}, Lcom/facebook/chatheads/ChatHeadTextBubbleView;->c()V

    .line 119
    :cond_1
    iget-object v1, p0, Lcom/facebook/chatheads/ChatHeadTextBubbleView;->g:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-super {p0, p1}, Lcom/facebook/widget/CustomFrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setMessage(Lcom/facebook/orca/threads/Message;)V
    .locals 2
    .parameter

    .prologue
    .line 203
    iget-object v0, p0, Lcom/facebook/chatheads/ChatHeadTextBubbleView;->a:Lcom/facebook/orca/common/ui/util/MessageRenderingUtil;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/common/ui/util/MessageRenderingUtil;->a(Lcom/facebook/orca/threads/Message;)Landroid/text/Spanned;

    move-result-object v0

    .line 204
    iget-object v1, p0, Lcom/facebook/chatheads/ChatHeadTextBubbleView;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lcom/facebook/chatheads/ChatHeadTextBubbleView;->h:Landroid/view/View$OnClickListener;

    .line 128
    return-void
.end method
