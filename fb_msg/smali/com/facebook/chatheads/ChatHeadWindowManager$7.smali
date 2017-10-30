.class Lcom/facebook/chatheads/ChatHeadWindowManager$7;
.super Lcom/nineoldandroids/animation/AnimatorListenerAdapter;
.source "ChatHeadWindowManager.java"


# instance fields
.field final synthetic a:Lcom/facebook/chatheads/ChatHeadView;

.field final synthetic b:Lcom/facebook/chatheads/ChatHeadWindowManager;


# direct methods
.method constructor <init>(Lcom/facebook/chatheads/ChatHeadWindowManager;Lcom/facebook/chatheads/ChatHeadView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 736
    iput-object p1, p0, Lcom/facebook/chatheads/ChatHeadWindowManager$7;->b:Lcom/facebook/chatheads/ChatHeadWindowManager;

    iput-object p2, p0, Lcom/facebook/chatheads/ChatHeadWindowManager$7;->a:Lcom/facebook/chatheads/ChatHeadView;

    invoke-direct {p0}, Lcom/nineoldandroids/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/nineoldandroids/animation/Animator;)V
    .locals 2
    .parameter

    .prologue
    .line 739
    iget-object v0, p0, Lcom/facebook/chatheads/ChatHeadWindowManager$7;->b:Lcom/facebook/chatheads/ChatHeadWindowManager;

    iget-object v1, p0, Lcom/facebook/chatheads/ChatHeadWindowManager$7;->a:Lcom/facebook/chatheads/ChatHeadView;

    invoke-static {v0, v1}, Lcom/facebook/chatheads/ChatHeadWindowManager;->e(Lcom/facebook/chatheads/ChatHeadWindowManager;Lcom/facebook/chatheads/ChatHeadView;)V

    .line 740
    return-void
.end method
