.class Lcom/facebook/orca/app/FbBaseModule$FbAppInitializerProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "FbBaseModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/app/FbAppInitializer;",
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
    .line 482
    iput-object p1, p0, Lcom/facebook/orca/app/FbBaseModule$FbAppInitializerProvider;->a:Lcom/facebook/orca/app/FbBaseModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/FbBaseModule;Lcom/facebook/orca/app/FbBaseModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 482
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/FbBaseModule$FbAppInitializerProvider;-><init>(Lcom/facebook/orca/app/FbBaseModule;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/app/FbAppInitializer;
    .locals 6

    .prologue
    .line 486
    new-instance v4, Lcom/facebook/orca/app/FbAppInitializer;

    const-class v0, Lcom/facebook/orca/common/util/AndroidThreadUtil;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/FbBaseModule$FbAppInitializerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/util/AndroidThreadUtil;

    new-instance v1, Lcom/facebook/orca/app/FbBaseModule$FbAppInitializerProvider$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/app/FbBaseModule$FbAppInitializerProvider$1;-><init>(Lcom/facebook/orca/app/FbBaseModule$FbAppInitializerProvider;)V

    const-class v2, Lcom/facebook/orca/annotations/NeedsHighPriorityInitOnBackgroundThread;

    invoke-static {v1, v2}, Lcom/google/inject/Key;->a(Lcom/google/inject/TypeLiteral;Ljava/lang/Class;)Lcom/google/inject/Key;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/FbBaseModule$FbAppInitializerProvider;->b(Lcom/google/inject/Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    new-instance v2, Lcom/facebook/orca/app/FbBaseModule$FbAppInitializerProvider$2;

    invoke-direct {v2, p0}, Lcom/facebook/orca/app/FbBaseModule$FbAppInitializerProvider$2;-><init>(Lcom/facebook/orca/app/FbBaseModule$FbAppInitializerProvider;)V

    const-class v3, Lcom/facebook/orca/annotations/NeedsLowPriorityInitOnUiThread;

    invoke-static {v2, v3}, Lcom/google/inject/Key;->a(Lcom/google/inject/TypeLiteral;Ljava/lang/Class;)Lcom/google/inject/Key;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/facebook/orca/app/FbBaseModule$FbAppInitializerProvider;->b(Lcom/google/inject/Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    new-instance v3, Lcom/facebook/orca/app/FbBaseModule$FbAppInitializerProvider$3;

    invoke-direct {v3, p0}, Lcom/facebook/orca/app/FbBaseModule$FbAppInitializerProvider$3;-><init>(Lcom/facebook/orca/app/FbBaseModule$FbAppInitializerProvider;)V

    const-class v5, Lcom/facebook/orca/annotations/NeedsLowPriorityInitOnBackgroundThread;

    invoke-static {v3, v5}, Lcom/google/inject/Key;->a(Lcom/google/inject/TypeLiteral;Ljava/lang/Class;)Lcom/google/inject/Key;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/facebook/orca/app/FbBaseModule$FbAppInitializerProvider;->b(Lcom/google/inject/Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/facebook/orca/app/FbAppInitializer;-><init>(Lcom/facebook/orca/common/util/AndroidThreadUtil;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    return-object v4
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 482
    invoke-virtual {p0}, Lcom/facebook/orca/app/FbBaseModule$FbAppInitializerProvider;->a()Lcom/facebook/orca/app/FbAppInitializer;

    move-result-object v0

    return-object v0
.end method
