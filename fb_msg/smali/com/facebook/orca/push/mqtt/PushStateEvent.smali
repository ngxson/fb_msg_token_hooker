.class public final enum Lcom/facebook/orca/push/mqtt/PushStateEvent;
.super Ljava/lang/Enum;
.source "PushStateEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/orca/push/mqtt/PushStateEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/orca/push/mqtt/PushStateEvent;

.field public static final enum CHANNEL_CONNECTED:Lcom/facebook/orca/push/mqtt/PushStateEvent;

.field public static final enum CHANNEL_CONNECTING:Lcom/facebook/orca/push/mqtt/PushStateEvent;

.field public static final enum CHANNEL_DISCONNECTED:Lcom/facebook/orca/push/mqtt/PushStateEvent;

.field public static final enum SERVICE_STARTED:Lcom/facebook/orca/push/mqtt/PushStateEvent;

.field public static final enum SERVICE_STOPPED:Lcom/facebook/orca/push/mqtt/PushStateEvent;

.field public static final enum UNKNOWN:Lcom/facebook/orca/push/mqtt/PushStateEvent;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 9
    new-instance v0, Lcom/facebook/orca/push/mqtt/PushStateEvent;

    const-string v1, "SERVICE_STARTED"

    invoke-direct {v0, v1, v4, v4}, Lcom/facebook/orca/push/mqtt/PushStateEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/orca/push/mqtt/PushStateEvent;->SERVICE_STARTED:Lcom/facebook/orca/push/mqtt/PushStateEvent;

    .line 10
    new-instance v0, Lcom/facebook/orca/push/mqtt/PushStateEvent;

    const-string v1, "CHANNEL_CONNECTING"

    invoke-direct {v0, v1, v5, v5}, Lcom/facebook/orca/push/mqtt/PushStateEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/orca/push/mqtt/PushStateEvent;->CHANNEL_CONNECTING:Lcom/facebook/orca/push/mqtt/PushStateEvent;

    .line 11
    new-instance v0, Lcom/facebook/orca/push/mqtt/PushStateEvent;

    const-string v1, "CHANNEL_CONNECTED"

    invoke-direct {v0, v1, v6, v6}, Lcom/facebook/orca/push/mqtt/PushStateEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/orca/push/mqtt/PushStateEvent;->CHANNEL_CONNECTED:Lcom/facebook/orca/push/mqtt/PushStateEvent;

    .line 12
    new-instance v0, Lcom/facebook/orca/push/mqtt/PushStateEvent;

    const-string v1, "CHANNEL_DISCONNECTED"

    invoke-direct {v0, v1, v7, v7}, Lcom/facebook/orca/push/mqtt/PushStateEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/orca/push/mqtt/PushStateEvent;->CHANNEL_DISCONNECTED:Lcom/facebook/orca/push/mqtt/PushStateEvent;

    .line 13
    new-instance v0, Lcom/facebook/orca/push/mqtt/PushStateEvent;

    const-string v1, "SERVICE_STOPPED"

    invoke-direct {v0, v1, v8, v8}, Lcom/facebook/orca/push/mqtt/PushStateEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/orca/push/mqtt/PushStateEvent;->SERVICE_STOPPED:Lcom/facebook/orca/push/mqtt/PushStateEvent;

    .line 14
    new-instance v0, Lcom/facebook/orca/push/mqtt/PushStateEvent;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/orca/push/mqtt/PushStateEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/orca/push/mqtt/PushStateEvent;->UNKNOWN:Lcom/facebook/orca/push/mqtt/PushStateEvent;

    .line 8
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/facebook/orca/push/mqtt/PushStateEvent;

    sget-object v1, Lcom/facebook/orca/push/mqtt/PushStateEvent;->SERVICE_STARTED:Lcom/facebook/orca/push/mqtt/PushStateEvent;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/orca/push/mqtt/PushStateEvent;->CHANNEL_CONNECTING:Lcom/facebook/orca/push/mqtt/PushStateEvent;

    aput-object v1, v0, v5

    sget-object v1, Lcom/facebook/orca/push/mqtt/PushStateEvent;->CHANNEL_CONNECTED:Lcom/facebook/orca/push/mqtt/PushStateEvent;

    aput-object v1, v0, v6

    sget-object v1, Lcom/facebook/orca/push/mqtt/PushStateEvent;->CHANNEL_DISCONNECTED:Lcom/facebook/orca/push/mqtt/PushStateEvent;

    aput-object v1, v0, v7

    sget-object v1, Lcom/facebook/orca/push/mqtt/PushStateEvent;->SERVICE_STOPPED:Lcom/facebook/orca/push/mqtt/PushStateEvent;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/facebook/orca/push/mqtt/PushStateEvent;->UNKNOWN:Lcom/facebook/orca/push/mqtt/PushStateEvent;

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/orca/push/mqtt/PushStateEvent;->$VALUES:[Lcom/facebook/orca/push/mqtt/PushStateEvent;

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
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 19
    iput p3, p0, Lcom/facebook/orca/push/mqtt/PushStateEvent;->value:I

    .line 20
    return-void
.end method

.method public static fromValue(I)Lcom/facebook/orca/push/mqtt/PushStateEvent;
    .locals 5
    .parameter

    .prologue
    .line 23
    invoke-static {}, Lcom/facebook/orca/push/mqtt/PushStateEvent;->values()[Lcom/facebook/orca/push/mqtt/PushStateEvent;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 24
    iget v4, v0, Lcom/facebook/orca/push/mqtt/PushStateEvent;->value:I

    if-ne v4, p0, :cond_0

    .line 29
    :goto_1
    return-object v0

    .line 23
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 29
    :cond_1
    sget-object v0, Lcom/facebook/orca/push/mqtt/PushStateEvent;->UNKNOWN:Lcom/facebook/orca/push/mqtt/PushStateEvent;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/orca/push/mqtt/PushStateEvent;
    .locals 1
    .parameter

    .prologue
    .line 8
    const-class v0, Lcom/facebook/orca/push/mqtt/PushStateEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/push/mqtt/PushStateEvent;

    return-object v0
.end method

.method public static values()[Lcom/facebook/orca/push/mqtt/PushStateEvent;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/facebook/orca/push/mqtt/PushStateEvent;->$VALUES:[Lcom/facebook/orca/push/mqtt/PushStateEvent;

    invoke-virtual {v0}, [Lcom/facebook/orca/push/mqtt/PushStateEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/orca/push/mqtt/PushStateEvent;

    return-object v0
.end method


# virtual methods
.method public toValue()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/facebook/orca/push/mqtt/PushStateEvent;->value:I

    return v0
.end method
