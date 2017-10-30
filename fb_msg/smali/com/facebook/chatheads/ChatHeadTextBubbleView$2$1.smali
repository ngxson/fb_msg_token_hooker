.class Lcom/facebook/chatheads/ChatHeadTextBubbleView$2$1;
.super Lcom/nineoldandroids/animation/AnimatorListenerAdapter;
.source "ChatHeadTextBubbleView.java"


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/facebook/chatheads/ChatHeadTextBubbleView$2;


# direct methods
.method constructor <init>(Lcom/facebook/chatheads/ChatHeadTextBubbleView$2;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/facebook/chatheads/ChatHeadTextBubbleView$2$1;->b:Lcom/facebook/chatheads/ChatHeadTextBubbleView$2;

    iput-object p2, p0, Lcom/facebook/chatheads/ChatHeadTextBubbleView$2$1;->a:Landroid/view/View;

    invoke-direct {p0}, Lcom/nineoldandroids/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/nineoldandroids/animation/Animator;)V
    .locals 2
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/facebook/chatheads/ChatHeadTextBubbleView$2$1;->b:Lcom/facebook/chatheads/ChatHeadTextBubbleView$2;

    iget-object v0, v0, Lcom/facebook/chatheads/ChatHeadTextBubbleView$2;->a:Lcom/facebook/chatheads/ChatHeadTextBubbleView;

    invoke-static {v0}, Lcom/facebook/chatheads/ChatHeadTextBubbleView;->a(Lcom/facebook/chatheads/ChatHeadTextBubbleView;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/facebook/chatheads/ChatHeadTextBubbleView$2$1;->b:Lcom/facebook/chatheads/ChatHeadTextBubbleView$2;

    iget-object v0, v0, Lcom/facebook/chatheads/ChatHeadTextBubbleView$2;->a:Lcom/facebook/chatheads/ChatHeadTextBubbleView;

    invoke-static {v0}, Lcom/facebook/chatheads/ChatHeadTextBubbleView;->a(Lcom/facebook/chatheads/ChatHeadTextBubbleView;)Landroid/view/View$OnClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/chatheads/ChatHeadTextBubbleView$2$1;->a:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 57
    :cond_0
    return-void
.end method
