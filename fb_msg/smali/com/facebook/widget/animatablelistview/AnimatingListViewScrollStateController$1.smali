.class Lcom/facebook/widget/animatablelistview/AnimatingListViewScrollStateController$1;
.super Ljava/lang/Object;
.source "AnimatingListViewScrollStateController.java"

# interfaces
.implements Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic a:Lcom/facebook/widget/animatablelistview/AnimatingListViewScrollStateController;


# direct methods
.method constructor <init>(Lcom/facebook/widget/animatablelistview/AnimatingListViewScrollStateController;)V
    .locals 0
    .parameter

    .prologue
    .line 24
    iput-object p1, p0, Lcom/facebook/widget/animatablelistview/AnimatingListViewScrollStateController$1;->a:Lcom/facebook/widget/animatablelistview/AnimatingListViewScrollStateController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/nineoldandroids/animation/ValueAnimator;)V
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/facebook/widget/animatablelistview/AnimatingListViewScrollStateController$1;->a:Lcom/facebook/widget/animatablelistview/AnimatingListViewScrollStateController;

    invoke-static {v0, p1}, Lcom/facebook/widget/animatablelistview/AnimatingListViewScrollStateController;->a(Lcom/facebook/widget/animatablelistview/AnimatingListViewScrollStateController;Lcom/nineoldandroids/animation/ValueAnimator;)V

    .line 28
    return-void
.end method
