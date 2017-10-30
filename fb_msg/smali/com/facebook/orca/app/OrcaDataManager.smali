.class public Lcom/facebook/orca/app/OrcaDataManager;
.super Ljava/lang/Object;
.source "OrcaDataManager.java"

# interfaces
.implements Lcom/facebook/orca/app/INeedInit;


# static fields
.field private static final B:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/orca/prefs/PrefKey;",
            ">;"
        }
    .end annotation
.end field

.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private A:Lcom/facebook/orca/prefs/OrcaSharedPreferences$OnSharedPreferenceChangeListener;

.field private final b:Landroid/content/Context;

.field private final c:Lcom/facebook/orca/auth/AuthDataStore;

.field private final d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/facebook/orca/images/ImageCache;

.field private final f:Lcom/facebook/orca/audio/AudioCache;

.field private final g:Lcom/facebook/orca/database/ThreadsDatabaseSupplier;

.field private final h:Lcom/facebook/orca/cache/ThreadsCache;

.field private final i:Lcom/facebook/orca/cache/ThreadDisplayCache;

.field private final j:Lcom/facebook/orca/database/UsersDatabaseSupplier;

.field private final k:Lcom/facebook/orca/analytics/AnalyticsDatabaseSupplier;

.field private final l:Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;

.field private final m:Lcom/facebook/orca/prefs/UiCounters;

.field private final n:Lcom/facebook/orca/contacts/picker/FriendListPickerCache;

.field private final o:Lcom/facebook/orca/contacts/picker/AddressBookPickerCache;

.field private final p:Lcom/facebook/orca/contacts/favorites/FavoriteContactsCache;

.field private final q:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/orca/database/AddressBookPeriodicRunner;",
            ">;"
        }
    .end annotation
.end field

.field private final r:Lcom/facebook/orca/common/util/AndroidThreadUtil;

.field private final s:Lcom/facebook/orca/server/OrcaServiceQueueManager;

.field private final t:Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;

.field private final u:Lcom/facebook/orca/location/LocationCache;

.field private final v:Lcom/facebook/orca/location/GeocodingCache;

.field private final w:Lcom/facebook/orca/database/DbMessageCache;

.field private final x:Lcom/facebook/orca/cache/ChatVisibilityCache;

.field private final y:Lcom/facebook/orca/rollout/OrcaRolloutManager;

.field private final z:Lcom/facebook/orca/app/OrcaActivityBroadcaster;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    .line 54
    const-class v0, Lcom/facebook/orca/app/OrcaDataManager;

    sput-object v0, Lcom/facebook/orca/app/OrcaDataManager;->a:Ljava/lang/Class;

    .line 328
    sget-object v0, Lcom/facebook/orca/prefs/AuthPrefKeys;->b:Lcom/facebook/orca/prefs/PrefKey;

    sget-object v1, Lcom/facebook/orca/prefs/AuthPrefKeys;->g:Lcom/facebook/orca/prefs/PrefKey;

    sget-object v2, Lcom/facebook/orca/prefs/MessengerPrefKeys;->n:Lcom/facebook/orca/prefs/PrefKey;

    sget-object v3, Lcom/facebook/orca/prefs/ConfigPrefKeys;->a:Lcom/facebook/orca/prefs/PrefKey;

    sget-object v4, Lcom/facebook/orca/prefs/MessagesPrefKeys;->r:Lcom/facebook/orca/prefs/PrefKey;

    sget-object v5, Lcom/facebook/orca/prefs/MessagesPrefKeys;->t:Lcom/facebook/orca/prefs/PrefKey;

    const/4 v6, 0x1

    new-array v6, v6, [Lcom/facebook/orca/prefs/PrefKey;

    const/4 v7, 0x0

    sget-object v8, Lcom/facebook/orca/prefs/ConfigPrefKeys;->f:Lcom/facebook/orca/prefs/PrefKey;

    aput-object v8, v6, v7

    invoke-static/range {v0 .. v6}, Lcom/google/common/collect/ImmutableSet;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Lcom/facebook/orca/app/OrcaDataManager;->B:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/orca/auth/AuthDataStore;Ljavax/inject/Provider;Lcom/facebook/orca/images/ImageCache;Lcom/facebook/orca/audio/AudioCache;Lcom/facebook/orca/database/ThreadsDatabaseSupplier;Lcom/facebook/orca/cache/ThreadsCache;Lcom/facebook/orca/cache/ThreadDisplayCache;Lcom/facebook/orca/database/UsersDatabaseSupplier;Lcom/facebook/orca/analytics/AnalyticsDatabaseSupplier;Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;Lcom/facebook/orca/prefs/UiCounters;Lcom/facebook/orca/contacts/picker/FriendListPickerCache;Lcom/facebook/orca/contacts/picker/AddressBookPickerCache;Lcom/facebook/orca/contacts/favorites/FavoriteContactsCache;Ljavax/inject/Provider;Lcom/facebook/orca/common/util/AndroidThreadUtil;Lcom/facebook/orca/server/OrcaServiceQueueManager;Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;Lcom/facebook/orca/location/LocationCache;Lcom/facebook/orca/location/GeocodingCache;Lcom/facebook/orca/database/DbMessageCache;Lcom/facebook/orca/cache/ChatVisibilityCache;Lcom/facebook/orca/rollout/OrcaRolloutManager;Lcom/facebook/orca/app/OrcaActivityBroadcaster;)V
    .locals 1
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
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/facebook/orca/auth/AuthDataStore;",
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/facebook/orca/images/ImageCache;",
            "Lcom/facebook/orca/audio/AudioCache;",
            "Lcom/facebook/orca/database/ThreadsDatabaseSupplier;",
            "Lcom/facebook/orca/cache/ThreadsCache;",
            "Lcom/facebook/orca/cache/ThreadDisplayCache;",
            "Lcom/facebook/orca/database/UsersDatabaseSupplier;",
            "Lcom/facebook/orca/analytics/AnalyticsDatabaseSupplier;",
            "Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;",
            "Lcom/facebook/orca/prefs/UiCounters;",
            "Lcom/facebook/orca/contacts/picker/FriendListPickerCache;",
            "Lcom/facebook/orca/contacts/picker/AddressBookPickerCache;",
            "Lcom/facebook/orca/contacts/favorites/FavoriteContactsCache;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/orca/database/AddressBookPeriodicRunner;",
            ">;",
            "Lcom/facebook/orca/common/util/AndroidThreadUtil;",
            "Lcom/facebook/orca/server/OrcaServiceQueueManager;",
            "Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;",
            "Lcom/facebook/orca/location/LocationCache;",
            "Lcom/facebook/orca/location/GeocodingCache;",
            "Lcom/facebook/orca/database/DbMessageCache;",
            "Lcom/facebook/orca/cache/ChatVisibilityCache;",
            "Lcom/facebook/orca/rollout/OrcaRolloutManager;",
            "Lcom/facebook/orca/app/OrcaActivityBroadcaster;",
            ")V"
        }
    .end annotation

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-object p1, p0, Lcom/facebook/orca/app/OrcaDataManager;->b:Landroid/content/Context;

    .line 114
    iput-object p2, p0, Lcom/facebook/orca/app/OrcaDataManager;->c:Lcom/facebook/orca/auth/AuthDataStore;

    .line 115
    iput-object p3, p0, Lcom/facebook/orca/app/OrcaDataManager;->d:Ljavax/inject/Provider;

    .line 116
    iput-object p4, p0, Lcom/facebook/orca/app/OrcaDataManager;->e:Lcom/facebook/orca/images/ImageCache;

    .line 117
    iput-object p5, p0, Lcom/facebook/orca/app/OrcaDataManager;->f:Lcom/facebook/orca/audio/AudioCache;

    .line 118
    iput-object p6, p0, Lcom/facebook/orca/app/OrcaDataManager;->g:Lcom/facebook/orca/database/ThreadsDatabaseSupplier;

    .line 119
    iput-object p7, p0, Lcom/facebook/orca/app/OrcaDataManager;->h:Lcom/facebook/orca/cache/ThreadsCache;

    .line 120
    iput-object p8, p0, Lcom/facebook/orca/app/OrcaDataManager;->i:Lcom/facebook/orca/cache/ThreadDisplayCache;

    .line 121
    iput-object p9, p0, Lcom/facebook/orca/app/OrcaDataManager;->j:Lcom/facebook/orca/database/UsersDatabaseSupplier;

    .line 122
    iput-object p10, p0, Lcom/facebook/orca/app/OrcaDataManager;->k:Lcom/facebook/orca/analytics/AnalyticsDatabaseSupplier;

    .line 123
    iput-object p11, p0, Lcom/facebook/orca/app/OrcaDataManager;->l:Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;

    .line 124
    iput-object p12, p0, Lcom/facebook/orca/app/OrcaDataManager;->m:Lcom/facebook/orca/prefs/UiCounters;

    .line 125
    iput-object p13, p0, Lcom/facebook/orca/app/OrcaDataManager;->n:Lcom/facebook/orca/contacts/picker/FriendListPickerCache;

    .line 126
    iput-object p14, p0, Lcom/facebook/orca/app/OrcaDataManager;->o:Lcom/facebook/orca/contacts/picker/AddressBookPickerCache;

    .line 127
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/facebook/orca/app/OrcaDataManager;->p:Lcom/facebook/orca/contacts/favorites/FavoriteContactsCache;

    .line 128
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/facebook/orca/app/OrcaDataManager;->q:Ljavax/inject/Provider;

    .line 129
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/facebook/orca/app/OrcaDataManager;->r:Lcom/facebook/orca/common/util/AndroidThreadUtil;

    .line 130
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/facebook/orca/app/OrcaDataManager;->s:Lcom/facebook/orca/server/OrcaServiceQueueManager;

    .line 131
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/facebook/orca/app/OrcaDataManager;->t:Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;

    .line 132
    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/facebook/orca/app/OrcaDataManager;->u:Lcom/facebook/orca/location/LocationCache;

    .line 133
    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/facebook/orca/app/OrcaDataManager;->v:Lcom/facebook/orca/location/GeocodingCache;

    .line 134
    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/facebook/orca/app/OrcaDataManager;->w:Lcom/facebook/orca/database/DbMessageCache;

    .line 135
    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/facebook/orca/app/OrcaDataManager;->x:Lcom/facebook/orca/cache/ChatVisibilityCache;

    .line 136
    move-object/from16 v0, p24

    iput-object v0, p0, Lcom/facebook/orca/app/OrcaDataManager;->y:Lcom/facebook/orca/rollout/OrcaRolloutManager;

    .line 137
    move-object/from16 v0, p25

    iput-object v0, p0, Lcom/facebook/orca/app/OrcaDataManager;->z:Lcom/facebook/orca/app/OrcaActivityBroadcaster;

    .line 138
    return-void
.end method

.method private a(Landroid/content/Context;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 208
    const-string v0, "com.facebook.orca_preferences"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p1, v0, v1, p2, v2}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;Ljava/lang/String;IIZ)V

    .line 214
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/app/OrcaDataManager;)V
    .locals 0
    .parameter

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/facebook/orca/app/OrcaDataManager;->l()V

    return-void
.end method

.method static synthetic b(Lcom/facebook/orca/app/OrcaDataManager;)V
    .locals 0
    .parameter

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/facebook/orca/app/OrcaDataManager;->j()V

    return-void
.end method

.method static synthetic c(Lcom/facebook/orca/app/OrcaDataManager;)Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/facebook/orca/app/OrcaDataManager;->l:Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;

    return-object v0
.end method

.method static synthetic d(Lcom/facebook/orca/app/OrcaDataManager;)Lcom/facebook/orca/app/OrcaActivityBroadcaster;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/facebook/orca/app/OrcaDataManager;->z:Lcom/facebook/orca/app/OrcaActivityBroadcaster;

    return-object v0
.end method

.method private j()V
    .locals 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/facebook/orca/app/OrcaDataManager;->r:Lcom/facebook/orca/common/util/AndroidThreadUtil;

    new-instance v1, Lcom/facebook/orca/app/OrcaDataManager$2;

    invoke-direct {v1, p0}, Lcom/facebook/orca/app/OrcaDataManager$2;-><init>(Lcom/facebook/orca/app/OrcaDataManager;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/common/util/AndroidThreadUtil;->c(Ljava/lang/Runnable;)V

    .line 234
    return-void
.end method

.method private k()V
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/facebook/orca/app/OrcaDataManager;->u:Lcom/facebook/orca/location/LocationCache;

    invoke-virtual {v0}, Lcom/facebook/orca/location/LocationCache;->b()V

    .line 321
    iget-object v0, p0, Lcom/facebook/orca/app/OrcaDataManager;->v:Lcom/facebook/orca/location/GeocodingCache;

    invoke-virtual {v0}, Lcom/facebook/orca/location/GeocodingCache;->a()V

    .line 322
    return-void
.end method

.method private l()V
    .locals 5

    .prologue
    const/4 v1, -0x1

    .line 354
    iget-object v0, p0, Lcom/facebook/orca/app/OrcaDataManager;->l:Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;

    sget-object v2, Lcom/facebook/orca/prefs/SharedPrefKeys;->g:Lcom/facebook/orca/prefs/PrefKey;

    const-string v3, "-1"

    invoke-virtual {v0, v2, v3}, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;->a(Lcom/facebook/orca/prefs/PrefKey;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 356
    iget-object v2, p0, Lcom/facebook/orca/app/OrcaDataManager;->l:Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;

    sget-object v3, Lcom/facebook/orca/prefs/SharedPrefKeys;->h:Lcom/facebook/orca/prefs/PrefKey;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;->a(Lcom/facebook/orca/prefs/PrefKey;Z)Z

    move-result v2

    .line 360
    if-eqz v2, :cond_0

    .line 361
    const/4 v0, 0x2

    .line 369
    :goto_0
    if-eq v0, v1, :cond_1

    .line 370
    invoke-static {v0}, Lcom/facebook/orca/debug/BLog;->a(I)V

    .line 374
    :goto_1
    return-void

    .line 364
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 365
    :catch_0
    move-exception v0

    move v0, v1

    .line 366
    goto :goto_0

    .line 372
    :cond_1
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/facebook/orca/debug/BLog;->a(I)V

    goto :goto_1
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 240
    iget-object v0, p0, Lcom/facebook/orca/app/OrcaDataManager;->r:Lcom/facebook/orca/common/util/AndroidThreadUtil;

    invoke-interface {v0}, Lcom/facebook/orca/common/util/AndroidThreadUtil;->b()V

    .line 245
    iget-object v0, p0, Lcom/facebook/orca/app/OrcaDataManager;->s:Lcom/facebook/orca/server/OrcaServiceQueueManager;

    invoke-virtual {v0}, Lcom/facebook/orca/server/OrcaServiceQueueManager;->a()V

    .line 248
    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/app/OrcaDataManager;->t:Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;

    invoke-virtual {v0}, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 251
    :try_start_1
    iget-object v0, p0, Lcom/facebook/orca/app/OrcaDataManager;->t:Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;

    invoke-virtual {v0}, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;->c()V

    .line 253
    iget-object v0, p0, Lcom/facebook/orca/app/OrcaDataManager;->s:Lcom/facebook/orca/server/OrcaServiceQueueManager;

    invoke-virtual {v0}, Lcom/facebook/orca/server/OrcaServiceQueueManager;->d()V

    .line 254
    invoke-virtual {p0}, Lcom/facebook/orca/app/OrcaDataManager;->c()V

    .line 257
    iget-object v0, p0, Lcom/facebook/orca/app/OrcaDataManager;->d:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/app/OrcaDataManager;->c:Lcom/facebook/orca/auth/AuthDataStore;

    invoke-interface {v0}, Lcom/facebook/orca/auth/AuthDataStore;->a()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 259
    iget-object v0, p0, Lcom/facebook/orca/app/OrcaDataManager;->c:Lcom/facebook/orca/auth/AuthDataStore;

    invoke-interface {v0}, Lcom/facebook/orca/auth/AuthDataStore;->b()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 262
    :try_start_2
    iget-object v0, p0, Lcom/facebook/orca/app/OrcaDataManager;->t:Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;

    invoke-virtual {v0}, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;->b()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 270
    iget-object v0, p0, Lcom/facebook/orca/app/OrcaDataManager;->s:Lcom/facebook/orca/server/OrcaServiceQueueManager;

    invoke-virtual {v0}, Lcom/facebook/orca/server/OrcaServiceQueueManager;->b()V

    .line 272
    return-void

    :cond_1
    move v0, v2

    .line 257
    goto :goto_0

    :cond_2
    move v0, v2

    .line 259
    goto :goto_1

    .line 262
    :catchall_0
    move-exception v0

    :try_start_3
    iget-object v1, p0, Lcom/facebook/orca/app/OrcaDataManager;->t:Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;

    invoke-virtual {v1}, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;->b()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 270
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/facebook/orca/app/OrcaDataManager;->s:Lcom/facebook/orca/server/OrcaServiceQueueManager;

    invoke-virtual {v1}, Lcom/facebook/orca/server/OrcaServiceQueueManager;->b()V

    throw v0
.end method

.method public b()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/16 v6, 0x8

    const/4 v3, 0x2

    const/4 v5, -0x1

    .line 141
    const-string v0, "OrcaDataManager.init"

    invoke-static {v0}, Lcom/facebook/orca/debug/Tracer;->a(Ljava/lang/String;)Lcom/facebook/orca/debug/Tracer;

    move-result-object v0

    .line 143
    iget-object v1, p0, Lcom/facebook/orca/app/OrcaDataManager;->b:Landroid/content/Context;

    sget v2, Lcom/facebook/R$xml;->preferences:I

    invoke-direct {p0, v1, v2}, Lcom/facebook/orca/app/OrcaDataManager;->a(Landroid/content/Context;I)V

    .line 144
    iget-object v1, p0, Lcom/facebook/orca/app/OrcaDataManager;->b:Landroid/content/Context;

    sget v2, Lcom/facebook/R$xml;->preferences_internal:I

    invoke-direct {p0, v1, v2}, Lcom/facebook/orca/app/OrcaDataManager;->a(Landroid/content/Context;I)V

    .line 145
    iget-object v1, p0, Lcom/facebook/orca/app/OrcaDataManager;->b:Landroid/content/Context;

    sget v2, Lcom/facebook/R$xml;->preferences_smsmms:I

    invoke-direct {p0, v1, v2}, Lcom/facebook/orca/app/OrcaDataManager;->a(Landroid/content/Context;I)V

    .line 146
    iget-object v1, p0, Lcom/facebook/orca/app/OrcaDataManager;->b:Landroid/content/Context;

    sget v2, Lcom/facebook/R$xml;->preferences_notif:I

    invoke-direct {p0, v1, v2}, Lcom/facebook/orca/app/OrcaDataManager;->a(Landroid/content/Context;I)V

    .line 148
    invoke-direct {p0}, Lcom/facebook/orca/app/OrcaDataManager;->l()V

    .line 150
    invoke-static {v3}, Lcom/facebook/orca/debug/BLog;->b(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 151
    iget-object v1, p0, Lcom/facebook/orca/app/OrcaDataManager;->l:Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;

    invoke-virtual {v1}, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;->d()V

    .line 155
    :cond_0
    iget-object v1, p0, Lcom/facebook/orca/app/OrcaDataManager;->l:Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;

    sget-object v2, Lcom/facebook/orca/prefs/AuthPrefKeys;->g:Lcom/facebook/orca/prefs/PrefKey;

    invoke-virtual {v1, v2, v5}, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;->a(Lcom/facebook/orca/prefs/PrefKey;I)I

    move-result v1

    .line 156
    if-ge v1, v3, :cond_1

    .line 157
    sget-object v1, Lcom/facebook/orca/app/OrcaDataManager;->a:Ljava/lang/Class;

    const-string v2, "Me user version upgrade to version 2"

    invoke-static {v1, v2}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/Class;Ljava/lang/String;)V

    .line 159
    iget-object v1, p0, Lcom/facebook/orca/app/OrcaDataManager;->c:Lcom/facebook/orca/auth/AuthDataStore;

    invoke-interface {v1}, Lcom/facebook/orca/auth/AuthDataStore;->e()V

    .line 160
    invoke-virtual {p0}, Lcom/facebook/orca/app/OrcaDataManager;->d()V

    .line 161
    iget-object v1, p0, Lcom/facebook/orca/app/OrcaDataManager;->l:Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;

    invoke-virtual {v1}, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;->b()Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    move-result-object v1

    .line 162
    sget-object v2, Lcom/facebook/orca/prefs/AuthPrefKeys;->g:Lcom/facebook/orca/prefs/PrefKey;

    invoke-interface {v1, v2, v3}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a(Lcom/facebook/orca/prefs/PrefKey;I)Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    .line 163
    invoke-interface {v1}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a()V

    .line 167
    :cond_1
    iget-object v1, p0, Lcom/facebook/orca/app/OrcaDataManager;->l:Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;

    sget-object v2, Lcom/facebook/orca/prefs/ConfigPrefKeys;->e:Lcom/facebook/orca/prefs/PrefKey;

    invoke-virtual {v1, v2, v5}, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;->a(Lcom/facebook/orca/prefs/PrefKey;I)I

    move-result v1

    .line 168
    if-ge v1, v6, :cond_2

    .line 169
    sget-object v1, Lcom/facebook/orca/app/OrcaDataManager;->a:Ljava/lang/Class;

    const-string v2, "GK version upgrade to version %d"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v1, v2, v3}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 172
    iget-object v1, p0, Lcom/facebook/orca/app/OrcaDataManager;->c:Lcom/facebook/orca/auth/AuthDataStore;

    invoke-interface {v1}, Lcom/facebook/orca/auth/AuthDataStore;->e()V

    .line 174
    iget-object v1, p0, Lcom/facebook/orca/app/OrcaDataManager;->l:Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;

    invoke-virtual {v1}, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;->b()Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    move-result-object v1

    .line 175
    sget-object v2, Lcom/facebook/orca/prefs/ConfigPrefKeys;->e:Lcom/facebook/orca/prefs/PrefKey;

    invoke-interface {v1, v2, v6}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a(Lcom/facebook/orca/prefs/PrefKey;I)Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    .line 176
    invoke-interface {v1}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a()V

    .line 180
    :cond_2
    iget-object v1, p0, Lcom/facebook/orca/app/OrcaDataManager;->l:Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;

    sget-object v2, Lcom/facebook/orca/prefs/ConfigPrefKeys;->i:Lcom/facebook/orca/prefs/PrefKey;

    invoke-virtual {v1, v2, v5}, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;->a(Lcom/facebook/orca/prefs/PrefKey;I)I

    move-result v1

    .line 181
    iget-object v2, p0, Lcom/facebook/orca/app/OrcaDataManager;->y:Lcom/facebook/orca/rollout/OrcaRolloutManager;

    invoke-virtual {v2}, Lcom/facebook/orca/rollout/OrcaRolloutManager;->b()I

    move-result v2

    .line 182
    if-ge v1, v2, :cond_3

    .line 183
    sget-object v1, Lcom/facebook/orca/app/OrcaDataManager;->a:Ljava/lang/Class;

    const-string v3, "Rollout version upgrade to version %d"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v1, v3, v4}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 185
    iget-object v1, p0, Lcom/facebook/orca/app/OrcaDataManager;->c:Lcom/facebook/orca/auth/AuthDataStore;

    invoke-interface {v1}, Lcom/facebook/orca/auth/AuthDataStore;->e()V

    .line 186
    iget-object v1, p0, Lcom/facebook/orca/app/OrcaDataManager;->l:Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;

    invoke-virtual {v1}, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;->b()Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    move-result-object v1

    .line 187
    sget-object v3, Lcom/facebook/orca/prefs/ConfigPrefKeys;->i:Lcom/facebook/orca/prefs/PrefKey;

    invoke-interface {v1, v3, v2}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a(Lcom/facebook/orca/prefs/PrefKey;I)Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    .line 188
    invoke-interface {v1}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a()V

    .line 191
    :cond_3
    new-instance v1, Lcom/facebook/orca/app/OrcaDataManager$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/app/OrcaDataManager$1;-><init>(Lcom/facebook/orca/app/OrcaDataManager;)V

    iput-object v1, p0, Lcom/facebook/orca/app/OrcaDataManager;->A:Lcom/facebook/orca/prefs/OrcaSharedPreferences$OnSharedPreferenceChangeListener;

    .line 203
    iget-object v1, p0, Lcom/facebook/orca/app/OrcaDataManager;->l:Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;

    iget-object v2, p0, Lcom/facebook/orca/app/OrcaDataManager;->A:Lcom/facebook/orca/prefs/OrcaSharedPreferences$OnSharedPreferenceChangeListener;

    invoke-virtual {v1, v2}, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;->a(Lcom/facebook/orca/prefs/OrcaSharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 204
    invoke-virtual {v0}, Lcom/facebook/orca/debug/Tracer;->a()J

    .line 205
    return-void
.end method

.method public c()V
    .locals 0

    .prologue
    .line 275
    invoke-virtual {p0}, Lcom/facebook/orca/app/OrcaDataManager;->d()V

    .line 276
    invoke-virtual {p0}, Lcom/facebook/orca/app/OrcaDataManager;->i()V

    .line 277
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 280
    invoke-virtual {p0}, Lcom/facebook/orca/app/OrcaDataManager;->e()V

    .line 281
    invoke-virtual {p0}, Lcom/facebook/orca/app/OrcaDataManager;->h()V

    .line 284
    invoke-direct {p0}, Lcom/facebook/orca/app/OrcaDataManager;->k()V

    .line 285
    iget-object v0, p0, Lcom/facebook/orca/app/OrcaDataManager;->e:Lcom/facebook/orca/images/ImageCache;

    invoke-virtual {v0}, Lcom/facebook/orca/images/ImageCache;->c()V

    .line 286
    iget-object v0, p0, Lcom/facebook/orca/app/OrcaDataManager;->f:Lcom/facebook/orca/audio/AudioCache;

    invoke-virtual {v0}, Lcom/facebook/orca/audio/AudioCache;->c()V

    .line 287
    iget-object v0, p0, Lcom/facebook/orca/app/OrcaDataManager;->x:Lcom/facebook/orca/cache/ChatVisibilityCache;

    invoke-virtual {v0}, Lcom/facebook/orca/cache/ChatVisibilityCache;->c()V

    .line 288
    return-void
.end method

.method public e()V
    .locals 2

    .prologue
    .line 291
    iget-object v0, p0, Lcom/facebook/orca/app/OrcaDataManager;->g:Lcom/facebook/orca/database/ThreadsDatabaseSupplier;

    invoke-virtual {v0}, Lcom/facebook/orca/database/ThreadsDatabaseSupplier;->b()V

    .line 292
    iget-object v0, p0, Lcom/facebook/orca/app/OrcaDataManager;->w:Lcom/facebook/orca/database/DbMessageCache;

    invoke-virtual {v0}, Lcom/facebook/orca/database/DbMessageCache;->a()V

    .line 293
    iget-object v0, p0, Lcom/facebook/orca/app/OrcaDataManager;->h:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v0}, Lcom/facebook/orca/cache/ThreadsCache;->b()V

    .line 294
    iget-object v0, p0, Lcom/facebook/orca/app/OrcaDataManager;->i:Lcom/facebook/orca/cache/ThreadDisplayCache;

    invoke-virtual {v0}, Lcom/facebook/orca/cache/ThreadDisplayCache;->a()V

    .line 296
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 297
    const-string v1, "com.facebook.orca.ACTION_THREAD_CACHE_CLEARED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 298
    iget-object v1, p0, Lcom/facebook/orca/app/OrcaDataManager;->b:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->a(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->a(Landroid/content/Intent;)Z

    .line 299
    return-void
.end method

.method public f()V
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/facebook/orca/app/OrcaDataManager;->h:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v0}, Lcom/facebook/orca/cache/ThreadsCache;->c()V

    .line 303
    iget-object v0, p0, Lcom/facebook/orca/app/OrcaDataManager;->i:Lcom/facebook/orca/cache/ThreadDisplayCache;

    invoke-virtual {v0}, Lcom/facebook/orca/cache/ThreadDisplayCache;->b()V

    .line 304
    return-void
.end method

.method public g()V
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/facebook/orca/app/OrcaDataManager;->g:Lcom/facebook/orca/database/ThreadsDatabaseSupplier;

    invoke-virtual {v0}, Lcom/facebook/orca/database/ThreadsDatabaseSupplier;->c()V

    .line 308
    iget-object v0, p0, Lcom/facebook/orca/app/OrcaDataManager;->w:Lcom/facebook/orca/database/DbMessageCache;

    invoke-virtual {v0}, Lcom/facebook/orca/database/DbMessageCache;->b()V

    .line 309
    return-void
.end method

.method public h()V
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/facebook/orca/app/OrcaDataManager;->j:Lcom/facebook/orca/database/UsersDatabaseSupplier;

    invoke-virtual {v0}, Lcom/facebook/orca/database/UsersDatabaseSupplier;->b()V

    .line 313
    iget-object v0, p0, Lcom/facebook/orca/app/OrcaDataManager;->n:Lcom/facebook/orca/contacts/picker/FriendListPickerCache;

    invoke-virtual {v0}, Lcom/facebook/orca/contacts/picker/FriendListPickerCache;->e()V

    .line 314
    iget-object v0, p0, Lcom/facebook/orca/app/OrcaDataManager;->o:Lcom/facebook/orca/contacts/picker/AddressBookPickerCache;

    invoke-virtual {v0}, Lcom/facebook/orca/contacts/picker/AddressBookPickerCache;->b()V

    .line 315
    iget-object v0, p0, Lcom/facebook/orca/app/OrcaDataManager;->p:Lcom/facebook/orca/contacts/favorites/FavoriteContactsCache;

    invoke-virtual {v0}, Lcom/facebook/orca/contacts/favorites/FavoriteContactsCache;->a()V

    .line 316
    iget-object v0, p0, Lcom/facebook/orca/app/OrcaDataManager;->q:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/database/AddressBookPeriodicRunner;

    invoke-virtual {v0}, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->d()V

    .line 317
    return-void
.end method

.method public i()V
    .locals 2

    .prologue
    .line 339
    iget-object v0, p0, Lcom/facebook/orca/app/OrcaDataManager;->l:Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;

    sget-object v1, Lcom/facebook/orca/app/OrcaDataManager;->B:Ljava/util/Set;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;->a(Ljava/util/Set;)V

    .line 340
    iget-object v0, p0, Lcom/facebook/orca/app/OrcaDataManager;->c:Lcom/facebook/orca/auth/AuthDataStore;

    invoke-interface {v0}, Lcom/facebook/orca/auth/AuthDataStore;->e()V

    .line 341
    return-void
.end method
