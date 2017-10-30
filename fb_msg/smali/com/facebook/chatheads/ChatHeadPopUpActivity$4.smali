.class Lcom/facebook/chatheads/ChatHeadPopUpActivity$4;
.super Ljava/lang/Object;
.source "ChatHeadPopUpActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Lcom/facebook/chatheads/ChatHeadPopUpActivity;


# direct methods
.method constructor <init>(Lcom/facebook/chatheads/ChatHeadPopUpActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 188
    iput-object p1, p0, Lcom/facebook/chatheads/ChatHeadPopUpActivity$4;->a:Lcom/facebook/chatheads/ChatHeadPopUpActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .parameter

    .prologue
    .line 194
    iget-object v0, p0, Lcom/facebook/chatheads/ChatHeadPopUpActivity$4;->a:Lcom/facebook/chatheads/ChatHeadPopUpActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/chatheads/ChatHeadPopUpActivity;->moveTaskToBack(Z)Z

    .line 195
    iget-object v0, p0, Lcom/facebook/chatheads/ChatHeadPopUpActivity$4;->a:Lcom/facebook/chatheads/ChatHeadPopUpActivity;

    const/4 v1, 0x0

    sget v2, Lcom/facebook/R$anim;->chat_heads_activity_transition_out:I

    invoke-virtual {v0, v1, v2}, Lcom/facebook/chatheads/ChatHeadPopUpActivity;->overridePendingTransition(II)V

    .line 196
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 199
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 190
    return-void
.end method
