.class abstract enum Lcom/google/common/cache/CustomConcurrentHashMap$Strength;
.super Ljava/lang/Enum;
.source "CustomConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/common/cache/CustomConcurrentHashMap$Strength;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/common/cache/CustomConcurrentHashMap$Strength;

.field public static final enum SOFT:Lcom/google/common/cache/CustomConcurrentHashMap$Strength;

.field public static final enum STRONG:Lcom/google/common/cache/CustomConcurrentHashMap$Strength;

.field public static final enum WEAK:Lcom/google/common/cache/CustomConcurrentHashMap$Strength;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 303
    new-instance v0, Lcom/google/common/cache/CustomConcurrentHashMap$Strength$1;

    const-string v1, "STRONG"

    invoke-direct {v0, v1, v2}, Lcom/google/common/cache/CustomConcurrentHashMap$Strength$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/cache/CustomConcurrentHashMap$Strength;->STRONG:Lcom/google/common/cache/CustomConcurrentHashMap$Strength;

    .line 316
    new-instance v0, Lcom/google/common/cache/CustomConcurrentHashMap$Strength$2;

    const-string v1, "SOFT"

    invoke-direct {v0, v1, v3}, Lcom/google/common/cache/CustomConcurrentHashMap$Strength$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/cache/CustomConcurrentHashMap$Strength;->SOFT:Lcom/google/common/cache/CustomConcurrentHashMap$Strength;

    .line 329
    new-instance v0, Lcom/google/common/cache/CustomConcurrentHashMap$Strength$3;

    const-string v1, "WEAK"

    invoke-direct {v0, v1, v4}, Lcom/google/common/cache/CustomConcurrentHashMap$Strength$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/cache/CustomConcurrentHashMap$Strength;->WEAK:Lcom/google/common/cache/CustomConcurrentHashMap$Strength;

    .line 297
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/common/cache/CustomConcurrentHashMap$Strength;

    sget-object v1, Lcom/google/common/cache/CustomConcurrentHashMap$Strength;->STRONG:Lcom/google/common/cache/CustomConcurrentHashMap$Strength;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/cache/CustomConcurrentHashMap$Strength;->SOFT:Lcom/google/common/cache/CustomConcurrentHashMap$Strength;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/common/cache/CustomConcurrentHashMap$Strength;->WEAK:Lcom/google/common/cache/CustomConcurrentHashMap$Strength;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/common/cache/CustomConcurrentHashMap$Strength;->$VALUES:[Lcom/google/common/cache/CustomConcurrentHashMap$Strength;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 297
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/google/common/cache/CustomConcurrentHashMap$1;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 297
    invoke-direct {p0, p1, p2}, Lcom/google/common/cache/CustomConcurrentHashMap$Strength;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/cache/CustomConcurrentHashMap$Strength;
    .locals 1
    .parameter

    .prologue
    .line 297
    const-class v0, Lcom/google/common/cache/CustomConcurrentHashMap$Strength;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/CustomConcurrentHashMap$Strength;

    return-object v0
.end method

.method public static values()[Lcom/google/common/cache/CustomConcurrentHashMap$Strength;
    .locals 1

    .prologue
    .line 297
    sget-object v0, Lcom/google/common/cache/CustomConcurrentHashMap$Strength;->$VALUES:[Lcom/google/common/cache/CustomConcurrentHashMap$Strength;

    invoke-virtual {v0}, [Lcom/google/common/cache/CustomConcurrentHashMap$Strength;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/cache/CustomConcurrentHashMap$Strength;

    return-object v0
.end method


# virtual methods
.method abstract defaultEquivalence()Lcom/google/common/base/Equivalence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Equivalence",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method abstract referenceValue(Lcom/google/common/cache/CustomConcurrentHashMap$Segment;Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry;Ljava/lang/Object;)Lcom/google/common/cache/CustomConcurrentHashMap$ValueReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/cache/CustomConcurrentHashMap$Segment",
            "<TK;TV;>;",
            "Lcom/google/common/cache/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;TV;)",
            "Lcom/google/common/cache/CustomConcurrentHashMap$ValueReference",
            "<TK;TV;>;"
        }
    .end annotation
.end method
