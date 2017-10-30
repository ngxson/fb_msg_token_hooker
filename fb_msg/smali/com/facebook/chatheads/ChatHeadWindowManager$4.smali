.class Lcom/facebook/chatheads/ChatHeadWindowManager$4;
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
    .line 451
    iput-object p1, p0, Lcom/facebook/chatheads/ChatHeadWindowManager$4;->a:Lcom/facebook/chatheads/ChatHeadWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 455
    iget-object v0, p0, Lcom/facebook/chatheads/ChatHeadWindowManager$4;->a:Lcom/facebook/chatheads/ChatHeadWindowManager;

    invoke-static {v0}, Lcom/facebook/chatheads/ChatHeadWindowManager;->b(Lcom/facebook/chatheads/ChatHeadWindowManager;)Lcom/facebook/chatheads/ChatHeadView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 456
    iget-object v0, p0, Lcom/facebook/chatheads/ChatHeadWindowManager$4;->a:Lcom/facebook/chatheads/ChatHeadWindowManager;

    invoke-static {v0}, Lcom/facebook/chatheads/ChatHeadWindowManager;->b(Lcom/facebook/chatheads/ChatHeadWindowManager;)Lcom/facebook/chatheads/ChatHeadView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/chatheads/ChatHeadView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/chatheads/ChatHeadWindowManager$ViewHolder;

    .line 457
    iget-object v1, v0, Lcom/facebook/chatheads/ChatHeadWindowManager$ViewHolder;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 458
    iget-object v1, p0, Lcom/facebook/chatheads/ChatHeadWindowManager$4;->a:Lcom/facebook/chatheads/ChatHeadWindowManager;

    iget-object v0, v0, Lcom/facebook/chatheads/ChatHeadWindowManager$ViewHolder;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/facebook/chatheads/ChatHeadWindowManager;->a(Lcom/facebook/chatheads/ChatHeadWindowManager;Ljava/lang/String;)V

    .line 461
    :cond_0
    return-void
.end method
