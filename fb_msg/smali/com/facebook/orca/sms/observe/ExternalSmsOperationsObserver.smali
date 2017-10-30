.class public Lcom/facebook/orca/sms/observe/ExternalSmsOperationsObserver;
.super Landroid/database/ContentObserver;
.source "ExternalSmsOperationsObserver.java"


# instance fields
.field private final a:Landroid/content/ContentResolver;

.field private final b:Lcom/facebook/orca/database/ThreadsDatabaseSupplier;

.field private final c:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/facebook/orca/notify/OrcaForegroundActivityListener;

.field private final e:Lcom/facebook/orca/sms/observe/ExternalSmsOperationsHandler;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Lcom/facebook/orca/database/ThreadsDatabaseSupplier;Lcom/facebook/orca/notify/OrcaForegroundActivityListener;Ljavax/inject/Provider;Lcom/facebook/orca/sms/observe/ExternalSmsOperationsHandler;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Lcom/facebook/orca/database/ThreadsDatabaseSupplier;",
            "Lcom/facebook/orca/notify/OrcaForegroundActivityListener;",
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/facebook/orca/sms/observe/ExternalSmsOperationsHandler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 37
    iput-object p1, p0, Lcom/facebook/orca/sms/observe/ExternalSmsOperationsObserver;->a:Landroid/content/ContentResolver;

    .line 38
    iput-object p2, p0, Lcom/facebook/orca/sms/observe/ExternalSmsOperationsObserver;->b:Lcom/facebook/orca/database/ThreadsDatabaseSupplier;

    .line 39
    iput-object p4, p0, Lcom/facebook/orca/sms/observe/ExternalSmsOperationsObserver;->c:Ljavax/inject/Provider;

    .line 40
    iput-object p3, p0, Lcom/facebook/orca/sms/observe/ExternalSmsOperationsObserver;->d:Lcom/facebook/orca/notify/OrcaForegroundActivityListener;

    .line 41
    iput-object p5, p0, Lcom/facebook/orca/sms/observe/ExternalSmsOperationsObserver;->e:Lcom/facebook/orca/sms/observe/ExternalSmsOperationsHandler;

    .line 42
    return-void
.end method

.method private a()Ljava/util/Set;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 69
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 70
    sget-object v0, Landroid_src/provider/Telephony$MmsSms;->b:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "simple"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 74
    iget-object v0, p0, Lcom/facebook/orca/sms/observe/ExternalSmsOperationsObserver;->a:Landroid/content/ContentResolver;

    new-array v2, v8, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v7

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 82
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    const-string v1, "_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v6, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/sms/observe/ExternalSmsOperationsObserver;->b:Lcom/facebook/orca/database/ThreadsDatabaseSupplier;

    invoke-virtual {v0}, Lcom/facebook/orca/database/ThreadsDatabaseSupplier;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "SELECT thread_id FROM threads WHERE folder=? ORDER BY thread_id"

    new-array v2, v8, [Ljava/lang/String;

    sget-object v3, Lcom/facebook/orca/threads/FolderName;->d:Lcom/facebook/orca/threads/FolderName;

    invoke-virtual {v3}, Lcom/facebook/orca/threads/FolderName;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 90
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 91
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 92
    const-string v2, "thread_id"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 93
    invoke-static {v2}, Lcom/facebook/orca/threads/MessagingIdUtil;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 97
    :cond_1
    invoke-interface {v1, v6}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 98
    return-object v1
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x0

    return v0
.end method

.method public onChange(Z)V
    .locals 2
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/facebook/orca/sms/observe/ExternalSmsOperationsObserver;->c:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/sms/observe/ExternalSmsOperationsObserver;->d:Lcom/facebook/orca/notify/OrcaForegroundActivityListener;

    invoke-virtual {v0}, Lcom/facebook/orca/notify/OrcaForegroundActivityListener;->a()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 61
    invoke-direct {p0}, Lcom/facebook/orca/sms/observe/ExternalSmsOperationsObserver;->a()Ljava/util/Set;

    move-result-object v0

    .line 62
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 63
    iget-object v1, p0, Lcom/facebook/orca/sms/observe/ExternalSmsOperationsObserver;->e:Lcom/facebook/orca/sms/observe/ExternalSmsOperationsHandler;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/sms/observe/ExternalSmsOperationsHandler;->a(Ljava/util/Set;)V

    goto :goto_0
.end method
