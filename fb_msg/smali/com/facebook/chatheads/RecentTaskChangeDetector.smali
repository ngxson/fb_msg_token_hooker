.class public Lcom/facebook/chatheads/RecentTaskChangeDetector;
.super Ljava/lang/Object;
.source "RecentTaskChangeDetector.java"


# instance fields
.field private final a:Landroid/app/ActivityManager;

.field private final b:Landroid/os/Handler;

.field private final c:Ljava/lang/Runnable;

.field private d:Landroid/app/ActivityManager$RecentTaskInfo;

.field private e:Z

.field private f:Lcom/facebook/chatheads/RecentTaskChangeDetector$OnRecentTaskChangeListener;


# direct methods
.method public constructor <init>(Landroid/app/ActivityManager;Landroid/os/Handler;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/facebook/chatheads/RecentTaskChangeDetector;->a:Landroid/app/ActivityManager;

    .line 47
    iput-object p2, p0, Lcom/facebook/chatheads/RecentTaskChangeDetector;->b:Landroid/os/Handler;

    .line 49
    new-instance v0, Lcom/facebook/chatheads/RecentTaskChangeDetector$1;

    invoke-direct {v0, p0}, Lcom/facebook/chatheads/RecentTaskChangeDetector$1;-><init>(Lcom/facebook/chatheads/RecentTaskChangeDetector;)V

    iput-object v0, p0, Lcom/facebook/chatheads/RecentTaskChangeDetector;->c:Ljava/lang/Runnable;

    .line 56
    return-void
.end method

.method private a(Landroid/app/ActivityManager$RecentTaskInfo;)V
    .locals 1
    .parameter

    .prologue
    .line 106
    iget-object v0, p0, Lcom/facebook/chatheads/RecentTaskChangeDetector;->f:Lcom/facebook/chatheads/RecentTaskChangeDetector$OnRecentTaskChangeListener;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/facebook/chatheads/RecentTaskChangeDetector;->f:Lcom/facebook/chatheads/RecentTaskChangeDetector$OnRecentTaskChangeListener;

    invoke-interface {v0, p1}, Lcom/facebook/chatheads/RecentTaskChangeDetector$OnRecentTaskChangeListener;->a(Landroid/app/ActivityManager$RecentTaskInfo;)V

    .line 109
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/facebook/chatheads/RecentTaskChangeDetector;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/facebook/chatheads/RecentTaskChangeDetector;->f()V

    return-void
.end method

.method static synthetic b(Lcom/facebook/chatheads/RecentTaskChangeDetector;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/facebook/chatheads/RecentTaskChangeDetector;->d()V

    return-void
.end method

.method private d()V
    .locals 4

    .prologue
    .line 84
    iget-object v0, p0, Lcom/facebook/chatheads/RecentTaskChangeDetector;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/facebook/chatheads/RecentTaskChangeDetector;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 85
    iget-object v0, p0, Lcom/facebook/chatheads/RecentTaskChangeDetector;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/facebook/chatheads/RecentTaskChangeDetector;->c:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 86
    return-void
.end method

.method private e()Landroid/app/ActivityManager$RecentTaskInfo;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 89
    iget-object v0, p0, Lcom/facebook/chatheads/RecentTaskChangeDetector;->a:Landroid/app/ActivityManager;

    invoke-virtual {v0, v1, v1}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RecentTaskInfo;

    return-object v0
.end method

.method private f()V
    .locals 3

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/facebook/chatheads/RecentTaskChangeDetector;->e()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v0

    .line 96
    iget v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    iget-object v2, p0, Lcom/facebook/chatheads/RecentTaskChangeDetector;->d:Landroid/app/ActivityManager$RecentTaskInfo;

    iget v2, v2, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    if-ne v1, v2, :cond_0

    .line 103
    :goto_0
    return-void

    .line 100
    :cond_0
    iput-object v0, p0, Lcom/facebook/chatheads/RecentTaskChangeDetector;->d:Landroid/app/ActivityManager$RecentTaskInfo;

    .line 102
    iget-object v0, p0, Lcom/facebook/chatheads/RecentTaskChangeDetector;->d:Landroid/app/ActivityManager$RecentTaskInfo;

    invoke-direct {p0, v0}, Lcom/facebook/chatheads/RecentTaskChangeDetector;->a(Landroid/app/ActivityManager$RecentTaskInfo;)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/facebook/chatheads/RecentTaskChangeDetector;->e:Z

    if-eqz v0, :cond_0

    .line 72
    :goto_0
    return-void

    .line 68
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/chatheads/RecentTaskChangeDetector;->e:Z

    .line 69
    invoke-direct {p0}, Lcom/facebook/chatheads/RecentTaskChangeDetector;->e()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/chatheads/RecentTaskChangeDetector;->d:Landroid/app/ActivityManager$RecentTaskInfo;

    .line 71
    invoke-direct {p0}, Lcom/facebook/chatheads/RecentTaskChangeDetector;->d()V

    goto :goto_0
.end method

.method public a(Lcom/facebook/chatheads/RecentTaskChangeDetector$OnRecentTaskChangeListener;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/facebook/chatheads/RecentTaskChangeDetector;->f:Lcom/facebook/chatheads/RecentTaskChangeDetector$OnRecentTaskChangeListener;

    .line 61
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/chatheads/RecentTaskChangeDetector;->e:Z

    .line 76
    iget-object v0, p0, Lcom/facebook/chatheads/RecentTaskChangeDetector;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/facebook/chatheads/RecentTaskChangeDetector;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 77
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/facebook/chatheads/RecentTaskChangeDetector;->e:Z

    return v0
.end method
