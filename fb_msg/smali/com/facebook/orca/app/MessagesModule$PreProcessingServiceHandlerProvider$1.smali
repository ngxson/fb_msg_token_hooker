.class Lcom/facebook/orca/app/MessagesModule$PreProcessingServiceHandlerProvider$1;
.super Lcom/google/inject/TypeLiteral;
.source "MessagesModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/inject/TypeLiteral",
        "<",
        "Ljava/util/Set",
        "<",
        "Lcom/facebook/orca/server/OrcaServiceHandlerHook;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/app/MessagesModule$PreProcessingServiceHandlerProvider;


# direct methods
.method constructor <init>(Lcom/facebook/orca/app/MessagesModule$PreProcessingServiceHandlerProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 1759
    iput-object p1, p0, Lcom/facebook/orca/app/MessagesModule$PreProcessingServiceHandlerProvider$1;->a:Lcom/facebook/orca/app/MessagesModule$PreProcessingServiceHandlerProvider;

    invoke-direct {p0}, Lcom/google/inject/TypeLiteral;-><init>()V

    return-void
.end method
