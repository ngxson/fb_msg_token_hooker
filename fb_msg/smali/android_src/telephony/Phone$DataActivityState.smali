.class public final enum Landroid_src/telephony/Phone$DataActivityState;
.super Ljava/lang/Enum;
.source "Phone.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid_src/telephony/Phone$DataActivityState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid_src/telephony/Phone$DataActivityState;

.field public static final enum DATAIN:Landroid_src/telephony/Phone$DataActivityState;

.field public static final enum DATAINANDOUT:Landroid_src/telephony/Phone$DataActivityState;

.field public static final enum DATAOUT:Landroid_src/telephony/Phone$DataActivityState;

.field public static final enum DORMANT:Landroid_src/telephony/Phone$DataActivityState;

.field public static final enum NONE:Landroid_src/telephony/Phone$DataActivityState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 74
    new-instance v0, Landroid_src/telephony/Phone$DataActivityState;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Landroid_src/telephony/Phone$DataActivityState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid_src/telephony/Phone$DataActivityState;->NONE:Landroid_src/telephony/Phone$DataActivityState;

    new-instance v0, Landroid_src/telephony/Phone$DataActivityState;

    const-string v1, "DATAIN"

    invoke-direct {v0, v1, v3}, Landroid_src/telephony/Phone$DataActivityState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid_src/telephony/Phone$DataActivityState;->DATAIN:Landroid_src/telephony/Phone$DataActivityState;

    new-instance v0, Landroid_src/telephony/Phone$DataActivityState;

    const-string v1, "DATAOUT"

    invoke-direct {v0, v1, v4}, Landroid_src/telephony/Phone$DataActivityState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid_src/telephony/Phone$DataActivityState;->DATAOUT:Landroid_src/telephony/Phone$DataActivityState;

    new-instance v0, Landroid_src/telephony/Phone$DataActivityState;

    const-string v1, "DATAINANDOUT"

    invoke-direct {v0, v1, v5}, Landroid_src/telephony/Phone$DataActivityState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid_src/telephony/Phone$DataActivityState;->DATAINANDOUT:Landroid_src/telephony/Phone$DataActivityState;

    new-instance v0, Landroid_src/telephony/Phone$DataActivityState;

    const-string v1, "DORMANT"

    invoke-direct {v0, v1, v6}, Landroid_src/telephony/Phone$DataActivityState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid_src/telephony/Phone$DataActivityState;->DORMANT:Landroid_src/telephony/Phone$DataActivityState;

    .line 62
    const/4 v0, 0x5

    new-array v0, v0, [Landroid_src/telephony/Phone$DataActivityState;

    sget-object v1, Landroid_src/telephony/Phone$DataActivityState;->NONE:Landroid_src/telephony/Phone$DataActivityState;

    aput-object v1, v0, v2

    sget-object v1, Landroid_src/telephony/Phone$DataActivityState;->DATAIN:Landroid_src/telephony/Phone$DataActivityState;

    aput-object v1, v0, v3

    sget-object v1, Landroid_src/telephony/Phone$DataActivityState;->DATAOUT:Landroid_src/telephony/Phone$DataActivityState;

    aput-object v1, v0, v4

    sget-object v1, Landroid_src/telephony/Phone$DataActivityState;->DATAINANDOUT:Landroid_src/telephony/Phone$DataActivityState;

    aput-object v1, v0, v5

    sget-object v1, Landroid_src/telephony/Phone$DataActivityState;->DORMANT:Landroid_src/telephony/Phone$DataActivityState;

    aput-object v1, v0, v6

    sput-object v0, Landroid_src/telephony/Phone$DataActivityState;->$VALUES:[Landroid_src/telephony/Phone$DataActivityState;

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
    .line 62
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid_src/telephony/Phone$DataActivityState;
    .locals 1
    .parameter

    .prologue
    .line 62
    const-class v0, Landroid_src/telephony/Phone$DataActivityState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid_src/telephony/Phone$DataActivityState;

    return-object v0
.end method

.method public static values()[Landroid_src/telephony/Phone$DataActivityState;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Landroid_src/telephony/Phone$DataActivityState;->$VALUES:[Landroid_src/telephony/Phone$DataActivityState;

    invoke-virtual {v0}, [Landroid_src/telephony/Phone$DataActivityState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid_src/telephony/Phone$DataActivityState;

    return-object v0
.end method
