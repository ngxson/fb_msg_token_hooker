.class public Lcom/facebook/orca/prefs/PrefsMigrator;
.super Ljava/lang/Object;
.source "PrefsMigrator.java"


# static fields
.field static final a:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final b:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final c:Lcom/facebook/orca/prefs/PrefKey;

.field static final d:Lcom/facebook/orca/prefs/PrefKey;

.field private static final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 20
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    sput-object v0, Lcom/facebook/orca/prefs/PrefsMigrator;->e:Ljava/lang/String;

    .line 24
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->k()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "/app_info"

    sget-object v2, Lcom/facebook/orca/prefs/PrefsMigrator;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "//gk"

    sget-object v2, Lcom/facebook/orca/prefs/PrefsMigrator;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->b()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    sput-object v0, Lcom/facebook/orca/prefs/PrefsMigrator;->a:Lcom/google/common/collect/ImmutableMap;

    .line 32
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->k()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "/auth/"

    const-string v2, "/auth/user_data/"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "/orca/auth_machine_id"

    const-string v2, "/auth/auth_machine_id"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "/orca/me_user_version"

    const-string v2, "/auth/me_user_version"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "/orca/app_info"

    const-string v2, "/config/app_info"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "/orca/gk/"

    const-string v2, "/config/gk/"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "/orca/gk_version"

    const-string v2, "/config/gk/version"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "/orca/rollout/"

    const-string v2, "/config/rollout"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "/orca/rollout_version"

    const-string v2, "/config/rollout/version"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "/orca/device_id/"

    const-string v2, "/shared/device_id"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "/orca/c2dm/"

    const-string v2, "/messenger/c2dm/"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "/orca/first_install_time"

    const-string v2, "/messenger/first_install_time"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "/orca/nux_completed"

    const-string v2, "/messenger/nux_completed"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "/orca/login_reminder_trigger_state"

    const-string v2, "/messenger/login_reminder_trigger_state"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "/orca/phone_confirm"

    const-string v2, "/messenger/phone_confirm"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "/orca/sms"

    const-string v2, "/messages/sms"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "/orca/ui_counters"

    const-string v2, "/messages/ui_counters"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "/orca/notifications/recent_threads"

    const-string v2, "/messages/notifications/recent_threads"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "/preferences/notifications/location_services"

    const-string v2, "/settings/messages/location_services"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "/preferences/notifications"

    const-string v2, "/settings/messages/notifications"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "/preferences/threads"

    const-string v2, "/settings/messages/threads"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "/orca/internal/debug_logs"

    const-string v2, "/settings/logging/debug_logs"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "/orca/internal/logging_level"

    const-string v2, "/settings/logging/logging_level"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "/orca/internal/php_profiling"

    const-string v2, "/settings/http/php_profiling"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "/orca/internal/wirehog_profiling"

    const-string v2, "/settings/http/wirehog_profiling"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "/orca/internal/force_fb4a_look_and_feel"

    const-string v2, "/settings/messenger/force_fb4a_look_and_feel"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "/orca/internal/web"

    const-string v2, "/settings/sandbox/web"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "/orca/internal/mqtt"

    const-string v2, "/settings/sandbox/mqtt"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "/orca/device_id"

    const-string v2, "/shared/device_id"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "/orca/mqtt"

    const-string v2, "/mqtt"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "/orca/top_last_active_sync_time"

    sget-object v2, Lcom/facebook/orca/prefs/PrefsMigrator;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->b()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    sput-object v0, Lcom/facebook/orca/prefs/PrefsMigrator;->b:Lcom/google/common/collect/ImmutableMap;

    .line 94
    new-instance v0, Lcom/facebook/orca/prefs/PrefKey;

    const-string v1, "/orca/pref_version"

    invoke-direct {v0, v1}, Lcom/facebook/orca/prefs/PrefKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/orca/prefs/PrefsMigrator;->c:Lcom/facebook/orca/prefs/PrefKey;

    .line 95
    new-instance v0, Lcom/facebook/orca/prefs/PrefKey;

    const-string v1, "/_meta_/prefs_version"

    invoke-direct {v0, v1}, Lcom/facebook/orca/prefs/PrefKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/orca/prefs/PrefsMigrator;->d:Lcom/facebook/orca/prefs/PrefKey;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/facebook/orca/prefs/PrefKey;Lcom/facebook/orca/prefs/PrefKey;Ljava/util/SortedMap;Ljava/util/SortedMap;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/orca/prefs/PrefKey;",
            "Lcom/facebook/orca/prefs/PrefKey;",
            "Ljava/util/SortedMap",
            "<",
            "Lcom/facebook/orca/prefs/PrefKey;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/SortedMap",
            "<",
            "Lcom/facebook/orca/prefs/PrefKey;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 177
    invoke-static {p3, p1}, Lcom/facebook/orca/prefs/PrefKeyUtil;->a(Ljava/util/SortedMap;Lcom/facebook/orca/prefs/PrefKey;)Ljava/util/SortedMap;

    move-result-object v2

    .line 178
    invoke-interface {v2}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 179
    if-eqz p2, :cond_0

    .line 180
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/prefs/PrefKey;

    .line 181
    invoke-virtual {v1, p1}, Lcom/facebook/orca/prefs/PrefKey;->b(Lcom/facebook/orca/common/util/TypedKey;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/facebook/orca/prefs/PrefKey;->c(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/prefs/PrefKey;

    .line 182
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p4, v1, v0}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 185
    :cond_1
    invoke-interface {v2}, Ljava/util/SortedMap;->clear()V

    .line 186
    return-void
.end method

.method private b(Ljava/util/Map;)I
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/facebook/orca/prefs/PrefKey;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 146
    sget-object v0, Lcom/facebook/orca/prefs/PrefsMigrator;->d:Lcom/facebook/orca/prefs/PrefKey;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    sget-object v0, Lcom/facebook/orca/prefs/PrefsMigrator;->d:Lcom/facebook/orca/prefs/PrefKey;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 153
    :goto_0
    return v0

    .line 148
    :cond_0
    sget-object v0, Lcom/facebook/orca/prefs/PrefsMigrator;->c:Lcom/facebook/orca/prefs/PrefKey;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    const/4 v0, 0x1

    goto :goto_0

    .line 151
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/util/SortedMap;)Ljava/util/SortedMap;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedMap",
            "<",
            "Lcom/facebook/orca/prefs/PrefKey;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/SortedMap",
            "<",
            "Lcom/facebook/orca/prefs/PrefKey;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 125
    invoke-static {p1}, Lcom/google/common/collect/Maps;->a(Ljava/util/SortedMap;)Ljava/util/TreeMap;

    move-result-object v0

    .line 126
    invoke-direct {p0, v0}, Lcom/facebook/orca/prefs/PrefsMigrator;->b(Ljava/util/Map;)I

    move-result v1

    .line 129
    if-nez v1, :cond_0

    .line 130
    sget-object v1, Lcom/facebook/orca/prefs/PrefsMigrator;->a:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/orca/prefs/PrefsMigrator;->a(Ljava/util/SortedMap;Ljava/util/Map;)Ljava/util/SortedMap;

    move-result-object v0

    move v1, v2

    .line 133
    :cond_0
    if-ne v1, v2, :cond_1

    .line 135
    sget-object v1, Lcom/facebook/orca/prefs/PrefsMigrator;->c:Lcom/facebook/orca/prefs/PrefKey;

    invoke-interface {v0, v1}, Ljava/util/SortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v1, Lcom/facebook/orca/prefs/PrefsMigrator;->b:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/orca/prefs/PrefsMigrator;->a(Ljava/util/SortedMap;Ljava/util/Map;)Ljava/util/SortedMap;

    move-result-object v0

    .line 138
    sget-object v1, Lcom/facebook/orca/prefs/PrefsMigrator;->d:Lcom/facebook/orca/prefs/PrefKey;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    :cond_1
    return-object v0
.end method

.method a(Ljava/util/SortedMap;Ljava/util/Map;)Ljava/util/SortedMap;
    .locals 7
    .parameter
    .parameter
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedMap",
            "<",
            "Lcom/facebook/orca/prefs/PrefKey;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/SortedMap",
            "<",
            "Lcom/facebook/orca/prefs/PrefKey;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 160
    invoke-static {}, Lcom/google/common/collect/Maps;->d()Ljava/util/TreeMap;

    move-result-object v2

    .line 161
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 162
    new-instance v4, Lcom/facebook/orca/prefs/PrefKey;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v4, v1}, Lcom/facebook/orca/prefs/PrefKey;-><init>(Ljava/lang/String;)V

    .line 163
    const/4 v1, 0x0

    .line 164
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lcom/facebook/orca/prefs/PrefsMigrator;->e:Ljava/lang/String;

    if-eq v5, v6, :cond_1

    .line 165
    new-instance v1, Lcom/facebook/orca/prefs/PrefKey;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/facebook/orca/prefs/PrefKey;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 167
    :goto_1
    invoke-direct {p0, v4, v0, p1, v2}, Lcom/facebook/orca/prefs/PrefsMigrator;->a(Lcom/facebook/orca/prefs/PrefKey;Lcom/facebook/orca/prefs/PrefKey;Ljava/util/SortedMap;Ljava/util/SortedMap;)V

    goto :goto_0

    .line 169
    :cond_0
    return-object v2

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method public a(Ljava/util/Map;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/facebook/orca/prefs/PrefKey;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lcom/facebook/orca/prefs/PrefsMigrator;->b(Ljava/util/Map;)I

    move-result v0

    .line 114
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
