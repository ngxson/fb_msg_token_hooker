.class public final enum Lcom/facebook/orca/protocol/base/ApiResponseType;
.super Ljava/lang/Enum;
.source "ApiResponseType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/orca/protocol/base/ApiResponseType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/orca/protocol/base/ApiResponseType;

.field public static final enum ENTITY:Lcom/facebook/orca/protocol/base/ApiResponseType;

.field public static final enum JSON:Lcom/facebook/orca/protocol/base/ApiResponseType;

.field public static final enum JSONPARSER:Lcom/facebook/orca/protocol/base/ApiResponseType;

.field public static final enum STRING:Lcom/facebook/orca/protocol/base/ApiResponseType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 13
    new-instance v0, Lcom/facebook/orca/protocol/base/ApiResponseType;

    const-string v1, "STRING"

    invoke-direct {v0, v1, v2}, Lcom/facebook/orca/protocol/base/ApiResponseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/orca/protocol/base/ApiResponseType;->STRING:Lcom/facebook/orca/protocol/base/ApiResponseType;

    .line 18
    new-instance v0, Lcom/facebook/orca/protocol/base/ApiResponseType;

    const-string v1, "JSON"

    invoke-direct {v0, v1, v3}, Lcom/facebook/orca/protocol/base/ApiResponseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/orca/protocol/base/ApiResponseType;->JSON:Lcom/facebook/orca/protocol/base/ApiResponseType;

    .line 23
    new-instance v0, Lcom/facebook/orca/protocol/base/ApiResponseType;

    const-string v1, "JSONPARSER"

    invoke-direct {v0, v1, v4}, Lcom/facebook/orca/protocol/base/ApiResponseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/orca/protocol/base/ApiResponseType;->JSONPARSER:Lcom/facebook/orca/protocol/base/ApiResponseType;

    .line 28
    new-instance v0, Lcom/facebook/orca/protocol/base/ApiResponseType;

    const-string v1, "ENTITY"

    invoke-direct {v0, v1, v5}, Lcom/facebook/orca/protocol/base/ApiResponseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/orca/protocol/base/ApiResponseType;->ENTITY:Lcom/facebook/orca/protocol/base/ApiResponseType;

    .line 8
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/facebook/orca/protocol/base/ApiResponseType;

    sget-object v1, Lcom/facebook/orca/protocol/base/ApiResponseType;->STRING:Lcom/facebook/orca/protocol/base/ApiResponseType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/orca/protocol/base/ApiResponseType;->JSON:Lcom/facebook/orca/protocol/base/ApiResponseType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/orca/protocol/base/ApiResponseType;->JSONPARSER:Lcom/facebook/orca/protocol/base/ApiResponseType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/orca/protocol/base/ApiResponseType;->ENTITY:Lcom/facebook/orca/protocol/base/ApiResponseType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/facebook/orca/protocol/base/ApiResponseType;->$VALUES:[Lcom/facebook/orca/protocol/base/ApiResponseType;

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
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/orca/protocol/base/ApiResponseType;
    .locals 1
    .parameter

    .prologue
    .line 8
    const-class v0, Lcom/facebook/orca/protocol/base/ApiResponseType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/protocol/base/ApiResponseType;

    return-object v0
.end method

.method public static values()[Lcom/facebook/orca/protocol/base/ApiResponseType;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/facebook/orca/protocol/base/ApiResponseType;->$VALUES:[Lcom/facebook/orca/protocol/base/ApiResponseType;

    invoke-virtual {v0}, [Lcom/facebook/orca/protocol/base/ApiResponseType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/orca/protocol/base/ApiResponseType;

    return-object v0
.end method
