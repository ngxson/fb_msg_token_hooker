.class Lcom/facebook/orca/app/FbBaseModule$FbAppInitializerProvider$1;
.super Lcom/google/inject/TypeLiteral;
.source "FbBaseModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/inject/TypeLiteral",
        "<",
        "Ljava/util/Set",
        "<",
        "Lcom/facebook/orca/app/INeedInit;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/app/FbBaseModule$FbAppInitializerProvider;


# direct methods
.method constructor <init>(Lcom/facebook/orca/app/FbBaseModule$FbAppInitializerProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 489
    iput-object p1, p0, Lcom/facebook/orca/app/FbBaseModule$FbAppInitializerProvider$1;->a:Lcom/facebook/orca/app/FbBaseModule$FbAppInitializerProvider;

    invoke-direct {p0}, Lcom/google/inject/TypeLiteral;-><init>()V

    return-void
.end method
