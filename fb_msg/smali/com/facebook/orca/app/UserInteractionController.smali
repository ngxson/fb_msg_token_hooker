.class public Lcom/facebook/orca/app/UserInteractionController;
.super Ljava/lang/Object;
.source "UserInteractionController.java"


# instance fields
.field private final a:Lcom/facebook/orca/app/UserInteractionController$ActivityListener;

.field private final b:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Lcom/facebook/orca/app/UserInteractionListener;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/os/Handler;

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/orca/app/UserInteractionController;->e:Z

    .line 36
    new-instance v0, Lcom/facebook/orca/app/UserInteractionController$ActivityListener;

    invoke-direct {v0, p0}, Lcom/facebook/orca/app/UserInteractionController$ActivityListener;-><init>(Lcom/facebook/orca/app/UserInteractionController;)V

    iput-object v0, p0, Lcom/facebook/orca/app/UserInteractionController;->a:Lcom/facebook/orca/app/UserInteractionController$ActivityListener;

    .line 37
    new-instance v0, Lcom/google/common/collect/MapMaker;

    invoke-direct {v0}, Lcom/google/common/collect/MapMaker;-><init>()V

    invoke-virtual {v0}, Lcom/google/common/collect/MapMaker;->f()Lcom/google/common/collect/MapMaker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/MapMaker;->n()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/app/UserInteractionController;->b:Ljava/util/concurrent/ConcurrentMap;

    .line 38
    new-instance v0, Lcom/google/common/collect/MapMaker;

    invoke-direct {v0}, Lcom/google/common/collect/MapMaker;-><init>()V

    invoke-virtual {v0}, Lcom/google/common/collect/MapMaker;->f()Lcom/google/common/collect/MapMaker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/MapMaker;->n()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/app/UserInteractionController;->c:Ljava/util/concurrent/ConcurrentMap;

    .line 41
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/facebook/orca/app/UserInteractionController$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/app/UserInteractionController$1;-><init>(Lcom/facebook/orca/app/UserInteractionController;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/facebook/orca/app/UserInteractionController;->d:Landroid/os/Handler;

    .line 48
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/app/UserInteractionController;)Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/facebook/orca/app/UserInteractionController;->b:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/facebook/orca/app/UserInteractionController$ActivityListener;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/facebook/orca/app/UserInteractionController;->a:Lcom/facebook/orca/app/UserInteractionController$ActivityListener;

    return-object v0
.end method

.method public a(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/facebook/orca/app/UserInteractionController;->b:Ljava/util/concurrent/ConcurrentMap;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    invoke-virtual {p0}, Lcom/facebook/orca/app/UserInteractionController;->d()V

    .line 79
    return-void
.end method

.method public a(Lcom/facebook/orca/app/UserInteractionListener;)V
    .locals 2
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/facebook/orca/app/UserInteractionController;->c:Ljava/util/concurrent/ConcurrentMap;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    invoke-virtual {p0}, Lcom/facebook/orca/app/UserInteractionController;->b()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/facebook/orca/app/UserInteractionListener;->a(Z)V

    .line 62
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lcom/facebook/orca/app/UserInteractionController;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    invoke-virtual {p0}, Lcom/facebook/orca/app/UserInteractionController;->c()V

    .line 88
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/facebook/orca/app/UserInteractionController;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected c()V
    .locals 4

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/facebook/orca/app/UserInteractionController;->b()Z

    move-result v0

    iget-boolean v1, p0, Lcom/facebook/orca/app/UserInteractionController;->e:Z

    if-eq v0, v1, :cond_0

    .line 104
    iget-object v0, p0, Lcom/facebook/orca/app/UserInteractionController;->d:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 106
    :cond_0
    return-void
.end method

.method protected d()V
    .locals 3

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/facebook/orca/app/UserInteractionController;->b()Z

    move-result v1

    .line 110
    iget-boolean v0, p0, Lcom/facebook/orca/app/UserInteractionController;->e:Z

    if-eq v1, v0, :cond_1

    .line 111
    iget-object v0, p0, Lcom/facebook/orca/app/UserInteractionController;->c:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/app/UserInteractionListener;

    .line 112
    invoke-virtual {v0, v1}, Lcom/facebook/orca/app/UserInteractionListener;->a(Z)V

    goto :goto_0

    .line 114
    :cond_0
    iput-boolean v1, p0, Lcom/facebook/orca/app/UserInteractionController;->e:Z

    .line 116
    :cond_1
    return-void
.end method
