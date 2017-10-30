.class Lcom/facebook/orca/app/FbBaseModule$SystemClockProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "FbBaseModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/common/util/SystemClock;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 448
    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/FbBaseModule$1;)V
    .locals 0
    .parameter

    .prologue
    .line 448
    invoke-direct {p0}, Lcom/facebook/orca/app/FbBaseModule$SystemClockProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/common/util/SystemClock;
    .locals 1

    .prologue
    .line 452
    invoke-static {}, Lcom/facebook/orca/common/util/SystemClock;->b()Lcom/facebook/orca/common/util/SystemClock;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 448
    invoke-virtual {p0}, Lcom/facebook/orca/app/FbBaseModule$SystemClockProvider;->a()Lcom/facebook/orca/common/util/SystemClock;

    move-result-object v0

    return-object v0
.end method
