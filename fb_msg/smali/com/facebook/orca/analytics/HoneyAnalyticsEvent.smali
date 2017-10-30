.class public abstract Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;
.super Ljava/lang/Object;
.source "HoneyAnalyticsEvent.java"


# instance fields
.field protected final a:Ljava/lang/String;

.field private b:J

.field private c:Ljava/lang/String;

.field private d:Z

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;->b:J

    .line 18
    const-string v0, "AUTO_SET"

    iput-object v0, p0, Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;->c:Ljava/lang/String;

    .line 30
    iput-object p1, p0, Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;->a:Ljava/lang/String;

    .line 31
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;->e:Ljava/util/Map;

    .line 32
    iput-object p2, p0, Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;->c:Ljava/lang/String;

    .line 33
    return-void
.end method


# virtual methods
.method protected a(J)Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;
    .locals 0
    .parameter

    .prologue
    .line 52
    iput-wide p1, p0, Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;->b:J

    .line 53
    return-object p0
.end method

.method a(Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;
    .locals 0
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;->c:Ljava/lang/String;

    .line 60
    return-object p0
.end method

.method a(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;->e:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    return-object p0
.end method

.method a(Z)Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;
    .locals 0
    .parameter

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;->d:Z

    .line 65
    return-object p0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()J
    .locals 2

    .prologue
    .line 44
    iget-wide v0, p0, Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;->b:J

    return-wide v0
.end method

.method b(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;->c:Ljava/lang/String;

    return-object v0
.end method

.method d()Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;->d:Z

    return v0
.end method

.method public abstract e()Lcom/fasterxml/jackson/databind/JsonNode;
.end method
