.class Lcom/nineoldandroids/view/ViewPropertyAnimatorICS$1;
.super Ljava/lang/Object;
.source "ViewPropertyAnimatorICS.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field final synthetic a:Lcom/nineoldandroids/animation/Animator$AnimatorListener;

.field final synthetic b:Lcom/nineoldandroids/view/ViewPropertyAnimatorICS;


# direct methods
.method constructor <init>(Lcom/nineoldandroids/view/ViewPropertyAnimatorICS;Lcom/nineoldandroids/animation/Animator$AnimatorListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorICS$1;->b:Lcom/nineoldandroids/view/ViewPropertyAnimatorICS;

    iput-object p2, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorICS$1;->a:Lcom/nineoldandroids/animation/Animator$AnimatorListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .parameter

    .prologue
    .line 95
    iget-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorICS$1;->a:Lcom/nineoldandroids/animation/Animator$AnimatorListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/nineoldandroids/animation/Animator$AnimatorListener;->c(Lcom/nineoldandroids/animation/Animator;)V

    .line 96
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorICS$1;->a:Lcom/nineoldandroids/animation/Animator$AnimatorListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/nineoldandroids/animation/Animator$AnimatorListener;->a(Lcom/nineoldandroids/animation/Animator;)V

    .line 91
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 2
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorICS$1;->a:Lcom/nineoldandroids/animation/Animator$AnimatorListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/nineoldandroids/animation/Animator$AnimatorListener;->d(Lcom/nineoldandroids/animation/Animator;)V

    .line 86
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorICS$1;->a:Lcom/nineoldandroids/animation/Animator$AnimatorListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/nineoldandroids/animation/Animator$AnimatorListener;->b(Lcom/nineoldandroids/animation/Animator;)V

    .line 81
    return-void
.end method
