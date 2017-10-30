.class public Lcom/facebook/orca/debug/ActivityTracer;
.super Ljava/lang/Object;
.source "ActivityTracer.java"


# static fields
.field private static a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Lcom/facebook/orca/common/util/AndroidThreadUtil;

.field private c:Lcom/facebook/orca/debug/Tracer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/facebook/orca/debug/ActivityTracer;

    sput-object v0, Lcom/facebook/orca/debug/ActivityTracer;->a:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/orca/common/util/AndroidThreadUtil;)V
    .locals 0
    .parameter

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/facebook/orca/debug/ActivityTracer;->b:Lcom/facebook/orca/common/util/AndroidThreadUtil;

    .line 25
    invoke-interface {p1}, Lcom/facebook/orca/common/util/AndroidThreadUtil;->a()V

    .line 26
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/debug/ActivityTracer;)Lcom/facebook/orca/debug/Tracer;
    .locals 1
    .parameter

    .prologue
    .line 15
    iget-object v0, p0, Lcom/facebook/orca/debug/ActivityTracer;->c:Lcom/facebook/orca/debug/Tracer;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 35
    :try_start_0
    invoke-static {p0}, Lcom/facebook/orca/inject/FbInjector;->a(Landroid/content/Context;)Lcom/facebook/orca/inject/FbInjector;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/debug/ActivityTracer;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/debug/ActivityTracer;

    invoke-virtual {v0}, Lcom/facebook/orca/debug/ActivityTracer;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    :goto_0
    return-void

    .line 36
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic b()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/facebook/orca/debug/ActivityTracer;->a:Ljava/lang/Class;

    return-object v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 65
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/debug/ActivityTracer$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/debug/ActivityTracer$1;-><init>(Lcom/facebook/orca/debug/ActivityTracer;)V

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 79
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/facebook/orca/debug/ActivityTracer;->b:Lcom/facebook/orca/common/util/AndroidThreadUtil;

    invoke-interface {v0}, Lcom/facebook/orca/common/util/AndroidThreadUtil;->a()V

    .line 46
    const-wide/16 v0, 0x3

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/Tracer;->b(J)V

    .line 47
    const-string v0, "ActivityTracer.startTrace"

    invoke-static {v0}, Lcom/facebook/orca/debug/Tracer;->a(Ljava/lang/String;)Lcom/facebook/orca/debug/Tracer;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/debug/ActivityTracer;->c:Lcom/facebook/orca/debug/Tracer;

    .line 48
    invoke-direct {p0}, Lcom/facebook/orca/debug/ActivityTracer;->c()V

    .line 49
    return-void
.end method

.method public a(Lcom/facebook/orca/debug/Tracer;)V
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/facebook/orca/debug/ActivityTracer;->b:Lcom/facebook/orca/common/util/AndroidThreadUtil;

    invoke-interface {v0}, Lcom/facebook/orca/common/util/AndroidThreadUtil;->a()V

    .line 60
    iput-object p1, p0, Lcom/facebook/orca/debug/ActivityTracer;->c:Lcom/facebook/orca/debug/Tracer;

    .line 61
    invoke-direct {p0}, Lcom/facebook/orca/debug/ActivityTracer;->c()V

    .line 62
    return-void
.end method
