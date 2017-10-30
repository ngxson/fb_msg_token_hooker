.class public Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;
.super Ljava/lang/Object;
.source "OrcaSharedPreferencesImpl.java"

# interfaces
.implements Lcom/facebook/orca/prefs/OrcaSharedPreferences;


# annotations
.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# static fields
.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final b:[Ljava/lang/String;

.field private static final s:Ljava/lang/Object;


# instance fields
.field private final c:Landroid/content/Context;

.field private final d:Landroid/content/ContentResolver;

.field private final e:Lcom/facebook/orca/common/util/AndroidThreadUtil;

.field private final f:Lcom/facebook/orca/prefs/OrcaSharedPreferencesContract;

.field private g:Landroid/content/SharedPreferences;

.field private final h:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Lcom/facebook/orca/prefs/PrefKey;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/facebook/orca/prefs/PrefKey;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final j:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final k:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/facebook/orca/prefs/OrcaSharedPreferences$OnSharedPreferenceChangeListener;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private m:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private n:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final o:Ljava/lang/Object;

.field private p:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "syncLock"
    .end annotation
.end field

.field private final q:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private final r:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 70
    const-class v0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    sput-object v0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;->a:Ljava/lang/Class;

    .line 72
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "key"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "value"

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;->b:[Ljava/lang/String;

    .line 246
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;->s:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/facebook/orca/common/util/AndroidThreadUtil;Landroid/content/SharedPreferences;Lcom/facebook/orca/prefs/OrcaSharedPreferencesContract;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;->o:Ljava/lang/Object;

    .line 117
    const-string v0, "OrcaSharedPreferences.ctor"

    invoke-static {v0}, Lcom/facebook/orca/debug/Tracer;->a(Ljava/lang/String;)Lcom/facebook/orca/debug/Tracer;

    move-result-object v0

    .line 118
    iput-object p1, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;->c:Landroid/content/Context;

    .line 119
    iput-object p2, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;->d:Landroid/content/ContentResolver;

    .line 120
    iput-object p3, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;->e:Lcom/facebook/orca/common/util/AndroidThreadUtil;

    .line 121
    iput-object p5, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;->f:Lcom/facebook/orca/prefs/OrcaSharedPreferencesContract;

    .line 122
    invoke-static {}, Lcom/google/common/collect/Maps;->d()Ljava/util/TreeMap;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;->h:Ljava/util/TreeMap;

    .line 123
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;->i:Ljava/util/Map;

    .line 124
    invoke-static {}, Lcom/google/common/collect/Sets;->a()Ljava/util/HashSet;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;->j:Ljava/util/Set;

    .line 125
    invoke-static {}, Lcom/google/common/collect/Sets;->a()Ljava/util/HashSet;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;->k:Ljava/util/Set;

    .line 126
    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v1, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;->l:Ljava/util/Map;

    .line 127
    iput-object p4, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;->g:Landroid/content/SharedPreferences;

    .line 128
    new-instance v1, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl$1;-><init>(Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;)V

    iput-object v1, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;->q:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 134
    new-instance v1, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl$2;

    invoke-direct {v1, p0}, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl$2;-><init>(Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;)V

    iput-object v1, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;->r:Landroid/content/BroadcastReceiver;

    .line 140
    invoke-virtual {v0}, Lcom/facebook/orca/debug/Tracer;->a()J

    .line 141
    return-void
.end method

.method private a(Ljava/util/Map;Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/facebook/orca/prefs/PrefKey;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lcom/facebook/orca/prefs/PrefKey;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Lcom/facebook/orca/prefs/PrefKey;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 701
    invoke-static {p1, p2}, Lcom/google/common/collect/Maps;->a(Ljava/util/Map;Ljava/util/Map;)Lcom/google/common/collect/MapDifference;

    move-result-object v0

    .line 702
    invoke-interface {v0}, Lcom/google/common/collect/MapDifference;->a()Ljava/util/Map;

    move-result-object v1

    .line 703
    invoke-interface {v0}, Lcom/google/common/collect/MapDifference;->b()Ljava/util/Map;

    move-result-object v2

    .line 704
    invoke-interface {v0}, Lcom/google/common/collect/MapDifference;->d()Ljava/util/Map;

    move-result-object v3

    .line 708
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->k()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v4

    .line 709
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/PrefKey;

    .line 710
    sget-object v5, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;->s:Ljava/lang/Object;

    invoke-virtual {v4, v0, v5}, Lcom/google/common/collect/ImmutableMap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    goto :goto_0

    .line 712
    :cond_0
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 713
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v2, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    goto :goto_1

    .line 716
    :cond_1
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 717
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/MapDifference$ValueDifference;

    invoke-interface {v0}, Lcom/google/common/collect/MapDifference$ValueDifference;->b()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v2, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    goto :goto_2

    .line 719
    :cond_2
    invoke-virtual {v4}, Lcom/google/common/collect/ImmutableMap$Builder;->b()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/content/SharedPreferences$Editor;Ljava/util/Map;)V
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences$Editor;",
            "Ljava/util/Map",
            "<",
            "Lcom/facebook/orca/prefs/PrefKey;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 650
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 651
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/prefs/PrefKey;

    .line 652
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 653
    sget-object v3, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;->s:Ljava/lang/Object;

    if-ne v0, v3, :cond_1

    .line 654
    invoke-virtual {v1}, Lcom/facebook/orca/prefs/PrefKey;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 656
    :cond_1
    if-eqz v0, :cond_0

    .line 657
    instance-of v3, v0, Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 658
    invoke-virtual {v1}, Lcom/facebook/orca/prefs/PrefKey;->a()Ljava/lang/String;

    move-result-object v1

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 659
    :cond_2
    instance-of v3, v0, Ljava/lang/Boolean;

    if-eqz v3, :cond_3

    .line 660
    invoke-virtual {v1}, Lcom/facebook/orca/prefs/PrefKey;->a()Ljava/lang/String;

    move-result-object v1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 661
    :cond_3
    instance-of v3, v0, Ljava/lang/Integer;

    if-eqz v3, :cond_4

    .line 662
    invoke-virtual {v1}, Lcom/facebook/orca/prefs/PrefKey;->a()Ljava/lang/String;

    move-result-object v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 663
    :cond_4
    instance-of v3, v0, Ljava/lang/Long;

    if-eqz v3, :cond_5

    .line 664
    invoke-virtual {v1}, Lcom/facebook/orca/prefs/PrefKey;->a()Ljava/lang/String;

    move-result-object v1

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-interface {p1, v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 665
    :cond_5
    instance-of v3, v0, Ljava/lang/Float;

    if-eqz v3, :cond_0

    .line 666
    invoke-virtual {v1}, Lcom/facebook/orca/prefs/PrefKey;->a()Ljava/lang/String;

    move-result-object v1

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 671
    :cond_6
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;)V
    .locals 0
    .parameter

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;->h()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;->a(Ljava/util/List;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;Ljava/util/Map;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;->a(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;Ljava/util/Map;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;->a(Ljava/util/Map;Z)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 239
    monitor-enter p0

    .line 240
    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;->k:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 241
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    invoke-direct {p0}, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;->g()V

    .line 243
    return-void

    .line 241
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 227
    monitor-enter p0

    .line 228
    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;->j:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 229
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    invoke-direct {p0}, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;->g()V

    .line 231
    return-void

    .line 229
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(Ljava/util/Map;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/facebook/orca/prefs/PrefKey;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 439
    monitor-enter p0

    .line 441
    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;->l:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v2

    .line 442
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 444
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/PrefKey;

    .line 445
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/prefs/OrcaSharedPreferences$OnSharedPreferenceChangeListener;

    .line 446
    if-eqz v1, :cond_1

    .line 447
    invoke-interface {v1, p0, v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$OnSharedPreferenceChangeListener;->a(Lcom/facebook/orca/prefs/OrcaSharedPreferences;Lcom/facebook/orca/prefs/PrefKey;)V

    goto :goto_0

    .line 442
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 451
    :cond_2
    return-void
.end method

.method private a(Ljava/util/Map;Z)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/facebook/orca/prefs/PrefKey;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 406
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 435
    :goto_0
    return-void

    .line 409
    :cond_0
    monitor-enter p0

    .line 411
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 412
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/prefs/PrefKey;

    .line 413
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 414
    sget-object v3, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;->s:Ljava/lang/Object;

    if-ne v0, v3, :cond_1

    .line 415
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;->h:Ljava/util/TreeMap;

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 426
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 417
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;->h:Ljava/util/TreeMap;

    invoke-virtual {v3, v1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 422
    :cond_2
    if-eqz p2, :cond_3

    .line 423
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;->i:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 424
    invoke-direct {p0}, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;->g()V

    .line 426
    :cond_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 429
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;->e:Lcom/facebook/orca/common/util/AndroidThreadUtil;

    new-instance v1, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl$3;

    invoke-direct {v1, p0, p1}, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl$3;-><init>(Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;Ljava/util/Map;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/common/util/AndroidThreadUtil;->b(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private a(Ljava/util/Set;Ljava/util/Map;)V
    .locals 8
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lcom/facebook/orca/prefs/PrefKey;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 183
    .line 184
    if-eqz p1, :cond_2

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "key IN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/facebook/orca/common/util/SqlUtil;->b(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 188
    :goto_0
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;->d:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;->f:Lcom/facebook/orca/prefs/OrcaSharedPreferencesContract;

    invoke-virtual {v1}, Lcom/facebook/orca/prefs/OrcaSharedPreferencesContract;->b()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;->b:[Ljava/lang/String;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 196
    :goto_1
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 197
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 198
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 199
    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 201
    :pswitch_0
    new-instance v2, Lcom/facebook/orca/prefs/PrefKey;

    invoke-direct {v2, v0}, Lcom/facebook/orca/prefs/PrefKey;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 222
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    .line 205
    :pswitch_1
    :try_start_1
    new-instance v2, Lcom/facebook/orca/prefs/PrefKey;

    invoke-direct {v2, v0}, Lcom/facebook/orca/prefs/PrefKey;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v6

    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p2, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    move v0, v7

    goto :goto_2

    .line 209
    :pswitch_2
    new-instance v2, Lcom/facebook/orca/prefs/PrefKey;

    invoke-direct {v2, v0}, Lcom/facebook/orca/prefs/PrefKey;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 213
    :pswitch_3
    new-instance v2, Lcom/facebook/orca/prefs/PrefKey;

    invoke-direct {v2, v0}, Lcom/facebook/orca/prefs/PrefKey;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p2, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 217
    :pswitch_4
    new-instance v2, Lcom/facebook/orca/prefs/PrefKey;

    invoke-direct {v2, v0}, Lcom/facebook/orca/prefs/PrefKey;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p2, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 222
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 224
    return-void

    :cond_2
    move-object v3, v4

    goto/16 :goto_0

    .line 199
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method static synthetic a(Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;->n:Z

    return p1
.end method

.method private declared-synchronized b(Lcom/facebook/orca/prefs/PrefKey;)Ljava/util/SortedMap;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/orca/prefs/PrefKey;",
            ")",
            "Ljava/util/SortedMap",
            "<",
            "Lcom/facebook/orca/prefs/PrefKey;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 380
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;->m()V

    .line 381
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;->h:Ljava/util/TreeMap;

    invoke-static {v0, p1}, Lcom/facebook/orca/prefs/PrefKeyUtil;->a(Ljava/util/SortedMap;Lcom/facebook/orca/prefs/PrefKey;)Ljava/util/SortedMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 380
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private b(Ljava/util/Map;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/facebook/orca/prefs/PrefKey;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 595
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 645
    :goto_0
    return-void

    .line 599
    :cond_0
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v3

    .line 600
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 601
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 602
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/prefs/PrefKey;

    .line 603
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 604
    iget-object v6, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;->f:Lcom/facebook/orca/prefs/OrcaSharedPreferencesContract;

    invoke-virtual {v6}, Lcom/facebook/orca/prefs/OrcaSharedPreferencesContract;->b()Landroid/net/Uri;

    move-result-object v6

    .line 605
    sget-object v7, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;->s:Ljava/lang/Object;

    if-ne v0, v7, :cond_1

    .line 606
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "key/"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/facebook/orca/prefs/PrefKey;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 608
    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 613
    :cond_1
    const-string v7, "key"

    invoke-virtual {v1}, Lcom/facebook/orca/prefs/PrefKey;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v7, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 615
    const-string v1, "type"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 616
    const-string v1, "value"

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    :cond_2
    :goto_2
    invoke-static {v6}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 617
    :cond_3
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_5

    .line 618
    const-string v1, "type"

    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 619
    const-string v1, "value"

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v2

    :goto_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    goto :goto_3

    .line 620
    :cond_5
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_6

    .line 621
    const-string v1, "type"

    const/4 v7, 0x3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 622
    const-string v1, "value"

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v4, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_2

    .line 623
    :cond_6
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_7

    .line 624
    const-string v1, "type"

    const/4 v7, 0x4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 625
    const-string v1, "value"

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v4, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_2

    .line 626
    :cond_7
    instance-of v1, v0, Ljava/lang/Float;

    if-eqz v1, :cond_2

    .line 627
    const-string v1, "type"

    const/4 v7, 0x5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 628
    const-string v1, "value"

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v4, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    goto :goto_2

    .line 639
    :cond_8
    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;->d:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;->f:Lcom/facebook/orca/prefs/OrcaSharedPreferencesContract;

    invoke-virtual {v1}, Lcom/facebook/orca/prefs/OrcaSharedPreferencesContract;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 642
    :catch_0
    move-exception v0

    .line 643
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private c(Ljava/util/Map;)Ljava/util/Map;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)",
            "Ljava/util/Map",
            "<",
            "Lcom/facebook/orca/prefs/PrefKey;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 730
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v2

    .line 731
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

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

    .line 732
    new-instance v4, Lcom/facebook/orca/prefs/PrefKey;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v4, v1}, Lcom/facebook/orca/prefs/PrefKey;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 734
    :cond_0
    return-object v2
.end method

.method static synthetic e()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;->s:Ljava/lang/Object;

    return-object v0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 176
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;->h:Ljava/util/TreeMap;

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;->a(Ljava/util/Set;Ljava/util/Map;)V

    .line 177
    return-void
.end method

.method private declared-synchronized g()V
    .locals 2

    .prologue
    .line 454
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;->n:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 467
    :goto_0
    monitor-exit p0

    return-void

    .line 457
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;->e:Lcom/facebook/orca/common/util/AndroidThreadUtil;

    new-instance v1, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl$4;

    invoke-direct {v1, p0}, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl$4;-><init>(Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/common/util/AndroidThreadUtil;->c(Ljava/lang/Runnable;)V

    .line 466
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;->n:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 454
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private h()V
    .locals 4

    .prologue
    .line 482
    iget-object v1, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;->o:Ljava/lang/Object;

    monitor-enter v1

    .line 483
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;->p:Z

    if-nez v0, :cond_0

    .line 484
    invoke-direct {p0}, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;->l()V

    .line 485
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;->p:Z

    .line 486
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;->g:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;->q:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 492
    :cond_0
    invoke-direct {p0}, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;->i()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    .line 493
    invoke-direct {p0, v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;->b(Ljava/util/Map;)V

    .line 496
    invoke-direct {p0}, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;->j()Lcom/google/common/collect/ImmutableMap;

    move-result-object v2

    .line 497
    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;->a(Ljava/util/Map;Z)V

    .line 500
    iget-object v3, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;->g:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 501
    invoke-direct {p0, v3, v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;->a(Landroid/content/SharedPreferences$Editor;Ljava/util/Map;)V

    .line 502
    invoke-direct {p0, v3, v2}, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;->a(Landroid/content/SharedPreferences$Editor;Ljava/util/Map;)V

    .line 503
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 506
    invoke-direct {p0}, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;->k()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    .line 507
    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;->a(Ljava/util/Map;Z)V

    .line 508
    monitor-exit v1

    .line 509
    return-void

    .line 508
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private declared-synchronized i()Lcom/google/common/collect/ImmutableMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Lcom/facebook/orca/prefs/PrefKey;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 518
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 519
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->j()Lcom/google/common/collect/ImmutableMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 523
    :goto_0
    monitor-exit p0

    return-object v0

    .line 521
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;->i:Ljava/util/Map;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableMap;->a(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    .line 522
    iget-object v1, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;->i:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 518
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private j()Lcom/google/common/collect/ImmutableMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Lcom/facebook/orca/prefs/PrefKey;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 534
    monitor-enter p0

    .line 535
    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;->j:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 536
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->j()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    monitor-exit p0

    .line 555
    :goto_0
    return-object v0

    .line 538
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;->j:Ljava/util/Set;

    invoke-static {v0}, Lcom/google/common/collect/Sets;->a(Ljava/lang/Iterable;)Ljava/util/HashSet;

    move-result-object v1

    .line 539
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;->j:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 542
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v2

    .line 543
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 544
    new-instance v4, Lcom/facebook/orca/prefs/PrefKey;

    invoke-direct {v4, v0}, Lcom/facebook/orca/prefs/PrefKey;-><init>(Ljava/lang/String;)V

    .line 545
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;->h:Ljava/util/TreeMap;

    invoke-virtual {v0, v4}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 546
    if-eqz v0, :cond_1

    .line 547
    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 550
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 552
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v0

    .line 553
    invoke-direct {p0, v1, v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;->a(Ljava/util/Set;Ljava/util/Map;)V

    .line 555
    invoke-direct {p0, v2, v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;->a(Ljava/util/Map;Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    goto :goto_0
.end method

.method private declared-synchronized k()Lcom/google/common/collect/ImmutableMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Lcom/facebook/orca/prefs/PrefKey;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 564
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;->k:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 565
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->j()Lcom/google/common/collect/ImmutableMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 586
    :goto_0
    monitor-exit p0

    return-object v0

    .line 567
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;->k:Ljava/util/Set;

    invoke-static {v0}, Lcom/google/common/collect/Sets;->a(Ljava/lang/Iterable;)Ljava/util/HashSet;

    move-result-object v0

    .line 568
    iget-object v1, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;->k:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 570
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->k()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v1

    .line 571
    iget-object v2, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;->g:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v2

    .line 572
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 573
    new-instance v4, Lcom/facebook/orca/prefs/PrefKey;

    invoke-direct {v4, v0}, Lcom/facebook/orca/prefs/PrefKey;-><init>(Ljava/lang/String;)V

    .line 574
    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 575
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;->h:Ljava/util/TreeMap;

    invoke-virtual {v0, v4}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 576
    sget-object v0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;->s:Ljava/lang/Object;

    invoke-virtual {v1, v4, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 564
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 579
    :cond_2
    :try_start_2
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 580
    iget-object v5, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;->h:Ljava/util/TreeMap;

    invoke-virtual {v5, v4}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 581
    invoke-static {v5, v0}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 582
    invoke-virtual {v1, v4, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    goto :goto_1

    .line 586
    :cond_3
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableMap$Builder;->b()Lcom/google/common/collect/ImmutableMap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    goto :goto_0
.end method

.method private l()V
    .locals 2

    .prologue
    .line 675
    monitor-enter p0

    .line 676
    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;->h:Ljava/util/TreeMap;

    invoke-static {v0}, Lcom/google/common/collect/Maps;->a(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object v0

    .line 677
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 678
    iget-object v1, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;->g:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;->c(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 681
    invoke-direct {p0, v1, v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;->a(Ljava/util/Map;Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    .line 684
    iget-object v1, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;->g:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 685
    invoke-direct {p0, v1, v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;->a(Landroid/content/SharedPreferences$Editor;Ljava/util/Map;)V

    .line 686
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 687
    return-void

    .line 677
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private m()V
    .locals 2

    .prologue
    .line 749
    iget-boolean v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;->m:Z

    const-string v1, "OrcaSharedPreferences used before initialized"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 750
    return-void
.end method


# virtual methods
.method public declared-synchronized a(Lcom/facebook/orca/prefs/PrefKey;I)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 350
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;->m()V

    .line 351
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;->h:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 352
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result p2

    :cond_0
    monitor-exit p0

    return p2

    .line 350
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/facebook/orca/prefs/PrefKey;J)J
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 357
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;->m()V

    .line 358
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;->h:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 359
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide p2

    :cond_0
    monitor-exit p0

    return-wide p2

    .line 357
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/facebook/orca/prefs/PrefKey;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 336
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;->m()V

    .line 337
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;->h:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 338
    if-eqz v0, :cond_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    move-object v0, p2

    goto :goto_0

    .line 336
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/facebook/orca/prefs/PrefKey;)Ljava/util/SortedSet;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/orca/prefs/PrefKey;",
            ")",
            "Ljava/util/SortedSet",
            "<",
            "Lcom/facebook/orca/prefs/PrefKey;",
            ">;"
        }
    .end annotation

    .prologue
    .line 371
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;->b(Lcom/facebook/orca/prefs/PrefKey;)Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Sets;->b(Ljava/lang/Iterable;)Ljava/util/TreeSet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/facebook/orca/prefs/OrcaSharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 2
    .parameter

    .prologue
    .line 393
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;->l:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 394
    monitor-exit p0

    return-void

    .line 393
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Ljava/util/Set;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/orca/prefs/PrefKey;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 738
    invoke-virtual {p0}, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;->b()Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    move-result-object v1

    .line 739
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;->g:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 740
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/PrefKey;

    .line 741
    invoke-interface {v1, v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->b(Lcom/facebook/orca/prefs/PrefKey;)Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    .line 742
    invoke-virtual {v0}, Lcom/facebook/orca/prefs/PrefKey;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 744
    :cond_0
    invoke-interface {v1}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a()V

    .line 745
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 746
    return-void
.end method

.method public declared-synchronized a()Z
    .locals 1

    .prologue
    .line 145
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;->m:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/facebook/orca/prefs/PrefKey;Z)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 343
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;->m()V

    .line 344
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;->h:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 345
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result p2

    :cond_0
    monitor-exit p0

    return p2

    .line 343
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b()Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;
    .locals 1

    .prologue
    .line 386
    invoke-direct {p0}, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;->m()V

    .line 387
    new-instance v0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl$EditorImpl;

    invoke-direct {v0, p0}, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl$EditorImpl;-><init>(Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;)V

    return-object v0
.end method

.method public declared-synchronized b(Lcom/facebook/orca/prefs/OrcaSharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 1
    .parameter

    .prologue
    .line 399
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;->l:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 400
    monitor-exit p0

    return-void

    .line 399
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()V
    .locals 7

    .prologue
    .line 149
    monitor-enter p0

    :try_start_0
    const-string v0, "OrcaSharedPreferences.initialize"

    invoke-static {v0}, Lcom/facebook/orca/debug/Tracer;->a(Ljava/lang/String;)Lcom/facebook/orca/debug/Tracer;

    move-result-object v0

    .line 151
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;->m:Z

    .line 153
    const-string v1, "#register"

    invoke-static {v1}, Lcom/facebook/orca/debug/Tracer;->a(Ljava/lang/String;)Lcom/facebook/orca/debug/Tracer;

    move-result-object v1

    .line 154
    new-instance v2, Landroid/content/IntentFilter;

    iget-object v3, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;->f:Lcom/facebook/orca/prefs/OrcaSharedPreferencesContract;

    invoke-virtual {v3}, Lcom/facebook/orca/prefs/OrcaSharedPreferencesContract;->c()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 155
    iget-object v3, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;->f:Lcom/facebook/orca/prefs/OrcaSharedPreferencesContract;

    invoke-virtual {v3}, Lcom/facebook/orca/prefs/OrcaSharedPreferencesContract;->e()Ljava/lang/String;

    move-result-object v3

    .line 156
    if-eqz v3, :cond_0

    .line 157
    iget-object v4, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;->c:Landroid/content/Context;

    iget-object v5, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;->r:Landroid/content/BroadcastReceiver;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v2, v3, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 162
    :goto_0
    invoke-virtual {v1}, Lcom/facebook/orca/debug/Tracer;->a()J

    .line 164
    const-string v1, "#loadInitialValues"

    invoke-static {v1}, Lcom/facebook/orca/debug/Tracer;->a(Ljava/lang/String;)Lcom/facebook/orca/debug/Tracer;

    move-result-object v1

    .line 165
    invoke-direct {p0}, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;->f()V

    .line 166
    invoke-virtual {v1}, Lcom/facebook/orca/debug/Tracer;->a()J

    .line 168
    invoke-direct {p0}, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;->g()V

    .line 169
    invoke-virtual {v0}, Lcom/facebook/orca/debug/Tracer;->a()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    monitor-exit p0

    return-void

    .line 160
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;->c:Landroid/content/Context;

    iget-object v4, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;->r:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 149
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public d()V
    .locals 5

    .prologue
    .line 723
    invoke-direct {p0}, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;->m()V

    .line 724
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;->h:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 725
    sget-object v2, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;->a:Ljava/lang/Class;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Pref: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0

    .line 727
    :cond_0
    return-void
.end method
