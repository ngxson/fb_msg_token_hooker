.class Lcom/facebook/orca/messageview/MessageViewActivity$2;
.super Ljava/lang/Object;
.source "MessageViewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/facebook/orca/messageview/MessageViewActivity;


# direct methods
.method constructor <init>(Lcom/facebook/orca/messageview/MessageViewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 202
    iput-object p1, p0, Lcom/facebook/orca/messageview/MessageViewActivity$2;->a:Lcom/facebook/orca/messageview/MessageViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter

    .prologue
    .line 205
    iget-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity$2;->a:Lcom/facebook/orca/messageview/MessageViewActivity;

    invoke-static {v0}, Lcom/facebook/orca/messageview/MessageViewActivity;->b(Lcom/facebook/orca/messageview/MessageViewActivity;)Lcom/facebook/orca/threads/Message;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/threads/Message;->k()Lcom/facebook/orca/location/Coordinates;

    move-result-object v0

    .line 207
    iget-object v1, p0, Lcom/facebook/orca/messageview/MessageViewActivity$2;->a:Lcom/facebook/orca/messageview/MessageViewActivity;

    invoke-static {v1}, Lcom/facebook/orca/messageview/MessageViewActivity;->b(Lcom/facebook/orca/messageview/MessageViewActivity;)Lcom/facebook/orca/threads/Message;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/orca/threads/Message;->f()Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/orca/threads/ParticipantInfo;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/facebook/orca/location/Coordinates;->b()D

    move-result-wide v2

    invoke-virtual {v0}, Lcom/facebook/orca/location/Coordinates;->c()D

    move-result-wide v4

    invoke-static {v1, v2, v3, v4, v5}, Lcom/facebook/orca/common/util/LocationUtils;->a(Ljava/lang/String;DD)Landroid/net/Uri;

    move-result-object v0

    .line 209
    if-nez v0, :cond_0

    .line 215
    :goto_0
    return-void

    .line 212
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 213
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 214
    iget-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity$2;->a:Lcom/facebook/orca/messageview/MessageViewActivity;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/messageview/MessageViewActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
