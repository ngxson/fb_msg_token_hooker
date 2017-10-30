.class Lcom/facebook/chatheads/ChatHeadService$1;
.super Ljava/lang/Object;
.source "ChatHeadService.java"

# interfaces
.implements Lcom/facebook/chatheads/ChatHeadWindowManager$ChatHeadWindowManagerListener;


# instance fields
.field final synthetic a:Lcom/facebook/chatheads/ChatHeadService;


# direct methods
.method constructor <init>(Lcom/facebook/chatheads/ChatHeadService;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/facebook/chatheads/ChatHeadService$1;->a:Lcom/facebook/chatheads/ChatHeadService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/facebook/chatheads/ChatHeadService$1;->a:Lcom/facebook/chatheads/ChatHeadService;

    iget-object v1, p0, Lcom/facebook/chatheads/ChatHeadService$1;->a:Lcom/facebook/chatheads/ChatHeadService;

    invoke-static {v1}, Lcom/facebook/chatheads/ChatHeadService;->a(Lcom/facebook/chatheads/ChatHeadService;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/chatheads/ChatHeadService;->stopSelf(I)V

    .line 44
    return-void
.end method
