.class Lcom/google/common/collect/Ordering$ArbitraryOrderingHolder;
.super Ljava/lang/Object;
.source "Ordering.java"


# static fields
.field static final a:Lcom/google/common/collect/Ordering;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Ordering",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 205
    new-instance v0, Lcom/google/common/collect/Ordering$ArbitraryOrdering;

    invoke-direct {v0}, Lcom/google/common/collect/Ordering$ArbitraryOrdering;-><init>()V

    sput-object v0, Lcom/google/common/collect/Ordering$ArbitraryOrderingHolder;->a:Lcom/google/common/collect/Ordering;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method