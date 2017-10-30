.class Lcom/facebook/orca/debug/ActivityTracer$1;
.super Ljava/lang/Object;
.source "ActivityTracer.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# instance fields
.field final synthetic a:Lcom/facebook/orca/debug/ActivityTracer;


# direct methods
.method constructor <init>(Lcom/facebook/orca/debug/ActivityTracer;)V
    .locals 0
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/facebook/orca/debug/ActivityTracer$1;->a:Lcom/facebook/orca/debug/ActivityTracer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public queueIdle()Z
    .locals 4

    .prologue
    .line 68
    iget-object v0, p0, Lcom/facebook/orca/debug/ActivityTracer$1;->a:Lcom/facebook/orca/debug/ActivityTracer;

    invoke-static {v0}, Lcom/facebook/orca/debug/ActivityTracer;->a(Lcom/facebook/orca/debug/ActivityTracer;)Lcom/facebook/orca/debug/Tracer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/facebook/orca/debug/ActivityTracer$1;->a:Lcom/facebook/orca/debug/ActivityTracer;

    invoke-static {v0}, Lcom/facebook/orca/debug/ActivityTracer;->a(Lcom/facebook/orca/debug/ActivityTracer;)Lcom/facebook/orca/debug/Tracer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/debug/Tracer;->a()J

    move-result-wide v0

    .line 70
    const-wide/16 v2, 0x14

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 71
    invoke-static {}, Lcom/facebook/orca/debug/ActivityTracer;->b()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/debug/Tracer;->a(Ljava/lang/Class;)V

    .line 76
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 73
    :cond_1
    invoke-static {}, Lcom/facebook/orca/debug/Tracer;->b()V

    goto :goto_0
.end method
