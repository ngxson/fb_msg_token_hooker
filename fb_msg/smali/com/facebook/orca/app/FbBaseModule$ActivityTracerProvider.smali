.class Lcom/facebook/orca/app/FbBaseModule$ActivityTracerProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "FbBaseModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/debug/ActivityTracer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/app/FbBaseModule;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/FbBaseModule;)V
    .locals 0
    .parameter

    .prologue
    .line 643
    iput-object p1, p0, Lcom/facebook/orca/app/FbBaseModule$ActivityTracerProvider;->a:Lcom/facebook/orca/app/FbBaseModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/FbBaseModule;Lcom/facebook/orca/app/FbBaseModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 643
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/FbBaseModule$ActivityTracerProvider;-><init>(Lcom/facebook/orca/app/FbBaseModule;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/debug/ActivityTracer;
    .locals 2

    .prologue
    .line 647
    new-instance v1, Lcom/facebook/orca/debug/ActivityTracer;

    const-class v0, Lcom/facebook/orca/common/util/AndroidThreadUtil;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/FbBaseModule$ActivityTracerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/util/AndroidThreadUtil;

    invoke-direct {v1, v0}, Lcom/facebook/orca/debug/ActivityTracer;-><init>(Lcom/facebook/orca/common/util/AndroidThreadUtil;)V

    return-object v1
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 643
    invoke-virtual {p0}, Lcom/facebook/orca/app/FbBaseModule$ActivityTracerProvider;->a()Lcom/facebook/orca/debug/ActivityTracer;

    move-result-object v0

    return-object v0
.end method
