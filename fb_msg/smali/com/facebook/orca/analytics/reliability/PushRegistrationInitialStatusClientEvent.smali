.class public final Lcom/facebook/orca/analytics/reliability/PushRegistrationInitialStatusClientEvent;
.super Ljava/lang/Object;
.source "PushRegistrationInitialStatusClientEvent.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public static a(Lcom/facebook/orca/push/c2dm/C2DMRegistrar$RegistrationStatus;Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 41
    const-string v0, "push_reg_initial_status"

    invoke-static {p0}, Lcom/facebook/orca/analytics/reliability/PushRegistrationInitialStatusClientEvent;->a(Lcom/facebook/orca/push/c2dm/C2DMRegistrar$RegistrationStatus;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "registration_id"

    invoke-static {v0, v1, v2, v3, p1}, Lcom/facebook/orca/analytics/ReliabilityAnalyticsClientEvent;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/facebook/orca/push/c2dm/C2DMRegistrar$RegistrationStatus;)Ljava/lang/String;
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const-string v0, "not_applicable"

    .line 34
    :goto_0
    return-object v0

    .line 27
    :cond_0
    sget-object v0, Lcom/facebook/orca/analytics/reliability/PushRegistrationInitialStatusClientEvent$1;->a:[I

    invoke-virtual {p0}, Lcom/facebook/orca/push/c2dm/C2DMRegistrar$RegistrationStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 34
    const-string v0, "none"

    goto :goto_0

    .line 29
    :pswitch_0
    const-string v0, "current"

    goto :goto_0

    .line 31
    :pswitch_1
    const-string v0, "expired"

    goto :goto_0

    .line 27
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
