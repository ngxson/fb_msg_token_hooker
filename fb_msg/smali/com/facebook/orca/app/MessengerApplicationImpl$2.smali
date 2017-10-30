.class Lcom/facebook/orca/app/MessengerApplicationImpl$2;
.super Ljava/lang/Object;
.source "MessengerApplicationImpl.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/FutureCallback",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/debug/Tracer;

.field final synthetic b:Lcom/facebook/orca/app/MessengerApplicationImpl;


# direct methods
.method constructor <init>(Lcom/facebook/orca/app/MessengerApplicationImpl;Lcom/facebook/orca/debug/Tracer;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/facebook/orca/app/MessengerApplicationImpl$2;->b:Lcom/facebook/orca/app/MessengerApplicationImpl;

    iput-object p2, p0, Lcom/facebook/orca/app/MessengerApplicationImpl$2;->a:Lcom/facebook/orca/debug/Tracer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 113
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/facebook/orca/app/MessengerApplicationImpl$2;->a(Ljava/lang/Void;)V

    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 0
    .parameter

    .prologue
    .line 121
    return-void
.end method

.method public a(Ljava/lang/Void;)V
    .locals 2
    .parameter

    .prologue
    .line 116
    iget-object v0, p0, Lcom/facebook/orca/app/MessengerApplicationImpl$2;->b:Lcom/facebook/orca/app/MessengerApplicationImpl;

    invoke-static {v0}, Lcom/facebook/orca/app/MessengerApplicationImpl;->a(Lcom/facebook/orca/app/MessengerApplicationImpl;)Lcom/facebook/orca/inject/FbInjector;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/debug/ActivityTracer;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/debug/ActivityTracer;

    iget-object v1, p0, Lcom/facebook/orca/app/MessengerApplicationImpl$2;->a:Lcom/facebook/orca/debug/Tracer;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/debug/ActivityTracer;->a(Lcom/facebook/orca/debug/Tracer;)V

    .line 117
    return-void
.end method
