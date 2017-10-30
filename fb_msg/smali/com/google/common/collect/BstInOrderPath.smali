.class final Lcom/google/common/collect/BstInOrderPath;
.super Lcom/google/common/collect/BstPath;
.source "BstInOrderPath.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Lcom/google/common/collect/BstNode",
        "<*TN;>;>",
        "Lcom/google/common/collect/BstPath",
        "<TN;",
        "Lcom/google/common/collect/BstInOrderPath",
        "<TN;>;>;"
    }
.end annotation


# static fields
.field static final synthetic a:Z


# instance fields
.field private final b:Lcom/google/common/collect/BstSide;

.field private transient c:Lcom/google/common/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/google/common/collect/BstInOrderPath",
            "<TN;>;>;"
        }
    .end annotation
.end field

.field private transient d:Lcom/google/common/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/google/common/collect/BstInOrderPath",
            "<TN;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/google/common/collect/BstInOrderPath;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/common/collect/BstInOrderPath;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstSide;Lcom/google/common/collect/BstInOrderPath;)V
    .locals 3
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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;",
            "Lcom/google/common/collect/BstSide;",
            "Lcom/google/common/collect/BstInOrderPath",
            "<TN;>;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 63
    invoke-direct {p0, p1, p3}, Lcom/google/common/collect/BstPath;-><init>(Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstPath;)V

    .line 64
    iput-object p2, p0, Lcom/google/common/collect/BstInOrderPath;->b:Lcom/google/common/collect/BstSide;

    .line 65
    sget-boolean v2, Lcom/google/common/collect/BstInOrderPath;->a:Z

    if-nez v2, :cond_2

    if-nez p2, :cond_0

    move v2, v0

    :goto_0
    if-nez p3, :cond_1

    :goto_1
    if-eq v2, v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    .line 66
    :cond_2
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstSide;Lcom/google/common/collect/BstInOrderPath;Lcom/google/common/collect/BstInOrderPath$1;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/BstInOrderPath;-><init>(Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstSide;Lcom/google/common/collect/BstInOrderPath;)V

    return-void
.end method

.method static synthetic a(Lcom/google/common/collect/BstInOrderPath;Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/BstInOrderPath;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-static {p0, p1}, Lcom/google/common/collect/BstInOrderPath;->b(Lcom/google/common/collect/BstInOrderPath;Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/BstInOrderPath;

    move-result-object v0

    return-object v0
.end method

.method public static a()Lcom/google/common/collect/BstPathFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Lcom/google/common/collect/BstNode",
            "<*TN;>;>()",
            "Lcom/google/common/collect/BstPathFactory",
            "<TN;",
            "Lcom/google/common/collect/BstInOrderPath",
            "<TN;>;>;"
        }
    .end annotation

    .prologue
    .line 37
    new-instance v0, Lcom/google/common/collect/BstInOrderPath$1;

    invoke-direct {v0}, Lcom/google/common/collect/BstInOrderPath$1;-><init>()V

    return-object v0
.end method

.method private static b(Lcom/google/common/collect/BstInOrderPath;Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/BstInOrderPath;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Lcom/google/common/collect/BstNode",
            "<*TN;>;>(",
            "Lcom/google/common/collect/BstInOrderPath",
            "<TN;>;",
            "Lcom/google/common/collect/BstSide;",
            ")",
            "Lcom/google/common/collect/BstInOrderPath",
            "<TN;>;"
        }
    .end annotation

    .prologue
    .line 52
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    invoke-virtual {p0}, Lcom/google/common/collect/BstInOrderPath;->b()Lcom/google/common/collect/BstNode;

    move-result-object v0

    .line 54
    new-instance v1, Lcom/google/common/collect/BstInOrderPath;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/BstNode;->c(Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/BstNode;

    move-result-object v0

    invoke-direct {v1, v0, p1, p0}, Lcom/google/common/collect/BstInOrderPath;-><init>(Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstSide;Lcom/google/common/collect/BstInOrderPath;)V

    return-object v1
.end method

.method private c(Lcom/google/common/collect/BstSide;)Lcom/google/common/base/Optional;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/BstSide;",
            ")",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/google/common/collect/BstInOrderPath",
            "<TN;>;>;"
        }
    .end annotation

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/google/common/collect/BstInOrderPath;->b()Lcom/google/common/collect/BstNode;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/collect/BstNode;->b(Lcom/google/common/collect/BstSide;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    invoke-static {p0, p1}, Lcom/google/common/collect/BstInOrderPath;->b(Lcom/google/common/collect/BstInOrderPath;Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/BstInOrderPath;

    move-result-object v0

    .line 71
    invoke-virtual {p1}, Lcom/google/common/collect/BstSide;->other()Lcom/google/common/collect/BstSide;

    move-result-object v1

    .line 72
    :goto_0
    invoke-virtual {v0}, Lcom/google/common/collect/BstInOrderPath;->b()Lcom/google/common/collect/BstNode;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/common/collect/BstNode;->b(Lcom/google/common/collect/BstSide;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 73
    invoke-static {v0, v1}, Lcom/google/common/collect/BstInOrderPath;->b(Lcom/google/common/collect/BstInOrderPath;Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/BstInOrderPath;

    move-result-object v0

    goto :goto_0

    .line 75
    :cond_0
    invoke-static {v0}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    .line 82
    :goto_1
    return-object v0

    .line 78
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/google/common/collect/BstInOrderPath;->b:Lcom/google/common/collect/BstSide;

    if-ne v0, p1, :cond_2

    .line 79
    invoke-virtual {p0}, Lcom/google/common/collect/BstInOrderPath;->e()Lcom/google/common/collect/BstPath;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/BstInOrderPath;

    move-object p0, v0

    goto :goto_2

    .line 81
    :cond_2
    invoke-virtual {p0}, Lcom/google/common/collect/BstInOrderPath;->d()Lcom/google/common/collect/BstPath;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/BstInOrderPath;

    .line 82
    invoke-static {v0}, Lcom/google/common/base/Optional;->fromNullable(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    goto :goto_1
.end method

.method private d(Lcom/google/common/collect/BstSide;)Lcom/google/common/base/Optional;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/BstSide;",
            ")",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/google/common/collect/BstInOrderPath",
            "<TN;>;>;"
        }
    .end annotation

    .prologue
    .line 88
    sget-object v0, Lcom/google/common/collect/BstInOrderPath$2;->a:[I

    invoke-virtual {p1}, Lcom/google/common/collect/BstSide;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 96
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 90
    :pswitch_0
    iget-object v0, p0, Lcom/google/common/collect/BstInOrderPath;->c:Lcom/google/common/base/Optional;

    .line 91
    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/google/common/collect/BstInOrderPath;->c(Lcom/google/common/collect/BstSide;)Lcom/google/common/base/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/BstInOrderPath;->c:Lcom/google/common/base/Optional;

    .line 94
    :cond_0
    :goto_0
    return-object v0

    .line 93
    :pswitch_1
    iget-object v0, p0, Lcom/google/common/collect/BstInOrderPath;->d:Lcom/google/common/base/Optional;

    .line 94
    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/google/common/collect/BstInOrderPath;->c(Lcom/google/common/collect/BstSide;)Lcom/google/common/base/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/BstInOrderPath;->d:Lcom/google/common/base/Optional;

    goto :goto_0

    .line 88
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public a(Lcom/google/common/collect/BstSide;)Z
    .locals 1
    .parameter

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/google/common/collect/BstInOrderPath;->d(Lcom/google/common/collect/BstSide;)Lcom/google/common/base/Optional;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    return v0
.end method

.method public b(Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/BstInOrderPath;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/BstSide;",
            ")",
            "Lcom/google/common/collect/BstInOrderPath",
            "<TN;>;"
        }
    .end annotation

    .prologue
    .line 113
    invoke-virtual {p0, p1}, Lcom/google/common/collect/BstInOrderPath;->a(Lcom/google/common/collect/BstSide;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 116
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/common/collect/BstInOrderPath;->d(Lcom/google/common/collect/BstSide;)Lcom/google/common/base/Optional;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/BstInOrderPath;

    return-object v0
.end method
