.class public Lcom/facebook/chatheads/ChatHeadWindowManager;
.super Ljava/lang/Object;
.source "ChatHeadWindowManager.java"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/view/WindowManager;

.field private final c:Landroid/os/Handler;

.field private final d:Lcom/facebook/chatheads/ChatHeadBroadcaster;

.field private final e:Lcom/facebook/orca/activity/SafeLocalBroadcastReceiver;

.field private final f:Lcom/facebook/chatheads/RecentTaskChangeDetector;

.field private final g:Ljava/lang/Runnable;

.field private h:Lcom/facebook/chatheads/ChatHeadWindowManager$ChatHeadWindowManagerListener;

.field private i:Lcom/nineoldandroids/animation/Animator;

.field private j:Lcom/facebook/chatheads/ChatHeadView;

.field private k:Lcom/facebook/chatheads/ChatHeadView;

.field private l:Lcom/facebook/chatheads/ChatHeadTextBubbleView;

.field private m:Z

.field private n:Z

.field private o:Lcom/facebook/chatheads/ChatHeadView;

.field private final p:Landroid/view/View$OnClickListener;

.field private q:Landroid/view/View$OnClickListener;

.field private final r:Landroid/view/View$OnTouchListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManager;Landroid/os/Handler;Lcom/facebook/chatheads/ChatHeadBroadcaster;Lcom/facebook/chatheads/RecentTaskChangeDetector;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Lcom/facebook/chatheads/ChatHeadWindowManager$1;

    invoke-direct {v0, p0}, Lcom/facebook/chatheads/ChatHeadWindowManager$1;-><init>(Lcom/facebook/chatheads/ChatHeadWindowManager;)V

    iput-object v0, p0, Lcom/facebook/chatheads/ChatHeadWindowManager;->g:Ljava/lang/Runnable;

    .line 451
    new-instance v0, Lcom/facebook/chatheads/ChatHeadWindowManager$4;

    invoke-direct {v0, p0}, Lcom/facebook/chatheads/ChatHeadWindowManager$4;-><init>(Lcom/facebook/chatheads/ChatHeadWindowManager;)V

    iput-object v0, p0, Lcom/facebook/chatheads/ChatHeadWindowManager;->p:Landroid/view/View$OnClickListener;

    .line 468
    new-instance v0, Lcom/facebook/chatheads/ChatHeadWindowManager$5;

    invoke-direct {v0, p0}, Lcom/facebook/chatheads/ChatHeadWindowManager$5;-><init>(Lcom/facebook/chatheads/ChatHeadWindowManager;)V

    iput-object v0, p0, Lcom/facebook/chatheads/ChatHeadWindowManager;->q:Landroid/view/View$OnClickListener;

    .line 494
    new-instance v0, Lcom/facebook/chatheads/ChatHeadWindowManager$6;

    invoke-direct {v0, p0}, Lcom/facebook/chatheads/ChatHeadWindowManager$6;-><init>(Lcom/facebook/chatheads/ChatHeadWindowManager;)V

    iput-object v0, p0, Lcom/facebook/chatheads/ChatHeadWindowManager;->r:Landroid/view/View$OnTouchListener;

    .line 104
    iput-object p1, p0, Lcom/facebook/chatheads/ChatHeadWindowManager;->a:Landroid/content/Context;

    .line 105
    iput-object p2, p0, Lcom/facebook/chatheads/ChatHeadWindowManager;->b:Landroid/view/WindowManager;

    .line 106
    iput-object p3, p0, Lcom/facebook/chatheads/ChatHeadWindowManager;->c:Landroid/os/Handler;

    .line 107
    iput-object p4, p0, Lcom/facebook/chatheads/ChatHeadWindowManager;->d:Lcom/facebook/chatheads/ChatHeadBroadcaster;

    .line 109
    iput-object p5, p0, Lcom/facebook/chatheads/ChatHeadWindowManager;->f:Lcom/facebook/chatheads/RecentTaskChangeDetector;

    .line 110
    iget-object v0, p0, Lcom/facebook/chatheads/ChatHeadWindowManager;->f:Lcom/facebook/chatheads/RecentTaskChangeDetector;

    new-instance v1, Lcom/facebook/chatheads/ChatHeadWindowManager$2;

    invoke-direct {v1, p0}, Lcom/facebook/chatheads/ChatHeadWindowManager$2;-><init>(Lcom/facebook/chatheads/ChatHeadWindowManager;)V

    invoke-virtual {v0, v1}, Lcom/facebook/chatheads/RecentTaskChangeDetector;->a(Lcom/facebook/chatheads/RecentTaskChangeDetector$OnRecentTaskChangeListener;)V

    .line 118
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.facebook.chathead.CHAT_HEAD_REQUEST_CLOSE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 119
    new-instance v1, Lcom/facebook/chatheads/ChatHeadWindowManager$3;

    invoke-direct {v1, p0, p1, v0}, Lcom/facebook/chatheads/ChatHeadWindowManager$3;-><init>(Lcom/facebook/chatheads/ChatHeadWindowManager;Landroid/content/Context;Landroid/content/IntentFilter;)V

    iput-object v1, p0, Lcom/facebook/chatheads/ChatHeadWindowManager;->e:Lcom/facebook/orca/activity/SafeLocalBroadcastReceiver;

    .line 136
    iget-object v0, p0, Lcom/facebook/chatheads/ChatHeadWindowManager;->e:Lcom/facebook/orca/activity/SafeLocalBroadcastReceiver;

    invoke-virtual {v0}, Lcom/facebook/orca/activity/SafeLocalBroadcastReceiver;->a()V

    .line 137
    return-void
.end method

.method private a(Lcom/facebook/chatheads/ChatHeadView;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 290
    if-nez p1, :cond_0

    .line 291
    const/4 v0, 0x0

    .line 295
    :goto_0
    return-object v0

    .line 294
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/chatheads/ChatHeadView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/chatheads/ChatHeadWindowManager$ViewHolder;

    .line 295
    iget-object v0, v0, Lcom/facebook/chatheads/ChatHeadWindowManager$ViewHolder;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic a(Lcom/facebook/chatheads/ChatHeadWindowManager;Lcom/facebook/chatheads/ChatHeadView;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/facebook/chatheads/ChatHeadWindowManager;->a(Lcom/facebook/chatheads/ChatHeadView;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/app/ActivityManager$RecentTaskInfo;)V
    .locals 4
    .parameter

    .prologue
    .line 433
    iget-boolean v0, p0, Lcom/facebook/chatheads/ChatHeadWindowManager;->n:Z

    if-eqz v0, :cond_0

    .line 434
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/chatheads/ChatHeadWindowManager;->n:Z

    .line 445
    :goto_0
    return-void

    .line 438
    :cond_0
    iget-object v0, p1, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 439
    invoke-direct {p0}, Lcom/facebook/chatheads/ChatHeadWindowManager;->e()V

    .line 440
    iget-object v0, p0, Lcom/facebook/chatheads/ChatHeadWindowManager;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/facebook/chatheads/ChatHeadWindowManager;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 441
    iget-object v0, p0, Lcom/facebook/chatheads/ChatHeadWindowManager;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/facebook/chatheads/ChatHeadWindowManager;->g:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 443
    :cond_1
    invoke-direct {p0}, Lcom/facebook/chatheads/ChatHeadWindowManager;->d()V

    goto :goto_0
.end method

.method private a(Landroid/view/View;II)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 678
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 679
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 680
    iput p3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 681
    iget-object v1, p0, Lcom/facebook/chatheads/ChatHeadWindowManager;->b:Landroid/view/WindowManager;

    invoke-interface {v1, p1, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 682
    return-void
.end method

.method private a(Lcom/facebook/chatheads/ChatHeadView;FF)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 725
    invoke-virtual {p1}, Lcom/facebook/chatheads/ChatHeadView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 730
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v1, v1

    add-float/2addr v1, p2

    float-to-int v1, v1

    .line 731
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v0, v0

    add-float/2addr v0, p3

    float-to-int v0, v0

    .line 733
    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/chatheads/ChatHeadWindowManager;->b(Landroid/view/View;II)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/chatheads/ChatHeadWindowManager;->i:Lcom/nineoldandroids/animation/Animator;

    .line 734
    iget-object v0, p0, Lcom/facebook/chatheads/ChatHeadWindowManager;->i:Lcom/nineoldandroids/animation/Animator;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Lcom/nineoldandroids/animation/Animator;->a(J)Lcom/nineoldandroids/animation/Animator;

    .line 735
    iget-object v0, p0, Lcom/facebook/chatheads/ChatHeadWindowManager;->i:Lcom/nineoldandroids/animation/Animator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/Animator;->a(Landroid/view/animation/Interpolator;)V

    .line 736
    iget-object v0, p0, Lcom/facebook/chatheads/ChatHeadWindowManager;->i:Lcom/nineoldandroids/animation/Animator;

    new-instance v1, Lcom/facebook/chatheads/ChatHeadWindowManager$7;

    invoke-direct {v1, p0, p1}, Lcom/facebook/chatheads/ChatHeadWindowManager$7;-><init>(Lcom/facebook/chatheads/ChatHeadWindowManager;Lcom/facebook/chatheads/ChatHeadView;)V

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/Animator;->a(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)V

    .line 742
    iget-object v0, p0, Lcom/facebook/chatheads/ChatHeadWindowManager;->i:Lcom/nineoldandroids/animation/Animator;

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/Animator;->c()V

    .line 743
    return-void
.end method

.method private a(Lcom/facebook/chatheads/ChatHeadView;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 283
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    invoke-virtual {p1}, Lcom/facebook/chatheads/ChatHeadView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/chatheads/ChatHeadWindowManager$ViewHolder;

    .line 286
    iput-object p2, v0, Lcom/facebook/chatheads/ChatHeadWindowManager$ViewHolder;->a:Ljava/lang/String;

    .line 287
    return-void
.end method

.method static synthetic a(Lcom/facebook/chatheads/ChatHeadWindowManager;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/facebook/chatheads/ChatHeadWindowManager;->d()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/chatheads/ChatHeadWindowManager;Landroid/app/ActivityManager$RecentTaskInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/facebook/chatheads/ChatHeadWindowManager;->a(Landroid/app/ActivityManager$RecentTaskInfo;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/chatheads/ChatHeadWindowManager;Landroid/view/View;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/chatheads/ChatHeadWindowManager;->c(Landroid/view/View;II)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/chatheads/ChatHeadWindowManager;Lcom/facebook/chatheads/ChatHeadView;FF)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/chatheads/ChatHeadWindowManager;->a(Lcom/facebook/chatheads/ChatHeadView;FF)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/chatheads/ChatHeadWindowManager;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/facebook/chatheads/ChatHeadWindowManager;->d(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/facebook/chatheads/ChatHeadView;Lcom/facebook/chatheads/ChatHeadView;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 313
    invoke-direct {p0, p1}, Lcom/facebook/chatheads/ChatHeadWindowManager;->a(Lcom/facebook/chatheads/ChatHeadView;)Ljava/lang/String;

    move-result-object v0

    .line 314
    invoke-direct {p0, p2}, Lcom/facebook/chatheads/ChatHeadWindowManager;->a(Lcom/facebook/chatheads/ChatHeadView;)Ljava/lang/String;

    move-result-object v1

    .line 315
    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/facebook/chatheads/ChatHeadWindowManager;Lcom/facebook/chatheads/ChatHeadView;Lcom/facebook/chatheads/ChatHeadView;)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/facebook/chatheads/ChatHeadWindowManager;->a(Lcom/facebook/chatheads/ChatHeadView;Lcom/facebook/chatheads/ChatHeadView;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/facebook/chatheads/ChatHeadWindowManager;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/facebook/chatheads/ChatHeadWindowManager;->n:Z

    return p1
.end method

.method private b(Lcom/facebook/chatheads/ChatHeadView;)Landroid/view/GestureDetector;
    .locals 1
    .parameter

    .prologue
    .line 299
    if-nez p1, :cond_0

    .line 300
    const/4 v0, 0x0

    .line 304
    :goto_0
    return-object v0

    .line 303
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/chatheads/ChatHeadView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/chatheads/ChatHeadWindowManager$ViewHolder;

    .line 304
    iget-object v0, v0, Lcom/facebook/chatheads/ChatHeadWindowManager$ViewHolder;->b:Landroid/view/GestureDetector;

    goto :goto_0
.end method

.method static synthetic b(Lcom/facebook/chatheads/ChatHeadWindowManager;Lcom/facebook/chatheads/ChatHeadView;)Landroid/view/GestureDetector;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/facebook/chatheads/ChatHeadWindowManager;->b(Lcom/facebook/chatheads/ChatHeadView;)Landroid/view/GestureDetector;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/chatheads/ChatHeadWindowManager;)Lcom/facebook/chatheads/ChatHeadView;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/facebook/chatheads/ChatHeadWindowManager;->j:Lcom/facebook/chatheads/ChatHeadView;

    return-object v0
.end method

.method private b(Ljava/lang/String;)Lcom/facebook/chatheads/ChatHeadView;
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 217
    iget-object v1, p0, Lcom/facebook/chatheads/ChatHeadWindowManager;->j:Lcom/facebook/chatheads/ChatHeadView;

    .line 219
    if-nez v1, :cond_1

    .line 229
    :cond_0
    :goto_0
    return-object v0

    .line 223
    :cond_1
    invoke-direct {p0, v1}, Lcom/facebook/chatheads/ChatHeadWindowManager;->a(Lcom/facebook/chatheads/ChatHeadView;)Ljava/lang/String;

    move-result-object v2

    .line 225
    invoke-static {p1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 229
    goto :goto_0
.end method

.method private b(Landroid/view/View;II)Lcom/nineoldandroids/animation/ObjectAnimator;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 703
    new-instance v0, Lcom/facebook/chatheads/WindowManagerLayoutParamsHelper;

    iget-object v1, p0, Lcom/facebook/chatheads/ChatHeadWindowManager;->b:Landroid/view/WindowManager;

    invoke-direct {v0, v1, p1}, Lcom/facebook/chatheads/WindowManagerLayoutParamsHelper;-><init>(Landroid/view/WindowManager;Landroid/view/View;)V

    .line 707
    const-string v1, "x"

    new-array v2, v5, [I

    aput p2, v2, v4

    invoke-static {v1, v2}, Lcom/nineoldandroids/animation/PropertyValuesHolder;->a(Ljava/lang/String;[I)Lcom/nineoldandroids/animation/PropertyValuesHolder;

    move-result-object v1

    .line 708
    const-string v2, "y"

    new-array v3, v5, [I

    aput p3, v3, v4

    invoke-static {v2, v3}, Lcom/nineoldandroids/animation/PropertyValuesHolder;->a(Ljava/lang/String;[I)Lcom/nineoldandroids/animation/PropertyValuesHolder;

    move-result-object v2

    .line 710
    const/4 v3, 0x2

    new-array v3, v3, [Lcom/nineoldandroids/animation/PropertyValuesHolder;

    aput-object v1, v3, v4

    aput-object v2, v3, v5

    invoke-static {v0, v3}, Lcom/nineoldandroids/animation/ObjectAnimator;->a(Ljava/lang/Object;[Lcom/nineoldandroids/animation/PropertyValuesHolder;)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/chatheads/ChatHeadWindowManager;Landroid/view/View;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/chatheads/ChatHeadWindowManager;->a(Landroid/view/View;II)V

    return-void
.end method

.method static synthetic b(Lcom/facebook/chatheads/ChatHeadWindowManager;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/facebook/chatheads/ChatHeadWindowManager;->e(Ljava/lang/String;)V

    return-void
.end method

.method private b(Lcom/facebook/orca/threads/Message;)V
    .locals 3
    .parameter

    .prologue
    .line 197
    iget-object v0, p0, Lcom/facebook/chatheads/ChatHeadWindowManager;->l:Lcom/facebook/chatheads/ChatHeadTextBubbleView;

    if-nez v0, :cond_0

    .line 198
    new-instance v0, Lcom/facebook/chatheads/ChatHeadTextBubbleView;

    iget-object v1, p0, Lcom/facebook/chatheads/ChatHeadWindowManager;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/facebook/chatheads/ChatHeadTextBubbleView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/chatheads/ChatHeadWindowManager;->l:Lcom/facebook/chatheads/ChatHeadTextBubbleView;

    .line 199
    iget-object v0, p0, Lcom/facebook/chatheads/ChatHeadWindowManager;->l:Lcom/facebook/chatheads/ChatHeadTextBubbleView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/facebook/chatheads/ChatHeadTextBubbleView;->setVisibility(I)V

    .line 200
    iget-object v0, p0, Lcom/facebook/chatheads/ChatHeadWindowManager;->l:Lcom/facebook/chatheads/ChatHeadTextBubbleView;

    iget-object v1, p0, Lcom/facebook/chatheads/ChatHeadWindowManager;->p:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/facebook/chatheads/ChatHeadTextBubbleView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    invoke-direct {p0}, Lcom/facebook/chatheads/ChatHeadWindowManager;->i()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 202
    iget-object v1, p0, Lcom/facebook/chatheads/ChatHeadWindowManager;->b:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/facebook/chatheads/ChatHeadWindowManager;->l:Lcom/facebook/chatheads/ChatHeadTextBubbleView;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/facebook/chatheads/ChatHeadWindowManager;->l:Lcom/facebook/chatheads/ChatHeadTextBubbleView;

    invoke-virtual {v0, p1}, Lcom/facebook/chatheads/ChatHeadTextBubbleView;->setMessage(Lcom/facebook/orca/threads/Message;)V

    .line 206
    iget-object v0, p0, Lcom/facebook/chatheads/ChatHeadWindowManager;->l:Lcom/facebook/chatheads/ChatHeadTextBubbleView;

    invoke-virtual {v0}, Lcom/facebook/chatheads/ChatHeadTextBubbleView;->a()V

    .line 207
    return-void
.end method

.method private c()Lcom/facebook/chatheads/ChatHeadView;
    .locals 4

    .prologue
    .line 262
    new-instance v0, Lcom/facebook/chatheads/ChatHeadView;

    iget-object v1, p0, Lcom/facebook/chatheads/ChatHeadWindowManager;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/facebook/chatheads/ChatHeadView;-><init>(Landroid/content/Context;)V

    .line 263
    iget-object v1, p0, Lcom/facebook/chatheads/ChatHeadWindowManager;->q:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/facebook/chatheads/ChatHeadView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 264
    iget-object v1, p0, Lcom/facebook/chatheads/ChatHeadWindowManager;->r:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Lcom/facebook/chatheads/ChatHeadView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 265
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/facebook/chatheads/ChatHeadView;->setVisibility(I)V

    .line 269
    new-instance v1, Lcom/facebook/chatheads/ChatHeadWindowManager$ChatHeadGestureListener;

    invoke-direct {v1, p0, v0}, Lcom/facebook/chatheads/ChatHeadWindowManager$ChatHeadGestureListener;-><init>(Lcom/facebook/chatheads/ChatHeadWindowManager;Lcom/facebook/chatheads/ChatHeadView;)V

    .line 270
    new-instance v2, Landroid/view/GestureDetector;

    iget-object v3, p0, Lcom/facebook/chatheads/ChatHeadWindowManager;->a:Landroid/content/Context;

    invoke-direct {v2, v3, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 272
    new-instance v1, Lcom/facebook/chatheads/ChatHeadWindowManager$ViewHolder;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/facebook/chatheads/ChatHeadWindowManager$ViewHolder;-><init>(Lcom/facebook/chatheads/ChatHeadWindowManager$1;)V

    .line 273
    iput-object v2, v1, Lcom/facebook/chatheads/ChatHeadWindowManager$ViewHolder;->b:Landroid/view/GestureDetector;

    .line 274
    invoke-virtual {v0, v1}, Lcom/facebook/chatheads/ChatHeadView;->setTag(Ljava/lang/Object;)V

    .line 276
    invoke-direct {p0}, Lcom/facebook/chatheads/ChatHeadWindowManager;->h()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 277
    iget-object v2, p0, Lcom/facebook/chatheads/ChatHeadWindowManager;->b:Landroid/view/WindowManager;

    invoke-interface {v2, v0, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 279
    return-object v0
.end method

.method static synthetic c(Lcom/facebook/chatheads/ChatHeadWindowManager;Lcom/facebook/chatheads/ChatHeadView;)Lcom/facebook/chatheads/ChatHeadView;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/facebook/chatheads/ChatHeadWindowManager;->o:Lcom/facebook/chatheads/ChatHeadView;

    return-object p1
.end method

.method private c(Ljava/lang/String;)Lcom/facebook/chatheads/ChatHeadView;
    .locals 1
    .parameter

    .prologue
    .line 243
    iget-object v0, p0, Lcom/facebook/chatheads/ChatHeadWindowManager;->j:Lcom/facebook/chatheads/ChatHeadView;

    if-nez v0, :cond_0

    .line 244
    invoke-direct {p0}, Lcom/facebook/chatheads/ChatHeadWindowManager;->c()Lcom/facebook/chatheads/ChatHeadView;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/chatheads/ChatHeadWindowManager;->j:Lcom/facebook/chatheads/ChatHeadView;

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/facebook/chatheads/ChatHeadWindowManager;->j:Lcom/facebook/chatheads/ChatHeadView;

    .line 250
    invoke-direct {p0, v0, p1}, Lcom/facebook/chatheads/ChatHeadWindowManager;->a(Lcom/facebook/chatheads/ChatHeadView;Ljava/lang/String;)V

    .line 252
    return-object v0
.end method

.method private c(Landroid/view/View;II)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 752
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/chatheads/ChatHeadWindowManager;->b(Landroid/view/View;II)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/chatheads/ChatHeadWindowManager;->i:Lcom/nineoldandroids/animation/Animator;

    .line 753
    iget-object v0, p0, Lcom/facebook/chatheads/ChatHeadWindowManager;->i:Lcom/nineoldandroids/animation/Animator;

    const-wide/16 v1, 0x15e

    invoke-virtual {v0, v1, v2}, Lcom/nineoldandroids/animation/Animator;->a(J)Lcom/nineoldandroids/animation/Animator;

    .line 754
    iget-object v0, p0, Lcom/facebook/chatheads/ChatHeadWindowManager;->i:Lcom/nineoldandroids/animation/Animator;

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/Animator;->c()V

    .line 755
    return-void
.end method

.method private c(Lcom/facebook/chatheads/ChatHeadView;)V
    .locals 2
    .parameter

    .prologue
    .line 325
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    iget-object v0, p0, Lcom/facebook/chatheads/ChatHeadWindowManager;->k:Lcom/facebook/chatheads/ChatHeadView;

    invoke-direct {p0, p1, v0}, Lcom/facebook/chatheads/ChatHeadWindowManager;->a(Lcom/facebook/chatheads/ChatHeadView;Lcom/facebook/chatheads/ChatHeadView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 334
    :goto_0
    return-void

    .line 331
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/chatheads/ChatHeadWindowManager;->a(Lcom/facebook/chatheads/ChatHeadView;)Ljava/lang/String;

    move-result-object v0

    .line 332
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/facebook/chatheads/ChatHeadWindowManager;->k:Lcom/facebook/chatheads/ChatHeadView;

    .line 333
    iget-object v1, p0, Lcom/facebook/chatheads/ChatHeadWindowManager;->d:Lcom/facebook/chatheads/ChatHeadBroadcaster;

    invoke-virtual {v1, v0}, Lcom/facebook/chatheads/ChatHeadBroadcaster;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/facebook/chatheads/ChatHeadWindowManager;)Z
    .locals 1
    .parameter

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/facebook/chatheads/ChatHeadWindowManager;->j()Z

    move-result v0

    return v0
.end method

.method static synthetic d(Lcom/facebook/chatheads/ChatHeadWindowManager;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/facebook/chatheads/ChatHeadWindowManager;->a:Landroid/content/Context;

    return-object v0
.end method

.method private d()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 368
    iget-object v0, p0, Lcom/facebook/chatheads/ChatHeadWindowManager;->j:Lcom/facebook/chatheads/ChatHeadView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/chatheads/ChatHeadWindowManager;->m:Z

    if-nez v0, :cond_1

    .line 383
    :cond_0
    :goto_0
    return-void

    .line 372
    :cond_1
    iput-boolean v2, p0, Lcom/facebook/chatheads/ChatHeadWindowManager;->m:Z

    .line 374
    invoke-direct {p0}, Lcom/facebook/chatheads/ChatHeadWindowManager;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 375
    iget-object v0, p0, Lcom/facebook/chatheads/ChatHeadWindowManager;->i:Lcom/nineoldandroids/animation/Animator;

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/Animator;->d()V

    .line 378
    :cond_2
    iget-object v0, p0, Lcom/facebook/chatheads/ChatHeadWindowManager;->j:Lcom/facebook/chatheads/ChatHeadView;

    const/16 v1, 0x2bc

    invoke-virtual {v0, v1}, Lcom/facebook/chatheads/ChatHeadView;->a(I)V

    .line 380
    iget-object v0, p0, Lcom/facebook/chatheads/ChatHeadWindowManager;->j:Lcom/facebook/chatheads/ChatHeadView;

    invoke-direct {p0, v0, v2, v2}, Lcom/facebook/chatheads/ChatHeadWindowManager;->b(Landroid/view/View;II)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v0

    .line 381
    const-wide/16 v1, 0x2bc

    invoke-virtual {v0, v1, v2}, Lcom/nineoldandroids/animation/Animator;->a(J)Lcom/nineoldandroids/animation/Animator;

    .line 382
    invoke-virtual {v0}, Lcom/nineoldandroids/animation/Animator;->c()V

    goto :goto_0
.end method

.method private d(Lcom/facebook/chatheads/ChatHeadView;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 352
    if-eqz p1, :cond_0

    .line 353
    iget-object v0, p0, Lcom/facebook/chatheads/ChatHeadWindowManager;->b:Landroid/view/WindowManager;

    invoke-interface {v0, p1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 357
    iget-object v0, p0, Lcom/facebook/chatheads/ChatHeadWindowManager;->j:Lcom/facebook/chatheads/ChatHeadView;

    invoke-direct {p0, v0, p1}, Lcom/facebook/chatheads/ChatHeadWindowManager;->a(Lcom/facebook/chatheads/ChatHeadView;Lcom/facebook/chatheads/ChatHeadView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    iput-object v1, p0, Lcom/facebook/chatheads/ChatHeadWindowManager;->j:Lcom/facebook/chatheads/ChatHeadView;

    .line 362
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/facebook/chatheads/ChatHeadWindowManager;->a(Lcom/facebook/chatheads/ChatHeadView;Ljava/lang/String;)V

    .line 364
    invoke-direct {p0}, Lcom/facebook/chatheads/ChatHeadWindowManager;->g()V

    .line 365
    return-void
.end method

.method static synthetic d(Lcom/facebook/chatheads/ChatHeadWindowManager;Lcom/facebook/chatheads/ChatHeadView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/facebook/chatheads/ChatHeadWindowManager;->c(Lcom/facebook/chatheads/ChatHeadView;)V

    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 781
    invoke-direct {p0, p1}, Lcom/facebook/chatheads/ChatHeadWindowManager;->b(Ljava/lang/String;)Lcom/facebook/chatheads/ChatHeadView;

    move-result-object v0

    .line 782
    if-eqz v0, :cond_0

    .line 783
    invoke-direct {p0, v0}, Lcom/facebook/chatheads/ChatHeadWindowManager;->e(Lcom/facebook/chatheads/ChatHeadView;)V

    .line 785
    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/facebook/chatheads/ChatHeadWindowManager;)Lcom/facebook/chatheads/ChatHeadView;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/facebook/chatheads/ChatHeadWindowManager;->o:Lcom/facebook/chatheads/ChatHeadView;

    return-object v0
.end method

.method private e()V
    .locals 3

    .prologue
    .line 386
    iget-object v0, p0, Lcom/facebook/chatheads/ChatHeadWindowManager;->j:Lcom/facebook/chatheads/ChatHeadView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/chatheads/ChatHeadWindowManager;->m:Z

    if-eqz v0, :cond_1

    .line 400
    :cond_0
    :goto_0
    return-void

    .line 390
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/chatheads/ChatHeadWindowManager;->m:Z

    .line 392
    invoke-direct {p0}, Lcom/facebook/chatheads/ChatHeadWindowManager;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 393
    iget-object v0, p0, Lcom/facebook/chatheads/ChatHeadWindowManager;->i:Lcom/nineoldandroids/animation/Animator;

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/Animator;->d()V

    .line 396
    :cond_2
    iget-object v0, p0, Lcom/facebook/chatheads/ChatHeadWindowManager;->j:Lcom/facebook/chatheads/ChatHeadView;

    const/16 v1, 0x15e

    invoke-virtual {v0, v1}, Lcom/facebook/chatheads/ChatHeadView;->b(I)V

    .line 398
    iget-object v0, p0, Lcom/facebook/chatheads/ChatHeadWindowManager;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/R$dimen;->chat_head_hide_y_distance:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 399
    iget-object v1, p0, Lcom/facebook/chatheads/ChatHeadWindowManager;->j:Lcom/facebook/chatheads/ChatHeadView;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lcom/facebook/chatheads/ChatHeadWindowManager;->c(Landroid/view/View;II)V

    goto :goto_0
.end method

.method private e(Lcom/facebook/chatheads/ChatHeadView;)V
    .locals 4
    .parameter

    .prologue
    .line 762
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 764
    iput-object p1, p0, Lcom/facebook/chatheads/ChatHeadWindowManager;->k:Lcom/facebook/chatheads/ChatHeadView;

    .line 765
    invoke-direct {p0, p1}, Lcom/facebook/chatheads/ChatHeadWindowManager;->a(Lcom/facebook/chatheads/ChatHeadView;)Ljava/lang/String;

    move-result-object v0

    .line 767
    invoke-direct {p0}, Lcom/facebook/chatheads/ChatHeadWindowManager;->f()V

    .line 769
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/facebook/chatheads/ChatHeadWindowManager;->a:Landroid/content/Context;

    const-class v3, Lcom/facebook/chatheads/ChatHeadPopUpActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 770
    const-string v2, "thread_id"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 771
    const/high16 v0, 0x1800

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 773
    iget-object v0, p0, Lcom/facebook/chatheads/ChatHeadWindowManager;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 774
    return-void
.end method

.method static synthetic e(Lcom/facebook/chatheads/ChatHeadWindowManager;Lcom/facebook/chatheads/ChatHeadView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/facebook/chatheads/ChatHeadWindowManager;->d(Lcom/facebook/chatheads/ChatHeadView;)V

    return-void
.end method

.method private e(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 792
    const/4 v0, 0x0

    .line 795
    iget-object v1, p0, Lcom/facebook/chatheads/ChatHeadWindowManager;->k:Lcom/facebook/chatheads/ChatHeadView;

    if-eqz v1, :cond_0

    .line 796
    iget-object v0, p0, Lcom/facebook/chatheads/ChatHeadWindowManager;->k:Lcom/facebook/chatheads/ChatHeadView;

    invoke-direct {p0, v0}, Lcom/facebook/chatheads/ChatHeadWindowManager;->a(Lcom/facebook/chatheads/ChatHeadView;)Ljava/lang/String;

    move-result-object v0

    .line 797
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/facebook/chatheads/ChatHeadWindowManager;->n:Z

    .line 798
    iget-object v1, p0, Lcom/facebook/chatheads/ChatHeadWindowManager;->k:Lcom/facebook/chatheads/ChatHeadView;

    invoke-direct {p0, v1}, Lcom/facebook/chatheads/ChatHeadWindowManager;->c(Lcom/facebook/chatheads/ChatHeadView;)V

    .line 802
    :cond_0
    invoke-static {v0, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 803
    invoke-direct {p0, p1}, Lcom/facebook/chatheads/ChatHeadWindowManager;->d(Ljava/lang/String;)V

    .line 805
    :cond_1
    return-void
.end method

.method private f()V
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lcom/facebook/chatheads/ChatHeadWindowManager;->l:Lcom/facebook/chatheads/ChatHeadTextBubbleView;

    invoke-virtual {v0}, Lcom/facebook/chatheads/ChatHeadTextBubbleView;->b()V

    .line 404
    return-void
.end method

.method private g()V
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lcom/facebook/chatheads/ChatHeadWindowManager;->h:Lcom/facebook/chatheads/ChatHeadWindowManager$ChatHeadWindowManagerListener;

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Lcom/facebook/chatheads/ChatHeadWindowManager;->h:Lcom/facebook/chatheads/ChatHeadWindowManager$ChatHeadWindowManagerListener;

    invoke-interface {v0}, Lcom/facebook/chatheads/ChatHeadWindowManager$ChatHeadWindowManagerListener;->a()V

    .line 429
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/chatheads/ChatHeadWindowManager;->b()V

    .line 430
    return-void
.end method

.method private h()Landroid/view/WindowManager$LayoutParams;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v1, -0x2

    .line 627
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7d7

    const/16 v4, 0x208

    const/4 v5, -0x3

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 635
    const/16 v1, 0x35

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 637
    iput v6, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 638
    iput v6, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 640
    return-object v0
.end method

.method private i()Landroid/view/WindowManager$LayoutParams;
    .locals 6

    .prologue
    const/4 v1, -0x2

    .line 653
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7d7

    const/16 v4, 0x208

    const/4 v5, -0x3

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 661
    const/16 v1, 0x35

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 663
    iget-object v1, p0, Lcom/facebook/chatheads/ChatHeadWindowManager;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 664
    sget v2, Lcom/facebook/R$dimen;->chat_head_text_bubble_x:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 665
    sget v2, Lcom/facebook/R$dimen;->chat_head_text_bubble_y:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 667
    return-object v0
.end method

.method private j()Z
    .locals 1

    .prologue
    .line 685
    iget-object v0, p0, Lcom/facebook/chatheads/ChatHeadWindowManager;->i:Lcom/nineoldandroids/animation/Animator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/chatheads/ChatHeadWindowManager;->i:Lcom/nineoldandroids/animation/Animator;

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/Animator;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/facebook/chatheads/ChatHeadWindowManager$ChatHeadWindowManagerListener;)V
    .locals 0
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lcom/facebook/chatheads/ChatHeadWindowManager;->h:Lcom/facebook/chatheads/ChatHeadWindowManager$ChatHeadWindowManagerListener;

    .line 141
    return-void
.end method

.method public a(Lcom/facebook/orca/threads/Message;)V
    .locals 6
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 158
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->f()Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/ParticipantInfo;

    .line 160
    invoke-virtual {v0}, Lcom/facebook/orca/threads/ParticipantInfo;->e()Lcom/facebook/orca/users/UserKey;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/UserKey;

    .line 164
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/facebook/chatheads/ChatHeadWindowManager;->b(Ljava/lang/String;)Lcom/facebook/chatheads/ChatHeadView;

    move-result-object v1

    .line 165
    if-nez v1, :cond_3

    .line 166
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/facebook/chatheads/ChatHeadWindowManager;->c(Ljava/lang/String;)Lcom/facebook/chatheads/ChatHeadView;

    move-result-object v1

    move v2, v3

    .line 170
    :goto_0
    iget-object v5, p0, Lcom/facebook/chatheads/ChatHeadWindowManager;->f:Lcom/facebook/chatheads/RecentTaskChangeDetector;

    invoke-virtual {v5}, Lcom/facebook/chatheads/RecentTaskChangeDetector;->c()Z

    move-result v5

    if-nez v5, :cond_0

    .line 171
    iget-object v5, p0, Lcom/facebook/chatheads/ChatHeadWindowManager;->f:Lcom/facebook/chatheads/RecentTaskChangeDetector;

    invoke-virtual {v5}, Lcom/facebook/chatheads/RecentTaskChangeDetector;->a()V

    .line 176
    :cond_0
    invoke-direct {p0}, Lcom/facebook/chatheads/ChatHeadWindowManager;->j()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 177
    iget-object v2, p0, Lcom/facebook/chatheads/ChatHeadWindowManager;->i:Lcom/nineoldandroids/animation/Animator;

    invoke-virtual {v2}, Lcom/nineoldandroids/animation/Animator;->j()V

    .line 178
    iget-object v2, p0, Lcom/facebook/chatheads/ChatHeadWindowManager;->i:Lcom/nineoldandroids/animation/Animator;

    invoke-virtual {v2}, Lcom/nineoldandroids/animation/Animator;->d()V

    .line 179
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/facebook/chatheads/ChatHeadWindowManager;->i:Lcom/nineoldandroids/animation/Animator;

    .line 185
    :goto_1
    invoke-virtual {v1, v0}, Lcom/facebook/chatheads/ChatHeadView;->setUserKey(Lcom/facebook/orca/users/UserKey;)V

    .line 186
    invoke-direct {p0, v1, v4, v4}, Lcom/facebook/chatheads/ChatHeadWindowManager;->a(Landroid/view/View;II)V

    .line 188
    if-eqz v3, :cond_1

    .line 189
    iget-object v0, p0, Lcom/facebook/chatheads/ChatHeadWindowManager;->j:Lcom/facebook/chatheads/ChatHeadView;

    invoke-virtual {v0, v4}, Lcom/facebook/chatheads/ChatHeadView;->setVisibility(I)V

    .line 190
    iget-object v0, p0, Lcom/facebook/chatheads/ChatHeadWindowManager;->j:Lcom/facebook/chatheads/ChatHeadView;

    invoke-virtual {v0}, Lcom/facebook/chatheads/ChatHeadView;->c()V

    .line 193
    :cond_1
    invoke-direct {p0, p1}, Lcom/facebook/chatheads/ChatHeadWindowManager;->b(Lcom/facebook/orca/threads/Message;)V

    .line 194
    return-void

    :cond_2
    move v3, v2

    goto :goto_1

    :cond_3
    move v2, v4

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 337
    iget-object v0, p0, Lcom/facebook/chatheads/ChatHeadWindowManager;->k:Lcom/facebook/chatheads/ChatHeadView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/chatheads/ChatHeadWindowManager;->k:Lcom/facebook/chatheads/ChatHeadView;

    invoke-direct {p0, v0}, Lcom/facebook/chatheads/ChatHeadWindowManager;->a(Lcom/facebook/chatheads/ChatHeadView;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/facebook/chatheads/ChatHeadWindowManager;->k:Lcom/facebook/chatheads/ChatHeadView;

    invoke-direct {p0, v0}, Lcom/facebook/chatheads/ChatHeadWindowManager;->c(Lcom/facebook/chatheads/ChatHeadView;)V

    .line 341
    :cond_0
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/facebook/chatheads/ChatHeadWindowManager;->j:Lcom/facebook/chatheads/ChatHeadView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 411
    iget-object v0, p0, Lcom/facebook/chatheads/ChatHeadWindowManager;->f:Lcom/facebook/chatheads/RecentTaskChangeDetector;

    invoke-virtual {v0}, Lcom/facebook/chatheads/RecentTaskChangeDetector;->b()V

    .line 413
    iget-object v0, p0, Lcom/facebook/chatheads/ChatHeadWindowManager;->j:Lcom/facebook/chatheads/ChatHeadView;

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p0, Lcom/facebook/chatheads/ChatHeadWindowManager;->b:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/facebook/chatheads/ChatHeadWindowManager;->j:Lcom/facebook/chatheads/ChatHeadView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 415
    iput-object v2, p0, Lcom/facebook/chatheads/ChatHeadWindowManager;->j:Lcom/facebook/chatheads/ChatHeadView;

    .line 418
    :cond_0
    iget-object v0, p0, Lcom/facebook/chatheads/ChatHeadWindowManager;->l:Lcom/facebook/chatheads/ChatHeadTextBubbleView;

    if-eqz v0, :cond_1

    .line 419
    iget-object v0, p0, Lcom/facebook/chatheads/ChatHeadWindowManager;->b:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/facebook/chatheads/ChatHeadWindowManager;->l:Lcom/facebook/chatheads/ChatHeadTextBubbleView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 420
    iput-object v2, p0, Lcom/facebook/chatheads/ChatHeadWindowManager;->l:Lcom/facebook/chatheads/ChatHeadTextBubbleView;

    .line 422
    :cond_1
    return-void
.end method
