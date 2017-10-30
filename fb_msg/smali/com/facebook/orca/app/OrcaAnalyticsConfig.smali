.class public Lcom/facebook/orca/app/OrcaAnalyticsConfig;
.super Ljava/lang/Object;
.source "OrcaAnalyticsConfig.java"

# interfaces
.implements Lcom/facebook/orca/analytics/AnalyticsConfig;


# static fields
.field private static final a:Lcom/facebook/orca/prefs/PrefKey;

.field private static final b:Lcom/facebook/orca/prefs/PrefKey;


# instance fields
.field private final c:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/orca/users/User;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

.field private final e:Lcom/facebook/orca/app/AppInitLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-string v0, "messenger_client_analytics_android"

    invoke-static {v0}, Lcom/facebook/orca/prefs/ConfigPrefKeys;->a(Ljava/lang/String;)Lcom/facebook/orca/prefs/PrefKey;

    move-result-object v0

    sput-object v0, Lcom/facebook/orca/app/OrcaAnalyticsConfig;->a:Lcom/facebook/orca/prefs/PrefKey;

    .line 17
    const-string v0, "messenger_client_core_analytics_android"

    invoke-static {v0}, Lcom/facebook/orca/prefs/ConfigPrefKeys;->a(Ljava/lang/String;)Lcom/facebook/orca/prefs/PrefKey;

    move-result-object v0

    sput-object v0, Lcom/facebook/orca/app/OrcaAnalyticsConfig;->b:Lcom/facebook/orca/prefs/PrefKey;

    return-void
.end method

.method public constructor <init>(Ljavax/inject/Provider;Lcom/facebook/orca/prefs/OrcaSharedPreferences;Lcom/facebook/orca/app/AppInitLock;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/orca/users/User;",
            ">;",
            "Lcom/facebook/orca/prefs/OrcaSharedPreferences;",
            "Lcom/facebook/orca/app/AppInitLock;",
            ")V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/facebook/orca/app/OrcaAnalyticsConfig;->c:Ljavax/inject/Provider;

    .line 29
    iput-object p2, p0, Lcom/facebook/orca/app/OrcaAnalyticsConfig;->d:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    .line 30
    iput-object p3, p0, Lcom/facebook/orca/app/OrcaAnalyticsConfig;->e:Lcom/facebook/orca/app/AppInitLock;

    .line 31
    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/analytics/AnalyticsConfig$Level;
    .locals 3

    .prologue
    .line 34
    iget-object v0, p0, Lcom/facebook/orca/app/OrcaAnalyticsConfig;->c:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/User;

    .line 35
    iget-object v1, p0, Lcom/facebook/orca/app/OrcaAnalyticsConfig;->e:Lcom/facebook/orca/app/AppInitLock;

    invoke-virtual {v1}, Lcom/facebook/orca/app/AppInitLock;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 36
    :cond_0
    sget-object v0, Lcom/facebook/orca/analytics/AnalyticsConfig$Level;->UNSET:Lcom/facebook/orca/analytics/AnalyticsConfig$Level;

    .line 52
    :goto_0
    return-object v0

    .line 42
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/app/OrcaAnalyticsConfig;->d:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    sget-object v1, Lcom/facebook/orca/app/OrcaAnalyticsConfig;->a:Lcom/facebook/orca/prefs/PrefKey;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Lcom/facebook/orca/prefs/PrefKey;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 43
    sget-object v0, Lcom/facebook/orca/analytics/AnalyticsConfig$Level;->CORE_AND_SAMPLED:Lcom/facebook/orca/analytics/AnalyticsConfig$Level;

    goto :goto_0

    .line 48
    :cond_2
    iget-object v0, p0, Lcom/facebook/orca/app/OrcaAnalyticsConfig;->d:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    sget-object v1, Lcom/facebook/orca/app/OrcaAnalyticsConfig;->b:Lcom/facebook/orca/prefs/PrefKey;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Lcom/facebook/orca/prefs/PrefKey;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 49
    sget-object v0, Lcom/facebook/orca/analytics/AnalyticsConfig$Level;->CORE:Lcom/facebook/orca/analytics/AnalyticsConfig$Level;

    goto :goto_0

    .line 52
    :cond_3
    sget-object v0, Lcom/facebook/orca/analytics/AnalyticsConfig$Level;->NONE:Lcom/facebook/orca/analytics/AnalyticsConfig$Level;

    goto :goto_0
.end method
