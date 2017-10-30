.class Lcom/facebook/orca/app/FbBaseModule$AndroidThreadUtilProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "FbBaseModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/common/util/AndroidThreadUtil;",
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
    .line 534
    iput-object p1, p0, Lcom/facebook/orca/app/FbBaseModule$AndroidThreadUtilProvider;->a:Lcom/facebook/orca/app/FbBaseModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/FbBaseModule;Lcom/facebook/orca/app/FbBaseModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 534
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/FbBaseModule$AndroidThreadUtilProvider;-><init>(Lcom/facebook/orca/app/FbBaseModule;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/common/util/AndroidThreadUtil;
    .locals 3

    .prologue
    .line 538
    new-instance v1, Lcom/facebook/orca/common/util/DefaultAndroidThreadUtil;

    const-class v0, Ljava/util/concurrent/ExecutorService;

    const-class v2, Lcom/facebook/orca/annotations/DefaultExecutorService;

    invoke-virtual {p0, v0, v2}, Lcom/facebook/orca/app/FbBaseModule$AndroidThreadUtilProvider;->b(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    invoke-direct {v1, v0}, Lcom/facebook/orca/common/util/DefaultAndroidThreadUtil;-><init>(Ljava/util/concurrent/ExecutorService;)V

    return-object v1
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 534
    invoke-virtual {p0}, Lcom/facebook/orca/app/FbBaseModule$AndroidThreadUtilProvider;->a()Lcom/facebook/orca/common/util/AndroidThreadUtil;

    move-result-object v0

    return-object v0
.end method
