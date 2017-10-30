.class Lcom/facebook/chatheads/ChatHeadWindowManager$5;
.super Ljava/lang/Object;
.source "ChatHeadWindowManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/facebook/chatheads/ChatHeadWindowManager;


# direct methods
.method constructor <init>(Lcom/facebook/chatheads/ChatHeadWindowManager;)V
    .locals 0
    .parameter

    .prologue
    .line 468
    iput-object p1, p0, Lcom/facebook/chatheads/ChatHeadWindowManager$5;->a:Lcom/facebook/chatheads/ChatHeadWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 472
    iget-object v1, p0, Lcom/facebook/chatheads/ChatHeadWindowManager$5;->a:Lcom/facebook/chatheads/ChatHeadWindowManager;

    move-object v0, p1

    check-cast v0, Lcom/facebook/chatheads/ChatHeadView;

    invoke-static {v1, v0}, Lcom/facebook/chatheads/ChatHeadWindowManager;->a(Lcom/facebook/chatheads/ChatHeadWindowManager;Lcom/facebook/chatheads/ChatHeadView;)Ljava/lang/String;

    move-result-object v0

    .line 473
    if-eqz v0, :cond_0

    .line 475
    check-cast p1, Lcom/facebook/chatheads/ChatHeadView;

    invoke-virtual {p1}, Lcom/facebook/chatheads/ChatHeadView;->a()Lcom/nineoldandroids/animation/Animator;

    move-result-object v1

    .line 476
    new-instance v2, Lcom/facebook/chatheads/ChatHeadWindowManager$5$1;

    invoke-direct {v2, p0, v0}, Lcom/facebook/chatheads/ChatHeadWindowManager$5$1;-><init>(Lcom/facebook/chatheads/ChatHeadWindowManager$5;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/nineoldandroids/animation/Animator;->a(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)V

    .line 483
    :cond_0
    return-void
.end method
