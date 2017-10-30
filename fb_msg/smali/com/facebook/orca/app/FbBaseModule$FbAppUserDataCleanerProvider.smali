.class Lcom/facebook/orca/app/FbBaseModule$FbAppUserDataCleanerProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "FbBaseModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/app/FbAppUserDataCleaner;",
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
    .line 502
    iput-object p1, p0, Lcom/facebook/orca/app/FbBaseModule$FbAppUserDataCleanerProvider;->a:Lcom/facebook/orca/app/FbBaseModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/FbBaseModule;Lcom/facebook/orca/app/FbBaseModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 502
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/FbBaseModule$FbAppUserDataCleanerProvider;-><init>(Lcom/facebook/orca/app/FbBaseModule;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/app/FbAppUserDataCleaner;
    .locals 3

    .prologue
    .line 506
    new-instance v2, Lcom/facebook/orca/app/FbAppUserDataCleaner;

    const-class v0, Lcom/facebook/orca/common/util/AndroidThreadUtil;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/FbBaseModule$FbAppUserDataCleanerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/util/AndroidThreadUtil;

    new-instance v1, Lcom/facebook/orca/app/FbBaseModule$FbAppUserDataCleanerProvider$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/app/FbBaseModule$FbAppUserDataCleanerProvider$1;-><init>(Lcom/facebook/orca/app/FbBaseModule$FbAppUserDataCleanerProvider;)V

    invoke-static {v1}, Lcom/google/inject/Key;->a(Lcom/google/inject/TypeLiteral;)Lcom/google/inject/Key;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/FbBaseModule$FbAppUserDataCleanerProvider;->b(Lcom/google/inject/Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-direct {v2, v0, v1}, Lcom/facebook/orca/app/FbAppUserDataCleaner;-><init>(Lcom/facebook/orca/common/util/AndroidThreadUtil;Ljava/util/Set;)V

    return-object v2
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 502
    invoke-virtual {p0}, Lcom/facebook/orca/app/FbBaseModule$FbAppUserDataCleanerProvider;->a()Lcom/facebook/orca/app/FbAppUserDataCleaner;

    move-result-object v0

    return-object v0
.end method
