.class public Lcom/facebook/orca/push/c2dm/OrcaC2dmPushHandler;
.super Ljava/lang/Object;
.source "OrcaC2dmPushHandler.java"

# interfaces
.implements Lcom/facebook/orca/push/c2dm/C2DMPushHandler;


# static fields
.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Lcom/facebook/orca/auth/AuthDataStore;

.field private final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/orca/push/PushHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/facebook/orca/push/common/PushDeserialization;

.field private final e:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

.field private final f:Lcom/facebook/orca/presence/PresenceManager;

.field private final g:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/orca/ops/OrcaServiceOperation;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lcom/facebook/orca/analytics/AnalyticsLogger;

.field private final i:Lcom/fasterxml/jackson/databind/ObjectMapper;

.field private final j:Lcom/facebook/orca/analytics/ReliabilityAnalyticsLogger;

.field private final k:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/facebook/orca/push/c2dm/OrcaC2dmPushHandler;

    sput-object v0, Lcom/facebook/orca/push/c2dm/OrcaC2dmPushHandler;->a:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/orca/auth/AuthDataStore;Ljava/util/Set;Lcom/facebook/orca/push/common/PushDeserialization;Lcom/facebook/orca/prefs/OrcaSharedPreferences;Lcom/facebook/orca/presence/PresenceManager;Ljavax/inject/Provider;Lcom/facebook/orca/analytics/AnalyticsLogger;Lcom/facebook/orca/analytics/ReliabilityAnalyticsLogger;Lcom/fasterxml/jackson/databind/ObjectMapper;Landroid/content/res/Resources;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/orca/auth/AuthDataStore;",
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/orca/push/PushHandler;",
            ">;",
            "Lcom/facebook/orca/push/common/PushDeserialization;",
            "Lcom/facebook/orca/prefs/OrcaSharedPreferences;",
            "Lcom/facebook/orca/presence/PresenceManager;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/orca/ops/OrcaServiceOperation;",
            ">;",
            "Lcom/facebook/orca/analytics/AnalyticsLogger;",
            "Lcom/facebook/orca/analytics/ReliabilityAnalyticsLogger;",
            "Lcom/fasterxml/jackson/databind/ObjectMapper;",
            "Landroid/content/res/Resources;",
            ")V"
        }
    .end annotation

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/facebook/orca/push/c2dm/OrcaC2dmPushHandler;->b:Lcom/facebook/orca/auth/AuthDataStore;

    .line 68
    iput-object p2, p0, Lcom/facebook/orca/push/c2dm/OrcaC2dmPushHandler;->c:Ljava/util/Set;

    .line 69
    iput-object p3, p0, Lcom/facebook/orca/push/c2dm/OrcaC2dmPushHandler;->d:Lcom/facebook/orca/push/common/PushDeserialization;

    .line 70
    iput-object p4, p0, Lcom/facebook/orca/push/c2dm/OrcaC2dmPushHandler;->e:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    .line 71
    iput-object p5, p0, Lcom/facebook/orca/push/c2dm/OrcaC2dmPushHandler;->f:Lcom/facebook/orca/presence/PresenceManager;

    .line 72
    iput-object p6, p0, Lcom/facebook/orca/push/c2dm/OrcaC2dmPushHandler;->g:Ljavax/inject/Provider;

    .line 73
    iput-object p7, p0, Lcom/facebook/orca/push/c2dm/OrcaC2dmPushHandler;->h:Lcom/facebook/orca/analytics/AnalyticsLogger;

    .line 74
    iput-object p9, p0, Lcom/facebook/orca/push/c2dm/OrcaC2dmPushHandler;->i:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 75
    iput-object p8, p0, Lcom/facebook/orca/push/c2dm/OrcaC2dmPushHandler;->j:Lcom/facebook/orca/analytics/ReliabilityAnalyticsLogger;

    .line 76
    iput-object p10, p0, Lcom/facebook/orca/push/c2dm/OrcaC2dmPushHandler;->k:Landroid/content/res/Resources;

    .line 77
    return-void
.end method

.method private a()V
    .locals 5

    .prologue
    .line 149
    iget-object v0, p0, Lcom/facebook/orca/push/c2dm/OrcaC2dmPushHandler;->j:Lcom/facebook/orca/analytics/ReliabilityAnalyticsLogger;

    const-string v1, ""

    const-string v2, ""

    sget-object v3, Lcom/facebook/orca/push/PushSource;->C2DM:Lcom/facebook/orca/push/PushSource;

    invoke-virtual {v3}, Lcom/facebook/orca/push/PushSource;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "eaten_wrong_user"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/facebook/orca/analytics/ReliabilityAnalyticsLogger;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    return-void
.end method

.method private b()V
    .locals 5

    .prologue
    .line 157
    iget-object v0, p0, Lcom/facebook/orca/push/c2dm/OrcaC2dmPushHandler;->j:Lcom/facebook/orca/analytics/ReliabilityAnalyticsLogger;

    const-string v1, ""

    const-string v2, ""

    sget-object v3, Lcom/facebook/orca/push/PushSource;->C2DM:Lcom/facebook/orca/push/PushSource;

    invoke-virtual {v3}, Lcom/facebook/orca/push/PushSource;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "invalid_payload"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/facebook/orca/analytics/ReliabilityAnalyticsLogger;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 7
    .parameter

    .prologue
    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/push/c2dm/OrcaC2dmPushHandler;->i:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readTree(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    .line 84
    iget-object v0, p0, Lcom/facebook/orca/push/c2dm/OrcaC2dmPushHandler;->e:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-interface {v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->b()Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    move-result-object v0

    .line 85
    sget-object v2, Lcom/facebook/orca/push/c2dm/C2DMPrefKeys;->f:Lcom/facebook/orca/prefs/PrefKey;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-interface {v0, v2, v3, v4}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a(Lcom/facebook/orca/prefs/PrefKey;J)Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    .line 86
    invoke-interface {v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a()V

    .line 88
    iget-object v0, p0, Lcom/facebook/orca/push/c2dm/OrcaC2dmPushHandler;->b:Lcom/facebook/orca/auth/AuthDataStore;

    invoke-interface {v0}, Lcom/facebook/orca/auth/AuthDataStore;->d()Lcom/facebook/orca/users/User;

    move-result-object v0

    .line 89
    if-nez v0, :cond_1

    .line 90
    sget-object v0, Lcom/facebook/orca/push/c2dm/OrcaC2dmPushHandler;->a:Ljava/lang/Class;

    const-string v1, "No me user set. Ignoring"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/Class;Ljava/lang/String;)V

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    const-string v2, "target_uid"

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lcom/fasterxml/jackson/databind/JsonNode;)Ljava/lang/String;

    move-result-object v2

    .line 95
    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 96
    sget-object v0, Lcom/facebook/orca/push/c2dm/OrcaC2dmPushHandler;->a:Ljava/lang/Class;

    const-string v1, "Push notification intended for different user"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/Class;Ljava/lang/String;)V

    .line 97
    invoke-direct {p0}, Lcom/facebook/orca/push/c2dm/OrcaC2dmPushHandler;->a()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 143
    :catch_0
    move-exception v0

    .line 144
    sget-object v1, Lcom/facebook/orca/push/c2dm/OrcaC2dmPushHandler;->a:Ljava/lang/Class;

    const-string v2, "IOException"

    invoke-static {v1, v2, v0}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 101
    :cond_2
    :try_start_1
    const-string v0, "message"

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lcom/fasterxml/jackson/databind/JsonNode;)Ljava/lang/String;

    move-result-object v2

    .line 102
    const-string v0, "type"

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lcom/fasterxml/jackson/databind/JsonNode;)Ljava/lang/String;

    move-result-object v0

    .line 103
    const-string v3, "params"

    invoke-virtual {v1, v3}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v3

    .line 104
    const-string v4, "msg"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "orca_message"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 106
    :cond_3
    iget-object v0, p0, Lcom/facebook/orca/push/c2dm/OrcaC2dmPushHandler;->d:Lcom/facebook/orca/push/common/PushDeserialization;

    invoke-virtual {v0, v2, v3}, Lcom/facebook/orca/push/common/PushDeserialization;->a(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/facebook/orca/threads/Message;

    move-result-object v3

    .line 107
    if-eqz v3, :cond_4

    .line 108
    sget-object v0, Lcom/facebook/orca/push/c2dm/OrcaC2dmPushHandler;->a:Ljava/lang/Class;

    const-string v4, "Received C2DM push"

    invoke-static {v0, v4}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/Class;Ljava/lang/String;)V

    .line 109
    invoke-virtual {v3}, Lcom/facebook/orca/threads/Message;->b()Ljava/lang/String;

    move-result-object v4

    .line 110
    iget-object v0, p0, Lcom/facebook/orca/push/c2dm/OrcaC2dmPushHandler;->f:Lcom/facebook/orca/presence/PresenceManager;

    invoke-virtual {v0, v3}, Lcom/facebook/orca/presence/PresenceManager;->a(Lcom/facebook/orca/threads/Message;)V

    .line 111
    iget-object v0, p0, Lcom/facebook/orca/push/c2dm/OrcaC2dmPushHandler;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/push/PushHandler;

    .line 112
    sget-object v6, Lcom/facebook/orca/push/PushSource;->C2DM:Lcom/facebook/orca/push/PushSource;

    invoke-interface {v0, v2, v4, v3, v6}, Lcom/facebook/orca/push/PushHandler;->a(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/push/PushSource;)V

    goto :goto_1

    .line 115
    :cond_4
    invoke-direct {p0}, Lcom/facebook/orca/push/c2dm/OrcaC2dmPushHandler;->b()V

    .line 132
    :cond_5
    :goto_2
    const-string v0, "params"

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "params"

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    const-string v2, "trace_info"

    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    const-string v0, "params"

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    .line 134
    const-string v1, "trace_info"

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lcom/fasterxml/jackson/databind/JsonNode;)Ljava/lang/String;

    move-result-object v0

    .line 135
    invoke-static {v0}, Lcom/facebook/orca/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 136
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 137
    const-string v2, "traceInfo"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/facebook/orca/push/c2dm/OrcaC2dmPushHandler;->g:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/ops/OrcaServiceOperation;

    .line 139
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/facebook/orca/ops/OrcaServiceOperation;->c(Z)V

    .line 140
    const-string v2, "push_trace_confirmation"

    invoke-virtual {v0, v2, v1}, Lcom/facebook/orca/ops/OrcaServiceOperation;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 117
    :cond_6
    const-string v4, "orca_friend_msg"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 119
    iget-object v0, p0, Lcom/facebook/orca/push/c2dm/OrcaC2dmPushHandler;->k:Landroid/content/res/Resources;

    sget v4, Lcom/facebook/R$string;->app_name:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 120
    invoke-static {v2, v0, v3}, Lcom/facebook/orca/push/FriendInstallNotification;->a(Ljava/lang/String;Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/facebook/orca/push/FriendInstallNotification;

    move-result-object v2

    .line 122
    if-eqz v2, :cond_7

    .line 123
    iget-object v0, p0, Lcom/facebook/orca/push/c2dm/OrcaC2dmPushHandler;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/push/PushHandler;

    .line 124
    invoke-interface {v0, v2}, Lcom/facebook/orca/push/PushHandler;->a(Lcom/facebook/orca/push/FriendInstallNotification;)V

    goto :goto_3

    .line 127
    :cond_7
    invoke-direct {p0}, Lcom/facebook/orca/push/c2dm/OrcaC2dmPushHandler;->b()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method
