.class Lcom/facebook/orca/app/MessagesModule$TextListWithMoreComputerProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessagesModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/common/ui/widgets/text/TextListWithMoreComputer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/app/MessagesModule;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/MessagesModule;)V
    .locals 0
    .parameter

    .prologue
    .line 1030
    iput-object p1, p0, Lcom/facebook/orca/app/MessagesModule$TextListWithMoreComputerProvider;->a:Lcom/facebook/orca/app/MessagesModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1030
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/MessagesModule$TextListWithMoreComputerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/common/ui/widgets/text/TextListWithMoreComputer;
    .locals 1

    .prologue
    .line 1035
    new-instance v0, Lcom/facebook/orca/common/ui/widgets/text/TextListWithMoreComputer;

    invoke-direct {v0}, Lcom/facebook/orca/common/ui/widgets/text/TextListWithMoreComputer;-><init>()V

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1030
    invoke-virtual {p0}, Lcom/facebook/orca/app/MessagesModule$TextListWithMoreComputerProvider;->a()Lcom/facebook/orca/common/ui/widgets/text/TextListWithMoreComputer;

    move-result-object v0

    return-object v0
.end method
