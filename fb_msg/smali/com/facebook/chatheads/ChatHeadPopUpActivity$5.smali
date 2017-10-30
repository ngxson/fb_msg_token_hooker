.class Lcom/facebook/chatheads/ChatHeadPopUpActivity$5;
.super Ljava/lang/Object;
.source "ChatHeadPopUpActivity.java"

# interfaces
.implements Lcom/facebook/orca/threadview/ThreadViewLoader$Callback;


# instance fields
.field final synthetic a:Lcom/facebook/chatheads/ChatHeadPopUpActivity;


# direct methods
.method constructor <init>(Lcom/facebook/chatheads/ChatHeadPopUpActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 213
    iput-object p1, p0, Lcom/facebook/chatheads/ChatHeadPopUpActivity$5;->a:Lcom/facebook/chatheads/ChatHeadPopUpActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/orca/threads/ThreadSummary;)V
    .locals 0
    .parameter

    .prologue
    .line 226
    return-void
.end method

.method public a(Lcom/facebook/orca/threadview/ThreadViewLoader$LoadType;)V
    .locals 1
    .parameter

    .prologue
    .line 216
    iget-object v0, p0, Lcom/facebook/chatheads/ChatHeadPopUpActivity$5;->a:Lcom/facebook/chatheads/ChatHeadPopUpActivity;

    invoke-static {v0, p1}, Lcom/facebook/chatheads/ChatHeadPopUpActivity;->a(Lcom/facebook/chatheads/ChatHeadPopUpActivity;Lcom/facebook/orca/threadview/ThreadViewLoader$LoadType;)V

    .line 217
    return-void
.end method

.method public a(Lcom/facebook/orca/threadview/ThreadViewLoader$LoadType;Lcom/facebook/orca/threadview/ThreadViewLoader$Error;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 235
    iget-object v0, p0, Lcom/facebook/chatheads/ChatHeadPopUpActivity$5;->a:Lcom/facebook/chatheads/ChatHeadPopUpActivity;

    invoke-static {v0, p1, p2}, Lcom/facebook/chatheads/ChatHeadPopUpActivity;->a(Lcom/facebook/chatheads/ChatHeadPopUpActivity;Lcom/facebook/orca/threadview/ThreadViewLoader$LoadType;Lcom/facebook/orca/threadview/ThreadViewLoader$Error;)V

    .line 236
    return-void
.end method

.method public a(Lcom/facebook/orca/threadview/ThreadViewLoader$LoadType;Lcom/facebook/orca/threadview/ThreadViewLoader$Result;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 221
    iget-object v0, p0, Lcom/facebook/chatheads/ChatHeadPopUpActivity$5;->a:Lcom/facebook/chatheads/ChatHeadPopUpActivity;

    invoke-static {v0, p1, p2}, Lcom/facebook/chatheads/ChatHeadPopUpActivity;->a(Lcom/facebook/chatheads/ChatHeadPopUpActivity;Lcom/facebook/orca/threadview/ThreadViewLoader$LoadType;Lcom/facebook/orca/threadview/ThreadViewLoader$Result;)V

    .line 222
    return-void
.end method

.method public b(Lcom/facebook/orca/threadview/ThreadViewLoader$LoadType;)V
    .locals 1
    .parameter

    .prologue
    .line 230
    iget-object v0, p0, Lcom/facebook/chatheads/ChatHeadPopUpActivity$5;->a:Lcom/facebook/chatheads/ChatHeadPopUpActivity;

    invoke-static {v0, p1}, Lcom/facebook/chatheads/ChatHeadPopUpActivity;->b(Lcom/facebook/chatheads/ChatHeadPopUpActivity;Lcom/facebook/orca/threadview/ThreadViewLoader$LoadType;)V

    .line 231
    return-void
.end method
