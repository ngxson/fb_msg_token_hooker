.class final Lcom/google/common/collect/BstModificationResult;
.super Ljava/lang/Object;
.source "BstModificationResult.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Lcom/google/common/collect/BstNode",
        "<*TN;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/common/collect/BstNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TN;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final b:Lcom/google/common/collect/BstNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TN;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final c:Lcom/google/common/collect/BstModificationResult$ModificationType;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstModificationResult$ModificationType;)V
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;",
            "Lcom/google/common/collect/BstModificationResult$ModificationType;",
            ")V"
        }
    .end annotation

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/google/common/collect/BstModificationResult;->a:Lcom/google/common/collect/BstNode;

    .line 57
    iput-object p2, p0, Lcom/google/common/collect/BstModificationResult;->b:Lcom/google/common/collect/BstNode;

    .line 58
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/BstModificationResult$ModificationType;

    iput-object v0, p0, Lcom/google/common/collect/BstModificationResult;->c:Lcom/google/common/collect/BstModificationResult$ModificationType;

    .line 59
    return-void
.end method

.method static a(Lcom/google/common/collect/BstNode;)Lcom/google/common/collect/BstModificationResult;
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Lcom/google/common/collect/BstNode",
            "<*TN;>;>(TN;)",
            "Lcom/google/common/collect/BstModificationResult",
            "<TN;>;"
        }
    .end annotation

    .prologue
    .line 35
    new-instance v0, Lcom/google/common/collect/BstModificationResult;

    sget-object v1, Lcom/google/common/collect/BstModificationResult$ModificationType;->IDENTITY:Lcom/google/common/collect/BstModificationResult$ModificationType;

    invoke-direct {v0, p0, p0, v1}, Lcom/google/common/collect/BstModificationResult;-><init>(Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstModificationResult$ModificationType;)V

    return-object v0
.end method

.method static a(Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;)Lcom/google/common/collect/BstModificationResult;
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Lcom/google/common/collect/BstNode",
            "<*TN;>;>(TN;TN;)",
            "Lcom/google/common/collect/BstModificationResult",
            "<TN;>;"
        }
    .end annotation

    .prologue
    .line 40
    new-instance v0, Lcom/google/common/collect/BstModificationResult;

    sget-object v1, Lcom/google/common/collect/BstModificationResult$ModificationType;->REBUILDING_CHANGE:Lcom/google/common/collect/BstModificationResult$ModificationType;

    invoke-direct {v0, p0, p1, v1}, Lcom/google/common/collect/BstModificationResult;-><init>(Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstModificationResult$ModificationType;)V

    return-object v0
.end method

.method static b(Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;)Lcom/google/common/collect/BstModificationResult;
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Lcom/google/common/collect/BstNode",
            "<*TN;>;>(TN;TN;)",
            "Lcom/google/common/collect/BstModificationResult",
            "<TN;>;"
        }
    .end annotation

    .prologue
    .line 46
    new-instance v0, Lcom/google/common/collect/BstModificationResult;

    sget-object v1, Lcom/google/common/collect/BstModificationResult$ModificationType;->REBALANCING_CHANGE:Lcom/google/common/collect/BstModificationResult$ModificationType;

    invoke-direct {v0, p0, p1, v1}, Lcom/google/common/collect/BstModificationResult;-><init>(Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstModificationResult$ModificationType;)V

    return-object v0
.end method


# virtual methods
.method a()Lcom/google/common/collect/BstNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TN;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/common/collect/BstModificationResult;->a:Lcom/google/common/collect/BstNode;

    return-object v0
.end method

.method b()Lcom/google/common/collect/BstNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TN;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/common/collect/BstModificationResult;->b:Lcom/google/common/collect/BstNode;

    return-object v0
.end method

.method c()Lcom/google/common/collect/BstModificationResult$ModificationType;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/common/collect/BstModificationResult;->c:Lcom/google/common/collect/BstModificationResult$ModificationType;

    return-object v0
.end method
