.class public Lcom/facebook/orca/debug/Tracer;
.super Ljava/lang/Object;
.source "Tracer.java"


# static fields
.field private static final a:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/facebook/orca/debug/ThreadTrace;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Lcom/facebook/orca/debug/ThreadTrace;

.field private final c:J

.field private final d:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/facebook/orca/debug/Tracer;->a:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    sget-object v0, Lcom/facebook/orca/debug/Tracer;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/debug/ThreadTrace;

    iput-object v0, p0, Lcom/facebook/orca/debug/Tracer;->b:Lcom/facebook/orca/debug/ThreadTrace;

    .line 31
    iget-object v0, p0, Lcom/facebook/orca/debug/Tracer;->b:Lcom/facebook/orca/debug/ThreadTrace;

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/facebook/orca/debug/Tracer;->b:Lcom/facebook/orca/debug/ThreadTrace;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/orca/debug/ThreadTrace;->a(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/debug/Tracer;->c:J

    .line 33
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/orca/debug/Tracer;->d:J

    .line 38
    :goto_0
    return-void

    .line 35
    :cond_0
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/orca/debug/Tracer;->c:J

    .line 36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/debug/Tracer;->d:J

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Lcom/facebook/orca/debug/Tracer;
    .locals 2
    .parameter

    .prologue
    .line 22
    new-instance v0, Lcom/facebook/orca/debug/Tracer;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/orca/debug/Tracer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/orca/debug/Tracer;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 26
    new-instance v0, Lcom/facebook/orca/debug/Tracer;

    invoke-direct {v0, p0, p1}, Lcom/facebook/orca/debug/Tracer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(ILjava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 92
    sget-object v0, Lcom/facebook/orca/debug/Tracer;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/debug/ThreadTrace;

    .line 93
    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {v0, p0, p1}, Lcom/facebook/orca/debug/ThreadTrace;->a(ILjava/lang/String;)V

    .line 95
    sget-object v0, Lcom/facebook/orca/debug/Tracer;->a:Ljava/lang/ThreadLocal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 97
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/Class;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 100
    invoke-static {p0}, Lcom/facebook/debug/LogPrefixer;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/debug/Tracer;->c(Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method public static b()V
    .locals 2

    .prologue
    .line 80
    sget-object v0, Lcom/facebook/orca/debug/Tracer;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/debug/ThreadTrace;

    .line 81
    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {v0}, Lcom/facebook/orca/debug/ThreadTrace;->a()V

    .line 83
    sget-object v0, Lcom/facebook/orca/debug/Tracer;->a:Ljava/lang/ThreadLocal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 85
    :cond_0
    return-void
.end method

.method public static b(J)V
    .locals 2
    .parameter

    .prologue
    .line 71
    sget-object v0, Lcom/facebook/orca/debug/Tracer;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/debug/ThreadTrace;

    .line 72
    if-nez v0, :cond_0

    .line 73
    new-instance v0, Lcom/facebook/orca/debug/ThreadTrace;

    invoke-direct {v0}, Lcom/facebook/orca/debug/ThreadTrace;-><init>()V

    .line 74
    sget-object v1, Lcom/facebook/orca/debug/Tracer;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 76
    :cond_0
    invoke-virtual {v0, p0, p1}, Lcom/facebook/orca/debug/ThreadTrace;->a(J)V

    .line 77
    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 57
    sget-object v0, Lcom/facebook/orca/debug/Tracer;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/debug/ThreadTrace;

    .line 58
    if-eqz v0, :cond_0

    .line 59
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/facebook/orca/debug/ThreadTrace;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    :cond_0
    return-void
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    sget-object v0, Lcom/facebook/orca/debug/Tracer;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/debug/ThreadTrace;

    .line 105
    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {v0}, Lcom/facebook/orca/debug/ThreadTrace;->b()Ljava/lang/String;

    move-result-object v0

    .line 108
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 88
    const/4 v0, 0x3

    invoke-static {v0, p0}, Lcom/facebook/orca/debug/Tracer;->a(ILjava/lang/String;)V

    .line 89
    return-void
.end method


# virtual methods
.method public a()J
    .locals 4

    .prologue
    .line 41
    iget-object v0, p0, Lcom/facebook/orca/debug/Tracer;->b:Lcom/facebook/orca/debug/ThreadTrace;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/facebook/orca/debug/Tracer;->b:Lcom/facebook/orca/debug/ThreadTrace;

    iget-wide v1, p0, Lcom/facebook/orca/debug/Tracer;->c:J

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/orca/debug/ThreadTrace;->a(JLjava/lang/Long;)J

    move-result-wide v0

    .line 44
    :goto_0
    return-wide v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/facebook/orca/debug/Tracer;->d:J

    sub-long/2addr v0, v2

    goto :goto_0
.end method

.method public a(J)J
    .locals 4
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/facebook/orca/debug/Tracer;->b:Lcom/facebook/orca/debug/ThreadTrace;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/facebook/orca/debug/Tracer;->b:Lcom/facebook/orca/debug/ThreadTrace;

    iget-wide v1, p0, Lcom/facebook/orca/debug/Tracer;->c:J

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/orca/debug/ThreadTrace;->a(JLjava/lang/Long;)J

    move-result-wide v0

    .line 52
    :goto_0
    return-wide v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/facebook/orca/debug/Tracer;->d:J

    sub-long/2addr v0, v2

    goto :goto_0
.end method
