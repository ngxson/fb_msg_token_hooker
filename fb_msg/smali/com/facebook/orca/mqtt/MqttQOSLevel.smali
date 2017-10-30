.class public final enum Lcom/facebook/orca/mqtt/MqttQOSLevel;
.super Ljava/lang/Enum;
.source "MqttQOSLevel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/orca/mqtt/MqttQOSLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/orca/mqtt/MqttQOSLevel;

.field public static final enum ACKNOWLEDGED_DELIVERY:Lcom/facebook/orca/mqtt/MqttQOSLevel;

.field public static final enum ASSURED_DELIVERY:Lcom/facebook/orca/mqtt/MqttQOSLevel;

.field public static final enum FIRE_AND_FORGET:Lcom/facebook/orca/mqtt/MqttQOSLevel;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 10
    new-instance v0, Lcom/facebook/orca/mqtt/MqttQOSLevel;

    const-string v1, "FIRE_AND_FORGET"

    invoke-direct {v0, v1, v2, v2}, Lcom/facebook/orca/mqtt/MqttQOSLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/orca/mqtt/MqttQOSLevel;->FIRE_AND_FORGET:Lcom/facebook/orca/mqtt/MqttQOSLevel;

    .line 11
    new-instance v0, Lcom/facebook/orca/mqtt/MqttQOSLevel;

    const-string v1, "ACKNOWLEDGED_DELIVERY"

    invoke-direct {v0, v1, v3, v3}, Lcom/facebook/orca/mqtt/MqttQOSLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/orca/mqtt/MqttQOSLevel;->ACKNOWLEDGED_DELIVERY:Lcom/facebook/orca/mqtt/MqttQOSLevel;

    .line 12
    new-instance v0, Lcom/facebook/orca/mqtt/MqttQOSLevel;

    const-string v1, "ASSURED_DELIVERY"

    invoke-direct {v0, v1, v4, v4}, Lcom/facebook/orca/mqtt/MqttQOSLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/orca/mqtt/MqttQOSLevel;->ASSURED_DELIVERY:Lcom/facebook/orca/mqtt/MqttQOSLevel;

    .line 9
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/facebook/orca/mqtt/MqttQOSLevel;

    sget-object v1, Lcom/facebook/orca/mqtt/MqttQOSLevel;->FIRE_AND_FORGET:Lcom/facebook/orca/mqtt/MqttQOSLevel;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/orca/mqtt/MqttQOSLevel;->ACKNOWLEDGED_DELIVERY:Lcom/facebook/orca/mqtt/MqttQOSLevel;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/orca/mqtt/MqttQOSLevel;->ASSURED_DELIVERY:Lcom/facebook/orca/mqtt/MqttQOSLevel;

    aput-object v1, v0, v4

    sput-object v0, Lcom/facebook/orca/mqtt/MqttQOSLevel;->$VALUES:[Lcom/facebook/orca/mqtt/MqttQOSLevel;

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
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    iput p3, p0, Lcom/facebook/orca/mqtt/MqttQOSLevel;->value:I

    .line 18
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/orca/mqtt/MqttQOSLevel;
    .locals 1
    .parameter

    .prologue
    .line 9
    const-class v0, Lcom/facebook/orca/mqtt/MqttQOSLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/mqtt/MqttQOSLevel;

    return-object v0
.end method

.method public static values()[Lcom/facebook/orca/mqtt/MqttQOSLevel;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/facebook/orca/mqtt/MqttQOSLevel;->$VALUES:[Lcom/facebook/orca/mqtt/MqttQOSLevel;

    invoke-virtual {v0}, [Lcom/facebook/orca/mqtt/MqttQOSLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/orca/mqtt/MqttQOSLevel;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/facebook/orca/mqtt/MqttQOSLevel;->value:I

    return v0
.end method
