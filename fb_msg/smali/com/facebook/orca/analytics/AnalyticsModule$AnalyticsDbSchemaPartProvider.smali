.class Lcom/facebook/orca/analytics/AnalyticsModule$AnalyticsDbSchemaPartProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "AnalyticsModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/analytics/AnalyticsDbSchemaPart;",
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
    .line 117
    iput-object p1, p0, Lcom/facebook/orca/analytics/AnalyticsModule$AnalyticsDbSchemaPartProvider;->a:Lcom/facebook/orca/analytics/AnalyticsModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/analytics/AnalyticsModule;Lcom/facebook/orca/analytics/AnalyticsModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/facebook/orca/analytics/AnalyticsModule$AnalyticsDbSchemaPartProvider;-><init>(Lcom/facebook/orca/analytics/AnalyticsModule;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/analytics/AnalyticsDbSchemaPart;
    .locals 1

    .prologue
    .line 121
    new-instance v0, Lcom/facebook/orca/analytics/AnalyticsDbSchemaPart;

    invoke-direct {v0}, Lcom/facebook/orca/analytics/AnalyticsDbSchemaPart;-><init>()V

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/facebook/orca/analytics/AnalyticsModule$AnalyticsDbSchemaPartProvider;->a()Lcom/facebook/orca/analytics/AnalyticsDbSchemaPart;

    move-result-object v0

    return-object v0
.end method
