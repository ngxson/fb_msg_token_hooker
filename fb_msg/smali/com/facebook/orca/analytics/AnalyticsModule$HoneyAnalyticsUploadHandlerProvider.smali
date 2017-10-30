.class Lcom/facebook/orca/analytics/AnalyticsModule$HoneyAnalyticsUploadHandlerProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "AnalyticsModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/analytics/HoneyAnalyticsUploadHandler;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/analytics/AnalyticsModule;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/analytics/AnalyticsModule;)V
    .locals 0
    .parameter

    .prologue
    .line 225
    iput-object p1, p0, Lcom/facebook/orca/analytics/AnalyticsModule$HoneyAnalyticsUploadHandlerProvider;->a:Lcom/facebook/orca/analytics/AnalyticsModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/analytics/AnalyticsModule;Lcom/facebook/orca/analytics/AnalyticsModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 225
    invoke-direct {p0, p1}, Lcom/facebook/orca/analytics/AnalyticsModule$HoneyAnalyticsUploadHandlerProvider;-><init>(Lcom/facebook/orca/analytics/AnalyticsModule;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/analytics/HoneyAnalyticsUploadHandler;
    .locals 10

    .prologue
    .line 230
    new-instance v0, Lcom/facebook/orca/analytics/HoneyAnalyticsUploadHandler;

    const-class v1, Lcom/facebook/config/AppBuildInfo;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/analytics/AnalyticsModule$HoneyAnalyticsUploadHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/config/AppBuildInfo;

    const-class v2, Lcom/facebook/orca/config/PlatformAppConfig;

    invoke-virtual {p0, v2}, Lcom/facebook/orca/analytics/AnalyticsModule$HoneyAnalyticsUploadHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/orca/config/PlatformAppConfig;

    const-class v3, Lcom/facebook/orca/analytics/AnalyticsStorage;

    invoke-virtual {p0, v3}, Lcom/facebook/orca/analytics/AnalyticsModule$HoneyAnalyticsUploadHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/orca/analytics/AnalyticsStorage;

    const-class v4, Landroid/telephony/TelephonyManager;

    const-class v5, Lcom/facebook/orca/annotations/FromApplication;

    invoke-virtual {p0, v4, v5}, Lcom/facebook/orca/analytics/AnalyticsModule$HoneyAnalyticsUploadHandlerProvider;->b(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    const-class v5, Lcom/facebook/orca/common/util/UniqueIdForDeviceGenerator;

    invoke-virtual {p0, v5}, Lcom/facebook/orca/analytics/AnalyticsModule$HoneyAnalyticsUploadHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/orca/common/util/UniqueIdForDeviceGenerator;

    const-class v6, Lcom/facebook/orca/net/OrcaNetworkManager;

    invoke-virtual {p0, v6}, Lcom/facebook/orca/analytics/AnalyticsModule$HoneyAnalyticsUploadHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/facebook/orca/net/OrcaNetworkManager;

    const-class v7, Lcom/facebook/orca/protocol/base/SingleMethodRunner;

    invoke-virtual {p0, v7}, Lcom/facebook/orca/analytics/AnalyticsModule$HoneyAnalyticsUploadHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/facebook/orca/protocol/base/SingleMethodRunner;

    const-class v8, Lcom/facebook/orca/analytics/SendAnalyticLogsMethod;

    invoke-virtual {p0, v8}, Lcom/facebook/orca/analytics/AnalyticsModule$HoneyAnalyticsUploadHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/facebook/orca/analytics/SendAnalyticLogsMethod;

    const-class v9, Lcom/facebook/orca/common/util/Clock;

    invoke-virtual {p0, v9}, Lcom/facebook/orca/analytics/AnalyticsModule$HoneyAnalyticsUploadHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/facebook/orca/common/util/Clock;

    invoke-direct/range {v0 .. v9}, Lcom/facebook/orca/analytics/HoneyAnalyticsUploadHandler;-><init>(Lcom/facebook/config/AppBuildInfo;Lcom/facebook/orca/config/PlatformAppConfig;Lcom/facebook/orca/analytics/AnalyticsStorage;Landroid/telephony/TelephonyManager;Lcom/facebook/orca/common/util/UniqueIdForDeviceGenerator;Lcom/facebook/orca/net/OrcaNetworkManager;Lcom/facebook/orca/protocol/base/SingleMethodRunner;Lcom/facebook/orca/analytics/SendAnalyticLogsMethod;Lcom/facebook/orca/common/util/Clock;)V

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 225
    invoke-virtual {p0}, Lcom/facebook/orca/analytics/AnalyticsModule$HoneyAnalyticsUploadHandlerProvider;->a()Lcom/facebook/orca/analytics/HoneyAnalyticsUploadHandler;

    move-result-object v0

    return-object v0
.end method
