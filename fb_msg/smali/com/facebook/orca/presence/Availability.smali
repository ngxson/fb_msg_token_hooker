.class public final enum Lcom/facebook/orca/presence/Availability;
.super Ljava/lang/Enum;
.source "Availability.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/orca/presence/Availability;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/orca/presence/Availability;

.field public static final enum AVAILABLE:Lcom/facebook/orca/presence/Availability;

.field public static final enum MOBILE_ACTIVE:Lcom/facebook/orca/presence/Availability;

.field public static final enum NONE:Lcom/facebook/orca/presence/Availability;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 11
    new-instance v0, Lcom/facebook/orca/presence/Availability;

    const-string v1, "AVAILABLE"

    invoke-direct {v0, v1, v2}, Lcom/facebook/orca/presence/Availability;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/orca/presence/Availability;->AVAILABLE:Lcom/facebook/orca/presence/Availability;

    .line 14
    new-instance v0, Lcom/facebook/orca/presence/Availability;

    const-string v1, "MOBILE_ACTIVE"

    invoke-direct {v0, v1, v3}, Lcom/facebook/orca/presence/Availability;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/orca/presence/Availability;->MOBILE_ACTIVE:Lcom/facebook/orca/presence/Availability;

    .line 17
    new-instance v0, Lcom/facebook/orca/presence/Availability;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v4}, Lcom/facebook/orca/presence/Availability;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/orca/presence/Availability;->NONE:Lcom/facebook/orca/presence/Availability;

    .line 8
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/facebook/orca/presence/Availability;

    sget-object v1, Lcom/facebook/orca/presence/Availability;->AVAILABLE:Lcom/facebook/orca/presence/Availability;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/orca/presence/Availability;->MOBILE_ACTIVE:Lcom/facebook/orca/presence/Availability;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/orca/presence/Availability;->NONE:Lcom/facebook/orca/presence/Availability;

    aput-object v1, v0, v4

    sput-object v0, Lcom/facebook/orca/presence/Availability;->$VALUES:[Lcom/facebook/orca/presence/Availability;

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

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/orca/presence/Availability;
    .locals 1
    .parameter

    .prologue
    .line 8
    const-class v0, Lcom/facebook/orca/presence/Availability;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/presence/Availability;

    return-object v0
.end method

.method public static values()[Lcom/facebook/orca/presence/Availability;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/facebook/orca/presence/Availability;->$VALUES:[Lcom/facebook/orca/presence/Availability;

    invoke-virtual {v0}, [Lcom/facebook/orca/presence/Availability;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/orca/presence/Availability;

    return-object v0
.end method
