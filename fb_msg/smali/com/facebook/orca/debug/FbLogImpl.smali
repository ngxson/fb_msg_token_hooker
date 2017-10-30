.class public Lcom/facebook/orca/debug/FbLogImpl;
.super Ljava/lang/Object;
.source "FbLogImpl.java"

# interfaces
.implements Lcom/facebook/orca/debug/FbLog;


# static fields
.field private static final a:Lcom/facebook/orca/common/util/RateLimiter;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/orca/debug/FbLogWriter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 22
    new-instance v0, Lcom/facebook/orca/common/util/RateLimiter;

    invoke-static {}, Lcom/facebook/orca/common/util/SystemClock;->b()Lcom/facebook/orca/common/util/SystemClock;

    move-result-object v1

    const/4 v2, 0x5

    const-wide/32 v3, 0x36ee80

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/orca/common/util/RateLimiter;-><init>(Lcom/facebook/orca/common/util/Clock;IJ)V

    sput-object v0, Lcom/facebook/orca/debug/FbLogImpl;->a:Lcom/facebook/orca/common/util/RateLimiter;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Set;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/orca/debug/FbLogWriter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/facebook/orca/debug/FbLogImpl;->b:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/facebook/orca/debug/FbLogImpl;->c:Ljava/util/Set;

    .line 34
    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 137
    iget-object v0, p0, Lcom/facebook/orca/debug/FbLogImpl;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/facebook/orca/debug/FbLogImpl;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 140
    :cond_0
    return-object p1
.end method

.method private a(Lcom/facebook/orca/debug/WtfToken;Lcom/facebook/orca/debug/TerribleFailure;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 124
    invoke-virtual {p1}, Lcom/facebook/orca/debug/WtfToken;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    sget-object v0, Lcom/facebook/orca/debug/FbLogImpl;->a:Lcom/facebook/orca/common/util/RateLimiter;

    invoke-virtual {v0}, Lcom/facebook/orca/common/util/RateLimiter;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    invoke-static {}, Lorg/acra/ErrorReporter;->getInstance()Lorg/acra/ErrorReporter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/acra/ErrorReporter;->handleSilentException(Ljava/lang/Throwable;)Ljava/lang/Thread;

    .line 129
    :cond_0
    return-void
.end method

.method private f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 132
    new-instance v0, Lcom/facebook/orca/debug/TerribleFailure;

    invoke-direct {v0, p2, p3}, Lcom/facebook/orca/debug/TerribleFailure;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 133
    const/4 v1, 0x7

    invoke-static {v0}, Lcom/facebook/orca/common/util/ExceptionUtil;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, p1, v0}, Lcom/facebook/orca/debug/FbLogImpl;->a(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/lang/String;)I
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 111
    invoke-direct {p0, p2}, Lcom/facebook/orca/debug/FbLogImpl;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 112
    invoke-static {p1, v1, p3}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 113
    iget-object v0, p0, Lcom/facebook/orca/debug/FbLogImpl;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/debug/FbLogWriter;

    .line 115
    :try_start_0
    invoke-interface {v0, p1, v1, p3}, Lcom/facebook/orca/debug/FbLogWriter;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 116
    :catch_0
    move-exception v0

    goto :goto_0

    .line 120
    :cond_0
    return v2
.end method

.method public a(Lcom/facebook/orca/debug/WtfToken;Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 93
    new-instance v0, Lcom/facebook/orca/debug/TerribleFailure;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/orca/debug/TerribleFailure;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/facebook/orca/debug/FbLogImpl;->a(Lcom/facebook/orca/debug/WtfToken;Lcom/facebook/orca/debug/TerribleFailure;)V

    .line 94
    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0}, Lcom/facebook/orca/debug/FbLogImpl;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public a(Lcom/facebook/orca/debug/WtfToken;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 105
    new-instance v0, Lcom/facebook/orca/debug/TerribleFailure;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p4}, Lcom/facebook/orca/debug/TerribleFailure;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, p1, v0}, Lcom/facebook/orca/debug/FbLogImpl;->a(Lcom/facebook/orca/debug/WtfToken;Lcom/facebook/orca/debug/TerribleFailure;)V

    .line 106
    invoke-direct {p0, p2, p3, p4}, Lcom/facebook/orca/debug/FbLogImpl;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public a(Lcom/facebook/orca/debug/WtfToken;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 99
    new-instance v0, Lcom/facebook/orca/debug/TerribleFailure;

    invoke-direct {v0, p2, p3}, Lcom/facebook/orca/debug/TerribleFailure;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, p1, v0}, Lcom/facebook/orca/debug/FbLogImpl;->a(Lcom/facebook/orca/debug/WtfToken;Lcom/facebook/orca/debug/TerribleFailure;)V

    .line 100
    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0, p3}, Lcom/facebook/orca/debug/FbLogImpl;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 38
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1, p2}, Lcom/facebook/orca/debug/FbLogImpl;->a(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 43
    const/4 v0, 0x2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Lcom/facebook/orca/common/util/ExceptionUtil;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, p1, v1}, Lcom/facebook/orca/debug/FbLogImpl;->a(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 78
    const/4 v0, 0x5

    invoke-static {p2}, Lcom/facebook/orca/common/util/ExceptionUtil;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, p1, v1}, Lcom/facebook/orca/debug/FbLogImpl;->a(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 48
    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1, p2}, Lcom/facebook/orca/debug/FbLogImpl;->a(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 53
    const/4 v0, 0x3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Lcom/facebook/orca/common/util/ExceptionUtil;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, p1, v1}, Lcom/facebook/orca/debug/FbLogImpl;->a(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 58
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1, p2}, Lcom/facebook/orca/debug/FbLogImpl;->a(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 63
    const/4 v0, 0x4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Lcom/facebook/orca/common/util/ExceptionUtil;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, p1, v1}, Lcom/facebook/orca/debug/FbLogImpl;->a(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 68
    const/4 v0, 0x5

    invoke-virtual {p0, v0, p1, p2}, Lcom/facebook/orca/debug/FbLogImpl;->a(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 73
    const/4 v0, 0x5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Lcom/facebook/orca/common/util/ExceptionUtil;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, p1, v1}, Lcom/facebook/orca/debug/FbLogImpl;->a(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 83
    const/4 v0, 0x6

    invoke-virtual {p0, v0, p1, p2}, Lcom/facebook/orca/debug/FbLogImpl;->a(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 88
    const/4 v0, 0x6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Lcom/facebook/orca/common/util/ExceptionUtil;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, p1, v1}, Lcom/facebook/orca/debug/FbLogImpl;->a(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
