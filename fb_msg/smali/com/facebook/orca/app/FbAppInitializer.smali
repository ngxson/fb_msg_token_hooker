.class public Lcom/facebook/orca/app/FbAppInitializer;
.super Ljava/lang/Object;
.source "FbAppInitializer.java"


# instance fields
.field private final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final b:Lcom/facebook/orca/common/util/AndroidThreadUtil;

.field private final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/orca/app/INeedInit;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/orca/app/INeedInit;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/orca/app/INeedInit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/orca/common/util/AndroidThreadUtil;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/orca/common/util/AndroidThreadUtil;",
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/orca/app/INeedInit;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/orca/app/INeedInit;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/orca/app/INeedInit;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-class v0, Lcom/facebook/orca/app/FbAppInitializer;

    iput-object v0, p0, Lcom/facebook/orca/app/FbAppInitializer;->a:Ljava/lang/Class;

    .line 49
    iput-object p1, p0, Lcom/facebook/orca/app/FbAppInitializer;->b:Lcom/facebook/orca/common/util/AndroidThreadUtil;

    .line 50
    iput-object p2, p0, Lcom/facebook/orca/app/FbAppInitializer;->c:Ljava/util/Set;

    .line 51
    iput-object p3, p0, Lcom/facebook/orca/app/FbAppInitializer;->d:Ljava/util/Set;

    .line 52
    iput-object p4, p0, Lcom/facebook/orca/app/FbAppInitializer;->e:Ljava/util/Set;

    .line 53
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/app/FbAppInitializer;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/facebook/orca/app/FbAppInitializer;->b()V

    return-void
.end method

.method private b()V
    .locals 5

    .prologue
    .line 85
    const-wide/16 v0, 0xa

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/Tracer;->b(J)V

    .line 86
    const-string v0, "FbAppInitializer"

    invoke-static {v0}, Lcom/facebook/orca/debug/Tracer;->a(Ljava/lang/String;)Lcom/facebook/orca/debug/Tracer;

    move-result-object v1

    .line 87
    iget-object v0, p0, Lcom/facebook/orca/app/FbAppInitializer;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/app/INeedInit;

    .line 88
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/orca/debug/Tracer;->a(Ljava/lang/String;)Lcom/facebook/orca/debug/Tracer;

    move-result-object v3

    .line 89
    invoke-interface {v0}, Lcom/facebook/orca/app/INeedInit;->b()V

    .line 90
    invoke-virtual {v3}, Lcom/facebook/orca/debug/Tracer;->a()J

    goto :goto_0

    .line 92
    :cond_0
    invoke-virtual {v1}, Lcom/facebook/orca/debug/Tracer;->a()J

    .line 93
    iget-object v0, p0, Lcom/facebook/orca/app/FbAppInitializer;->a:Ljava/lang/Class;

    const-string v1, "High priority worker thread app initialization complete"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/Class;Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/facebook/orca/app/FbAppInitializer;->a:Ljava/lang/Class;

    invoke-static {v0}, Lcom/facebook/orca/debug/Tracer;->a(Ljava/lang/Class;)V

    .line 95
    return-void
.end method

.method static synthetic b(Lcom/facebook/orca/app/FbAppInitializer;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/facebook/orca/app/FbAppInitializer;->c()V

    return-void
.end method

.method static synthetic c(Lcom/facebook/orca/app/FbAppInitializer;)Lcom/facebook/orca/common/util/AndroidThreadUtil;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/facebook/orca/app/FbAppInitializer;->b:Lcom/facebook/orca/common/util/AndroidThreadUtil;

    return-object v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/facebook/orca/app/FbAppInitializer;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/app/INeedInit;

    .line 99
    invoke-interface {v0}, Lcom/facebook/orca/app/INeedInit;->b()V

    goto :goto_0

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/app/FbAppInitializer;->a:Ljava/lang/Class;

    const-string v1, "Low priority main thread app initialization complete"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/Class;Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/facebook/orca/app/FbAppInitializer;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/app/INeedInit;

    .line 106
    invoke-interface {v0}, Lcom/facebook/orca/app/INeedInit;->b()V

    goto :goto_0

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/app/FbAppInitializer;->a:Ljava/lang/Class;

    const-string v1, "Low priority worker thread app initialization complete"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/Class;Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method static synthetic d(Lcom/facebook/orca/app/FbAppInitializer;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/facebook/orca/app/FbAppInitializer;->d()V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->c()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    .line 63
    iget-object v1, p0, Lcom/facebook/orca/app/FbAppInitializer;->b:Lcom/facebook/orca/common/util/AndroidThreadUtil;

    const-string v2, "FbAppInit"

    new-instance v3, Lcom/facebook/orca/app/FbAppInitializer$1;

    invoke-direct {v3, p0, v0}, Lcom/facebook/orca/app/FbAppInitializer$1;-><init>(Lcom/facebook/orca/app/FbAppInitializer;Lcom/google/common/util/concurrent/SettableFuture;)V

    invoke-interface {v1, v2, v3}, Lcom/facebook/orca/common/util/AndroidThreadUtil;->a(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 81
    return-object v0
.end method
