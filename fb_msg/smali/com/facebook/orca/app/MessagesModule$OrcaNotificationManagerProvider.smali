.class Lcom/facebook/orca/app/MessagesModule$OrcaNotificationManagerProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessagesModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/notify/OrcaNotificationManager;",
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
    .line 2225
    iput-object p1, p0, Lcom/facebook/orca/app/MessagesModule$OrcaNotificationManagerProvider;->a:Lcom/facebook/orca/app/MessagesModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2225
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/MessagesModule$OrcaNotificationManagerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/notify/OrcaNotificationManager;
    .locals 12

    .prologue
    .line 2229
    new-instance v0, Lcom/facebook/orca/notify/OrcaNotificationManager;

    iget-object v1, p0, Lcom/facebook/orca/app/MessagesModule$OrcaNotificationManagerProvider;->a:Lcom/facebook/orca/app/MessagesModule;

    invoke-static {v1}, Lcom/facebook/orca/app/MessagesModule;->a(Lcom/facebook/orca/app/MessagesModule;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/facebook/orca/notify/NotificationSettingsUtil;

    invoke-virtual {p0, v2}, Lcom/facebook/orca/app/MessagesModule$OrcaNotificationManagerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/orca/notify/NotificationSettingsUtil;

    const-class v3, Lcom/facebook/app/UserActivityManager;

    invoke-virtual {p0, v3}, Lcom/facebook/orca/app/MessagesModule$OrcaNotificationManagerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/app/UserActivityManager;

    const-class v4, Lcom/facebook/orca/notify/MessagingNotificationRenderer;

    invoke-virtual {p0, v4}, Lcom/facebook/orca/app/MessagesModule$OrcaNotificationManagerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/orca/notify/MessagingNotificationRenderer;

    const-class v5, Lcom/facebook/orca/notify/InAppNotificationController;

    invoke-virtual {p0, v5}, Lcom/facebook/orca/app/MessagesModule$OrcaNotificationManagerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/orca/notify/InAppNotificationController;

    const-class v6, Lcom/facebook/orca/common/util/AndroidThreadUtil;

    invoke-virtual {p0, v6}, Lcom/facebook/orca/app/MessagesModule$OrcaNotificationManagerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/facebook/orca/common/util/AndroidThreadUtil;

    const-class v7, Lcom/facebook/orca/auth/AuthDataStore;

    invoke-virtual {p0, v7}, Lcom/facebook/orca/app/MessagesModule$OrcaNotificationManagerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/facebook/orca/auth/AuthDataStore;

    const-class v8, Ljava/lang/String;

    const-class v9, Lcom/facebook/orca/annotations/MessagesForegroundProviderUri;

    invoke-virtual {p0, v8, v9}, Lcom/facebook/orca/app/MessagesModule$OrcaNotificationManagerProvider;->b(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-class v9, Lcom/facebook/orca/analytics/ReliabilityAnalyticsLogger;

    invoke-virtual {p0, v9}, Lcom/facebook/orca/app/MessagesModule$OrcaNotificationManagerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/facebook/orca/analytics/ReliabilityAnalyticsLogger;

    const-class v10, Ljava/lang/Boolean;

    const-class v11, Lcom/facebook/orca/annotations/IsSmsNotifyEnabled;

    invoke-virtual {p0, v10, v11}, Lcom/facebook/orca/app/MessagesModule$OrcaNotificationManagerProvider;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljavax/inject/Provider;

    move-result-object v10

    invoke-direct/range {v0 .. v10}, Lcom/facebook/orca/notify/OrcaNotificationManager;-><init>(Landroid/content/Context;Lcom/facebook/orca/notify/NotificationSettingsUtil;Lcom/facebook/app/UserActivityManager;Lcom/facebook/orca/notify/MessagingNotificationRenderer;Lcom/facebook/orca/notify/InAppNotificationController;Lcom/facebook/orca/common/util/AndroidThreadUtil;Lcom/facebook/orca/auth/AuthDataStore;Ljava/lang/String;Lcom/facebook/orca/analytics/ReliabilityAnalyticsLogger;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2225
    invoke-virtual {p0}, Lcom/facebook/orca/app/MessagesModule$OrcaNotificationManagerProvider;->a()Lcom/facebook/orca/notify/OrcaNotificationManager;

    move-result-object v0

    return-object v0
.end method
