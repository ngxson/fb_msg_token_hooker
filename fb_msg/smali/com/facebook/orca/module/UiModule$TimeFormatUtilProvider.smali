.class Lcom/facebook/orca/module/UiModule$TimeFormatUtilProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "UiModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/common/util/TimeFormatUtil;",
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
    .line 51
    iput-object p1, p0, Lcom/facebook/orca/module/UiModule$TimeFormatUtilProvider;->a:Lcom/facebook/orca/module/UiModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/module/UiModule;Lcom/facebook/orca/module/UiModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/facebook/orca/module/UiModule$TimeFormatUtilProvider;-><init>(Lcom/facebook/orca/module/UiModule;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/common/util/TimeFormatUtil;
    .locals 2

    .prologue
    .line 55
    new-instance v0, Lcom/facebook/common/util/DefaultTimeFormatUtil;

    iget-object v1, p0, Lcom/facebook/orca/module/UiModule$TimeFormatUtilProvider;->a:Lcom/facebook/orca/module/UiModule;

    invoke-static {v1}, Lcom/facebook/orca/module/UiModule;->a(Lcom/facebook/orca/module/UiModule;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/common/util/DefaultTimeFormatUtil;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/facebook/orca/module/UiModule$TimeFormatUtilProvider;->a()Lcom/facebook/common/util/TimeFormatUtil;

    move-result-object v0

    return-object v0
.end method
