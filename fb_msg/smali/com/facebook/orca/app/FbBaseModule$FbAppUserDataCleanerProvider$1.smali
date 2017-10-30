.class Lcom/facebook/orca/app/FbBaseModule$FbAppUserDataCleanerProvider$1;
.super Lcom/google/inject/TypeLiteral;
.source "FbBaseModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/inject/TypeLiteral",
        "<",
        "Ljava/util/Set",
        "<",
        "Lcom/facebook/orca/app/IHaveUserData;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/app/FbBaseModule$FbAppUserDataCleanerProvider;


# direct methods
.method constructor <init>(Lcom/facebook/orca/app/FbBaseModule$FbAppUserDataCleanerProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 508
    iput-object p1, p0, Lcom/facebook/orca/app/FbBaseModule$FbAppUserDataCleanerProvider$1;->a:Lcom/facebook/orca/app/FbBaseModule$FbAppUserDataCleanerProvider;

    invoke-direct {p0}, Lcom/google/inject/TypeLiteral;-><init>()V

    return-void
.end method
