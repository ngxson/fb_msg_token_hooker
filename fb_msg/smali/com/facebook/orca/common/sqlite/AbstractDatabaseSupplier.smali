.class public Lcom/facebook/orca/common/sqlite/AbstractDatabaseSupplier;
.super Ljava/lang/Object;
.source "AbstractDatabaseSupplier.java"

# interfaces
.implements Lcom/google/common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Supplier",
        "<",
        "Landroid/database/sqlite/SQLiteDatabase;",
        ">;"
    }
.end annotation

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

.field private static final b:Lcom/facebook/orca/debug/WtfToken;


# instance fields
.field private final c:Landroid/content/Context;

.field private final d:Lcom/facebook/orca/common/util/AndroidThreadUtil;

.field private final e:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<+",
            "Lcom/facebook/orca/common/sqlite/SharedSQLiteSchemaPart;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/lang/String;

.field private final g:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private h:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/facebook/orca/common/sqlite/AbstractDatabaseSupplier;

    sput-object v0, Lcom/facebook/orca/common/sqlite/AbstractDatabaseSupplier;->a:Ljava/lang/Class;

    .line 30
    new-instance v0, Lcom/facebook/orca/debug/WtfToken;

    invoke-direct {v0}, Lcom/facebook/orca/debug/WtfToken;-><init>()V

    sput-object v0, Lcom/facebook/orca/common/sqlite/AbstractDatabaseSupplier;->b:Lcom/facebook/orca/debug/WtfToken;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/facebook/orca/common/util/AndroidThreadUtil;Lcom/google/common/collect/ImmutableList;Ljava/lang/String;Lcom/google/common/collect/ImmutableList;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/facebook/orca/common/util/AndroidThreadUtil;",
            "Lcom/google/common/collect/ImmutableList",
            "<+",
            "Lcom/facebook/orca/common/sqlite/SharedSQLiteSchemaPart;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/facebook/orca/common/sqlite/AbstractDatabaseSupplier;->c:Landroid/content/Context;

    .line 56
    iput-object p2, p0, Lcom/facebook/orca/common/sqlite/AbstractDatabaseSupplier;->d:Lcom/facebook/orca/common/util/AndroidThreadUtil;

    .line 57
    iput-object p3, p0, Lcom/facebook/orca/common/sqlite/AbstractDatabaseSupplier;->e:Lcom/google/common/collect/ImmutableList;

    .line 58
    iput-object p4, p0, Lcom/facebook/orca/common/sqlite/AbstractDatabaseSupplier;->f:Ljava/lang/String;

    .line 59
    iput-object p5, p0, Lcom/facebook/orca/common/sqlite/AbstractDatabaseSupplier;->g:Lcom/google/common/collect/ImmutableList;

    .line 60
    return-void
.end method

.method private declared-synchronized b()V
    .locals 5

    .prologue
    .line 69
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/common/sqlite/AbstractDatabaseSupplier;->d:Lcom/facebook/orca/common/util/AndroidThreadUtil;

    invoke-interface {v0}, Lcom/facebook/orca/common/util/AndroidThreadUtil;->b()V

    .line 70
    iget-object v0, p0, Lcom/facebook/orca/common/sqlite/AbstractDatabaseSupplier;->h:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    .line 89
    :goto_0
    monitor-exit p0

    return-void

    .line 73
    :cond_0
    :try_start_1
    const-string v0, "ensureDatabase"

    invoke-static {v0}, Lcom/facebook/orca/debug/Tracer;->a(Ljava/lang/String;)Lcom/facebook/orca/debug/Tracer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    .line 75
    :try_start_2
    iget-object v0, p0, Lcom/facebook/orca/common/sqlite/AbstractDatabaseSupplier;->g:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 76
    iget-object v3, p0, Lcom/facebook/orca/common/sqlite/AbstractDatabaseSupplier;->c:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 87
    :catchall_0
    move-exception v0

    :try_start_3
    invoke-virtual {v1}, Lcom/facebook/orca/debug/Tracer;->a()J

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 69
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 79
    :cond_1
    :try_start_4
    invoke-direct {p0}, Lcom/facebook/orca/common/sqlite/AbstractDatabaseSupplier;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/common/sqlite/AbstractDatabaseSupplier;->h:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 87
    :goto_2
    :try_start_5
    invoke-virtual {v1}, Lcom/facebook/orca/debug/Tracer;->a()J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    .line 80
    :catch_0
    move-exception v0

    .line 82
    :try_start_6
    sget-object v2, Lcom/facebook/orca/common/sqlite/AbstractDatabaseSupplier;->b:Lcom/facebook/orca/debug/WtfToken;

    sget-object v3, Lcom/facebook/orca/common/sqlite/AbstractDatabaseSupplier;->a:Ljava/lang/Class;

    const-string v4, "Possible database corruption"

    invoke-static {v2, v3, v4, v0}, Lcom/facebook/orca/debug/BLog;->a(Lcom/facebook/orca/debug/WtfToken;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 83
    iget-object v0, p0, Lcom/facebook/orca/common/sqlite/AbstractDatabaseSupplier;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/facebook/orca/common/sqlite/AbstractDatabaseSupplier;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 84
    invoke-direct {p0}, Lcom/facebook/orca/common/sqlite/AbstractDatabaseSupplier;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/common/sqlite/AbstractDatabaseSupplier;->h:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2
.end method

.method private c()Landroid/database/sqlite/SQLiteDatabase;
    .locals 4

    .prologue
    .line 92
    new-instance v0, Lcom/facebook/orca/common/sqlite/SharedSQLiteOpenHelper;

    iget-object v1, p0, Lcom/facebook/orca/common/sqlite/AbstractDatabaseSupplier;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/facebook/orca/common/sqlite/AbstractDatabaseSupplier;->f:Ljava/lang/String;

    iget-object v3, p0, Lcom/facebook/orca/common/sqlite/AbstractDatabaseSupplier;->e:Lcom/google/common/collect/ImmutableList;

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/orca/common/sqlite/SharedSQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    .line 97
    invoke-virtual {v0}, Lcom/facebook/orca/common/sqlite/SharedSQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 64
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/facebook/orca/common/sqlite/AbstractDatabaseSupplier;->b()V

    .line 65
    iget-object v0, p0, Lcom/facebook/orca/common/sqlite/AbstractDatabaseSupplier;->h:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/facebook/orca/common/sqlite/AbstractDatabaseSupplier;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method
