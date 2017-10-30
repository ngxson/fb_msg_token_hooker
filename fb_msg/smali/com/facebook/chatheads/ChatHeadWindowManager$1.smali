.class Lcom/facebook/chatheads/ChatHeadWindowManager$1;
.super Ljava/lang/Object;
.source "ChatHeadWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/facebook/chatheads/ChatHeadWindowManager;


# direct methods
.method constructor <init>(Lcom/facebook/chatheads/ChatHeadWindowManager;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/facebook/chatheads/ChatHeadWindowManager$1;->a:Lcom/facebook/chatheads/ChatHeadWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/facebook/chatheads/ChatHeadWindowManager$1;->a:Lcom/facebook/chatheads/ChatHeadWindowManager;

    invoke-static {v0}, Lcom/facebook/chatheads/ChatHeadWindowManager;->a(Lcom/facebook/chatheads/ChatHeadWindowManager;)V

    .line 66
    return-void
.end method
