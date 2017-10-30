.class Lcom/facebook/orca/app/FbBaseModule$ProcessUtilProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "FbBaseModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/common/util/ProcessUtil;",
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
    .line 411
    iput-object p1, p0, Lcom/facebook/orca/app/FbBaseModule$ProcessUtilProvider;->a:Lcom/facebook/orca/app/FbBaseModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/FbBaseModule;Lcom/facebook/orca/app/FbBaseModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 411
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/FbBaseModule$ProcessUtilProvider;-><init>(Lcom/facebook/orca/app/FbBaseModule;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/common/util/ProcessUtil;
    .locals 5

    .prologue
    .line 415
    new-instance v1, Lcom/facebook/common/util/ProcessUtil;

    iget-object v0, p0, Lcom/facebook/orca/app/FbBaseModule$ProcessUtilProvider;->a:Lcom/facebook/orca/app/FbBaseModule;

    invoke-static {v0}, Lcom/facebook/orca/app/FbBaseModule;->b(Lcom/facebook/orca/app/FbBaseModule;)Landroid/content/Context;

    move-result-object v2

    const-class v0, Landroid/app/ActivityManager;

    const-class v3, Lcom/facebook/orca/annotations/FromApplication;

    invoke-virtual {p0, v0, v3}, Lcom/facebook/orca/app/FbBaseModule$ProcessUtilProvider;->b(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const-class v3, Ljava/lang/Integer;

    const-class v4, Lcom/facebook/annotations/MyProcessId;

    invoke-virtual {p0, v3, v4}, Lcom/facebook/orca/app/FbBaseModule$ProcessUtilProvider;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljavax/inject/Provider;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lcom/facebook/common/util/ProcessUtil;-><init>(Landroid/content/Context;Landroid/app/ActivityManager;Ljavax/inject/Provider;)V

    return-object v1
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 411
    invoke-virtual {p0}, Lcom/facebook/orca/app/FbBaseModule$ProcessUtilProvider;->a()Lcom/facebook/common/util/ProcessUtil;

    move-result-object v0

    return-object v0
.end method
