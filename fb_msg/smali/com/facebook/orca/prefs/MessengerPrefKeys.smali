.class public Lcom/facebook/orca/prefs/MessengerPrefKeys;
.super Ljava/lang/Object;
.source "MessengerPrefKeys.java"


# static fields
.field public static final a:Lcom/facebook/orca/prefs/PrefKey;

.field public static final b:Lcom/facebook/orca/prefs/PrefKey;

.field public static final c:Lcom/facebook/orca/prefs/PrefKey;

.field public static final d:Lcom/facebook/orca/prefs/PrefKey;

.field public static final e:Lcom/facebook/orca/prefs/PrefKey;

.field public static final f:Lcom/facebook/orca/prefs/PrefKey;

.field public static final g:Lcom/facebook/orca/prefs/PrefKey;

.field public static final h:Lcom/facebook/orca/prefs/PrefKey;

.field public static final i:Lcom/facebook/orca/prefs/PrefKey;

.field public static final j:Lcom/facebook/orca/prefs/PrefKey;

.field public static final k:Lcom/facebook/orca/prefs/PrefKey;

.field public static final l:Lcom/facebook/orca/prefs/PrefKey;

.field public static final m:Lcom/facebook/orca/prefs/PrefKey;

.field public static final n:Lcom/facebook/orca/prefs/PrefKey;

.field public static final o:Lcom/facebook/orca/prefs/PrefKey;

.field public static final p:Lcom/facebook/orca/prefs/PrefKey;

.field public static final q:Lcom/facebook/orca/prefs/PrefKey;

.field public static final r:Lcom/facebook/orca/prefs/PrefKey;

.field public static final s:Lcom/facebook/orca/prefs/PrefKey;

.field public static final t:Lcom/facebook/orca/prefs/PrefKey;

.field public static final u:Lcom/facebook/orca/prefs/PrefKey;

.field public static final v:Lcom/facebook/orca/prefs/PrefKey;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 13
    sget-object v0, Lcom/facebook/orca/prefs/SharedPrefKeys;->a:Lcom/facebook/orca/prefs/PrefKey;

    const-string v1, "messenger/"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/PrefKey;->c(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/PrefKey;

    sput-object v0, Lcom/facebook/orca/prefs/MessengerPrefKeys;->a:Lcom/facebook/orca/prefs/PrefKey;

    .line 14
    sget-object v0, Lcom/facebook/orca/prefs/SharedPrefKeys;->b:Lcom/facebook/orca/prefs/PrefKey;

    const-string v1, "messenger/"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/PrefKey;->c(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/PrefKey;

    sput-object v0, Lcom/facebook/orca/prefs/MessengerPrefKeys;->b:Lcom/facebook/orca/prefs/PrefKey;

    .line 17
    sget-object v0, Lcom/facebook/orca/prefs/MessengerPrefKeys;->a:Lcom/facebook/orca/prefs/PrefKey;

    const-string v1, "first_install_time"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/PrefKey;->c(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/PrefKey;

    sput-object v0, Lcom/facebook/orca/prefs/MessengerPrefKeys;->c:Lcom/facebook/orca/prefs/PrefKey;

    .line 18
    sget-object v0, Lcom/facebook/orca/prefs/MessengerPrefKeys;->a:Lcom/facebook/orca/prefs/PrefKey;

    const-string v1, "nux_completed"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/PrefKey;->c(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/PrefKey;

    sput-object v0, Lcom/facebook/orca/prefs/MessengerPrefKeys;->d:Lcom/facebook/orca/prefs/PrefKey;

    .line 19
    sget-object v0, Lcom/facebook/orca/prefs/MessengerPrefKeys;->a:Lcom/facebook/orca/prefs/PrefKey;

    const-string v1, "login_reminder_trigger_state"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/PrefKey;->c(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/PrefKey;

    sput-object v0, Lcom/facebook/orca/prefs/MessengerPrefKeys;->e:Lcom/facebook/orca/prefs/PrefKey;

    .line 23
    sget-object v0, Lcom/facebook/orca/prefs/SharedPrefKeys;->a:Lcom/facebook/orca/prefs/PrefKey;

    const-string v1, "nux/"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/PrefKey;->c(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/PrefKey;

    sput-object v0, Lcom/facebook/orca/prefs/MessengerPrefKeys;->f:Lcom/facebook/orca/prefs/PrefKey;

    .line 24
    sget-object v0, Lcom/facebook/orca/prefs/MessengerPrefKeys;->f:Lcom/facebook/orca/prefs/PrefKey;

    const-string v1, "version"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/PrefKey;->c(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/PrefKey;

    sput-object v0, Lcom/facebook/orca/prefs/MessengerPrefKeys;->g:Lcom/facebook/orca/prefs/PrefKey;

    .line 25
    sget-object v0, Lcom/facebook/orca/prefs/MessengerPrefKeys;->f:Lcom/facebook/orca/prefs/PrefKey;

    const-string v1, "is_upgrade_user"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/PrefKey;->c(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/PrefKey;

    sput-object v0, Lcom/facebook/orca/prefs/MessengerPrefKeys;->h:Lcom/facebook/orca/prefs/PrefKey;

    .line 26
    sget-object v0, Lcom/facebook/orca/prefs/MessengerPrefKeys;->f:Lcom/facebook/orca/prefs/PrefKey;

    const-string v1, "completed_version"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/PrefKey;->c(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/PrefKey;

    sput-object v0, Lcom/facebook/orca/prefs/MessengerPrefKeys;->i:Lcom/facebook/orca/prefs/PrefKey;

    .line 27
    sget-object v0, Lcom/facebook/orca/prefs/MessengerPrefKeys;->f:Lcom/facebook/orca/prefs/PrefKey;

    const-string v1, "sms_completed"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/PrefKey;->c(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/PrefKey;

    sput-object v0, Lcom/facebook/orca/prefs/MessengerPrefKeys;->j:Lcom/facebook/orca/prefs/PrefKey;

    .line 28
    sget-object v0, Lcom/facebook/orca/prefs/MessengerPrefKeys;->f:Lcom/facebook/orca/prefs/PrefKey;

    const-string v1, "sms_thread_completed"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/PrefKey;->c(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/PrefKey;

    sput-object v0, Lcom/facebook/orca/prefs/MessengerPrefKeys;->k:Lcom/facebook/orca/prefs/PrefKey;

    .line 29
    sget-object v0, Lcom/facebook/orca/prefs/MessengerPrefKeys;->f:Lcom/facebook/orca/prefs/PrefKey;

    const-string v1, "compose_button_completed"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/PrefKey;->c(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/PrefKey;

    sput-object v0, Lcom/facebook/orca/prefs/MessengerPrefKeys;->l:Lcom/facebook/orca/prefs/PrefKey;

    .line 31
    sget-object v0, Lcom/facebook/orca/prefs/MessengerPrefKeys;->f:Lcom/facebook/orca/prefs/PrefKey;

    const-string v1, "dive_bar_button_completed"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/PrefKey;->c(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/PrefKey;

    sput-object v0, Lcom/facebook/orca/prefs/MessengerPrefKeys;->m:Lcom/facebook/orca/prefs/PrefKey;

    .line 35
    sget-object v0, Lcom/facebook/orca/prefs/MessengerPrefKeys;->a:Lcom/facebook/orca/prefs/PrefKey;

    const-string v1, "phone_confirm/"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/PrefKey;->c(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/PrefKey;

    sput-object v0, Lcom/facebook/orca/prefs/MessengerPrefKeys;->n:Lcom/facebook/orca/prefs/PrefKey;

    .line 36
    sget-object v0, Lcom/facebook/orca/prefs/MessengerPrefKeys;->n:Lcom/facebook/orca/prefs/PrefKey;

    const-string v1, "skipped_phone_verification_time"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/PrefKey;->c(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/PrefKey;

    sput-object v0, Lcom/facebook/orca/prefs/MessengerPrefKeys;->o:Lcom/facebook/orca/prefs/PrefKey;

    .line 38
    sget-object v0, Lcom/facebook/orca/prefs/MessengerPrefKeys;->n:Lcom/facebook/orca/prefs/PrefKey;

    const-string v1, "last_sent_confirmation_code_time"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/PrefKey;->c(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/PrefKey;

    sput-object v0, Lcom/facebook/orca/prefs/MessengerPrefKeys;->p:Lcom/facebook/orca/prefs/PrefKey;

    .line 40
    sget-object v0, Lcom/facebook/orca/prefs/MessengerPrefKeys;->n:Lcom/facebook/orca/prefs/PrefKey;

    const-string v1, "last_sent_country_code"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/PrefKey;->c(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/PrefKey;

    sput-object v0, Lcom/facebook/orca/prefs/MessengerPrefKeys;->q:Lcom/facebook/orca/prefs/PrefKey;

    .line 42
    sget-object v0, Lcom/facebook/orca/prefs/MessengerPrefKeys;->n:Lcom/facebook/orca/prefs/PrefKey;

    const-string v1, "last_sent_number"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/PrefKey;->c(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/PrefKey;

    sput-object v0, Lcom/facebook/orca/prefs/MessengerPrefKeys;->r:Lcom/facebook/orca/prefs/PrefKey;

    .line 45
    sget-object v0, Lcom/facebook/orca/prefs/MessengerPrefKeys;->b:Lcom/facebook/orca/prefs/PrefKey;

    const-string v1, "force_fb4a_look_and_feel"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/PrefKey;->c(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/PrefKey;

    sput-object v0, Lcom/facebook/orca/prefs/MessengerPrefKeys;->s:Lcom/facebook/orca/prefs/PrefKey;

    .line 49
    sget-object v0, Lcom/facebook/orca/prefs/MessengerPrefKeys;->a:Lcom/facebook/orca/prefs/PrefKey;

    const-string v1, "version_promo/"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/PrefKey;->c(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/PrefKey;

    sput-object v0, Lcom/facebook/orca/prefs/MessengerPrefKeys;->t:Lcom/facebook/orca/prefs/PrefKey;

    .line 50
    sget-object v0, Lcom/facebook/orca/prefs/MessengerPrefKeys;->t:Lcom/facebook/orca/prefs/PrefKey;

    const-string v1, "dismissed_version"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/PrefKey;->c(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/PrefKey;

    sput-object v0, Lcom/facebook/orca/prefs/MessengerPrefKeys;->u:Lcom/facebook/orca/prefs/PrefKey;

    .line 52
    sget-object v0, Lcom/facebook/orca/prefs/MessengerPrefKeys;->t:Lcom/facebook/orca/prefs/PrefKey;

    const-string v1, "dismissed_time"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/PrefKey;->c(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/PrefKey;

    sput-object v0, Lcom/facebook/orca/prefs/MessengerPrefKeys;->v:Lcom/facebook/orca/prefs/PrefKey;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
