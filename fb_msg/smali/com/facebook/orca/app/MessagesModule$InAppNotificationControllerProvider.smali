.class Lcom/facebook/orca/app/MessagesModule$InAppNotificationControllerProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessagesModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/notify/InAppNotificationController;",
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
    .line 2295
    iput-object p1, p0, Lcom/facebook/orca/app/MessagesModule$InAppNotificationControllerProvider;->a:Lcom/facebook/orca/app/MessagesModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2295
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/MessagesModule$InAppNotificationControllerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/notify/InAppNotificationController;
    .locals 6

    .prologue
    .line 2300
    new-instance v0, Lcom/facebook/orca/notify/InAppNotificationController;

    const-class v1, Ljava/lang/Boolean;

    const-class v2, Lcom/facebook/orca/annotations/IsInAppNotificationsEnabled;

    invoke-virtual {p0, v1, v2}, Lcom/facebook/orca/app/MessagesModule$InAppNotificationControllerProvider;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljavax/inject/Provider;

    move-result-object v1

    const-class v2, Lcom/facebook/orca/app/OrcaAppType;

    invoke-virtual {p0, v2}, Lcom/facebook/orca/app/MessagesModule$InAppNotificationControllerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/orca/app/OrcaAppType;

    const-class v3, Lcom/facebook/orca/emoji/EmojiUtil;

    invoke-virtual {p0, v3}, Lcom/facebook/orca/app/MessagesModule$InAppNotificationControllerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/orca/emoji/EmojiUtil;

    const-class v4, Lcom/facebook/orca/threadview/ThreadViewUtil;

    invoke-virtual {p0, v4}, Lcom/facebook/orca/app/MessagesModule$InAppNotificationControllerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/orca/threadview/ThreadViewUtil;

    const-class v5, Lcom/facebook/orca/threads/ThreadSnippetUtil;

    invoke-virtual {p0, v5}, Lcom/facebook/orca/app/MessagesModule$InAppNotificationControllerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/orca/threads/ThreadSnippetUtil;

    invoke-direct/range {v0 .. v5}, Lcom/facebook/orca/notify/InAppNotificationController;-><init>(Ljavax/inject/Provider;Lcom/facebook/orca/app/OrcaAppType;Lcom/facebook/orca/emoji/EmojiUtil;Lcom/facebook/orca/threadview/ThreadViewUtil;Lcom/facebook/orca/threads/ThreadSnippetUtil;)V

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2295
    invoke-virtual {p0}, Lcom/facebook/orca/app/MessagesModule$InAppNotificationControllerProvider;->a()Lcom/facebook/orca/notify/InAppNotificationController;

    move-result-object v0

    return-object v0
.end method
