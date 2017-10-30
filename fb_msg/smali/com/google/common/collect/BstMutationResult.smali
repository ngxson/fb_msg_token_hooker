.class final Lcom/google/common/collect/BstMutationResult;
.super Ljava/lang/Object;
.source "BstMutationResult.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "N:",
        "Lcom/google/common/collect/BstNode",
        "<TK;TN;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final synthetic a:Z


# instance fields
.field private final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private c:Lcom/google/common/collect/BstNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TN;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private d:Lcom/google/common/collect/BstNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TN;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final e:Lcom/google/common/collect/BstModificationResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/BstModificationResult",
            "<TN;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/google/common/collect/BstMutationResult;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/common/collect/BstMutationResult;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Ljava/lang/Object;Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstModificationResult;)V
    .locals 1
    .parameter
    .end parameter
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
            "(TK;TN;TN;",
            "Lcom/google/common/collect/BstModificationResult",
            "<TN;>;)V"
        }
    .end annotation

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/BstMutationResult;->b:Ljava/lang/Object;

    .line 66
    iput-object p2, p0, Lcom/google/common/collect/BstMutationResult;->c:Lcom/google/common/collect/BstNode;

    .line 67
    iput-object p3, p0, Lcom/google/common/collect/BstMutationResult;->d:Lcom/google/common/collect/BstNode;

    .line 68
    invoke-static {p4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/BstModificationResult;

    iput-object v0, p0, Lcom/google/common/collect/BstMutationResult;->e:Lcom/google/common/collect/BstModificationResult;

    .line 69
    return-void
.end method

.method public static a(Ljava/lang/Object;Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstModificationResult;)Lcom/google/common/collect/BstMutationResult;
    .locals 1
    .parameter
    .end parameter
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
            "<K:",
            "Ljava/lang/Object;",
            "N:",
            "Lcom/google/common/collect/BstNode",
            "<TK;TN;>;>(TK;TN;TN;",
            "Lcom/google/common/collect/BstModificationResult",
            "<TN;>;)",
            "Lcom/google/common/collect/BstMutationResult",
            "<TK;TN;>;"
        }
    .end annotation

    .prologue
    .line 50
    new-instance v0, Lcom/google/common/collect/BstMutationResult;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/common/collect/BstMutationResult;-><init>(Ljava/lang/Object;Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstModificationResult;)V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstSide;Lcom/google/common/collect/BstNodeFactory;Lcom/google/common/collect/BstBalancePolicy;)Lcom/google/common/collect/BstMutationResult;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;",
            "Lcom/google/common/collect/BstSide;",
            "Lcom/google/common/collect/BstNodeFactory",
            "<TN;>;",
            "Lcom/google/common/collect/BstBalancePolicy",
            "<TN;>;)",
            "Lcom/google/common/collect/BstMutationResult",
            "<TK;TN;>;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 125
    sget-boolean v2, Lcom/google/common/collect/BstMutationResult;->a:Z

    if-nez v2, :cond_4

    if-eqz p1, :cond_0

    move v3, v0

    :goto_0
    if-eqz p2, :cond_1

    move v2, v0

    :goto_1
    and-int/2addr v3, v2

    if-eqz p3, :cond_2

    move v2, v0

    :goto_2
    and-int/2addr v2, v3

    if-eqz p4, :cond_3

    :goto_3
    and-int/2addr v0, v2

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    move v3, v1

    goto :goto_0

    :cond_1
    move v2, v1

    goto :goto_1

    :cond_2
    move v2, v1

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_3

    .line 126
    :cond_4
    sget-object v0, Lcom/google/common/collect/BstMutationResult$1;->b:[I

    invoke-virtual {p0}, Lcom/google/common/collect/BstMutationResult;->d()Lcom/google/common/collect/BstModificationResult$ModificationType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/BstModificationResult$ModificationType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 153
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 128
    :pswitch_0
    iput-object p1, p0, Lcom/google/common/collect/BstMutationResult;->d:Lcom/google/common/collect/BstNode;

    iput-object p1, p0, Lcom/google/common/collect/BstMutationResult;->c:Lcom/google/common/collect/BstNode;

    .line 151
    :goto_4
    return-object p0

    .line 132
    :pswitch_1
    iput-object p1, p0, Lcom/google/common/collect/BstMutationResult;->c:Lcom/google/common/collect/BstNode;

    .line 133
    sget-object v0, Lcom/google/common/collect/BstSide;->LEFT:Lcom/google/common/collect/BstSide;

    invoke-virtual {p1, v0}, Lcom/google/common/collect/BstNode;->a(Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/BstNode;

    move-result-object v1

    .line 134
    sget-object v0, Lcom/google/common/collect/BstSide;->RIGHT:Lcom/google/common/collect/BstSide;

    invoke-virtual {p1, v0}, Lcom/google/common/collect/BstNode;->a(Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/BstNode;

    move-result-object v0

    .line 135
    sget-object v2, Lcom/google/common/collect/BstMutationResult$1;->a:[I

    invoke-virtual {p2}, Lcom/google/common/collect/BstSide;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_1

    .line 143
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 137
    :pswitch_2
    iget-object v1, p0, Lcom/google/common/collect/BstMutationResult;->d:Lcom/google/common/collect/BstNode;

    .line 145
    :goto_5
    invoke-virtual {p0}, Lcom/google/common/collect/BstMutationResult;->d()Lcom/google/common/collect/BstModificationResult$ModificationType;

    move-result-object v2

    sget-object v3, Lcom/google/common/collect/BstModificationResult$ModificationType;->REBUILDING_CHANGE:Lcom/google/common/collect/BstModificationResult$ModificationType;

    if-ne v2, v3, :cond_5

    .line 146
    invoke-virtual {p3, p1, v1, v0}, Lcom/google/common/collect/BstNodeFactory;->a(Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;)Lcom/google/common/collect/BstNode;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/BstMutationResult;->d:Lcom/google/common/collect/BstNode;

    goto :goto_4

    .line 140
    :pswitch_3
    iget-object v0, p0, Lcom/google/common/collect/BstMutationResult;->d:Lcom/google/common/collect/BstNode;

    goto :goto_5

    .line 148
    :cond_5
    invoke-interface {p4, p3, p1, v1, v0}, Lcom/google/common/collect/BstBalancePolicy;->a(Lcom/google/common/collect/BstNodeFactory;Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstNode;)Lcom/google/common/collect/BstNode;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/BstMutationResult;->d:Lcom/google/common/collect/BstNode;

    goto :goto_4

    .line 126
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 135
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public a()Lcom/google/common/collect/BstNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TN;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/common/collect/BstMutationResult;->c:Lcom/google/common/collect/BstNode;

    return-object v0
.end method

.method public b()Lcom/google/common/collect/BstNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TN;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/common/collect/BstMutationResult;->d:Lcom/google/common/collect/BstNode;

    return-object v0
.end method

.method public c()Lcom/google/common/collect/BstNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TN;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/common/collect/BstMutationResult;->e:Lcom/google/common/collect/BstModificationResult;

    invoke-virtual {v0}, Lcom/google/common/collect/BstModificationResult;->a()Lcom/google/common/collect/BstNode;

    move-result-object v0

    return-object v0
.end method

.method d()Lcom/google/common/collect/BstModificationResult$ModificationType;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/common/collect/BstMutationResult;->e:Lcom/google/common/collect/BstModificationResult;

    invoke-virtual {v0}, Lcom/google/common/collect/BstModificationResult;->c()Lcom/google/common/collect/BstModificationResult$ModificationType;

    move-result-object v0

    return-object v0
.end method
