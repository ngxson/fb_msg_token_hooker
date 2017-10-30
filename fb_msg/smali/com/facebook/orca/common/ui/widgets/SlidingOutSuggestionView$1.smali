.class Lcom/facebook/orca/common/ui/widgets/SlidingOutSuggestionView$1;
.super Ljava/lang/Object;
.source "SlidingOutSuggestionView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Lcom/facebook/orca/common/ui/animation/CanvasCaptureView;

.field final synthetic b:Lcom/facebook/orca/common/ui/widgets/SlidingOutSuggestionView;


# direct methods
.method constructor <init>(Lcom/facebook/orca/common/ui/widgets/SlidingOutSuggestionView;Lcom/facebook/orca/common/ui/animation/CanvasCaptureView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 178
    iput-object p1, p0, Lcom/facebook/orca/common/ui/widgets/SlidingOutSuggestionView$1;->b:Lcom/facebook/orca/common/ui/widgets/SlidingOutSuggestionView;

    iput-object p2, p0, Lcom/facebook/orca/common/ui/widgets/SlidingOutSuggestionView$1;->a:Lcom/facebook/orca/common/ui/animation/CanvasCaptureView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter

    .prologue
    .line 185
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/SlidingOutSuggestionView$1;->b:Lcom/facebook/orca/common/ui/widgets/SlidingOutSuggestionView;

    invoke-static {v0}, Lcom/facebook/orca/common/ui/widgets/SlidingOutSuggestionView;->a(Lcom/facebook/orca/common/ui/widgets/SlidingOutSuggestionView;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/orca/common/ui/widgets/SlidingOutSuggestionView$1;->a:Lcom/facebook/orca/common/ui/animation/CanvasCaptureView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 186
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/SlidingOutSuggestionView$1;->b:Lcom/facebook/orca/common/ui/widgets/SlidingOutSuggestionView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/orca/common/ui/widgets/SlidingOutSuggestionView;->a(Lcom/facebook/orca/common/ui/widgets/SlidingOutSuggestionView;Z)Z

    .line 187
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/SlidingOutSuggestionView$1;->b:Lcom/facebook/orca/common/ui/widgets/SlidingOutSuggestionView;

    invoke-static {v0}, Lcom/facebook/orca/common/ui/widgets/SlidingOutSuggestionView;->b(Lcom/facebook/orca/common/ui/widgets/SlidingOutSuggestionView;)V

    .line 188
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 192
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 181
    return-void
.end method
