.class public Lcom/facebook/orca/common/diagnostics/FbSdcardLogger;
.super Ljava/lang/Object;
.source "FbSdcardLogger.java"

# interfaces
.implements Lcom/facebook/orca/app/INeedInit;
.implements Lcom/facebook/orca/debug/FbLogWriter;


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

.field private static final b:Ljava/text/SimpleDateFormat;


# instance fields
.field private final c:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

.field private final d:Ljava/lang/String;

.field private e:Landroid/os/HandlerThread;

.field private f:Landroid/os/Handler;

.field private volatile g:Z

.field private h:Lcom/facebook/orca/common/diagnostics/FbSdcardLogger$InternalHandler;

.field private i:Lcom/facebook/orca/prefs/OrcaSharedPreferences$OnSharedPreferenceChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 39
    const-class v0, Lcom/facebook/orca/common/diagnostics/FbSdcardLogger;

    sput-object v0, Lcom/facebook/orca/common/diagnostics/FbSdcardLogger;->a:Ljava/lang/Class;

    .line 44
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/orca/common/diagnostics/FbSdcardLogger;->b:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PackageInfo;Lcom/facebook/orca/prefs/OrcaSharedPreferences;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p2, p0, Lcom/facebook/orca/common/diagnostics/FbSdcardLogger;->c:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    .line 61
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/orca/common/diagnostics/FbSdcardLogger;->d:Ljava/lang/String;

    .line 62
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/common/diagnostics/FbSdcardLogger;)V
    .locals 0
    .parameter

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/facebook/orca/common/diagnostics/FbSdcardLogger;->e()V

    return-void
.end method

.method static synthetic b(Lcom/facebook/orca/common/diagnostics/FbSdcardLogger;)Lcom/facebook/orca/common/diagnostics/FbSdcardLogger$InternalHandler;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/facebook/orca/common/diagnostics/FbSdcardLogger;->h:Lcom/facebook/orca/common/diagnostics/FbSdcardLogger$InternalHandler;

    return-object v0
.end method

.method static synthetic c()Ljava/text/SimpleDateFormat;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/facebook/orca/common/diagnostics/FbSdcardLogger;->b:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method static synthetic c(Lcom/facebook/orca/common/diagnostics/FbSdcardLogger;)Z
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/facebook/orca/common/diagnostics/FbSdcardLogger;->g:Z

    return v0
.end method

.method static synthetic d()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/facebook/orca/common/diagnostics/FbSdcardLogger;->a:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic d(Lcom/facebook/orca/common/diagnostics/FbSdcardLogger;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/facebook/orca/common/diagnostics/FbSdcardLogger;->d:Ljava/lang/String;

    return-object v0
.end method

.method private declared-synchronized e()V
    .locals 3

    .prologue
    .line 80
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/common/diagnostics/FbSdcardLogger;->c:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    sget-object v1, Lcom/facebook/orca/prefs/SharedPrefKeys;->h:Lcom/facebook/orca/prefs/PrefKey;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Lcom/facebook/orca/prefs/PrefKey;Z)Z

    move-result v0

    .line 82
    if-eqz v0, :cond_0

    .line 83
    invoke-direct {p0}, Lcom/facebook/orca/common/diagnostics/FbSdcardLogger;->f()V

    .line 85
    :cond_0
    iput-boolean v0, p0, Lcom/facebook/orca/common/diagnostics/FbSdcardLogger;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    monitor-exit p0

    return-void

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized f()V
    .locals 2

    .prologue
    .line 105
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/common/diagnostics/FbSdcardLogger;->e:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 106
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "logger"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/orca/common/diagnostics/FbSdcardLogger;->e:Landroid/os/HandlerThread;

    .line 107
    iget-object v0, p0, Lcom/facebook/orca/common/diagnostics/FbSdcardLogger;->e:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 108
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/facebook/orca/common/diagnostics/FbSdcardLogger;->e:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/facebook/orca/common/diagnostics/FbSdcardLogger;->f:Landroid/os/Handler;

    .line 109
    new-instance v0, Lcom/facebook/orca/common/diagnostics/FbSdcardLogger$InternalHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/orca/common/diagnostics/FbSdcardLogger$InternalHandler;-><init>(Lcom/facebook/orca/common/diagnostics/FbSdcardLogger;Lcom/facebook/orca/common/diagnostics/FbSdcardLogger$1;)V

    iput-object v0, p0, Lcom/facebook/orca/common/diagnostics/FbSdcardLogger;->h:Lcom/facebook/orca/common/diagnostics/FbSdcardLogger$InternalHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    :cond_0
    monitor-exit p0

    return-void

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/common/diagnostics/LogFile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/facebook/orca/common/diagnostics/FbSdcardLogger;->f()V

    .line 101
    iget-object v0, p0, Lcom/facebook/orca/common/diagnostics/FbSdcardLogger;->h:Lcom/facebook/orca/common/diagnostics/FbSdcardLogger$InternalHandler;

    invoke-virtual {v0}, Lcom/facebook/orca/common/diagnostics/FbSdcardLogger$InternalHandler;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/facebook/orca/common/diagnostics/FbSdcardLogger;->g:Z

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/facebook/orca/common/diagnostics/FbSdcardLogger;->f:Landroid/os/Handler;

    new-instance v1, Lcom/facebook/orca/common/diagnostics/FbSdcardLogger$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/facebook/orca/common/diagnostics/FbSdcardLogger$2;-><init>(Lcom/facebook/orca/common/diagnostics/FbSdcardLogger;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 97
    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 66
    new-instance v0, Lcom/facebook/orca/common/diagnostics/FbSdcardLogger$1;

    invoke-direct {v0, p0}, Lcom/facebook/orca/common/diagnostics/FbSdcardLogger$1;-><init>(Lcom/facebook/orca/common/diagnostics/FbSdcardLogger;)V

    iput-object v0, p0, Lcom/facebook/orca/common/diagnostics/FbSdcardLogger;->i:Lcom/facebook/orca/prefs/OrcaSharedPreferences$OnSharedPreferenceChangeListener;

    .line 75
    iget-object v0, p0, Lcom/facebook/orca/common/diagnostics/FbSdcardLogger;->c:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    iget-object v1, p0, Lcom/facebook/orca/common/diagnostics/FbSdcardLogger;->i:Lcom/facebook/orca/prefs/OrcaSharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Lcom/facebook/orca/prefs/OrcaSharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 76
    invoke-direct {p0}, Lcom/facebook/orca/common/diagnostics/FbSdcardLogger;->e()V

    .line 77
    return-void
.end method
