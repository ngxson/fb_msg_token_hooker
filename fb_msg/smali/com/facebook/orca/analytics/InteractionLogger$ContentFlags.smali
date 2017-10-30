.class public final enum Lcom/facebook/orca/analytics/InteractionLogger$ContentFlags;
.super Ljava/lang/Enum;
.source "InteractionLogger.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/orca/analytics/InteractionLogger$ContentFlags;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/orca/analytics/InteractionLogger$ContentFlags;

.field public static final enum LOCAL_DATA:Lcom/facebook/orca/analytics/InteractionLogger$ContentFlags;

.field public static final enum NETWORK_DATA:Lcom/facebook/orca/analytics/InteractionLogger$ContentFlags;

.field public static final enum NO_DATA:Lcom/facebook/orca/analytics/InteractionLogger$ContentFlags;

.field public static final enum UNDEFINED:Lcom/facebook/orca/analytics/InteractionLogger$ContentFlags;


# instance fields
.field private final mFlags:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 22
    new-instance v0, Lcom/facebook/orca/analytics/InteractionLogger$ContentFlags;

    const-string v1, "UNDEFINED"

    invoke-direct {v0, v1, v2, v2}, Lcom/facebook/orca/analytics/InteractionLogger$ContentFlags;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/orca/analytics/InteractionLogger$ContentFlags;->UNDEFINED:Lcom/facebook/orca/analytics/InteractionLogger$ContentFlags;

    .line 23
    new-instance v0, Lcom/facebook/orca/analytics/InteractionLogger$ContentFlags;

    const-string v1, "NO_DATA"

    invoke-direct {v0, v1, v3, v3}, Lcom/facebook/orca/analytics/InteractionLogger$ContentFlags;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/orca/analytics/InteractionLogger$ContentFlags;->NO_DATA:Lcom/facebook/orca/analytics/InteractionLogger$ContentFlags;

    .line 24
    new-instance v0, Lcom/facebook/orca/analytics/InteractionLogger$ContentFlags;

    const-string v1, "LOCAL_DATA"

    invoke-direct {v0, v1, v4, v4}, Lcom/facebook/orca/analytics/InteractionLogger$ContentFlags;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/orca/analytics/InteractionLogger$ContentFlags;->LOCAL_DATA:Lcom/facebook/orca/analytics/InteractionLogger$ContentFlags;

    .line 25
    new-instance v0, Lcom/facebook/orca/analytics/InteractionLogger$ContentFlags;

    const-string v1, "NETWORK_DATA"

    invoke-direct {v0, v1, v5, v5}, Lcom/facebook/orca/analytics/InteractionLogger$ContentFlags;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/orca/analytics/InteractionLogger$ContentFlags;->NETWORK_DATA:Lcom/facebook/orca/analytics/InteractionLogger$ContentFlags;

    .line 21
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/facebook/orca/analytics/InteractionLogger$ContentFlags;

    sget-object v1, Lcom/facebook/orca/analytics/InteractionLogger$ContentFlags;->UNDEFINED:Lcom/facebook/orca/analytics/InteractionLogger$ContentFlags;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/orca/analytics/InteractionLogger$ContentFlags;->NO_DATA:Lcom/facebook/orca/analytics/InteractionLogger$ContentFlags;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/orca/analytics/InteractionLogger$ContentFlags;->LOCAL_DATA:Lcom/facebook/orca/analytics/InteractionLogger$ContentFlags;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/orca/analytics/InteractionLogger$ContentFlags;->NETWORK_DATA:Lcom/facebook/orca/analytics/InteractionLogger$ContentFlags;

    aput-object v1, v0, v5

    sput-object v0, Lcom/facebook/orca/analytics/InteractionLogger$ContentFlags;->$VALUES:[Lcom/facebook/orca/analytics/InteractionLogger$ContentFlags;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 30
    iput p3, p0, Lcom/facebook/orca/analytics/InteractionLogger$ContentFlags;->mFlags:I

    .line 31
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/orca/analytics/InteractionLogger$ContentFlags;
    .locals 1
    .parameter

    .prologue
    .line 21
    const-class v0, Lcom/facebook/orca/analytics/InteractionLogger$ContentFlags;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/analytics/InteractionLogger$ContentFlags;

    return-object v0
.end method

.method public static values()[Lcom/facebook/orca/analytics/InteractionLogger$ContentFlags;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/facebook/orca/analytics/InteractionLogger$ContentFlags;->$VALUES:[Lcom/facebook/orca/analytics/InteractionLogger$ContentFlags;

    invoke-virtual {v0}, [Lcom/facebook/orca/analytics/InteractionLogger$ContentFlags;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/orca/analytics/InteractionLogger$ContentFlags;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/facebook/orca/analytics/InteractionLogger$ContentFlags;->mFlags:I

    return v0
.end method
