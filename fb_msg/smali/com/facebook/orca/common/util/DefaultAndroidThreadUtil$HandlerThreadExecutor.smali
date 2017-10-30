.class Lcom/facebook/orca/common/util/DefaultAndroidThreadUtil$HandlerThreadExecutor;
.super Ljava/lang/Object;
.source "DefaultAndroidThreadUtil.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field private final a:Landroid/os/Handler;


# direct methods
.method private constructor <init>(Landroid/os/Handler;)V
    .locals 0
    .parameter

    .prologue
    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    iput-object p1, p0, Lcom/facebook/orca/common/util/DefaultAndroidThreadUtil$HandlerThreadExecutor;->a:Landroid/os/Handler;

    .line 212
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Handler;Lcom/facebook/orca/common/util/DefaultAndroidThreadUtil$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 206
    invoke-direct {p0, p1}, Lcom/facebook/orca/common/util/DefaultAndroidThreadUtil$HandlerThreadExecutor;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 1
    .parameter

    .prologue
    .line 216
    iget-object v0, p0, Lcom/facebook/orca/common/util/DefaultAndroidThreadUtil$HandlerThreadExecutor;->a:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 217
    return-void
.end method
