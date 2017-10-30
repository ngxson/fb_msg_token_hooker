.class Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;
.super Ljava/lang/Object;
.source "OrcaServiceQueue.java"


# instance fields
.field private final a:Lcom/facebook/orca/server/Operation;

.field private final b:J

.field private c:J

.field private d:J

.field private e:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/facebook/orca/server/OperationResult;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/facebook/orca/server/OperationResult;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/server/ICompletionHandler;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/facebook/orca/server/OrcaServiceProgressCallback;


# direct methods
.method constructor <init>(Lcom/facebook/orca/server/Operation;)V
    .locals 2
    .parameter

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;->g:Ljava/util/List;

    .line 56
    iput-object p1, p0, Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;->a:Lcom/facebook/orca/server/Operation;

    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;->b:J

    .line 58
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 45
    iput-wide p1, p0, Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;->c:J

    return-wide p1
.end method

.method static synthetic a(Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;Lcom/facebook/orca/server/OperationResult;)Lcom/facebook/orca/server/OperationResult;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;->f:Lcom/facebook/orca/server/OperationResult;

    return-object p1
.end method

.method static synthetic a(Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;Lcom/facebook/orca/server/OrcaServiceProgressCallback;)Lcom/facebook/orca/server/OrcaServiceProgressCallback;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;->h:Lcom/facebook/orca/server/OrcaServiceProgressCallback;

    return-object p1
.end method

.method static synthetic a(Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;->e:Lcom/google/common/util/concurrent/ListenableFuture;

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;->e:Lcom/google/common/util/concurrent/ListenableFuture;

    return-object p1
.end method

.method static synthetic a(Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;->g:Ljava/util/List;

    return-object p1
.end method

.method static synthetic b(Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 45
    iput-wide p1, p0, Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;->d:J

    return-wide p1
.end method

.method static synthetic b(Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;)Lcom/facebook/orca/server/OrcaServiceProgressCallback;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;->h:Lcom/facebook/orca/server/OrcaServiceProgressCallback;

    return-object v0
.end method

.method static synthetic c(Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;)J
    .locals 2
    .parameter

    .prologue
    .line 45
    iget-wide v0, p0, Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;->d:J

    return-wide v0
.end method

.method static synthetic d(Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;)Lcom/facebook/orca/server/Operation;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;->a:Lcom/facebook/orca/server/Operation;

    return-object v0
.end method

.method static synthetic e(Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;->g:Ljava/util/List;

    return-object v0
.end method

.method static synthetic f(Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;)Lcom/facebook/orca/server/OperationResult;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;->f:Lcom/facebook/orca/server/OperationResult;

    return-object v0
.end method
