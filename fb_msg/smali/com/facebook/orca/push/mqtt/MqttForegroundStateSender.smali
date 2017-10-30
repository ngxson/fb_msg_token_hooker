.class public Lcom/facebook/orca/push/mqtt/MqttForegroundStateSender;
.super Ljava/lang/Object;
.source "MqttForegroundStateSender.java"

# interfaces
.implements Lcom/facebook/orca/app/INeedInit;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/facebook/app/UserActivityManager;

.field private final c:Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

.field private final d:Lcom/facebook/orca/common/util/AndroidThreadUtil;

.field private e:Lcom/facebook/orca/activity/SafeLocalBroadcastReceiver;

.field private f:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "ui thread"
    .end annotation
.end field

.field private g:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "ui thread"
    .end annotation
.end field

.field private final h:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/app/UserActivityManager;Lcom/facebook/orca/push/mqtt/MqttConnectionManager;Lcom/facebook/orca/common/util/AndroidThreadUtil;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Lcom/facebook/orca/push/mqtt/MqttForegroundStateSender$1;

    invoke-direct {v0, p0}, Lcom/facebook/orca/push/mqtt/MqttForegroundStateSender$1;-><init>(Lcom/facebook/orca/push/mqtt/MqttForegroundStateSender;)V

    iput-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttForegroundStateSender;->h:Ljava/lang/Runnable;

    .line 56
    iput-object p1, p0, Lcom/facebook/orca/push/mqtt/MqttForegroundStateSender;->a:Landroid/content/Context;

    .line 57
    iput-object p2, p0, Lcom/facebook/orca/push/mqtt/MqttForegroundStateSender;->b:Lcom/facebook/app/UserActivityManager;

    .line 58
    iput-object p3, p0, Lcom/facebook/orca/push/mqtt/MqttForegroundStateSender;->c:Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

    .line 59
    iput-object p4, p0, Lcom/facebook/orca/push/mqtt/MqttForegroundStateSender;->d:Lcom/facebook/orca/common/util/AndroidThreadUtil;

    .line 60
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/push/mqtt/MqttForegroundStateSender;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/facebook/orca/push/mqtt/MqttForegroundStateSender;->f:Z

    return p1
.end method

.method private a(Z)Z
    .locals 4
    .parameter

    .prologue
    .line 110
    new-instance v0, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    sget-object v1, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->instance:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;-><init>(Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;)V

    .line 111
    const-string v1, "foreground"

    invoke-virtual {v0, v1, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Z)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 112
    iget-object v1, p0, Lcom/facebook/orca/push/mqtt/MqttForegroundStateSender;->c:Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

    const-string v2, "/foreground_state"

    sget-object v3, Lcom/facebook/orca/mqtt/MqttQOSLevel;->FIRE_AND_FORGET:Lcom/facebook/orca/mqtt/MqttQOSLevel;

    invoke-virtual {v1, v2, v0, v3}, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->a(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;Lcom/facebook/orca/mqtt/MqttQOSLevel;)I

    move-result v0

    .line 113
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method a()V
    .locals 5
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 83
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttForegroundStateSender;->b:Lcom/facebook/app/UserActivityManager;

    invoke-virtual {v0}, Lcom/facebook/app/UserActivityManager;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 84
    iget-boolean v0, p0, Lcom/facebook/orca/push/mqtt/MqttForegroundStateSender;->g:Z

    if-nez v0, :cond_0

    .line 85
    invoke-direct {p0, v4}, Lcom/facebook/orca/push/mqtt/MqttForegroundStateSender;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    iput-boolean v4, p0, Lcom/facebook/orca/push/mqtt/MqttForegroundStateSender;->g:Z

    .line 89
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/orca/push/mqtt/MqttForegroundStateSender;->f:Z

    if-nez v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttForegroundStateSender;->d:Lcom/facebook/orca/common/util/AndroidThreadUtil;

    iget-object v1, p0, Lcom/facebook/orca/push/mqtt/MqttForegroundStateSender;->h:Ljava/lang/Runnable;

    const-wide/32 v2, 0xea60

    invoke-interface {v0, v1, v2, v3}, Lcom/facebook/orca/common/util/AndroidThreadUtil;->a(Ljava/lang/Runnable;J)V

    .line 91
    iput-boolean v4, p0, Lcom/facebook/orca/push/mqtt/MqttForegroundStateSender;->f:Z

    .line 100
    :cond_1
    :goto_0
    return-void

    .line 94
    :cond_2
    iget-boolean v0, p0, Lcom/facebook/orca/push/mqtt/MqttForegroundStateSender;->g:Z

    if-eqz v0, :cond_1

    .line 95
    invoke-direct {p0, v1}, Lcom/facebook/orca/push/mqtt/MqttForegroundStateSender;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    iput-boolean v1, p0, Lcom/facebook/orca/push/mqtt/MqttForegroundStateSender;->g:Z

    goto :goto_0
.end method

.method public b()V
    .locals 3

    .prologue
    .line 64
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 65
    const-string v1, "com.facebook.app.USER_MAYBE_BECAME_ACTIVE_OR_INACTIVE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 66
    new-instance v1, Lcom/facebook/orca/push/mqtt/MqttForegroundStateSender$2;

    iget-object v2, p0, Lcom/facebook/orca/push/mqtt/MqttForegroundStateSender;->a:Landroid/content/Context;

    invoke-direct {v1, p0, v2, v0}, Lcom/facebook/orca/push/mqtt/MqttForegroundStateSender$2;-><init>(Lcom/facebook/orca/push/mqtt/MqttForegroundStateSender;Landroid/content/Context;Landroid/content/IntentFilter;)V

    iput-object v1, p0, Lcom/facebook/orca/push/mqtt/MqttForegroundStateSender;->e:Lcom/facebook/orca/activity/SafeLocalBroadcastReceiver;

    .line 74
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttForegroundStateSender;->e:Lcom/facebook/orca/activity/SafeLocalBroadcastReceiver;

    invoke-virtual {v0}, Lcom/facebook/orca/activity/SafeLocalBroadcastReceiver;->a()V

    .line 75
    return-void
.end method
