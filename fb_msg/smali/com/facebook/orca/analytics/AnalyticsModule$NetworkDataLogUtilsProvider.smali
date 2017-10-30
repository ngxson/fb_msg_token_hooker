.class Lcom/facebook/orca/analytics/AnalyticsModule$NetworkDataLogUtilsProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "AnalyticsModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/analytics/util/NetworkDataLogUtils;",
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
    .line 286
    iput-object p1, p0, Lcom/facebook/orca/analytics/AnalyticsModule$NetworkDataLogUtilsProvider;->a:Lcom/facebook/orca/analytics/AnalyticsModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/analytics/AnalyticsModule;Lcom/facebook/orca/analytics/AnalyticsModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 286
    invoke-direct {p0, p1}, Lcom/facebook/orca/analytics/AnalyticsModule$NetworkDataLogUtilsProvider;-><init>(Lcom/facebook/orca/analytics/AnalyticsModule;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/analytics/util/NetworkDataLogUtils;
    .locals 1

    .prologue
    .line 290
    new-instance v0, Lcom/facebook/orca/analytics/util/NetworkDataLogUtils;

    invoke-direct {v0}, Lcom/facebook/orca/analytics/util/NetworkDataLogUtils;-><init>()V

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 286
    invoke-virtual {p0}, Lcom/facebook/orca/analytics/AnalyticsModule$NetworkDataLogUtilsProvider;->a()Lcom/facebook/orca/analytics/util/NetworkDataLogUtils;

    move-result-object v0

    return-object v0
.end method
