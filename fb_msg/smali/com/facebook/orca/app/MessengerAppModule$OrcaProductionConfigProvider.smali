.class Lcom/facebook/orca/app/MessengerAppModule$OrcaProductionConfigProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessengerAppModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/config/OrcaProductionConfig;",
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
    .line 312
    iput-object p1, p0, Lcom/facebook/orca/app/MessengerAppModule$OrcaProductionConfigProvider;->a:Lcom/facebook/orca/app/MessengerAppModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/MessengerAppModule;Lcom/facebook/orca/app/MessengerAppModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 312
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/MessengerAppModule$OrcaProductionConfigProvider;-><init>(Lcom/facebook/orca/app/MessengerAppModule;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/config/OrcaProductionConfig;
    .locals 4

    .prologue
    .line 316
    new-instance v3, Lcom/facebook/orca/config/OrcaProductionConfig;

    const-class v0, Landroid/content/pm/PackageInfo;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessengerAppModule$OrcaProductionConfigProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    const-class v1, Landroid/telephony/TelephonyManager;

    const-class v2, Lcom/facebook/orca/annotations/FromApplication;

    invoke-virtual {p0, v1, v2}, Lcom/facebook/orca/app/MessengerAppModule$OrcaProductionConfigProvider;->b(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    const-class v2, Lcom/facebook/app/UserActivityManager;

    invoke-virtual {p0, v2}, Lcom/facebook/orca/app/MessengerAppModule$OrcaProductionConfigProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/app/UserActivityManager;

    invoke-direct {v3, v0, v1, v2}, Lcom/facebook/orca/config/OrcaProductionConfig;-><init>(Landroid/content/pm/PackageInfo;Landroid/telephony/TelephonyManager;Lcom/facebook/app/UserActivityManager;)V

    return-object v3
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 312
    invoke-virtual {p0}, Lcom/facebook/orca/app/MessengerAppModule$OrcaProductionConfigProvider;->a()Lcom/facebook/orca/config/OrcaProductionConfig;

    move-result-object v0

    return-object v0
.end method
