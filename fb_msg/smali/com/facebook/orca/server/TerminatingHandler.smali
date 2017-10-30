.class public Lcom/facebook/orca/server/TerminatingHandler;
.super Ljava/lang/Object;
.source "TerminatingHandler.java"

# interfaces
.implements Lcom/facebook/orca/server/OrcaServiceHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;
    .locals 1
    .parameter

    .prologue
    .line 9
    invoke-virtual {p0, p1}, Lcom/facebook/orca/server/TerminatingHandler;->b(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/FutureOperationResult;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/FutureOperationResult;
    .locals 3
    .parameter

    .prologue
    .line 12
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
