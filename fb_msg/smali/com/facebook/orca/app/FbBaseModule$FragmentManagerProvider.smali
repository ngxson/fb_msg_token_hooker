.class Lcom/facebook/orca/app/FbBaseModule$FragmentManagerProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "FbBaseModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Landroid/support/v4/app/FragmentManager;",
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
    .line 398
    iput-object p1, p0, Lcom/facebook/orca/app/FbBaseModule$FragmentManagerProvider;->a:Lcom/facebook/orca/app/FbBaseModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/FbBaseModule;Lcom/facebook/orca/app/FbBaseModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 398
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/FbBaseModule$FragmentManagerProvider;-><init>(Lcom/facebook/orca/app/FbBaseModule;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/support/v4/app/FragmentManager;
    .locals 2

    .prologue
    .line 402
    const-class v0, Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/FbBaseModule$FragmentManagerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 403
    instance-of v1, v0, Landroid/support/v4/app/FragmentActivity;

    if-eqz v1, :cond_0

    .line 404
    check-cast v0, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->f()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 406
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 398
    invoke-virtual {p0}, Lcom/facebook/orca/app/FbBaseModule$FragmentManagerProvider;->a()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    return-object v0
.end method
