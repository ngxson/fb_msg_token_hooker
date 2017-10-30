.class Lcom/facebook/chatheads/ChatHeadTextBubbleView$1;
.super Ljava/lang/Object;
.source "ChatHeadTextBubbleView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/facebook/chatheads/ChatHeadTextBubbleView;


# direct methods
.method constructor <init>(Lcom/facebook/chatheads/ChatHeadTextBubbleView;)V
    .locals 0
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lcom/facebook/chatheads/ChatHeadTextBubbleView$1;->a:Lcom/facebook/chatheads/ChatHeadTextBubbleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/facebook/chatheads/ChatHeadTextBubbleView$1;->a:Lcom/facebook/chatheads/ChatHeadTextBubbleView;

    invoke-virtual {v0}, Lcom/facebook/chatheads/ChatHeadTextBubbleView;->b()V

    .line 41
    return-void
.end method
