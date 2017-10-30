.class Lcom/facebook/orca/images/ImageModule$ImageScalingUtilProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "ImageModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/images/ImageScalingUtil;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/images/ImageModule;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/images/ImageModule;)V
    .locals 0
    .parameter

    .prologue
    .line 164
    iput-object p1, p0, Lcom/facebook/orca/images/ImageModule$ImageScalingUtilProvider;->a:Lcom/facebook/orca/images/ImageModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/images/ImageModule;Lcom/facebook/orca/images/ImageModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 164
    invoke-direct {p0, p1}, Lcom/facebook/orca/images/ImageModule$ImageScalingUtilProvider;-><init>(Lcom/facebook/orca/images/ImageModule;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/images/ImageScalingUtil;
    .locals 1

    .prologue
    .line 168
    new-instance v0, Lcom/facebook/orca/images/ImageScalingUtil;

    invoke-direct {v0}, Lcom/facebook/orca/images/ImageScalingUtil;-><init>()V

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/facebook/orca/images/ImageModule$ImageScalingUtilProvider;->a()Lcom/facebook/orca/images/ImageScalingUtil;

    move-result-object v0

    return-object v0
.end method
