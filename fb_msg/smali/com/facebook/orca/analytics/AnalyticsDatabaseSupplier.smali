.class public Lcom/facebook/orca/analytics/AnalyticsDatabaseSupplier;
.super Lcom/facebook/orca/common/sqlite/AbstractDatabaseSupplier;
.source "AnalyticsDatabaseSupplier.java"


# instance fields
.field private final a:Lcom/facebook/orca/analytics/AnalyticsDbSchemaPart;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/orca/common/util/AndroidThreadUtil;Lcom/facebook/orca/analytics/AnalyticsDbSchemaPart;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-static {p3}, Lcom/google/common/collect/ImmutableList;->a(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    const-string v4, "analytics_db2"

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->c()Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/orca/common/sqlite/AbstractDatabaseSupplier;-><init>(Landroid/content/Context;Lcom/facebook/orca/common/util/AndroidThreadUtil;Lcom/google/common/collect/ImmutableList;Ljava/lang/String;Lcom/google/common/collect/ImmutableList;)V

    .line 32
    iput-object p3, p0, Lcom/facebook/orca/analytics/AnalyticsDatabaseSupplier;->a:Lcom/facebook/orca/analytics/AnalyticsDbSchemaPart;

    .line 33
    return-void
.end method
