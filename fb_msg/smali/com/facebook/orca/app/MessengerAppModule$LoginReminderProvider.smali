.class Lcom/facebook/orca/app/MessengerAppModule$LoginReminderProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessengerAppModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/app/LoginReminderManager;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/app/MessengerAppModule;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/MessengerAppModule;)V
    .locals 0
    .parameter

    .prologue
    .line 395
    iput-object p1, p0, Lcom/facebook/orca/app/MessengerAppModule$LoginReminderProvider;->a:Lcom/facebook/orca/app/MessengerAppModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/MessengerAppModule;Lcom/facebook/orca/app/MessengerAppModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 395
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/MessengerAppModule$LoginReminderProvider;-><init>(Lcom/facebook/orca/app/MessengerAppModule;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/app/LoginReminderManager;
    .locals 6

    .prologue
    .line 399
    new-instance v0, Lcom/facebook/orca/app/LoginReminderManager;

    iget-object v1, p0, Lcom/facebook/orca/app/MessengerAppModule$LoginReminderProvider;->a:Lcom/facebook/orca/app/MessengerAppModule;

    invoke-static {v1}, Lcom/facebook/orca/app/MessengerAppModule;->a(Lcom/facebook/orca/app/MessengerAppModule;)Landroid/app/Application;

    move-result-object v1

    const-class v2, Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {p0, v2}, Lcom/facebook/orca/app/MessengerAppModule$LoginReminderProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/orca/cache/DataCache;

    const-class v3, Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-virtual {p0, v3}, Lcom/facebook/orca/app/MessengerAppModule$LoginReminderProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    new-instance v4, Lcom/facebook/orca/notify/OrcaMessagingNotificationPreferences;

    const-class v5, Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-virtual {p0, v5}, Lcom/facebook/orca/app/MessengerAppModule$LoginReminderProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-direct {v4, v5}, Lcom/facebook/orca/notify/OrcaMessagingNotificationPreferences;-><init>(Lcom/facebook/orca/prefs/OrcaSharedPreferences;)V

    const-class v5, Lcom/facebook/orca/analytics/AnalyticsLogger;

    invoke-virtual {p0, v5}, Lcom/facebook/orca/app/MessengerAppModule$LoginReminderProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/orca/analytics/AnalyticsLogger;

    invoke-direct/range {v0 .. v5}, Lcom/facebook/orca/app/LoginReminderManager;-><init>(Landroid/content/Context;Lcom/facebook/orca/cache/DataCache;Lcom/facebook/orca/prefs/OrcaSharedPreferences;Lcom/facebook/orca/notify/MessagingNotificationPreferences;Lcom/facebook/orca/analytics/AnalyticsLogger;)V

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 395
    invoke-virtual {p0}, Lcom/facebook/orca/app/MessengerAppModule$LoginReminderProvider;->a()Lcom/facebook/orca/app/LoginReminderManager;

    move-result-object v0

    return-object v0
.end method
