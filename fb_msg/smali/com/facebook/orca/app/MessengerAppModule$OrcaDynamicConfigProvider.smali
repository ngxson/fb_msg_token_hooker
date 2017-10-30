.class Lcom/facebook/orca/app/MessengerAppModule$OrcaDynamicConfigProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessengerAppModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/config/OrcaDynamicConfig;",
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
    .line 296
    iput-object p1, p0, Lcom/facebook/orca/app/MessengerAppModule$OrcaDynamicConfigProvider;->a:Lcom/facebook/orca/app/MessengerAppModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/MessengerAppModule;Lcom/facebook/orca/app/MessengerAppModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 296
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/MessengerAppModule$OrcaDynamicConfigProvider;-><init>(Lcom/facebook/orca/app/MessengerAppModule;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/config/OrcaDynamicConfig;
    .locals 8

    .prologue
    .line 300
    new-instance v0, Lcom/facebook/orca/config/OrcaDynamicConfig;

    const-class v1, Lcom/facebook/orca/config/OrcaProductionConfig;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessengerAppModule$OrcaDynamicConfigProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/config/OrcaProductionConfig;

    const-class v2, Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-virtual {p0, v2}, Lcom/facebook/orca/app/MessengerAppModule$OrcaDynamicConfigProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    const-class v3, Landroid/content/pm/PackageInfo;

    invoke-virtual {p0, v3}, Lcom/facebook/orca/app/MessengerAppModule$OrcaDynamicConfigProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    const-class v4, Lcom/facebook/orca/app/OrcaActivityBroadcaster;

    invoke-virtual {p0, v4}, Lcom/facebook/orca/app/MessengerAppModule$OrcaDynamicConfigProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/orca/app/OrcaActivityBroadcaster;

    const-class v5, Lcom/facebook/common/util/TriState;

    const-class v6, Lcom/facebook/orca/annotations/IsMeUserAnEmployee;

    invoke-virtual {p0, v5, v6}, Lcom/facebook/orca/app/MessengerAppModule$OrcaDynamicConfigProvider;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljavax/inject/Provider;

    move-result-object v5

    const-class v6, Landroid/telephony/TelephonyManager;

    const-class v7, Lcom/facebook/orca/annotations/FromApplication;

    invoke-virtual {p0, v6, v7}, Lcom/facebook/orca/app/MessengerAppModule$OrcaDynamicConfigProvider;->b(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    const-class v7, Lcom/facebook/app/UserActivityManager;

    invoke-virtual {p0, v7}, Lcom/facebook/orca/app/MessengerAppModule$OrcaDynamicConfigProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/facebook/app/UserActivityManager;

    invoke-direct/range {v0 .. v7}, Lcom/facebook/orca/config/OrcaDynamicConfig;-><init>(Lcom/facebook/orca/config/OrcaProductionConfig;Lcom/facebook/orca/prefs/OrcaSharedPreferences;Landroid/content/pm/PackageInfo;Lcom/facebook/orca/app/OrcaActivityBroadcaster;Ljavax/inject/Provider;Landroid/telephony/TelephonyManager;Lcom/facebook/app/UserActivityManager;)V

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 296
    invoke-virtual {p0}, Lcom/facebook/orca/app/MessengerAppModule$OrcaDynamicConfigProvider;->a()Lcom/facebook/orca/config/OrcaDynamicConfig;

    move-result-object v0

    return-object v0
.end method
