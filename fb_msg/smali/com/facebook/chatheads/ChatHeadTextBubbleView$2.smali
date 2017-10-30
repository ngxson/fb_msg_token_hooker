.class Lcom/facebook/chatheads/ChatHeadTextBubbleView$2;
.super Ljava/lang/Object;
.source "ChatHeadTextBubbleView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/facebook/chatheads/ChatHeadTextBubbleView;


# direct methods
.method constructor <init>(Lcom/facebook/chatheads/ChatHeadTextBubbleView;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/facebook/chatheads/ChatHeadTextBubbleView$2;->a:Lcom/facebook/chatheads/ChatHeadTextBubbleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/facebook/chatheads/ChatHeadTextBubbleView$2;->a:Lcom/facebook/chatheads/ChatHeadTextBubbleView;

    invoke-static {v0}, Lcom/facebook/chatheads/ChatHeadTextBubbleView;->b(Lcom/facebook/chatheads/ChatHeadTextBubbleView;)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v0

    new-instance v1, Lcom/facebook/chatheads/ChatHeadTextBubbleView$2$1;

    invoke-direct {v1, p0, p1}, Lcom/facebook/chatheads/ChatHeadTextBubbleView$2$1;-><init>(Lcom/facebook/chatheads/ChatHeadTextBubbleView$2;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/ObjectAnimator;->a(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)V

    .line 59
    return-void
.end method
