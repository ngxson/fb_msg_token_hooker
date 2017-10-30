.class Lcom/facebook/orca/app/FbBaseModule$UiThreadExecutorProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "FbBaseModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/common/util/UiThreadExecutor;",
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
    .line 614
    iput-object p1, p0, Lcom/facebook/orca/app/FbBaseModule$UiThreadExecutorProvider;->a:Lcom/facebook/orca/app/FbBaseModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/FbBaseModule;Lcom/facebook/orca/app/FbBaseModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 614
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/FbBaseModule$UiThreadExecutorProvider;-><init>(Lcom/facebook/orca/app/FbBaseModule;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/common/util/UiThreadExecutor;
    .locals 2

    .prologue
    .line 618
    new-instance v1, Lcom/facebook/common/util/UiThreadExecutor;

    const-class v0, Lcom/facebook/orca/common/util/AndroidThreadUtil;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/FbBaseModule$UiThreadExecutorProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/util/AndroidThreadUtil;

    invoke-direct {v1, v0}, Lcom/facebook/common/util/UiThreadExecutor;-><init>(Lcom/facebook/orca/common/util/AndroidThreadUtil;)V

    return-object v1
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 614
    invoke-virtual {p0}, Lcom/facebook/orca/app/FbBaseModule$UiThreadExecutorProvider;->a()Lcom/facebook/common/util/UiThreadExecutor;

    move-result-object v0

    return-object v0
.end method
