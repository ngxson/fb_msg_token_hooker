.class Lcom/facebook/chatheads/ChatHeadTextBubbleView$4;
.super Lcom/facebook/widget/listeners/BaseAnimationListener;
.source "ChatHeadTextBubbleView.java"


# instance fields
.field final synthetic a:Lcom/facebook/chatheads/ChatHeadTextBubbleView;


# direct methods
.method constructor <init>(Lcom/facebook/chatheads/ChatHeadTextBubbleView;)V
    .locals 0
    .parameter

    .prologue
    .line 167
    iput-object p1, p0, Lcom/facebook/chatheads/ChatHeadTextBubbleView$4;->a:Lcom/facebook/chatheads/ChatHeadTextBubbleView;

    invoke-direct {p0}, Lcom/facebook/widget/listeners/BaseAnimationListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter

    .prologue
    .line 170
    iget-object v0, p0, Lcom/facebook/chatheads/ChatHeadTextBubbleView$4;->a:Lcom/facebook/chatheads/ChatHeadTextBubbleView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/facebook/chatheads/ChatHeadTextBubbleView;->setVisibility(I)V

    .line 171
    return-void
.end method
