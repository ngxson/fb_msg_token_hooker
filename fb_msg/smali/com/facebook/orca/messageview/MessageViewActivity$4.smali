.class Lcom/facebook/orca/messageview/MessageViewActivity$4;
.super Ljava/lang/Object;
.source "MessageViewActivity.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/FutureCallback",
        "<",
        "Lcom/facebook/orca/location/GeocodingForMessageLocationResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/messageview/MessageViewActivity;


# direct methods
.method constructor <init>(Lcom/facebook/orca/messageview/MessageViewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 318
    iput-object p1, p0, Lcom/facebook/orca/messageview/MessageViewActivity$4;->a:Lcom/facebook/orca/messageview/MessageViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/orca/location/GeocodingForMessageLocationResult;)V
    .locals 3
    .parameter

    .prologue
    .line 321
    iget-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity$4;->a:Lcom/facebook/orca/messageview/MessageViewActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/orca/messageview/MessageViewActivity;->a(Lcom/facebook/orca/messageview/MessageViewActivity;Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 322
    iget-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity$4;->a:Lcom/facebook/orca/messageview/MessageViewActivity;

    invoke-static {v0}, Lcom/facebook/orca/messageview/MessageViewActivity;->d(Lcom/facebook/orca/messageview/MessageViewActivity;)Lcom/facebook/orca/common/ui/util/MessageRenderingUtil;

    move-result-object v0

    invoke-virtual {p1}, Lcom/facebook/orca/location/GeocodingForMessageLocationResult;->a()Lcom/facebook/orca/location/GeolocationInfo;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/orca/location/GeocodingForMessageLocationResult;->b()Lcom/facebook/orca/location/GeolocationInfo;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/common/ui/util/MessageRenderingUtil;->a(Lcom/facebook/orca/location/GeolocationInfo;Lcom/facebook/orca/location/GeolocationInfo;)Ljava/lang/String;

    move-result-object v0

    .line 326
    if-eqz v0, :cond_0

    .line 327
    iget-object v1, p0, Lcom/facebook/orca/messageview/MessageViewActivity$4;->a:Lcom/facebook/orca/messageview/MessageViewActivity;

    invoke-static {v1}, Lcom/facebook/orca/messageview/MessageViewActivity;->e(Lcom/facebook/orca/messageview/MessageViewActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 329
    :cond_0
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 318
    check-cast p1, Lcom/facebook/orca/location/GeocodingForMessageLocationResult;

    invoke-virtual {p0, p1}, Lcom/facebook/orca/messageview/MessageViewActivity$4;->a(Lcom/facebook/orca/location/GeocodingForMessageLocationResult;)V

    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 2
    .parameter

    .prologue
    .line 333
    iget-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity$4;->a:Lcom/facebook/orca/messageview/MessageViewActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/orca/messageview/MessageViewActivity;->a(Lcom/facebook/orca/messageview/MessageViewActivity;Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 334
    return-void
.end method
