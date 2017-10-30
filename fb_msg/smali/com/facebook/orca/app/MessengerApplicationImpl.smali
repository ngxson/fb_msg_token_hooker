.class public Lcom/facebook/orca/app/MessengerApplicationImpl;
.super Lcom/facebook/app/ApplicationLike;
.source "MessengerApplicationImpl.java"

# interfaces
.implements Lcom/facebook/orca/inject/FbInjectorProvider;


# instance fields
.field private final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final b:Lcom/facebook/orca/app/OrcaAppType;

.field private c:Lcom/facebook/orca/inject/FbInjector;

.field private d:Lcom/facebook/orca/inject/Module;


# direct methods
.method public constructor <init>(Landroid/app/Application;Lcom/facebook/orca/app/OrcaAppType;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/facebook/app/ApplicationLike;-><init>(Landroid/app/Application;)V

    .line 38
    const-class v0, Lcom/facebook/orca/app/MessengerApplicationImpl;

    iput-object v0, p0, Lcom/facebook/orca/app/MessengerApplicationImpl;->a:Ljava/lang/Class;

    .line 49
    iput-object p2, p0, Lcom/facebook/orca/app/MessengerApplicationImpl;->b:Lcom/facebook/orca/app/OrcaAppType;

    .line 50
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/app/MessengerApplicationImpl;)Lcom/facebook/orca/inject/FbInjector;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/facebook/orca/app/MessengerApplicationImpl;->c:Lcom/facebook/orca/inject/FbInjector;

    return-object v0
.end method

.method private d()V
    .locals 3

    .prologue
    .line 148
    iget-object v0, p0, Lcom/facebook/orca/app/MessengerApplicationImpl;->a:Ljava/lang/Class;

    const-string v1, "Forcing initialization of AsyncTask"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 150
    :try_start_0
    const-string v0, "android.os.AsyncTask"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    :goto_0
    return-void

    .line 151
    :catch_0
    move-exception v0

    .line 152
    iget-object v1, p0, Lcom/facebook/orca/app/MessengerApplicationImpl;->a:Ljava/lang/Class;

    const-string v2, "Exceptiopn trying to initialize AsyncTask"

    invoke-static {v1, v2, v0}, Lcom/facebook/orca/debug/BLog;->d(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public b()V
    .locals 7

    .prologue
    .line 58
    invoke-super {p0}, Lcom/facebook/app/ApplicationLike;->b()V

    .line 60
    invoke-direct {p0}, Lcom/facebook/orca/app/MessengerApplicationImpl;->d()V

    .line 61
    const-class v0, Lcom/google/common/base/FinalizableReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V

    .line 64
    const-wide/16 v0, 0x5

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/Tracer;->b(J)V

    .line 65
    const-string v0, "Application startup"

    invoke-static {v0}, Lcom/facebook/orca/debug/Tracer;->a(Ljava/lang/String;)Lcom/facebook/orca/debug/Tracer;

    move-result-object v1

    .line 66
    const-string v0, "MessengerApplicationImpl.onCreate"

    invoke-static {v0}, Lcom/facebook/orca/debug/Tracer;->a(Ljava/lang/String;)Lcom/facebook/orca/debug/Tracer;

    move-result-object v2

    .line 67
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/facebook/orca/debug/BLog;->a(I)V

    .line 69
    new-instance v0, Lcom/facebook/orca/inject/ContextScope;

    invoke-direct {v0}, Lcom/facebook/orca/inject/ContextScope;-><init>()V

    .line 70
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v3

    .line 71
    new-instance v4, Lcom/facebook/orca/app/MessengerAppModule;

    invoke-virtual {p0}, Lcom/facebook/orca/app/MessengerApplicationImpl;->a()Landroid/app/Application;

    move-result-object v5

    iget-object v6, p0, Lcom/facebook/orca/app/MessengerApplicationImpl;->b:Lcom/facebook/orca/app/OrcaAppType;

    invoke-direct {v4, v5, v0, v6}, Lcom/facebook/orca/app/MessengerAppModule;-><init>(Landroid/app/Application;Lcom/facebook/orca/inject/ContextScope;Lcom/facebook/orca/app/OrcaAppType;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object v0, p0, Lcom/facebook/orca/app/MessengerApplicationImpl;->d:Lcom/facebook/orca/inject/Module;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/facebook/orca/app/MessengerApplicationImpl;->d:Lcom/facebook/orca/inject/Module;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    :cond_0
    monitor-enter p0

    .line 76
    :try_start_0
    invoke-static {v3}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/util/List;)Lcom/facebook/orca/inject/FbInjector;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/app/MessengerApplicationImpl;->c:Lcom/facebook/orca/inject/FbInjector;

    .line 77
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 78
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    iget-object v0, p0, Lcom/facebook/orca/app/MessengerApplicationImpl;->c:Lcom/facebook/orca/inject/FbInjector;

    const-class v3, Lcom/facebook/orca/app/FbAppInitializer;

    invoke-virtual {v0, v3}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/app/FbAppInitializer;

    invoke-virtual {v0}, Lcom/facebook/orca/app/FbAppInitializer;->a()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v3

    .line 86
    iget-object v0, p0, Lcom/facebook/orca/app/MessengerApplicationImpl;->c:Lcom/facebook/orca/inject/FbInjector;

    const-class v4, Lcom/facebook/orca/app/OrcaAppType;

    invoke-virtual {v0, v4}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/app/OrcaAppType;

    .line 87
    iget-object v4, p0, Lcom/facebook/orca/app/MessengerApplicationImpl;->a:Ljava/lang/Class;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OrcaAppType: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/facebook/orca/app/OrcaAppType;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 103
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v4, Lcom/facebook/orca/app/MessengerApplicationImpl$1;

    invoke-direct {v4, p0}, Lcom/facebook/orca/app/MessengerApplicationImpl$1;-><init>(Lcom/facebook/orca/app/MessengerApplicationImpl;)V

    invoke-virtual {v0, v4}, Landroid/os/Looper;->setMessageLogging(Landroid/util/Printer;)V

    .line 112
    invoke-virtual {v2}, Lcom/facebook/orca/debug/Tracer;->a()J

    .line 113
    new-instance v2, Lcom/facebook/orca/app/MessengerApplicationImpl$2;

    invoke-direct {v2, p0, v1}, Lcom/facebook/orca/app/MessengerApplicationImpl$2;-><init>(Lcom/facebook/orca/app/MessengerApplicationImpl;Lcom/facebook/orca/debug/Tracer;)V

    iget-object v0, p0, Lcom/facebook/orca/app/MessengerApplicationImpl;->c:Lcom/facebook/orca/inject/FbInjector;

    const-class v1, Lcom/facebook/common/util/UiThreadExecutor;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    invoke-static {v3, v2, v0}, Lcom/google/common/util/concurrent/Futures;->a(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;Ljava/util/concurrent/Executor;)V

    .line 123
    return-void

    .line 78
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 127
    invoke-super {p0}, Lcom/facebook/app/ApplicationLike;->c()V

    .line 128
    invoke-virtual {p0}, Lcom/facebook/orca/app/MessengerApplicationImpl;->e()Lcom/facebook/orca/inject/FbInjector;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/images/ImageCache;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/images/ImageCache;

    invoke-virtual {v0}, Lcom/facebook/orca/images/ImageCache;->b()V

    .line 129
    invoke-virtual {p0}, Lcom/facebook/orca/app/MessengerApplicationImpl;->e()Lcom/facebook/orca/inject/FbInjector;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/contacts/picker/FriendListPickerCache;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/contacts/picker/FriendListPickerCache;

    invoke-virtual {v0}, Lcom/facebook/orca/contacts/picker/FriendListPickerCache;->e()V

    .line 130
    return-void
.end method

.method public declared-synchronized e()Lcom/facebook/orca/inject/FbInjector;
    .locals 2

    .prologue
    .line 137
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/app/MessengerApplicationImpl;->c:Lcom/facebook/orca/inject/FbInjector;

    if-nez v0, :cond_0

    .line 138
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 141
    :catch_0
    move-exception v0

    .line 142
    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 137
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 140
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/facebook/orca/app/MessengerApplicationImpl;->c:Lcom/facebook/orca/inject/FbInjector;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    monitor-exit p0

    return-object v0
.end method
