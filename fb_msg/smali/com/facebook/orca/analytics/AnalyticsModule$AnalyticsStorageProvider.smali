.class Lcom/facebook/orca/analytics/AnalyticsModule$AnalyticsStorageProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "AnalyticsModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/analytics/AnalyticsStorage;",
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
    .line 142
    iput-object p1, p0, Lcom/facebook/orca/analytics/AnalyticsModule$AnalyticsStorageProvider;->a:Lcom/facebook/orca/analytics/AnalyticsModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/analytics/AnalyticsModule;Lcom/facebook/orca/analytics/AnalyticsModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 142
    invoke-direct {p0, p1}, Lcom/facebook/orca/analytics/AnalyticsModule$AnalyticsStorageProvider;-><init>(Lcom/facebook/orca/analytics/AnalyticsModule;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/analytics/AnalyticsStorage;
    .locals 2

    .prologue
    .line 146
    new-instance v1, Lcom/facebook/orca/analytics/AnalyticsStorage;

    const-class v0, Lcom/facebook/orca/analytics/AnalyticsDatabaseSupplier;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/analytics/AnalyticsModule$AnalyticsStorageProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/analytics/AnalyticsDatabaseSupplier;

    invoke-direct {v1, v0}, Lcom/facebook/orca/analytics/AnalyticsStorage;-><init>(Lcom/facebook/orca/analytics/AnalyticsDatabaseSupplier;)V

    return-object v1
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/facebook/orca/analytics/AnalyticsModule$AnalyticsStorageProvider;->a()Lcom/facebook/orca/analytics/AnalyticsStorage;

    move-result-object v0

    return-object v0
.end method
