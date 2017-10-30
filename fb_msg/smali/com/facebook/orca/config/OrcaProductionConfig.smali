.class public Lcom/facebook/orca/config/OrcaProductionConfig;
.super Lcom/facebook/orca/config/AbstractOrcaConfig;
.source "OrcaProductionConfig.java"


# instance fields
.field private final a:Lcom/facebook/orca/config/PlatformAppHttpConfig;

.field private final b:Lcom/facebook/orca/config/MqttConfig;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageInfo;Landroid/telephony/TelephonyManager;Lcom/facebook/app/UserActivityManager;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/config/AbstractOrcaConfig;-><init>(Landroid/content/pm/PackageInfo;Landroid/telephony/TelephonyManager;)V

    .line 24
    new-instance v0, Lcom/facebook/orca/config/PresenceAwarePlatformHttpConfig;

    const-string v1, "facebook.com"

    invoke-virtual {p0}, Lcom/facebook/orca/config/OrcaProductionConfig;->d()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p3, v1, v3, v2}, Lcom/facebook/orca/config/PresenceAwarePlatformHttpConfig;-><init>(Lcom/facebook/app/UserActivityManager;Ljava/lang/String;ZLjava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/orca/config/OrcaProductionConfig;->a:Lcom/facebook/orca/config/PlatformAppHttpConfig;

    .line 31
    new-instance v0, Lcom/facebook/orca/config/MqttConfig;

    const-string v1, "orcart.facebook.com"

    const/16 v2, 0x1bb

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/orca/config/MqttConfig;-><init>(Ljava/lang/String;IZ)V

    iput-object v0, p0, Lcom/facebook/orca/config/OrcaProductionConfig;->b:Lcom/facebook/orca/config/MqttConfig;

    .line 32
    return-void
.end method


# virtual methods
.method public c()Z
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x1

    return v0
.end method

.method public e()Lcom/facebook/orca/config/PlatformAppHttpConfig;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/facebook/orca/config/OrcaProductionConfig;->a:Lcom/facebook/orca/config/PlatformAppHttpConfig;

    return-object v0
.end method

.method public f()Lcom/facebook/orca/config/MqttConfig;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/facebook/orca/config/OrcaProductionConfig;->b:Lcom/facebook/orca/config/MqttConfig;

    return-object v0
.end method
