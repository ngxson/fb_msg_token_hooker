.class Lcom/facebook/chatheads/ChatHeadPopUpActivity$1;
.super Ljava/lang/Object;
.source "ChatHeadPopUpActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/facebook/chatheads/ChatHeadPopUpActivity;


# direct methods
.method constructor <init>(Lcom/facebook/chatheads/ChatHeadPopUpActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/facebook/chatheads/ChatHeadPopUpActivity$1;->a:Lcom/facebook/chatheads/ChatHeadPopUpActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/facebook/chatheads/ChatHeadPopUpActivity$1;->a:Lcom/facebook/chatheads/ChatHeadPopUpActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/chatheads/ChatHeadPopUpActivity;->a(Lcom/facebook/chatheads/ChatHeadPopUpActivity;Z)Z

    .line 67
    iget-object v0, p0, Lcom/facebook/chatheads/ChatHeadPopUpActivity$1;->a:Lcom/facebook/chatheads/ChatHeadPopUpActivity;

    invoke-static {v0}, Lcom/facebook/chatheads/ChatHeadPopUpActivity;->a(Lcom/facebook/chatheads/ChatHeadPopUpActivity;)V

    .line 68
    return-void
.end method
