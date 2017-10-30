.class public Lcom/facebook/orca/prefs/OrcaSharedPreferencesContentProvider;
.super Lcom/facebook/content/SecureContentProvider;
.source "OrcaSharedPreferencesContentProvider.java"


# static fields
.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final b:Lcom/facebook/orca/debug/WtfToken;

.field private static final c:Lcom/google/common/collect/ImmutableMap;
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

.field private static d:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/facebook/orca/prefs/OrcaSharedPreferencesContentProvider$PreferenceDbTransaction;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private e:Lcom/facebook/orca/prefs/PrefsMigrator;

.field private f:Lcom/facebook/orca/prefs/PrefsDbOpenHelper;

.field private g:Lcom/facebook/orca/prefs/OrcaSharedPreferencesContract;

.field private h:Landroid/database/sqlite/SQLiteDatabase;

.field private i:Landroid/content/UriMatcher;

.field private j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 46
    const-class v0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesContentProvider;

    sput-object v0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesContentProvider;->a:Ljava/lang/Class;

    .line 48
    new-instance v0, Lcom/facebook/orca/debug/WtfToken;

    invoke-direct {v0}, Lcom/facebook/orca/debug/WtfToken;-><init>()V

    sput-object v0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesContentProvider;->b:Lcom/facebook/orca/debug/WtfToken;

    .line 50
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->k()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "_id"

    const-string v2, "_id"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "key"

    const-string v2, "key"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "value"

    const-string v2, "value"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "type"

    const-string v2, "type"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->b()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    sput-object v0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesContentProvider;->c:Lcom/google/common/collect/ImmutableMap;

    .line 66
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesContentProvider;->d:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/facebook/content/SecureContentProvider;-><init>()V

    .line 412
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/prefs/OrcaSharedPreferencesContentProvider;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesContentProvider;->h:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method private a()Lcom/facebook/orca/prefs/OrcaSharedPreferencesContentProvider$PreferenceDbTransaction;
    .locals 2

    .prologue
    .line 197
    sget-object v0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesContentProvider;->d:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesContentProvider$PreferenceDbTransaction;

    .line 198
    if-nez v0, :cond_0

    .line 199
    new-instance v0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesContentProvider$PreferenceDbTransaction;

    invoke-direct {v0, p0}, Lcom/facebook/orca/prefs/OrcaSharedPreferencesContentProvider$PreferenceDbTransaction;-><init>(Lcom/facebook/orca/prefs/OrcaSharedPreferencesContentProvider;)V

    .line 200
    sget-object v1, Lcom/facebook/orca/prefs/OrcaSharedPreferencesContentProvider;->d:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 202
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferencesContentProvider$PreferenceDbTransaction;->c()V

    .line 203
    return-object v0
.end method

.method private a(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 323
    const-string v1, "key"

    invoke-virtual {p1, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    instance-of v1, p3, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 325
    const-string v1, "type"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 326
    const-string v0, "value"

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p1, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    :goto_0
    return-void

    .line 327
    :cond_0
    instance-of v1, p3, Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    .line 328
    const-string v1, "type"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 329
    const-string v1, "value"

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 330
    :cond_2
    instance-of v0, p3, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 331
    const-string v0, "type"

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 332
    const-string v0, "value"

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p1, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 333
    :cond_3
    instance-of v0, p3, Ljava/lang/Long;

    if-eqz v0, :cond_4

    .line 334
    const-string v0, "type"

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 335
    const-string v0, "value"

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p1, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0

    .line 336
    :cond_4
    instance-of v0, p3, Ljava/lang/Float;

    if-eqz v0, :cond_5

    .line 337
    const-string v0, "type"

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 338
    const-string v0, "value"

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p1, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    goto :goto_0

    .line 340
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(Ljava/util/SortedMap;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedMap",
            "<",
            "Lcom/facebook/orca/prefs/PrefKey;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 303
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesContentProvider;->e:Lcom/facebook/orca/prefs/PrefsMigrator;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/prefs/PrefsMigrator;->a(Ljava/util/SortedMap;)Ljava/util/SortedMap;

    move-result-object v0

    .line 304
    const-string v1, "#migrate"

    invoke-static {v1}, Lcom/facebook/orca/debug/Tracer;->a(Ljava/lang/String;)Lcom/facebook/orca/debug/Tracer;

    move-result-object v2

    .line 305
    iget-object v1, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesContentProvider;->h:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 307
    :try_start_0
    iget-object v1, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesContentProvider;->h:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "preferences"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 308
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 309
    invoke-interface {v0}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 310
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/prefs/PrefKey;

    .line 311
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 312
    invoke-virtual {v1}, Lcom/facebook/orca/prefs/PrefKey;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v3, v1, v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferencesContentProvider;->a(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V

    .line 313
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesContentProvider;->h:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "preferences"

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->replaceOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 317
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesContentProvider;->h:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 318
    invoke-virtual {v2}, Lcom/facebook/orca/debug/Tracer;->a()J

    throw v0

    .line 315
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesContentProvider;->h:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 317
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesContentProvider;->h:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 318
    invoke-virtual {v2}, Lcom/facebook/orca/debug/Tracer;->a()J

    .line 320
    return-void
.end method

.method private b(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 255
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesContentProvider;->i:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 265
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 257
    :pswitch_0
    if-nez p2, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "Selection not supported"

    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 258
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 259
    iget-object v3, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesContentProvider;->h:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "preferences"

    const-string v5, "key=?"

    new-array v1, v1, [Ljava/lang/String;

    aput-object v0, v1, v2

    invoke-virtual {v3, v4, v5, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 260
    sget-object v1, Lcom/facebook/orca/prefs/OrcaSharedPreferencesContentProvider;->d:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/prefs/OrcaSharedPreferencesContentProvider$PreferenceDbTransaction;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferencesContentProvider$PreferenceDbTransaction;->a(Ljava/lang/String;)V

    .line 268
    return v2

    :cond_0
    move v0, v2

    .line 257
    goto :goto_0

    .line 255
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method private b(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 245
    .line 246
    array-length v2, p2

    move v1, v0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p2, v0

    .line 247
    invoke-direct {p0, p1, v3}, Lcom/facebook/orca/prefs/OrcaSharedPreferencesContentProvider;->b(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 248
    add-int/lit8 v1, v1, 0x1

    .line 246
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 250
    :cond_0
    return v1
.end method

.method private b(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 230
    iget-object v1, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesContentProvider;->i:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 231
    const-string v0, "key"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 233
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesContentProvider;->h:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "preferences"

    const-string v2, "key"

    invoke-virtual {v0, v1, v2, p2}, Landroid/database/sqlite/SQLiteDatabase;->replaceOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 234
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 235
    iget-object v2, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesContentProvider;->g:Lcom/facebook/orca/prefs/OrcaSharedPreferencesContract;

    invoke-virtual {v2}, Lcom/facebook/orca/prefs/OrcaSharedPreferencesContract;->d()Lcom/facebook/orca/prefs/OrcaSharedPreferencesContract$PrefColumns;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/orca/prefs/OrcaSharedPreferencesContract$PrefColumns;->a()Landroid/net/Uri;

    move-result-object v2

    .line 236
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 237
    sget-object v0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesContentProvider;->d:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesContentProvider$PreferenceDbTransaction;

    const-string v2, "key"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/facebook/orca/prefs/OrcaSharedPreferencesContentProvider$PreferenceDbTransaction;->a(Ljava/lang/String;)V

    .line 238
    return-object v1

    .line 230
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 240
    :cond_1
    new-instance v0, Landroid/database/SQLException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to insert row into "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private b()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 207
    sget-object v0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesContentProvider;->d:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesContentProvider$PreferenceDbTransaction;

    .line 209
    :try_start_0
    invoke-virtual {v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferencesContentProvider$PreferenceDbTransaction;->e()V

    .line 210
    invoke-virtual {v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferencesContentProvider$PreferenceDbTransaction;->b()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferencesContentProvider$PreferenceDbTransaction;->a()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 211
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesContentProvider;->g:Lcom/facebook/orca/prefs/OrcaSharedPreferencesContract;

    invoke-virtual {v2}, Lcom/facebook/orca/prefs/OrcaSharedPreferencesContract;->c()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 212
    invoke-virtual {v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferencesContentProvider$PreferenceDbTransaction;->a()Ljava/util/Set;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/collect/Lists;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v2

    .line 213
    const-string v3, "prefs"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 214
    iget-object v2, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesContentProvider;->g:Lcom/facebook/orca/prefs/OrcaSharedPreferencesContract;

    invoke-virtual {v2}, Lcom/facebook/orca/prefs/OrcaSharedPreferencesContract;->e()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    .line 216
    invoke-virtual {p0}, Lcom/facebook/orca/prefs/OrcaSharedPreferencesContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferencesContentProvider$PreferenceDbTransaction;->b()I

    move-result v0

    if-nez v0, :cond_1

    .line 224
    sget-object v0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesContentProvider;->d:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, v4}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 227
    :cond_1
    return-void

    .line 218
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/facebook/orca/prefs/OrcaSharedPreferencesContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesContentProvider;->g:Lcom/facebook/orca/prefs/OrcaSharedPreferencesContract;

    invoke-virtual {v3}, Lcom/facebook/orca/prefs/OrcaSharedPreferencesContract;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 222
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferencesContentProvider$PreferenceDbTransaction;->b()I

    move-result v0

    if-nez v0, :cond_3

    .line 224
    sget-object v0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesContentProvider;->d:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, v4}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_3
    throw v1
.end method

.method private declared-synchronized c()V
    .locals 5

    .prologue
    .line 272
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesContentProvider;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 300
    :goto_0
    monitor-exit p0

    return-void

    .line 276
    :cond_0
    :try_start_1
    const-string v0, "OrcaSharedPreferencesContentProvider.ensureInitialized"

    invoke-static {v0}, Lcom/facebook/orca/debug/Tracer;->a(Ljava/lang/String;)Lcom/facebook/orca/debug/Tracer;

    move-result-object v1

    .line 277
    invoke-virtual {p0}, Lcom/facebook/orca/prefs/OrcaSharedPreferencesContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/inject/FbInjector;->a(Landroid/content/Context;)Lcom/facebook/orca/inject/FbInjector;

    move-result-object v2

    .line 278
    const-class v0, Lcom/facebook/orca/prefs/PrefsMigrator;

    invoke-virtual {v2, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/PrefsMigrator;

    iput-object v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesContentProvider;->e:Lcom/facebook/orca/prefs/PrefsMigrator;

    .line 279
    const-class v0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesContract;

    invoke-virtual {v2, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesContract;

    iput-object v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesContentProvider;->g:Lcom/facebook/orca/prefs/OrcaSharedPreferencesContract;

    .line 281
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesContentProvider;->g:Lcom/facebook/orca/prefs/OrcaSharedPreferencesContract;

    invoke-virtual {v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferencesContract;->a()Ljava/lang/String;

    move-result-object v0

    .line 282
    new-instance v2, Landroid/content/UriMatcher;

    const/4 v3, -0x1

    invoke-direct {v2, v3}, Landroid/content/UriMatcher;-><init>(I)V

    iput-object v2, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesContentProvider;->i:Landroid/content/UriMatcher;

    .line 283
    iget-object v2, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesContentProvider;->i:Landroid/content/UriMatcher;

    const-string v3, "prefs"

    const/4 v4, 0x1

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 284
    iget-object v2, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesContentProvider;->i:Landroid/content/UriMatcher;

    const-string v3, "prefs/#"

    const/4 v4, 0x2

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 285
    iget-object v2, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesContentProvider;->i:Landroid/content/UriMatcher;

    const-string v3, "prefs/key/*"

    const/4 v4, 0x3

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 287
    invoke-direct {p0}, Lcom/facebook/orca/prefs/OrcaSharedPreferencesContentProvider;->e()V

    .line 289
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesContentProvider;->f:Lcom/facebook/orca/prefs/PrefsDbOpenHelper;

    invoke-virtual {v0}, Lcom/facebook/orca/prefs/PrefsDbOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesContentProvider;->h:Landroid/database/sqlite/SQLiteDatabase;

    .line 292
    const-string v0, "#maybeMigrate"

    invoke-static {v0}, Lcom/facebook/orca/debug/Tracer;->a(Ljava/lang/String;)Lcom/facebook/orca/debug/Tracer;

    move-result-object v0

    .line 293
    invoke-direct {p0}, Lcom/facebook/orca/prefs/OrcaSharedPreferencesContentProvider;->d()Ljava/util/SortedMap;

    move-result-object v2

    .line 294
    iget-object v3, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesContentProvider;->e:Lcom/facebook/orca/prefs/PrefsMigrator;

    invoke-virtual {v3, v2}, Lcom/facebook/orca/prefs/PrefsMigrator;->a(Ljava/util/Map;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 295
    invoke-direct {p0, v2}, Lcom/facebook/orca/prefs/OrcaSharedPreferencesContentProvider;->a(Ljava/util/SortedMap;)V

    .line 297
    :cond_1
    invoke-virtual {v0}, Lcom/facebook/orca/debug/Tracer;->a()J

    .line 298
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesContentProvider;->j:Z

    .line 299
    invoke-virtual {v1}, Lcom/facebook/orca/debug/Tracer;->a()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 272
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private d()Ljava/util/SortedMap;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap",
            "<",
            "Lcom/facebook/orca/prefs/PrefKey;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x2

    .line 348
    invoke-static {}, Lcom/google/common/collect/Maps;->d()Ljava/util/TreeMap;

    move-result-object v10

    .line 349
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "key"

    aput-object v0, v2, v9

    const-string v0, "type"

    aput-object v0, v2, v8

    const-string v0, "value"

    aput-object v0, v2, v1

    .line 354
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesContentProvider;->h:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "preferences"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 356
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 357
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 358
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 359
    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 361
    :pswitch_0
    new-instance v2, Lcom/facebook/orca/prefs/PrefKey;

    invoke-direct {v2, v0}, Lcom/facebook/orca/prefs/PrefKey;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v2, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 382
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    .line 365
    :pswitch_1
    :try_start_1
    new-instance v2, Lcom/facebook/orca/prefs/PrefKey;

    invoke-direct {v2, v0}, Lcom/facebook/orca/prefs/PrefKey;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v8

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v10, v2, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    move v0, v9

    goto :goto_1

    .line 369
    :pswitch_2
    new-instance v2, Lcom/facebook/orca/prefs/PrefKey;

    invoke-direct {v2, v0}, Lcom/facebook/orca/prefs/PrefKey;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v10, v2, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 373
    :pswitch_3
    new-instance v2, Lcom/facebook/orca/prefs/PrefKey;

    invoke-direct {v2, v0}, Lcom/facebook/orca/prefs/PrefKey;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v10, v2, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 377
    :pswitch_4
    new-instance v2, Lcom/facebook/orca/prefs/PrefKey;

    invoke-direct {v2, v0}, Lcom/facebook/orca/prefs/PrefKey;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v10, v2, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 382
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 384
    return-object v10

    .line 359
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private declared-synchronized e()V
    .locals 4

    .prologue
    .line 391
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesContentProvider;->f:Lcom/facebook/orca/prefs/PrefsDbOpenHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 402
    :goto_0
    monitor-exit p0

    return-void

    .line 395
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/facebook/orca/prefs/OrcaSharedPreferencesContentProvider;->f()Lcom/facebook/orca/prefs/PrefsDbOpenHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesContentProvider;->f:Lcom/facebook/orca/prefs/PrefsDbOpenHelper;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 396
    :catch_0
    move-exception v0

    .line 398
    :try_start_2
    sget-object v1, Lcom/facebook/orca/prefs/OrcaSharedPreferencesContentProvider;->b:Lcom/facebook/orca/debug/WtfToken;

    sget-object v2, Lcom/facebook/orca/prefs/OrcaSharedPreferencesContentProvider;->a:Ljava/lang/Class;

    const-string v3, "Possible prefs database corruption"

    invoke-static {v1, v2, v3, v0}, Lcom/facebook/orca/debug/BLog;->a(Lcom/facebook/orca/debug/WtfToken;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 399
    invoke-virtual {p0}, Lcom/facebook/orca/prefs/OrcaSharedPreferencesContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "prefs_db"

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 400
    invoke-direct {p0}, Lcom/facebook/orca/prefs/OrcaSharedPreferencesContentProvider;->f()Lcom/facebook/orca/prefs/PrefsDbOpenHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesContentProvider;->f:Lcom/facebook/orca/prefs/PrefsDbOpenHelper;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 391
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private f()Lcom/facebook/orca/prefs/PrefsDbOpenHelper;
    .locals 3

    .prologue
    .line 405
    const-string v0, "initializePrefsDatabase"

    invoke-static {v0}, Lcom/facebook/orca/debug/Tracer;->a(Ljava/lang/String;)Lcom/facebook/orca/debug/Tracer;

    move-result-object v0

    .line 406
    new-instance v1, Lcom/facebook/orca/prefs/PrefsDbOpenHelper;

    invoke-virtual {p0}, Lcom/facebook/orca/prefs/OrcaSharedPreferencesContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/orca/prefs/PrefsDbOpenHelper;-><init>(Landroid/content/Context;)V

    .line 407
    invoke-virtual {v1}, Lcom/facebook/orca/prefs/PrefsDbOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 408
    invoke-virtual {v0}, Lcom/facebook/orca/debug/Tracer;->a()J

    .line 409
    return-object v1
.end method


# virtual methods
.method protected a(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 192
    invoke-direct {p0}, Lcom/facebook/orca/prefs/OrcaSharedPreferencesContentProvider;->c()V

    .line 193
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Update not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected a(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 178
    invoke-direct {p0}, Lcom/facebook/orca/prefs/OrcaSharedPreferencesContentProvider;->c()V

    .line 179
    invoke-direct {p0}, Lcom/facebook/orca/prefs/OrcaSharedPreferencesContentProvider;->a()Lcom/facebook/orca/prefs/OrcaSharedPreferencesContentProvider$PreferenceDbTransaction;

    move-result-object v0

    .line 181
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/orca/prefs/OrcaSharedPreferencesContentProvider;->b(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 182
    invoke-virtual {v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferencesContentProvider$PreferenceDbTransaction;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    invoke-direct {p0}, Lcom/facebook/orca/prefs/OrcaSharedPreferencesContentProvider;->b()V

    return v1

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/facebook/orca/prefs/OrcaSharedPreferencesContentProvider;->b()V

    throw v0
.end method

.method protected a(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/facebook/orca/prefs/OrcaSharedPreferencesContentProvider;->c()V

    .line 166
    invoke-direct {p0}, Lcom/facebook/orca/prefs/OrcaSharedPreferencesContentProvider;->a()Lcom/facebook/orca/prefs/OrcaSharedPreferencesContentProvider$PreferenceDbTransaction;

    move-result-object v0

    .line 168
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/prefs/OrcaSharedPreferencesContentProvider;->b(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v1

    .line 169
    invoke-virtual {v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferencesContentProvider$PreferenceDbTransaction;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    invoke-direct {p0}, Lcom/facebook/orca/prefs/OrcaSharedPreferencesContentProvider;->b()V

    return v1

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/facebook/orca/prefs/OrcaSharedPreferencesContentProvider;->b()V

    throw v0
.end method

.method protected a(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 89
    invoke-direct {p0}, Lcom/facebook/orca/prefs/OrcaSharedPreferencesContentProvider;->c()V

    .line 91
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 93
    const-string v1, "preferences"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 94
    sget-object v1, Lcom/facebook/orca/prefs/OrcaSharedPreferencesContentProvider;->c:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 96
    iget-object v1, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesContentProvider;->i:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 113
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 119
    :goto_0
    :pswitch_1
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 120
    const-string v7, "key DESC"

    .line 125
    :goto_1
    iget-object v1, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesContentProvider;->h:Landroid/database/sqlite/SQLiteDatabase;

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 107
    :pswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    move-object v7, p5

    .line 122
    goto :goto_1

    .line 96
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected a(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/facebook/orca/prefs/OrcaSharedPreferencesContentProvider;->c()V

    .line 153
    invoke-direct {p0}, Lcom/facebook/orca/prefs/OrcaSharedPreferencesContentProvider;->a()Lcom/facebook/orca/prefs/OrcaSharedPreferencesContentProvider$PreferenceDbTransaction;

    move-result-object v0

    .line 155
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/prefs/OrcaSharedPreferencesContentProvider;->b(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 156
    invoke-virtual {v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferencesContentProvider$PreferenceDbTransaction;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    invoke-direct {p0}, Lcom/facebook/orca/prefs/OrcaSharedPreferencesContentProvider;->b()V

    return-object v1

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/facebook/orca/prefs/OrcaSharedPreferencesContentProvider;->b()V

    throw v0
.end method

.method protected a(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 130
    const/4 v0, 0x0

    return-object v0
.end method

.method protected a(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/facebook/orca/prefs/OrcaSharedPreferencesContentProvider;->a()Lcom/facebook/orca/prefs/OrcaSharedPreferencesContentProvider$PreferenceDbTransaction;

    move-result-object v0

    .line 141
    :try_start_0
    invoke-super {p0, p1}, Lcom/facebook/content/SecureContentProvider;->a(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v1

    .line 142
    invoke-virtual {v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferencesContentProvider$PreferenceDbTransaction;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    invoke-direct {p0}, Lcom/facebook/orca/prefs/OrcaSharedPreferencesContentProvider;->b()V

    .line 147
    return-object v1

    .line 144
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/facebook/orca/prefs/OrcaSharedPreferencesContentProvider;->b()V

    throw v0
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x1

    return v0
.end method
