.class Lcom/facebook/orca/app/MessagesModule$InAppNotificationControllerActivityListenerProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessagesModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/notify/InAppNotificationController$MyActivityListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/app/MessagesModule;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/MessagesModule;)V
    .locals 0
    .parameter

    .prologue
    .line 2310
    iput-object p1, p0, Lcom/facebook/orca/app/MessagesModule$InAppNotificationControllerActivityListenerProvider;->a:Lcom/facebook/orca/app/MessagesModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2310
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/MessagesModule$InAppNotificationControllerActivityListenerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/notify/InAppNotificationController$MyActivityListener;
    .locals 1

    .prologue
    .line 2315
    const-class v0, Lcom/facebook/orca/notify/InAppNotificationController;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule$InAppNotificationControllerActivityListenerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/notify/InAppNotificationController;

    invoke-virtual {v0}, Lcom/facebook/orca/notify/InAppNotificationController;->a()Lcom/facebook/orca/notify/InAppNotificationController$MyActivityListener;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2310
    invoke-virtual {p0}, Lcom/facebook/orca/app/MessagesModule$InAppNotificationControllerActivityListenerProvider;->a()Lcom/facebook/orca/notify/InAppNotificationController$MyActivityListener;

    move-result-object v0

    return-object v0
.end method
