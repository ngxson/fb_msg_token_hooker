.class public Lcom/facebook/orca/analytics/reliability/PushServerUnregistrationClientEvent;
.super Ljava/lang/Object;
.source "PushServerUnregistrationClientEvent.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 19
    const-string v0, "push_unreg_server"

    const/4 v1, 0x0

    const-string v2, "registration_id"

    invoke-static {v0, p0, v1, v2, p1}, Lcom/facebook/orca/analytics/ReliabilityAnalyticsClientEvent;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    move-result-object v0

    return-object v0
.end method
