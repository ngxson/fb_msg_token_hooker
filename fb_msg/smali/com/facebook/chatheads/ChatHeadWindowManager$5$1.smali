.class Lcom/facebook/chatheads/ChatHeadWindowManager$5$1;
.super Lcom/nineoldandroids/animation/AnimatorListenerAdapter;
.source "ChatHeadWindowManager.java"


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/facebook/chatheads/ChatHeadWindowManager$5;


# direct methods
.method constructor <init>(Lcom/facebook/chatheads/ChatHeadWindowManager$5;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 476
    iput-object p1, p0, Lcom/facebook/chatheads/ChatHeadWindowManager$5$1;->b:Lcom/facebook/chatheads/ChatHeadWindowManager$5;

    iput-object p2, p0, Lcom/facebook/chatheads/ChatHeadWindowManager$5$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/nineoldandroids/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/nineoldandroids/animation/Animator;)V
    .locals 2
    .parameter

    .prologue
    .line 479
    iget-object v0, p0, Lcom/facebook/chatheads/ChatHeadWindowManager$5$1;->b:Lcom/facebook/chatheads/ChatHeadWindowManager$5;

    iget-object v0, v0, Lcom/facebook/chatheads/ChatHeadWindowManager$5;->a:Lcom/facebook/chatheads/ChatHeadWindowManager;

    iget-object v1, p0, Lcom/facebook/chatheads/ChatHeadWindowManager$5$1;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/facebook/chatheads/ChatHeadWindowManager;->b(Lcom/facebook/chatheads/ChatHeadWindowManager;Ljava/lang/String;)V

    .line 480
    return-void
.end method
