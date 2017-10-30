.class public Lcom/facebook/orca/notify/InAppNotificationController;
.super Ljava/lang/Object;
.source "InAppNotificationController.java"


# static fields
.field private static final a:I


# instance fields
.field private final b:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/facebook/orca/app/OrcaAppType;

.field private final d:Lcom/facebook/orca/notify/InAppNotificationController$MyActivityListener;

.field private final e:Landroid/os/Handler;

.field private final f:Lcom/facebook/orca/emoji/EmojiUtil;

.field private final g:Lcom/facebook/orca/threadview/ThreadViewUtil;

.field private final h:Lcom/facebook/orca/threads/ThreadSnippetUtil;

.field private i:Landroid/app/Activity;

.field private j:Lcom/facebook/orca/notify/InAppNotificationView;

.field private k:Lcom/facebook/orca/common/async/CancellableRunnable;

.field private l:Lcom/facebook/orca/threads/Message;

.field private m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    sget v0, Lcom/facebook/R$id;->titlebar:I

    sput v0, Lcom/facebook/orca/notify/InAppNotificationController;->a:I

    return-void
.end method

.method public constructor <init>(Ljavax/inject/Provider;Lcom/facebook/orca/app/OrcaAppType;Lcom/facebook/orca/emoji/EmojiUtil;Lcom/facebook/orca/threadview/ThreadViewUtil;Lcom/facebook/orca/threads/ThreadSnippetUtil;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/facebook/orca/app/OrcaAppType;",
            "Lcom/facebook/orca/emoji/EmojiUtil;",
            "Lcom/facebook/orca/threadview/ThreadViewUtil;",
            "Lcom/facebook/orca/threads/ThreadSnippetUtil;",
            ")V"
        }
    .end annotation

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/facebook/orca/notify/InAppNotificationController;->b:Ljavax/inject/Provider;

    .line 70
    iput-object p2, p0, Lcom/facebook/orca/notify/InAppNotificationController;->c:Lcom/facebook/orca/app/OrcaAppType;

    .line 71
    iput-object p3, p0, Lcom/facebook/orca/notify/InAppNotificationController;->f:Lcom/facebook/orca/emoji/EmojiUtil;

    .line 72
    iput-object p4, p0, Lcom/facebook/orca/notify/InAppNotificationController;->g:Lcom/facebook/orca/threadview/ThreadViewUtil;

    .line 73
    iput-object p5, p0, Lcom/facebook/orca/notify/InAppNotificationController;->h:Lcom/facebook/orca/threads/ThreadSnippetUtil;

    .line 74
    new-instance v0, Lcom/facebook/orca/notify/InAppNotificationController$MyActivityListener;

    invoke-direct {v0, p0}, Lcom/facebook/orca/notify/InAppNotificationController$MyActivityListener;-><init>(Lcom/facebook/orca/notify/InAppNotificationController;)V

    iput-object v0, p0, Lcom/facebook/orca/notify/InAppNotificationController;->d:Lcom/facebook/orca/notify/InAppNotificationController$MyActivityListener;

    .line 75
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/facebook/orca/notify/InAppNotificationController;->e:Landroid/os/Handler;

    .line 76
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/notify/InAppNotificationController;Landroid/app/Activity;)Landroid/app/Activity;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/facebook/orca/notify/InAppNotificationController;->i:Landroid/app/Activity;

    return-object p1
.end method

.method private a(Lcom/facebook/orca/common/ui/overlay/OverlayLayout;)Lcom/facebook/orca/notify/InAppNotificationView;
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 158
    new-instance v0, Lcom/facebook/orca/notify/InAppNotificationView;

    iget-object v1, p0, Lcom/facebook/orca/notify/InAppNotificationController;->i:Landroid/app/Activity;

    iget-object v2, p0, Lcom/facebook/orca/notify/InAppNotificationController;->f:Lcom/facebook/orca/emoji/EmojiUtil;

    iget-object v3, p0, Lcom/facebook/orca/notify/InAppNotificationController;->h:Lcom/facebook/orca/threads/ThreadSnippetUtil;

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/orca/notify/InAppNotificationView;-><init>(Landroid/content/Context;Lcom/facebook/orca/emoji/EmojiUtil;Lcom/facebook/orca/threads/ThreadSnippetUtil;)V

    .line 160
    new-instance v1, Lcom/facebook/orca/common/ui/overlay/OverlayLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Lcom/facebook/orca/common/ui/overlay/OverlayLayout$LayoutParams;-><init>(II)V

    .line 163
    sget v2, Lcom/facebook/orca/notify/InAppNotificationController;->a:I

    iput v2, v1, Lcom/facebook/orca/common/ui/overlay/OverlayLayout$LayoutParams;->b:I

    .line 164
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/facebook/orca/common/ui/overlay/OverlayLayout$LayoutParams;->a:Z

    .line 165
    const/16 v2, 0x44

    iput v2, v1, Lcom/facebook/orca/common/ui/overlay/OverlayLayout$LayoutParams;->c:I

    .line 167
    invoke-virtual {v0, v1}, Lcom/facebook/orca/notify/InAppNotificationView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 168
    invoke-virtual {p1, v0}, Lcom/facebook/orca/common/ui/overlay/OverlayLayout;->addView(Landroid/view/View;)V

    .line 170
    iget-object v1, p0, Lcom/facebook/orca/notify/InAppNotificationController;->i:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    .line 172
    const/high16 v2, 0x4000

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/notify/InAppNotificationView;->measure(II)V

    .line 176
    invoke-virtual {v0}, Lcom/facebook/orca/notify/InAppNotificationView;->getMeasuredHeight()I

    move-result v1

    .line 177
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    neg-int v1, v1

    int-to-float v1, v1

    invoke-direct {v2, v4, v4, v1, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 178
    const-wide/16 v3, 0x258

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 179
    invoke-virtual {v2, v5}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 180
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 181
    new-instance v1, Lcom/facebook/orca/notify/InAppNotificationController$AnimatingListener;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/facebook/orca/notify/InAppNotificationController$AnimatingListener;-><init>(Lcom/facebook/orca/notify/InAppNotificationController;Lcom/facebook/orca/notify/InAppNotificationController$1;)V

    invoke-virtual {v2, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 182
    invoke-virtual {v0, v2}, Lcom/facebook/orca/notify/InAppNotificationView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 184
    new-instance v1, Lcom/facebook/orca/notify/InAppNotificationController$3;

    invoke-direct {v1, p0}, Lcom/facebook/orca/notify/InAppNotificationController$3;-><init>(Lcom/facebook/orca/notify/InAppNotificationController;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/notify/InAppNotificationView;->setOnDismissListener(Landroid/view/View$OnClickListener;)V

    .line 190
    new-instance v1, Lcom/facebook/orca/notify/InAppNotificationController$4;

    invoke-direct {v1, p0}, Lcom/facebook/orca/notify/InAppNotificationController$4;-><init>(Lcom/facebook/orca/notify/InAppNotificationController;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/notify/InAppNotificationView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    return-object v0
.end method

.method static synthetic a(Lcom/facebook/orca/notify/InAppNotificationController;Lcom/facebook/orca/notify/InAppNotificationView;)Lcom/facebook/orca/notify/InAppNotificationView;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/facebook/orca/notify/InAppNotificationController;->j:Lcom/facebook/orca/notify/InAppNotificationView;

    return-object p1
.end method

.method private a(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 258
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 259
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 260
    check-cast v0, Landroid/view/ViewGroup;

    .line 261
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 263
    :cond_0
    return-void
.end method

.method private a(Lcom/facebook/orca/notify/InAppNotificationController$DismissAnimation;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 232
    iget-object v0, p0, Lcom/facebook/orca/notify/InAppNotificationController;->j:Lcom/facebook/orca/notify/InAppNotificationView;

    if-nez v0, :cond_0

    .line 255
    :goto_0
    return-void

    .line 236
    :cond_0
    sget-object v0, Lcom/facebook/orca/notify/InAppNotificationController$DismissAnimation;->SLIDE_OUT:Lcom/facebook/orca/notify/InAppNotificationController$DismissAnimation;

    if-ne p1, v0, :cond_2

    .line 237
    iget-object v0, p0, Lcom/facebook/orca/notify/InAppNotificationController;->j:Lcom/facebook/orca/notify/InAppNotificationView;

    invoke-virtual {v0}, Lcom/facebook/orca/notify/InAppNotificationView;->getMeasuredHeight()I

    move-result v0

    .line 238
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    neg-int v0, v0

    int-to-float v0, v0

    invoke-direct {v1, v2, v2, v2, v0}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 239
    const-wide/16 v2, 0x258

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 240
    invoke-virtual {v1, v5}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 241
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v0}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 242
    new-instance v0, Lcom/facebook/orca/notify/InAppNotificationController$AnimatingListener;

    invoke-direct {v0, p0, v4}, Lcom/facebook/orca/notify/InAppNotificationController$AnimatingListener;-><init>(Lcom/facebook/orca/notify/InAppNotificationController;Lcom/facebook/orca/notify/InAppNotificationController$1;)V

    invoke-virtual {v1, v0}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 243
    iget-object v0, p0, Lcom/facebook/orca/notify/InAppNotificationController;->j:Lcom/facebook/orca/notify/InAppNotificationView;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/notify/InAppNotificationView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 253
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/facebook/orca/notify/InAppNotificationController;->j:Lcom/facebook/orca/notify/InAppNotificationView;

    invoke-direct {p0, v0}, Lcom/facebook/orca/notify/InAppNotificationController;->a(Landroid/view/View;)V

    .line 254
    iput-object v4, p0, Lcom/facebook/orca/notify/InAppNotificationController;->j:Lcom/facebook/orca/notify/InAppNotificationView;

    goto :goto_0

    .line 244
    :cond_2
    sget-object v0, Lcom/facebook/orca/notify/InAppNotificationController$DismissAnimation;->FADE_OUT:Lcom/facebook/orca/notify/InAppNotificationController$DismissAnimation;

    if-ne p1, v0, :cond_1

    .line 245
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 246
    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 247
    invoke-virtual {v0, v5}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 248
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 249
    new-instance v1, Lcom/facebook/orca/notify/InAppNotificationController$AnimatingListener;

    invoke-direct {v1, p0, v4}, Lcom/facebook/orca/notify/InAppNotificationController$AnimatingListener;-><init>(Lcom/facebook/orca/notify/InAppNotificationController;Lcom/facebook/orca/notify/InAppNotificationController$1;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 250
    iget-object v1, p0, Lcom/facebook/orca/notify/InAppNotificationController;->j:Lcom/facebook/orca/notify/InAppNotificationView;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/notify/InAppNotificationView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/facebook/orca/notify/InAppNotificationController;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/facebook/orca/notify/InAppNotificationController;->c()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/notify/InAppNotificationController;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/facebook/orca/notify/InAppNotificationController;->a(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/notify/InAppNotificationController;Lcom/facebook/orca/notify/InAppNotificationController$DismissAnimation;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/facebook/orca/notify/InAppNotificationController;->a(Lcom/facebook/orca/notify/InAppNotificationController$DismissAnimation;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/notify/InAppNotificationController;Lcom/facebook/orca/threads/Message;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/facebook/orca/notify/InAppNotificationController;->b(Lcom/facebook/orca/threads/Message;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/notify/InAppNotificationController;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/facebook/orca/notify/InAppNotificationController;->m:Z

    return p1
.end method

.method static synthetic b(Lcom/facebook/orca/notify/InAppNotificationController;Lcom/facebook/orca/threads/Message;)Lcom/facebook/orca/threads/Message;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/facebook/orca/notify/InAppNotificationController;->l:Lcom/facebook/orca/threads/Message;

    return-object p1
.end method

.method private b()V
    .locals 5

    .prologue
    const/high16 v4, 0x400

    .line 200
    iget-object v0, p0, Lcom/facebook/orca/notify/InAppNotificationController;->j:Lcom/facebook/orca/notify/InAppNotificationView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/notify/InAppNotificationController;->i:Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 203
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/notify/InAppNotificationController;->j:Lcom/facebook/orca/notify/InAppNotificationView;

    invoke-virtual {v0}, Lcom/facebook/orca/notify/InAppNotificationView;->getMessage()Lcom/facebook/orca/threads/Message;

    move-result-object v0

    .line 204
    invoke-virtual {v0}, Lcom/facebook/orca/threads/Message;->b()Ljava/lang/String;

    move-result-object v0

    .line 206
    iget-object v1, p0, Lcom/facebook/orca/notify/InAppNotificationController;->c:Lcom/facebook/orca/app/OrcaAppType;

    invoke-virtual {v1}, Lcom/facebook/orca/app/OrcaAppType;->i()Lcom/facebook/orca/app/OrcaAppType$Product;

    move-result-object v1

    sget-object v2, Lcom/facebook/orca/app/OrcaAppType$Product;->MESSENGER:Lcom/facebook/orca/app/OrcaAppType$Product;

    if-ne v1, v2, :cond_2

    .line 207
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/facebook/orca/notify/InAppNotificationController;->i:Landroid/app/Activity;

    const-class v3, Lcom/facebook/orca/threadlist/ThreadListActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 208
    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 209
    iget-object v2, p0, Lcom/facebook/orca/notify/InAppNotificationController;->i:Landroid/app/Activity;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 211
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/facebook/orca/notify/InAppNotificationController;->i:Landroid/app/Activity;

    iget-object v3, p0, Lcom/facebook/orca/notify/InAppNotificationController;->g:Lcom/facebook/orca/threadview/ThreadViewUtil;

    invoke-virtual {v3}, Lcom/facebook/orca/threadview/ThreadViewUtil;->a()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 213
    const-string v2, "thread_id"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 214
    iget-object v0, p0, Lcom/facebook/orca/notify/InAppNotificationController;->i:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 223
    :goto_1
    invoke-direct {p0}, Lcom/facebook/orca/notify/InAppNotificationController;->d()V

    goto :goto_0

    .line 216
    :cond_2
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/facebook/orca/notify/InAppNotificationController;->i:Landroid/app/Activity;

    iget-object v3, p0, Lcom/facebook/orca/notify/InAppNotificationController;->g:Lcom/facebook/orca/threadview/ThreadViewUtil;

    invoke-virtual {v3}, Lcom/facebook/orca/threadview/ThreadViewUtil;->a()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 218
    const-string v2, "thread_id"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 219
    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 220
    iget-object v0, p0, Lcom/facebook/orca/notify/InAppNotificationController;->i:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method static synthetic b(Lcom/facebook/orca/notify/InAppNotificationController;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/facebook/orca/notify/InAppNotificationController;->b()V

    return-void
.end method

.method private b(Lcom/facebook/orca/threads/Message;)V
    .locals 4
    .parameter

    .prologue
    .line 88
    iget-object v0, p0, Lcom/facebook/orca/notify/InAppNotificationController;->i:Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/notify/InAppNotificationController;->b:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/facebook/orca/notify/InAppNotificationController;->i:Landroid/app/Activity;

    instance-of v0, v0, Lcom/facebook/orca/threadlist/ThreadListActivity;

    if-eqz v0, :cond_2

    .line 98
    iget-object v0, p0, Lcom/facebook/orca/notify/InAppNotificationController;->i:Landroid/app/Activity;

    check-cast v0, Lcom/facebook/orca/threadlist/ThreadListActivity;

    invoke-virtual {v0}, Lcom/facebook/orca/threadlist/ThreadListActivity;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    :cond_2
    iget-object v0, p0, Lcom/facebook/orca/notify/InAppNotificationController;->g:Lcom/facebook/orca/threadview/ThreadViewUtil;

    iget-object v1, p0, Lcom/facebook/orca/notify/InAppNotificationController;->i:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threadview/ThreadViewUtil;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 104
    iget-object v0, p0, Lcom/facebook/orca/notify/InAppNotificationController;->i:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 105
    const-string v1, "thread_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 106
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    :cond_3
    iget-boolean v0, p0, Lcom/facebook/orca/notify/InAppNotificationController;->m:Z

    if-eqz v0, :cond_4

    .line 113
    iput-object p1, p0, Lcom/facebook/orca/notify/InAppNotificationController;->l:Lcom/facebook/orca/threads/Message;

    goto :goto_0

    .line 117
    :cond_4
    iget-object v0, p0, Lcom/facebook/orca/notify/InAppNotificationController;->i:Landroid/app/Activity;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 118
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 120
    instance-of v2, v1, Lcom/facebook/orca/common/ui/overlay/OverlayLayout;

    if-nez v2, :cond_6

    .line 122
    sget v2, Lcom/facebook/orca/notify/InAppNotificationController;->a:I

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 123
    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 128
    if-eqz v0, :cond_6

    instance-of v2, v0, Lcom/facebook/orca/common/ui/overlay/OverlayLayout;

    if-eqz v2, :cond_6

    .line 133
    :goto_1
    instance-of v1, v0, Lcom/facebook/orca/common/ui/overlay/OverlayLayout;

    if-eqz v1, :cond_0

    .line 138
    check-cast v0, Lcom/facebook/orca/common/ui/overlay/OverlayLayout;

    .line 140
    iget-object v1, p0, Lcom/facebook/orca/notify/InAppNotificationController;->j:Lcom/facebook/orca/notify/InAppNotificationView;

    if-nez v1, :cond_5

    .line 141
    invoke-direct {p0, v0}, Lcom/facebook/orca/notify/InAppNotificationController;->a(Lcom/facebook/orca/common/ui/overlay/OverlayLayout;)Lcom/facebook/orca/notify/InAppNotificationView;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/notify/InAppNotificationController;->j:Lcom/facebook/orca/notify/InAppNotificationView;

    .line 142
    iget-object v0, p0, Lcom/facebook/orca/notify/InAppNotificationController;->j:Lcom/facebook/orca/notify/InAppNotificationView;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/notify/InAppNotificationView;->setMessage(Lcom/facebook/orca/threads/Message;)V

    .line 148
    :goto_2
    new-instance v0, Lcom/facebook/orca/common/async/CancellableRunnable;

    new-instance v1, Lcom/facebook/orca/notify/InAppNotificationController$2;

    invoke-direct {v1, p0}, Lcom/facebook/orca/notify/InAppNotificationController$2;-><init>(Lcom/facebook/orca/notify/InAppNotificationController;)V

    invoke-direct {v0, v1}, Lcom/facebook/orca/common/async/CancellableRunnable;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/facebook/orca/notify/InAppNotificationController;->k:Lcom/facebook/orca/common/async/CancellableRunnable;

    .line 154
    iget-object v0, p0, Lcom/facebook/orca/notify/InAppNotificationController;->j:Lcom/facebook/orca/notify/InAppNotificationView;

    iget-object v1, p0, Lcom/facebook/orca/notify/InAppNotificationController;->k:Lcom/facebook/orca/common/async/CancellableRunnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/orca/notify/InAppNotificationView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 144
    :cond_5
    iget-object v0, p0, Lcom/facebook/orca/notify/InAppNotificationController;->j:Lcom/facebook/orca/notify/InAppNotificationView;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/notify/InAppNotificationView;->setMessage(Lcom/facebook/orca/threads/Message;)V

    .line 145
    iget-object v0, p0, Lcom/facebook/orca/notify/InAppNotificationController;->k:Lcom/facebook/orca/common/async/CancellableRunnable;

    invoke-virtual {v0}, Lcom/facebook/orca/common/async/CancellableRunnable;->a()V

    goto :goto_2

    :cond_6
    move-object v0, v1

    goto :goto_1
.end method

.method static synthetic c(Lcom/facebook/orca/notify/InAppNotificationController;)Lcom/facebook/orca/notify/InAppNotificationView;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/facebook/orca/notify/InAppNotificationController;->j:Lcom/facebook/orca/notify/InAppNotificationView;

    return-object v0
.end method

.method private c()V
    .locals 1

    .prologue
    .line 227
    sget-object v0, Lcom/facebook/orca/notify/InAppNotificationController$DismissAnimation;->FADE_OUT:Lcom/facebook/orca/notify/InAppNotificationController$DismissAnimation;

    invoke-direct {p0, v0}, Lcom/facebook/orca/notify/InAppNotificationController;->a(Lcom/facebook/orca/notify/InAppNotificationController$DismissAnimation;)V

    .line 228
    invoke-direct {p0}, Lcom/facebook/orca/notify/InAppNotificationController;->d()V

    .line 229
    return-void
.end method

.method private d()V
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/facebook/orca/notify/InAppNotificationController;->k:Lcom/facebook/orca/common/async/CancellableRunnable;

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/facebook/orca/notify/InAppNotificationController;->k:Lcom/facebook/orca/common/async/CancellableRunnable;

    invoke-virtual {v0}, Lcom/facebook/orca/common/async/CancellableRunnable;->a()V

    .line 321
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/notify/InAppNotificationController;->k:Lcom/facebook/orca/common/async/CancellableRunnable;

    .line 323
    :cond_0
    sget-object v0, Lcom/facebook/orca/notify/InAppNotificationController$DismissAnimation;->NONE:Lcom/facebook/orca/notify/InAppNotificationController$DismissAnimation;

    invoke-direct {p0, v0}, Lcom/facebook/orca/notify/InAppNotificationController;->a(Lcom/facebook/orca/notify/InAppNotificationController$DismissAnimation;)V

    .line 324
    return-void
.end method

.method static synthetic d(Lcom/facebook/orca/notify/InAppNotificationController;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/facebook/orca/notify/InAppNotificationController;->d()V

    return-void
.end method

.method static synthetic e(Lcom/facebook/orca/notify/InAppNotificationController;)Lcom/facebook/orca/threads/Message;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/facebook/orca/notify/InAppNotificationController;->l:Lcom/facebook/orca/threads/Message;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/facebook/orca/notify/InAppNotificationController$MyActivityListener;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/facebook/orca/notify/InAppNotificationController;->d:Lcom/facebook/orca/notify/InAppNotificationController$MyActivityListener;

    return-object v0
.end method

.method public a(Lcom/facebook/orca/threads/Message;)V
    .locals 2
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/facebook/orca/notify/InAppNotificationController;->e:Landroid/os/Handler;

    new-instance v1, Lcom/facebook/orca/notify/InAppNotificationController$1;

    invoke-direct {v1, p0, p1}, Lcom/facebook/orca/notify/InAppNotificationController$1;-><init>(Lcom/facebook/orca/notify/InAppNotificationController;Lcom/facebook/orca/threads/Message;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 85
    return-void
.end method
