.class public final enum Landroid_src/telephony/Phone$State;
.super Ljava/lang/Enum;
.source "Phone.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid_src/telephony/Phone$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid_src/telephony/Phone$State;

.field public static final enum IDLE:Landroid_src/telephony/Phone$State;

.field public static final enum OFFHOOK:Landroid_src/telephony/Phone$State;

.field public static final enum RINGING:Landroid_src/telephony/Phone$State;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 44
    new-instance v0, Landroid_src/telephony/Phone$State;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v2}, Landroid_src/telephony/Phone$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid_src/telephony/Phone$State;->IDLE:Landroid_src/telephony/Phone$State;

    new-instance v0, Landroid_src/telephony/Phone$State;

    const-string v1, "RINGING"

    invoke-direct {v0, v1, v3}, Landroid_src/telephony/Phone$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid_src/telephony/Phone$State;->RINGING:Landroid_src/telephony/Phone$State;

    new-instance v0, Landroid_src/telephony/Phone$State;

    const-string v1, "OFFHOOK"

    invoke-direct {v0, v1, v4}, Landroid_src/telephony/Phone$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid_src/telephony/Phone$State;->OFFHOOK:Landroid_src/telephony/Phone$State;

    .line 43
    const/4 v0, 0x3

    new-array v0, v0, [Landroid_src/telephony/Phone$State;

    sget-object v1, Landroid_src/telephony/Phone$State;->IDLE:Landroid_src/telephony/Phone$State;

    aput-object v1, v0, v2

    sget-object v1, Landroid_src/telephony/Phone$State;->RINGING:Landroid_src/telephony/Phone$State;

    aput-object v1, v0, v3

    sget-object v1, Landroid_src/telephony/Phone$State;->OFFHOOK:Landroid_src/telephony/Phone$State;

    aput-object v1, v0, v4

    sput-object v0, Landroid_src/telephony/Phone$State;->$VALUES:[Landroid_src/telephony/Phone$State;

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
    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid_src/telephony/Phone$State;
    .locals 1
    .parameter

    .prologue
    .line 43
    const-class v0, Landroid_src/telephony/Phone$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid_src/telephony/Phone$State;

    return-object v0
.end method

.method public static values()[Landroid_src/telephony/Phone$State;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Landroid_src/telephony/Phone$State;->$VALUES:[Landroid_src/telephony/Phone$State;

    invoke-virtual {v0}, [Landroid_src/telephony/Phone$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid_src/telephony/Phone$State;

    return-object v0
.end method
