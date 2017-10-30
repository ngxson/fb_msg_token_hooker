.class Lcom/facebook/orca/app/MessengerAppModule$AnalyticsConfigProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessengerAppModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/analytics/AnalyticsConfig;",
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
    .line 519
    iput-object p1, p0, Lcom/facebook/orca/app/MessengerAppModule$AnalyticsConfigProvider;->a:Lcom/facebook/orca/app/MessengerAppModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/MessengerAppModule;Lcom/facebook/orca/app/MessengerAppModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 519
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/MessengerAppModule$AnalyticsConfigProvider;-><init>(Lcom/facebook/orca/app/MessengerAppModule;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/analytics/AnalyticsConfig;
    .locals 4

    .prologue
    .line 523
    new-instance v2, Lcom/facebook/orca/app/OrcaAnalyticsConfig;

    const-class v0, Lcom/facebook/orca/users/User;

    const-class v1, Lcom/facebook/orca/annotations/MeUser;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/orca/app/MessengerAppModule$AnalyticsConfigProvider;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljavax/inject/Provider;

    move-result-object v3

    const-class v0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessengerAppModule$AnalyticsConfigProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    const-class v1, Lcom/facebook/orca/app/AppInitLock;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessengerAppModule$AnalyticsConfigProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/app/AppInitLock;

    invoke-direct {v2, v3, v0, v1}, Lcom/facebook/orca/app/OrcaAnalyticsConfig;-><init>(Ljavax/inject/Provider;Lcom/facebook/orca/prefs/OrcaSharedPreferences;Lcom/facebook/orca/app/AppInitLock;)V

    return-object v2
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 519
    invoke-virtual {p0}, Lcom/facebook/orca/app/MessengerAppModule$AnalyticsConfigProvider;->a()Lcom/facebook/orca/analytics/AnalyticsConfig;

    move-result-object v0

    return-object v0
.end method
