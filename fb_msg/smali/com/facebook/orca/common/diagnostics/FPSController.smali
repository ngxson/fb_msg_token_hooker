.class public Lcom/facebook/orca/common/diagnostics/FPSController;
.super Ljava/lang/Object;
.source "FPSController.java"


# instance fields
.field private final a:Lcom/facebook/orca/common/diagnostics/FPSController$ActivityListener;

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/app/Activity;",
            "Lcom/facebook/orca/common/diagnostics/FPSView;",
            ">;"
        }
    .end annotation
.end field

.field private volatile c:Landroid/app/Activity;

.field private d:Landroid/os/Handler;

.field private e:Z

.field private f:Z

.field private g:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Lcom/facebook/orca/common/diagnostics/FPSController$ActivityListener;

    invoke-direct {v0, p0}, Lcom/facebook/orca/common/diagnostics/FPSController$ActivityListener;-><init>(Lcom/facebook/orca/common/diagnostics/FPSController;)V

    iput-object v0, p0, Lcom/facebook/orca/common/diagnostics/FPSController;->a:Lcom/facebook/orca/common/diagnostics/FPSController$ActivityListener;

    .line 48
    new-instance v0, Lcom/google/common/collect/MapMaker;

    invoke-direct {v0}, Lcom/google/common/collect/MapMaker;-><init>()V

    invoke-virtual {v0}, Lcom/google/common/collect/MapMaker;->f()Lcom/google/common/collect/MapMaker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/MapMaker;->h()Lcom/google/common/collect/MapMaker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/MapMaker;->n()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/common/diagnostics/FPSController;->b:Ljava/util/Map;

    .line 49
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/common/diagnostics/FPSController;Landroid/app/Activity;)Landroid/app/Activity;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 26
    iput-object p1, p0, Lcom/facebook/orca/common/diagnostics/FPSController;->c:Landroid/app/Activity;

    return-object p1
.end method

.method static synthetic a(Lcom/facebook/orca/common/diagnostics/FPSController;)Z
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/facebook/orca/common/diagnostics/FPSController;->f:Z

    return v0
.end method

.method private b()V
    .locals 5

    .prologue
    .line 79
    iget-object v0, p0, Lcom/facebook/orca/common/diagnostics/FPSController;->c:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/common/diagnostics/FPSController;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isChild()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/common/diagnostics/FPSController;->b:Ljava/util/Map;

    iget-object v1, p0, Lcom/facebook/orca/common/diagnostics/FPSController;->c:Landroid/app/Activity;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/diagnostics/FPSView;

    .line 83
    if-nez v0, :cond_2

    .line 84
    new-instance v0, Lcom/facebook/orca/common/diagnostics/FPSView;

    iget-object v1, p0, Lcom/facebook/orca/common/diagnostics/FPSController;->c:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/facebook/orca/common/diagnostics/FPSView;-><init>(Landroid/content/Context;)V

    .line 85
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x1f4

    const/16 v3, 0x64

    const/16 v4, 0x30

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 87
    iget-object v2, p0, Lcom/facebook/orca/common/diagnostics/FPSController;->c:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/view/Window;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 88
    iget-object v1, p0, Lcom/facebook/orca/common/diagnostics/FPSController;->b:Ljava/util/Map;

    iget-object v2, p0, Lcom/facebook/orca/common/diagnostics/FPSController;->c:Landroid/app/Activity;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    :cond_2
    iget-boolean v1, p0, Lcom/facebook/orca/common/diagnostics/FPSController;->g:Z

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/diagnostics/FPSView;->setEnableOutputToLogcat(Z)V

    .line 91
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/diagnostics/FPSView;->setVisibility(I)V

    .line 92
    invoke-virtual {v0}, Lcom/facebook/orca/common/diagnostics/FPSView;->bringToFront()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/facebook/orca/common/diagnostics/FPSController;)V
    .locals 0
    .parameter

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/facebook/orca/common/diagnostics/FPSController;->b()V

    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/facebook/orca/common/diagnostics/FPSController;->c:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/common/diagnostics/FPSController;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isChild()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/common/diagnostics/FPSController;->b:Ljava/util/Map;

    iget-object v1, p0, Lcom/facebook/orca/common/diagnostics/FPSController;->c:Landroid/app/Activity;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/diagnostics/FPSView;

    .line 100
    if-eqz v0, :cond_0

    .line 101
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/diagnostics/FPSView;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/facebook/orca/common/diagnostics/FPSController;)V
    .locals 0
    .parameter

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/facebook/orca/common/diagnostics/FPSController;->c()V

    return-void
.end method

.method static synthetic d(Lcom/facebook/orca/common/diagnostics/FPSController;)Z
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/facebook/orca/common/diagnostics/FPSController;->e:Z

    return v0
.end method

.method static synthetic e(Lcom/facebook/orca/common/diagnostics/FPSController;)Landroid/app/Activity;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/facebook/orca/common/diagnostics/FPSController;->c:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic f(Lcom/facebook/orca/common/diagnostics/FPSController;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/facebook/orca/common/diagnostics/FPSController;->b:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic g(Lcom/facebook/orca/common/diagnostics/FPSController;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/facebook/orca/common/diagnostics/FPSController;->d:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/facebook/orca/common/diagnostics/FPSController$ActivityListener;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/facebook/orca/common/diagnostics/FPSController;->a:Lcom/facebook/orca/common/diagnostics/FPSController$ActivityListener;

    return-object v0
.end method
