.class public Lcom/facebook/orca/common/ui/titlebar/DivebarController;
.super Ljava/lang/Object;
.source "DivebarController.java"

# interfaces
.implements Lcom/facebook/orca/ui/touch/Draggable;


# static fields
.field private static final c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field a:Landroid/view/View;

.field b:Landroid/view/ViewGroup;

.field private d:Landroid/support/v4/app/FragmentActivity;

.field private final e:Landroid/view/inputmethod/InputMethodManager;

.field private final f:Lcom/facebook/orca/analytics/AnalyticsLogger;

.field private final g:Lcom/facebook/orca/cache/DataCache;

.field private final h:Lcom/facebook/orca/app/OrcaAppType;

.field private final i:Lcom/facebook/orca/prefs/OrcaSharedPreferences$OnSharedPreferenceChangeListener;

.field private final j:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

.field private final k:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private l:Landroid/view/ViewGroup;

.field private m:Lcom/facebook/orca/contacts/divebar/DivebarFragment;

.field private n:Lcom/facebook/orca/contacts/divebar/DivebarViewListener;

.field private o:Lcom/facebook/orca/common/ui/titlebar/DivebarController$DivebarState;

.field private p:I

.field private q:I

.field private r:Lcom/facebook/orca/common/ui/titlebar/DivebarController$DivebarAnimationListener;

.field private s:Lcom/facebook/orca/common/ui/titlebar/DivebarController$DivebarOverlayClickListener;

.field private t:Lcom/facebook/orca/common/ui/titlebar/DivebarController$DragListener;

.field private u:Lcom/facebook/orca/ui/touch/DragMotionDetector;

.field private v:Lcom/facebook/orca/ui/touch/DragMotionDetector;

.field private w:Landroid/view/animation/Animation;

.field private x:Z

.field private y:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const-class v0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;

    sput-object v0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->c:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Landroid/view/inputmethod/InputMethodManager;Lcom/facebook/orca/cache/DataCache;Lcom/facebook/orca/analytics/AnalyticsLogger;Lcom/facebook/orca/app/OrcaAppType;Lcom/facebook/orca/prefs/OrcaSharedPreferences;Ljavax/inject/Provider;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/inputmethod/InputMethodManager;",
            "Lcom/facebook/orca/cache/DataCache;",
            "Lcom/facebook/orca/analytics/AnalyticsLogger;",
            "Lcom/facebook/orca/app/OrcaAppType;",
            "Lcom/facebook/orca/prefs/OrcaSharedPreferences;",
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    sget-object v0, Lcom/facebook/orca/common/ui/titlebar/DivebarController$DivebarState;->CLOSED:Lcom/facebook/orca/common/ui/titlebar/DivebarController$DivebarState;

    iput-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->o:Lcom/facebook/orca/common/ui/titlebar/DivebarController$DivebarState;

    .line 128
    iput v1, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->p:I

    .line 129
    iput v1, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->q:I

    .line 159
    iput-object p1, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->e:Landroid/view/inputmethod/InputMethodManager;

    .line 160
    iput-object p2, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->g:Lcom/facebook/orca/cache/DataCache;

    .line 161
    iput-object p3, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->f:Lcom/facebook/orca/analytics/AnalyticsLogger;

    .line 162
    iput-object p5, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->j:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    .line 163
    iput-object p6, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->k:Ljavax/inject/Provider;

    .line 164
    iput-object p4, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->h:Lcom/facebook/orca/app/OrcaAppType;

    .line 166
    new-instance v0, Lcom/facebook/orca/common/ui/titlebar/DivebarController$1;

    invoke-direct {v0, p0}, Lcom/facebook/orca/common/ui/titlebar/DivebarController$1;-><init>(Lcom/facebook/orca/common/ui/titlebar/DivebarController;)V

    iput-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->i:Lcom/facebook/orca/prefs/OrcaSharedPreferences$OnSharedPreferenceChangeListener;

    .line 173
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->i:Lcom/facebook/orca/prefs/OrcaSharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {p5, v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Lcom/facebook/orca/prefs/OrcaSharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 175
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->k:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->x:Z

    .line 176
    return-void
.end method

.method private A()Ljava/lang/String;
    .locals 1

    .prologue
    .line 741
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->d:Landroid/support/v4/app/FragmentActivity;

    instance-of v0, v0, Lcom/facebook/orca/analytics/AnalyticsActivity;

    if-eqz v0, :cond_0

    .line 742
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->d:Landroid/support/v4/app/FragmentActivity;

    check-cast v0, Lcom/facebook/orca/analytics/AnalyticsActivity;

    invoke-interface {v0}, Lcom/facebook/orca/analytics/AnalyticsActivity;->h()Ljava/lang/String;

    move-result-object v0

    .line 744
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private B()Z
    .locals 1

    .prologue
    .line 749
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->b:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private C()Z
    .locals 2

    .prologue
    .line 753
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->h:Lcom/facebook/orca/app/OrcaAppType;

    invoke-virtual {v0}, Lcom/facebook/orca/app/OrcaAppType;->i()Lcom/facebook/orca/app/OrcaAppType$Product;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/app/OrcaAppType$Product;->MESSENGER:Lcom/facebook/orca/app/OrcaAppType$Product;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/facebook/orca/common/ui/titlebar/DivebarController;)Landroid/view/ViewGroup;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->l:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/orca/common/ui/titlebar/DivebarController;Landroid/view/animation/Animation;)Landroid/view/animation/Animation;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->w:Landroid/view/animation/Animation;

    return-object p1
.end method

.method static synthetic a(Lcom/facebook/orca/common/ui/titlebar/DivebarController;Lcom/facebook/orca/common/ui/titlebar/DivebarController$DivebarState;)Lcom/facebook/orca/common/ui/titlebar/DivebarController$DivebarState;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->o:Lcom/facebook/orca/common/ui/titlebar/DivebarController$DivebarState;

    return-object p1
.end method

.method static synthetic a(Lcom/facebook/orca/common/ui/titlebar/DivebarController;Lcom/facebook/orca/contacts/divebar/DivebarFragment;)Lcom/facebook/orca/contacts/divebar/DivebarFragment;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->m:Lcom/facebook/orca/contacts/divebar/DivebarFragment;

    return-object p1
.end method

.method private a(I)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 282
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->p()I

    move-result v0

    sub-int v0, p1, v0

    .line 283
    if-lez v0, :cond_0

    .line 284
    const/4 v0, 0x0

    .line 287
    :cond_0
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    int-to-float v2, v0

    int-to-float v3, v0

    invoke-direct {v1, v2, v3, v4, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 288
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 289
    invoke-direct {p0, v1}, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->a(Landroid/view/animation/Animation;)V

    .line 290
    iput v0, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->p:I

    .line 291
    return-void
.end method

.method private a(JLjava/lang/Runnable;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 364
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->g()V

    .line 365
    sget-object v0, Lcom/facebook/orca/common/ui/titlebar/DivebarController$DivebarState;->OPENED:Lcom/facebook/orca/common/ui/titlebar/DivebarController$DivebarState;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->a(Lcom/facebook/orca/common/ui/titlebar/DivebarController$DivebarState;JLjava/lang/Runnable;)V

    .line 366
    return-void
.end method

.method private a(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter

    .prologue
    .line 408
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->w:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->w:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 412
    :cond_0
    iput-object p1, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->w:Landroid/view/animation/Animation;

    .line 414
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->a:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 415
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 416
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 419
    :cond_1
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->z()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 420
    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 421
    invoke-virtual {v0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 423
    :cond_2
    return-void
.end method

.method private a(Lcom/facebook/orca/common/ui/titlebar/DivebarController$DivebarState;)V
    .locals 3
    .parameter

    .prologue
    .line 497
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->o:Lcom/facebook/orca/common/ui/titlebar/DivebarController$DivebarState;

    if-eq v0, p1, :cond_0

    .line 498
    iput-object p1, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->o:Lcom/facebook/orca/common/ui/titlebar/DivebarController$DivebarState;

    .line 499
    sget-object v0, Lcom/facebook/orca/common/ui/titlebar/DivebarController$DivebarState;->OPENED:Lcom/facebook/orca/common/ui/titlebar/DivebarController$DivebarState;

    if-ne v0, p1, :cond_1

    .line 500
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->f:Lcom/facebook/orca/analytics/AnalyticsLogger;

    const-string v1, "divebar"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/analytics/AnalyticsLogger;->b(Ljava/lang/String;Z)V

    .line 505
    :cond_0
    :goto_0
    return-void

    .line 501
    :cond_1
    sget-object v0, Lcom/facebook/orca/common/ui/titlebar/DivebarController$DivebarState;->CLOSED:Lcom/facebook/orca/common/ui/titlebar/DivebarController$DivebarState;

    if-ne v0, p1, :cond_0

    .line 502
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->f:Lcom/facebook/orca/analytics/AnalyticsLogger;

    const-string v1, "divebar"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/analytics/AnalyticsLogger;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Lcom/facebook/orca/common/ui/titlebar/DivebarController$DivebarState;JLjava/lang/Runnable;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 429
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->b:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->l:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    .line 430
    :cond_0
    sget-object v0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->c:Ljava/lang/Class;

    const-string v1, "unable to start animation - failed to locate divebar elements"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->e(Ljava/lang/Class;Ljava/lang/String;)V

    .line 494
    :goto_0
    return-void

    .line 434
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->d:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->q:I

    sub-int/2addr v0, v1

    .line 437
    iget v1, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->p:I

    .line 438
    sget-object v2, Lcom/facebook/orca/common/ui/titlebar/DivebarController$DivebarState;->OPENED:Lcom/facebook/orca/common/ui/titlebar/DivebarController$DivebarState;

    if-ne p1, v2, :cond_2

    neg-int v0, v0

    .line 439
    :goto_1
    iput v0, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->p:I

    .line 441
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    int-to-float v1, v1

    int-to-float v0, v0

    invoke-direct {v2, v1, v0, v3, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 444
    invoke-virtual {v2, p2, p3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 445
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v2, v0}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 446
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 448
    new-instance v0, Lcom/facebook/orca/common/ui/titlebar/DivebarController$2;

    invoke-direct {v0, p0, p1, p4}, Lcom/facebook/orca/common/ui/titlebar/DivebarController$2;-><init>(Lcom/facebook/orca/common/ui/titlebar/DivebarController;Lcom/facebook/orca/common/ui/titlebar/DivebarController$DivebarState;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v0}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 493
    invoke-direct {p0, v2}, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->a(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 438
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static synthetic a(Lcom/facebook/orca/common/ui/titlebar/DivebarController;JLjava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->b(JLjava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/common/ui/titlebar/DivebarController;Lcom/facebook/orca/prefs/PrefKey;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->a(Lcom/facebook/orca/prefs/PrefKey;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/common/ui/titlebar/DivebarController;Lcom/facebook/orca/users/UserWithIdentifier;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->a(Lcom/facebook/orca/users/UserWithIdentifier;Z)V

    return-void
.end method

.method private a(Lcom/facebook/orca/prefs/PrefKey;)V
    .locals 3
    .parameter

    .prologue
    .line 807
    iget-boolean v1, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->x:Z

    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->k:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq v1, v0, :cond_0

    .line 808
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->k:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->x:Z

    .line 810
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 812
    const-wide/16 v0, 0x0

    new-instance v2, Lcom/facebook/orca/common/ui/titlebar/DivebarController$8;

    invoke-direct {v2, p0}, Lcom/facebook/orca/common/ui/titlebar/DivebarController$8;-><init>(Lcom/facebook/orca/common/ui/titlebar/DivebarController;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->b(JLjava/lang/Runnable;)V

    .line 824
    :cond_0
    :goto_0
    return-void

    .line 821
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->m:Lcom/facebook/orca/contacts/divebar/DivebarFragment;

    goto :goto_0
.end method

.method private a(Lcom/facebook/orca/users/UserWithIdentifier;Z)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 684
    new-instance v2, Lcom/facebook/orca/users/PickedUser;

    invoke-direct {v2, p1, v1}, Lcom/facebook/orca/users/PickedUser;-><init>(Lcom/facebook/orca/users/UserWithIdentifier;Lcom/facebook/orca/users/UserIdentifier;)V

    .line 687
    invoke-virtual {v2}, Lcom/facebook/orca/users/PickedUser;->b()Lcom/facebook/orca/users/UserIdentifier;

    move-result-object v3

    .line 688
    invoke-virtual {v3}, Lcom/facebook/orca/users/UserIdentifier;->d()Lcom/facebook/orca/users/UserIdentifier$IdentifierType;

    move-result-object v4

    .line 692
    sget-object v0, Lcom/facebook/orca/users/UserIdentifier$IdentifierType;->FBID:Lcom/facebook/orca/users/UserIdentifier$IdentifierType;

    if-ne v4, v0, :cond_2

    invoke-virtual {v2}, Lcom/facebook/orca/users/PickedUser;->c()Lcom/facebook/orca/users/UserIdentifier;

    move-result-object v0

    if-nez v0, :cond_2

    .line 694
    invoke-virtual {v2}, Lcom/facebook/orca/users/PickedUser;->a()Lcom/facebook/orca/users/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->c()Lcom/facebook/orca/users/UserKey;

    move-result-object v0

    .line 699
    :goto_0
    new-instance v3, Lcom/facebook/orca/analytics/HoneyClientEvent;

    const-string v5, "click"

    invoke-direct {v3, v5}, Lcom/facebook/orca/analytics/HoneyClientEvent;-><init>(Ljava/lang/String;)V

    const-string v5, "divebar_contact"

    invoke-virtual {v3, v5}, Lcom/facebook/orca/analytics/HoneyClientEvent;->d(Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    move-result-object v3

    invoke-virtual {v0}, Lcom/facebook/orca/users/UserKey;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/facebook/orca/analytics/HoneyClientEvent;->e(Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    move-result-object v3

    const-string v5, "contact_type"

    invoke-virtual {v4}, Lcom/facebook/orca/users/UserIdentifier$IdentifierType;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Lcom/facebook/orca/analytics/HoneyClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    move-result-object v3

    const-string v4, "filtered"

    invoke-virtual {v3, v4, p2}, Lcom/facebook/orca/analytics/HoneyClientEvent;->a(Ljava/lang/String;Z)Lcom/facebook/orca/analytics/HoneyClientEvent;

    move-result-object v3

    .line 705
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->A()Ljava/lang/String;

    move-result-object v4

    .line 706
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "divebar"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 707
    if-eqz v4, :cond_0

    .line 708
    invoke-virtual {v3, v4}, Lcom/facebook/orca/analytics/HoneyClientEvent;->c(Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    .line 709
    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 712
    :cond_0
    iget-object v4, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->f:Lcom/facebook/orca/analytics/AnalyticsLogger;

    invoke-virtual {v4, v3}, Lcom/facebook/orca/analytics/AnalyticsLogger;->a(Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;)V

    .line 714
    if-eqz v0, :cond_1

    .line 715
    iget-object v1, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->g:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/cache/DataCache;->c(Lcom/facebook/orca/users/UserKey;)Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v1

    .line 719
    :cond_1
    if-eqz v1, :cond_3

    .line 720
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->d:Landroid/support/v4/app/FragmentActivity;

    const-class v3, Lcom/facebook/orca/threadview/ThreadViewActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 721
    const-string v2, "thread_id"

    invoke-virtual {v1}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 727
    :goto_1
    const-string v1, "focus_compose"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 728
    sget-object v1, Lcom/facebook/orca/creation/CreateThreadActivity;->t:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 729
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 730
    iget-object v1, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->d:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 732
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->j()V

    .line 733
    return-void

    .line 695
    :cond_2
    sget-object v0, Lcom/facebook/orca/users/UserIdentifier$IdentifierType;->PHONE:Lcom/facebook/orca/users/UserIdentifier$IdentifierType;

    if-ne v4, v0, :cond_4

    .line 696
    new-instance v0, Lcom/facebook/orca/users/UserKey;

    sget-object v5, Lcom/facebook/orca/users/User$Type;->PHONE_NUMBER:Lcom/facebook/orca/users/User$Type;

    invoke-virtual {v3}, Lcom/facebook/orca/users/UserIdentifier;->c()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v5, v3}, Lcom/facebook/orca/users/UserKey;-><init>(Lcom/facebook/orca/users/User$Type;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 723
    :cond_3
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->d:Landroid/support/v4/app/FragmentActivity;

    const-class v3, Lcom/facebook/orca/creation/CreateThreadActivity;

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 724
    const-string v1, "to"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_1

    :cond_4
    move-object v0, v1

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/facebook/orca/common/ui/titlebar/DivebarController;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->y:Z

    return p1
.end method

.method private b(JLjava/lang/Runnable;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 398
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->o:Lcom/facebook/orca/common/ui/titlebar/DivebarController$DivebarState;

    sget-object v1, Lcom/facebook/orca/common/ui/titlebar/DivebarController$DivebarState;->CLOSED:Lcom/facebook/orca/common/ui/titlebar/DivebarController$DivebarState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->o:Lcom/facebook/orca/common/ui/titlebar/DivebarController$DivebarState;

    sget-object v1, Lcom/facebook/orca/common/ui/titlebar/DivebarController$DivebarState;->ANIMATING:Lcom/facebook/orca/common/ui/titlebar/DivebarController$DivebarState;

    if-ne v0, v1, :cond_1

    .line 404
    :cond_0
    :goto_0
    return-void

    .line 402
    :cond_1
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->q()V

    .line 403
    sget-object v0, Lcom/facebook/orca/common/ui/titlebar/DivebarController$DivebarState;->CLOSED:Lcom/facebook/orca/common/ui/titlebar/DivebarController$DivebarState;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->a(Lcom/facebook/orca/common/ui/titlebar/DivebarController$DivebarState;JLjava/lang/Runnable;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/facebook/orca/common/ui/titlebar/DivebarController;)V
    .locals 0
    .parameter

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->y()V

    return-void
.end method

.method static synthetic b(Lcom/facebook/orca/common/ui/titlebar/DivebarController;Lcom/facebook/orca/common/ui/titlebar/DivebarController$DivebarState;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->a(Lcom/facebook/orca/common/ui/titlebar/DivebarController$DivebarState;)V

    return-void
.end method

.method static synthetic c(Lcom/facebook/orca/common/ui/titlebar/DivebarController;)Lcom/facebook/orca/contacts/divebar/DivebarFragment;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->m:Lcom/facebook/orca/contacts/divebar/DivebarFragment;

    return-object v0
.end method

.method static synthetic d(Lcom/facebook/orca/common/ui/titlebar/DivebarController;)V
    .locals 0
    .parameter

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->l()V

    return-void
.end method

.method static synthetic e(Lcom/facebook/orca/common/ui/titlebar/DivebarController;)V
    .locals 0
    .parameter

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->w()V

    return-void
.end method

.method static synthetic f(Lcom/facebook/orca/common/ui/titlebar/DivebarController;)V
    .locals 0
    .parameter

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->x()V

    return-void
.end method

.method static synthetic g(Lcom/facebook/orca/common/ui/titlebar/DivebarController;)Lcom/facebook/orca/common/ui/titlebar/DivebarController$DivebarAnimationListener;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->r:Lcom/facebook/orca/common/ui/titlebar/DivebarController$DivebarAnimationListener;

    return-object v0
.end method

.method static synthetic h(Lcom/facebook/orca/common/ui/titlebar/DivebarController;)Lcom/facebook/orca/common/ui/titlebar/DivebarController$DivebarState;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->o:Lcom/facebook/orca/common/ui/titlebar/DivebarController$DivebarState;

    return-object v0
.end method

.method static synthetic i(Lcom/facebook/orca/common/ui/titlebar/DivebarController;)Lcom/facebook/orca/common/ui/titlebar/DivebarController$DivebarOverlayClickListener;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->s:Lcom/facebook/orca/common/ui/titlebar/DivebarController$DivebarOverlayClickListener;

    return-object v0
.end method

.method static synthetic j(Lcom/facebook/orca/common/ui/titlebar/DivebarController;)I
    .locals 1
    .parameter

    .prologue
    .line 61
    iget v0, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->p:I

    return v0
.end method

.method private k()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/high16 v4, 0x40a0

    .line 201
    new-instance v0, Lcom/facebook/orca/ui/touch/DragMotionDetector;

    new-array v1, v3, [Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->d:Landroid/support/v4/app/FragmentActivity;

    const/high16 v3, 0x4170

    invoke-static {v2, v3}, Lcom/facebook/orca/common/util/SizeUtil;->a(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->d:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v3, v4}, Lcom/facebook/orca/common/util/SizeUtil;->a(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/facebook/orca/ui/touch/DragMotionDetector;-><init>(Lcom/facebook/orca/ui/touch/Draggable;Ljava/util/List;FF)V

    iput-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->u:Lcom/facebook/orca/ui/touch/DragMotionDetector;

    .line 207
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->u:Lcom/facebook/orca/ui/touch/DragMotionDetector;

    iget-object v1, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->d:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v1, v4}, Lcom/facebook/orca/common/util/SizeUtil;->a(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/ui/touch/DragMotionDetector;->a(F)V

    .line 210
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->u()V

    .line 212
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->m()Lcom/facebook/orca/ui/touch/SwipeableLayout;

    move-result-object v0

    .line 213
    if-eqz v0, :cond_0

    .line 214
    iget-object v1, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->u:Lcom/facebook/orca/ui/touch/DragMotionDetector;

    invoke-interface {v0, v1}, Lcom/facebook/orca/ui/touch/SwipeableLayout;->a(Lcom/facebook/orca/ui/touch/DragMotionDetector;)V

    .line 216
    :cond_0
    return-void
.end method

.method static synthetic k(Lcom/facebook/orca/common/ui/titlebar/DivebarController;)Z
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->y:Z

    return v0
.end method

.method private l()V
    .locals 6

    .prologue
    .line 219
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->l:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->l:Landroid/view/ViewGroup;

    check-cast v0, Lcom/facebook/orca/ui/touch/SwipeableLayout;

    .line 221
    new-instance v1, Lcom/facebook/orca/ui/touch/DragMotionDetector;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Integer;

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->d:Landroid/support/v4/app/FragmentActivity;

    const/high16 v4, 0x4170

    invoke-static {v3, v4}, Lcom/facebook/orca/common/util/SizeUtil;->a(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->d:Landroid/support/v4/app/FragmentActivity;

    const/high16 v5, 0x40a0

    invoke-static {v4, v5}, Lcom/facebook/orca/common/util/SizeUtil;->a(Landroid/content/Context;F)I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/facebook/orca/ui/touch/DragMotionDetector;-><init>(Lcom/facebook/orca/ui/touch/Draggable;Ljava/util/List;FF)V

    iput-object v1, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->v:Lcom/facebook/orca/ui/touch/DragMotionDetector;

    .line 227
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->u()V

    .line 229
    iget-object v1, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->v:Lcom/facebook/orca/ui/touch/DragMotionDetector;

    invoke-interface {v0, v1}, Lcom/facebook/orca/ui/touch/SwipeableLayout;->a(Lcom/facebook/orca/ui/touch/DragMotionDetector;)V

    .line 231
    :cond_0
    return-void
.end method

.method private m()Lcom/facebook/orca/ui/touch/SwipeableLayout;
    .locals 3

    .prologue
    .line 249
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->b:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 250
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 251
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 252
    if-eqz v0, :cond_0

    instance-of v2, v0, Lcom/facebook/orca/ui/touch/SwipeableLayout;

    if-eqz v2, :cond_0

    .line 253
    check-cast v0, Lcom/facebook/orca/ui/touch/SwipeableLayout;

    .line 258
    :goto_1
    return-object v0

    .line 250
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 258
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private n()I
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->d:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    return v0
.end method

.method private o()I
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->d:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    return v0
.end method

.method private p()I
    .locals 2

    .prologue
    .line 302
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->n()I

    move-result v0

    iget v1, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->q:I

    sub-int/2addr v0, v1

    return v0
.end method

.method private q()V
    .locals 3

    .prologue
    .line 306
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->d:Landroid/support/v4/app/FragmentActivity;

    if-nez v0, :cond_0

    .line 307
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "DivebarController not attached to an activity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->b:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    .line 324
    :goto_0
    return-void

    .line 314
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->r:Lcom/facebook/orca/common/ui/titlebar/DivebarController$DivebarAnimationListener;

    if-eqz v0, :cond_2

    .line 315
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->r:Lcom/facebook/orca/common/ui/titlebar/DivebarController$DivebarAnimationListener;

    iget-object v1, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->o:Lcom/facebook/orca/common/ui/titlebar/DivebarController$DivebarState;

    invoke-interface {v0, v1}, Lcom/facebook/orca/common/ui/titlebar/DivebarController$DivebarAnimationListener;->a(Lcom/facebook/orca/common/ui/titlebar/DivebarController$DivebarState;)V

    .line 318
    :cond_2
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->t()V

    .line 319
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->v()V

    .line 322
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->e:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->d:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method private r()V
    .locals 3

    .prologue
    .line 339
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->o:Lcom/facebook/orca/common/ui/titlebar/DivebarController$DivebarState;

    sget-object v1, Lcom/facebook/orca/common/ui/titlebar/DivebarController$DivebarState;->CLOSED:Lcom/facebook/orca/common/ui/titlebar/DivebarController$DivebarState;

    if-ne v0, v1, :cond_0

    .line 344
    :goto_0
    return-void

    .line 343
    :cond_0
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->a(JLjava/lang/Runnable;)V

    goto :goto_0
.end method

.method private s()Lcom/facebook/orca/contacts/divebar/DivebarFragment;
    .locals 3

    .prologue
    .line 508
    new-instance v0, Lcom/facebook/orca/contacts/divebar/DivebarFragment;

    invoke-direct {v0}, Lcom/facebook/orca/contacts/divebar/DivebarFragment;-><init>()V

    .line 509
    iget-object v1, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->d:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->f()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 511
    sget v2, Lcom/facebook/R$id;->orca_diverbar_fragment_container:I

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->a(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 513
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->a()I

    .line 515
    return-object v0
.end method

.method private t()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 519
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->l:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 520
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->d:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 521
    sget v1, Lcom/facebook/R$layout;->orca_divebar:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->l:Landroid/view/ViewGroup;

    .line 522
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->l:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 524
    new-instance v0, Lcom/facebook/orca/common/ui/titlebar/DivebarController$3;

    invoke-direct {v0, p0}, Lcom/facebook/orca/common/ui/titlebar/DivebarController$3;-><init>(Lcom/facebook/orca/common/ui/titlebar/DivebarController;)V

    iput-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->n:Lcom/facebook/orca/contacts/divebar/DivebarViewListener;

    .line 531
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->l:Landroid/view/ViewGroup;

    sget v1, Lcom/facebook/R$id;->empty:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 533
    new-instance v1, Lcom/facebook/orca/common/ui/titlebar/DivebarController$4;

    invoke-direct {v1, p0}, Lcom/facebook/orca/common/ui/titlebar/DivebarController$4;-><init>(Lcom/facebook/orca/common/ui/titlebar/DivebarController;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 540
    new-instance v1, Lcom/facebook/orca/common/ui/titlebar/DivebarController$5;

    invoke-direct {v1, p0}, Lcom/facebook/orca/common/ui/titlebar/DivebarController$5;-><init>(Lcom/facebook/orca/common/ui/titlebar/DivebarController;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 560
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->m:Lcom/facebook/orca/contacts/divebar/DivebarFragment;

    if-nez v0, :cond_1

    .line 561
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->s()Lcom/facebook/orca/contacts/divebar/DivebarFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->m:Lcom/facebook/orca/contacts/divebar/DivebarFragment;

    .line 562
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->m:Lcom/facebook/orca/contacts/divebar/DivebarFragment;

    iget-object v1, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->n:Lcom/facebook/orca/contacts/divebar/DivebarViewListener;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/contacts/divebar/DivebarFragment;->a(Lcom/facebook/orca/contacts/divebar/DivebarViewListener;)V

    .line 564
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->m:Lcom/facebook/orca/contacts/divebar/DivebarFragment;

    new-instance v1, Lcom/facebook/orca/common/ui/titlebar/DivebarController$6;

    invoke-direct {v1, p0}, Lcom/facebook/orca/common/ui/titlebar/DivebarController$6;-><init>(Lcom/facebook/orca/common/ui/titlebar/DivebarController;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/contacts/divebar/DivebarFragment;->a(Lcom/facebook/orca/contacts/divebar/DivebarFragment$FragmentListener;)V

    .line 583
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->l:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_2

    .line 584
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->b:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->l:Landroid/view/ViewGroup;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 588
    :cond_2
    return-void
.end method

.method private u()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 591
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->u:Lcom/facebook/orca/ui/touch/DragMotionDetector;

    if-eqz v0, :cond_0

    .line 593
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->u:Lcom/facebook/orca/ui/touch/DragMotionDetector;

    invoke-direct {p0}, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->n()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    invoke-direct {p0}, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->n()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {p0}, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->o()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/facebook/orca/ui/touch/DragMotionDetector;->a(FFFF)V

    .line 600
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->v:Lcom/facebook/orca/ui/touch/DragMotionDetector;

    if-eqz v0, :cond_1

    .line 601
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->v:Lcom/facebook/orca/ui/touch/DragMotionDetector;

    iget v1, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->q:I

    int-to-float v1, v1

    invoke-direct {p0}, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->o()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v4, v4, v1, v2}, Lcom/facebook/orca/ui/touch/DragMotionDetector;->a(FFFF)V

    .line 610
    :cond_1
    return-void
.end method

.method private v()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 615
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->a:Landroid/view/View;

    if-nez v0, :cond_0

    .line 616
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->d:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->a:Landroid/view/View;

    .line 617
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->d:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/R$drawable;->transparent:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 619
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->a:Landroid/view/View;

    new-instance v1, Lcom/facebook/orca/common/ui/titlebar/DivebarController$7;

    invoke-direct {v1, p0}, Lcom/facebook/orca/common/ui/titlebar/DivebarController$7;-><init>(Lcom/facebook/orca/common/ui/titlebar/DivebarController;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 626
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 627
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 628
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->b:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->a:Landroid/view/View;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 633
    :cond_0
    return-void
.end method

.method private w()V
    .locals 2

    .prologue
    .line 636
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->m:Lcom/facebook/orca/contacts/divebar/DivebarFragment;

    if-eqz v0, :cond_0

    .line 637
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->m:Lcom/facebook/orca/contacts/divebar/DivebarFragment;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/facebook/orca/contacts/divebar/DivebarFragment;->a(Ljava/lang/String;)V

    .line 639
    :cond_0
    return-void
.end method

.method private x()V
    .locals 2

    .prologue
    .line 642
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->l:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->l:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 643
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->l:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->l:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 645
    :cond_0
    return-void
.end method

.method private y()V
    .locals 2

    .prologue
    .line 648
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 649
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 651
    :cond_0
    return-void
.end method

.method private z()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 658
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->B()Z

    move-result v0

    if-nez v0, :cond_0

    .line 659
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 679
    :goto_0
    return-object v0

    .line 662
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 663
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->b:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 664
    iget-object v2, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->b:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 665
    iget-object v3, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->a:Landroid/view/View;

    if-eq v2, v3, :cond_1

    iget-object v3, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->l:Landroid/view/ViewGroup;

    if-eq v2, v3, :cond_1

    instance-of v3, v2, Lcom/facebook/orca/common/diagnostics/FPSView;

    if-eqz v3, :cond_2

    .line 663
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 671
    :cond_2
    iget-object v3, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->r:Lcom/facebook/orca/common/ui/titlebar/DivebarController$DivebarAnimationListener;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->r:Lcom/facebook/orca/common/ui/titlebar/DivebarController$DivebarAnimationListener;

    invoke-interface {v3, v2}, Lcom/facebook/orca/common/ui/titlebar/DivebarController$DivebarAnimationListener;->a(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 676
    :cond_3
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    move-object v0, v1

    .line 679
    goto :goto_0
.end method


# virtual methods
.method public a(FF)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 758
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->B()Z

    move-result v0

    if-nez v0, :cond_1

    .line 769
    :cond_0
    :goto_0
    return-void

    .line 762
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 763
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->g()V

    .line 766
    :cond_2
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->t:Lcom/facebook/orca/common/ui/titlebar/DivebarController$DragListener;

    if-eqz v0, :cond_0

    .line 767
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->t:Lcom/facebook/orca/common/ui/titlebar/DivebarController$DragListener;

    invoke-interface {v0, p1, p2}, Lcom/facebook/orca/common/ui/titlebar/DivebarController$DragListener;->a(FF)V

    goto :goto_0
.end method

.method public a(Landroid/app/Activity;)V
    .locals 2
    .parameter

    .prologue
    .line 184
    instance-of v0, p1, Landroid/support/v4/app/FragmentActivity;

    if-nez v0, :cond_0

    .line 185
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "DivebarController must be attached to a FragmentActivity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move-object v0, p1

    .line 188
    check-cast v0, Landroid/support/v4/app/FragmentActivity;

    iput-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->d:Landroid/support/v4/app/FragmentActivity;

    .line 189
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->b:Landroid/view/ViewGroup;

    .line 192
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/R$dimen;->divebar_left_margin_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->q:I

    .line 195
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->C()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 196
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->k()V

    .line 198
    :cond_1
    return-void
.end method

.method public a(Lcom/facebook/orca/common/ui/titlebar/DivebarController$DivebarOverlayClickListener;)V
    .locals 0
    .parameter

    .prologue
    .line 266
    iput-object p1, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->s:Lcom/facebook/orca/common/ui/titlebar/DivebarController$DivebarOverlayClickListener;

    .line 267
    return-void
.end method

.method public a()Z
    .locals 2

    .prologue
    .line 270
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->o:Lcom/facebook/orca/common/ui/titlebar/DivebarController$DivebarState;

    sget-object v1, Lcom/facebook/orca/common/ui/titlebar/DivebarController$DivebarState;->OPENED:Lcom/facebook/orca/common/ui/titlebar/DivebarController$DivebarState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(FF)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 773
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->B()Z

    move-result v0

    if-nez v0, :cond_0

    .line 779
    :goto_0
    return-void

    .line 777
    :cond_0
    const/4 v0, 0x0

    float-to-int v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 778
    invoke-direct {p0, v0}, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->a(I)V

    goto :goto_0
.end method

.method public b()Z
    .locals 2

    .prologue
    .line 274
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->o:Lcom/facebook/orca/common/ui/titlebar/DivebarController$DivebarState;

    sget-object v1, Lcom/facebook/orca/common/ui/titlebar/DivebarController$DivebarState;->CLOSED:Lcom/facebook/orca/common/ui/titlebar/DivebarController$DivebarState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Lcom/facebook/orca/common/ui/titlebar/DivebarController$DivebarState;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->o:Lcom/facebook/orca/common/ui/titlebar/DivebarController$DivebarState;

    return-object v0
.end method

.method public c(FF)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const-wide/16 v3, 0x32

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 783
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->B()Z

    move-result v0

    if-nez v0, :cond_0

    .line 796
    :goto_0
    return-void

    .line 787
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->u:Lcom/facebook/orca/ui/touch/DragMotionDetector;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->u:Lcom/facebook/orca/ui/touch/DragMotionDetector;

    invoke-virtual {v0}, Lcom/facebook/orca/ui/touch/DragMotionDetector;->a()F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 789
    invoke-direct {p0, v3, v4, v2}, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->a(JLjava/lang/Runnable;)V

    goto :goto_0

    .line 790
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->v:Lcom/facebook/orca/ui/touch/DragMotionDetector;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->v:Lcom/facebook/orca/ui/touch/DragMotionDetector;

    invoke-virtual {v0}, Lcom/facebook/orca/ui/touch/DragMotionDetector;->a()F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 792
    invoke-direct {p0, v3, v4, v2}, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->b(JLjava/lang/Runnable;)V

    goto :goto_0

    .line 794
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->h()V

    goto :goto_0
.end method

.method public d()V
    .locals 2

    .prologue
    .line 327
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->u()V

    .line 329
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->o:Lcom/facebook/orca/common/ui/titlebar/DivebarController$DivebarState;

    sget-object v1, Lcom/facebook/orca/common/ui/titlebar/DivebarController$DivebarState;->CLOSED:Lcom/facebook/orca/common/ui/titlebar/DivebarController$DivebarState;

    if-ne v0, v1, :cond_0

    .line 331
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->m:Lcom/facebook/orca/contacts/divebar/DivebarFragment;

    .line 336
    :goto_0
    return-void

    .line 335
    :cond_0
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->r()V

    goto :goto_0
.end method

.method public d(FF)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 800
    return-void
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 347
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->i()V

    .line 349
    const/4 v0, 0x1

    .line 351
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()V
    .locals 3

    .prologue
    .line 356
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->o:Lcom/facebook/orca/common/ui/titlebar/DivebarController$DivebarState;

    sget-object v1, Lcom/facebook/orca/common/ui/titlebar/DivebarController$DivebarState;->OPENED:Lcom/facebook/orca/common/ui/titlebar/DivebarController$DivebarState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->o:Lcom/facebook/orca/common/ui/titlebar/DivebarController$DivebarState;

    sget-object v1, Lcom/facebook/orca/common/ui/titlebar/DivebarController$DivebarState;->ANIMATING:Lcom/facebook/orca/common/ui/titlebar/DivebarController$DivebarState;

    if-ne v0, v1, :cond_1

    .line 361
    :cond_0
    :goto_0
    return-void

    .line 360
    :cond_1
    const-wide/16 v0, 0x8c

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->a(JLjava/lang/Runnable;)V

    goto :goto_0
.end method

.method public g()V
    .locals 2

    .prologue
    .line 369
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->q()V

    .line 372
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->z()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 373
    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    goto :goto_0

    .line 376
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->l:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 377
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->l:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 380
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->m:Lcom/facebook/orca/contacts/divebar/DivebarFragment;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->m:Lcom/facebook/orca/contacts/divebar/DivebarFragment;

    invoke-virtual {v0}, Lcom/facebook/orca/contacts/divebar/DivebarFragment;->o()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 381
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->m:Lcom/facebook/orca/contacts/divebar/DivebarFragment;

    invoke-virtual {v0}, Lcom/facebook/orca/contacts/divebar/DivebarFragment;->b()V

    .line 382
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->m:Lcom/facebook/orca/contacts/divebar/DivebarFragment;

    invoke-virtual {v0}, Lcom/facebook/orca/contacts/divebar/DivebarFragment;->c()V

    .line 384
    :cond_2
    return-void
.end method

.method public h()V
    .locals 4

    .prologue
    .line 387
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->o:Lcom/facebook/orca/common/ui/titlebar/DivebarController$DivebarState;

    sget-object v1, Lcom/facebook/orca/common/ui/titlebar/DivebarController$DivebarState;->ANIMATING:Lcom/facebook/orca/common/ui/titlebar/DivebarController$DivebarState;

    if-eq v0, v1, :cond_0

    .line 388
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->q()V

    .line 389
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->o:Lcom/facebook/orca/common/ui/titlebar/DivebarController$DivebarState;

    const-wide/16 v1, 0x19

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->a(Lcom/facebook/orca/common/ui/titlebar/DivebarController$DivebarState;JLjava/lang/Runnable;)V

    .line 391
    :cond_0
    return-void
.end method

.method public i()V
    .locals 3

    .prologue
    .line 394
    const-wide/16 v0, 0x8c

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->b(JLjava/lang/Runnable;)V

    .line 395
    return-void
.end method

.method public j()V
    .locals 1

    .prologue
    .line 737
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/orca/common/ui/titlebar/DivebarController;->y:Z

    .line 738
    return-void
.end method
