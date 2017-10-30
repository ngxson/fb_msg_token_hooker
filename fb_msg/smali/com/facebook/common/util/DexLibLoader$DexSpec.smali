.class Lcom/facebook/common/util/DexLibLoader$DexSpec;
.super Ljava/lang/Object;
.source "DexLibLoader.java"


# instance fields
.field final a:Ljava/lang/String;

.field final b:I

.field final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/facebook/common/util/DexLibLoader$DexSpec;->a:Ljava/lang/String;

    .line 54
    iput p2, p0, Lcom/facebook/common/util/DexLibLoader$DexSpec;->b:I

    .line 55
    iput-object p3, p0, Lcom/facebook/common/util/DexLibLoader$DexSpec;->c:Ljava/lang/String;

    .line 56
    iput-object p4, p0, Lcom/facebook/common/util/DexLibLoader$DexSpec;->d:Ljava/lang/String;

    .line 57
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/facebook/common/util/DexLibLoader$1;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/common/util/DexLibLoader$DexSpec;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
