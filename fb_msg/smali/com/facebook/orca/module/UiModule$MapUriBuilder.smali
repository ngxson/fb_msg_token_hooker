.class Lcom/facebook/orca/module/UiModule$MapUriBuilder;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "UiModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/widget/MapImage$MapUriBuilder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/module/UiModule;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/module/UiModule;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/facebook/orca/module/UiModule$MapUriBuilder;->a:Lcom/facebook/orca/module/UiModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/module/UiModule;Lcom/facebook/orca/module/UiModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/facebook/orca/module/UiModule$MapUriBuilder;-><init>(Lcom/facebook/orca/module/UiModule;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/widget/MapImage$MapUriBuilder;
    .locals 2

    .prologue
    .line 63
    new-instance v0, Lcom/facebook/widget/MapImage$MapUriBuilder;

    iget-object v1, p0, Lcom/facebook/orca/module/UiModule$MapUriBuilder;->a:Lcom/facebook/orca/module/UiModule;

    invoke-static {v1}, Lcom/facebook/orca/module/UiModule;->a(Lcom/facebook/orca/module/UiModule;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/widget/MapImage$MapUriBuilder;-><init>(Landroid/util/DisplayMetrics;)V

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/facebook/orca/module/UiModule$MapUriBuilder;->a()Lcom/facebook/widget/MapImage$MapUriBuilder;

    move-result-object v0

    return-object v0
.end method
