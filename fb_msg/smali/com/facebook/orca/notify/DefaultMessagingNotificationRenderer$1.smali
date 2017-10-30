.class Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer$1;
.super Ljava/lang/Object;
.source "DefaultMessagingNotificationRenderer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field final synthetic a:Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;


# direct methods
.method constructor <init>(Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;)V
    .locals 0
    .parameter

    .prologue
    .line 168
    iput-object p1, p0, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer$1;->a:Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 171
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    .line 172
    return-void
.end method
