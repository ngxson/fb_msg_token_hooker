.class Lcom/facebook/orca/app/FbBaseModule$FbLogImplProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "FbBaseModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/debug/FbLogImpl;",
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
    .line 603
    iput-object p1, p0, Lcom/facebook/orca/app/FbBaseModule$FbLogImplProvider;->a:Lcom/facebook/orca/app/FbBaseModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/FbBaseModule;Lcom/facebook/orca/app/FbBaseModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 603
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/FbBaseModule$FbLogImplProvider;-><init>(Lcom/facebook/orca/app/FbBaseModule;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/debug/FbLogImpl;
    .locals 3

    .prologue
    .line 607
    new-instance v1, Lcom/facebook/orca/debug/FbLogImpl;

    iget-object v0, p0, Lcom/facebook/orca/app/FbBaseModule$FbLogImplProvider;->a:Lcom/facebook/orca/app/FbBaseModule;

    invoke-static {v0}, Lcom/facebook/orca/app/FbBaseModule;->c(Lcom/facebook/orca/app/FbBaseModule;)Ljava/lang/String;

    move-result-object v2

    new-instance v0, Lcom/facebook/orca/app/FbBaseModule$FbLogImplProvider$1;

    invoke-direct {v0, p0}, Lcom/facebook/orca/app/FbBaseModule$FbLogImplProvider$1;-><init>(Lcom/facebook/orca/app/FbBaseModule$FbLogImplProvider;)V

    invoke-static {v0}, Lcom/google/inject/Key;->a(Lcom/google/inject/TypeLiteral;)Lcom/google/inject/Key;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/FbBaseModule$FbLogImplProvider;->b(Lcom/google/inject/Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-direct {v1, v2, v0}, Lcom/facebook/orca/debug/FbLogImpl;-><init>(Ljava/lang/String;Ljava/util/Set;)V

    return-object v1
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 603
    invoke-virtual {p0}, Lcom/facebook/orca/app/FbBaseModule$FbLogImplProvider;->a()Lcom/facebook/orca/debug/FbLogImpl;

    move-result-object v0

    return-object v0
.end method
