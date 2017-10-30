.class Lcom/facebook/orca/app/FbBaseModule$FbLogImplProvider$1;
.super Lcom/google/inject/TypeLiteral;
.source "FbBaseModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/inject/TypeLiteral",
        "<",
        "Ljava/util/Set",
        "<",
        "Lcom/facebook/orca/debug/FbLogWriter;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/app/FbBaseModule$FbLogImplProvider;


# direct methods
.method constructor <init>(Lcom/facebook/orca/app/FbBaseModule$FbLogImplProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 609
    iput-object p1, p0, Lcom/facebook/orca/app/FbBaseModule$FbLogImplProvider$1;->a:Lcom/facebook/orca/app/FbBaseModule$FbLogImplProvider;

    invoke-direct {p0}, Lcom/google/inject/TypeLiteral;-><init>()V

    return-void
.end method
