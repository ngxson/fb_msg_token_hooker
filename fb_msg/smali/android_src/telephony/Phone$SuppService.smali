.class public final enum Landroid_src/telephony/Phone$SuppService;
.super Ljava/lang/Enum;
.source "Phone.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid_src/telephony/Phone$SuppService;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid_src/telephony/Phone$SuppService;

.field public static final enum CONFERENCE:Landroid_src/telephony/Phone$SuppService;

.field public static final enum HANGUP:Landroid_src/telephony/Phone$SuppService;

.field public static final enum REJECT:Landroid_src/telephony/Phone$SuppService;

.field public static final enum SEPARATE:Landroid_src/telephony/Phone$SuppService;

.field public static final enum SWITCH:Landroid_src/telephony/Phone$SuppService;

.field public static final enum TRANSFER:Landroid_src/telephony/Phone$SuppService;

.field public static final enum UNKNOWN:Landroid_src/telephony/Phone$SuppService;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 78
    new-instance v0, Landroid_src/telephony/Phone$SuppService;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v3}, Landroid_src/telephony/Phone$SuppService;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid_src/telephony/Phone$SuppService;->UNKNOWN:Landroid_src/telephony/Phone$SuppService;

    new-instance v0, Landroid_src/telephony/Phone$SuppService;

    const-string v1, "SWITCH"

    invoke-direct {v0, v1, v4}, Landroid_src/telephony/Phone$SuppService;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid_src/telephony/Phone$SuppService;->SWITCH:Landroid_src/telephony/Phone$SuppService;

    new-instance v0, Landroid_src/telephony/Phone$SuppService;

    const-string v1, "SEPARATE"

    invoke-direct {v0, v1, v5}, Landroid_src/telephony/Phone$SuppService;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid_src/telephony/Phone$SuppService;->SEPARATE:Landroid_src/telephony/Phone$SuppService;

    new-instance v0, Landroid_src/telephony/Phone$SuppService;

    const-string v1, "TRANSFER"

    invoke-direct {v0, v1, v6}, Landroid_src/telephony/Phone$SuppService;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid_src/telephony/Phone$SuppService;->TRANSFER:Landroid_src/telephony/Phone$SuppService;

    new-instance v0, Landroid_src/telephony/Phone$SuppService;

    const-string v1, "CONFERENCE"

    invoke-direct {v0, v1, v7}, Landroid_src/telephony/Phone$SuppService;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid_src/telephony/Phone$SuppService;->CONFERENCE:Landroid_src/telephony/Phone$SuppService;

    new-instance v0, Landroid_src/telephony/Phone$SuppService;

    const-string v1, "REJECT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid_src/telephony/Phone$SuppService;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid_src/telephony/Phone$SuppService;->REJECT:Landroid_src/telephony/Phone$SuppService;

    new-instance v0, Landroid_src/telephony/Phone$SuppService;

    const-string v1, "HANGUP"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Landroid_src/telephony/Phone$SuppService;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid_src/telephony/Phone$SuppService;->HANGUP:Landroid_src/telephony/Phone$SuppService;

    .line 77
    const/4 v0, 0x7

    new-array v0, v0, [Landroid_src/telephony/Phone$SuppService;

    sget-object v1, Landroid_src/telephony/Phone$SuppService;->UNKNOWN:Landroid_src/telephony/Phone$SuppService;

    aput-object v1, v0, v3

    sget-object v1, Landroid_src/telephony/Phone$SuppService;->SWITCH:Landroid_src/telephony/Phone$SuppService;

    aput-object v1, v0, v4

    sget-object v1, Landroid_src/telephony/Phone$SuppService;->SEPARATE:Landroid_src/telephony/Phone$SuppService;

    aput-object v1, v0, v5

    sget-object v1, Landroid_src/telephony/Phone$SuppService;->TRANSFER:Landroid_src/telephony/Phone$SuppService;

    aput-object v1, v0, v6

    sget-object v1, Landroid_src/telephony/Phone$SuppService;->CONFERENCE:Landroid_src/telephony/Phone$SuppService;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Landroid_src/telephony/Phone$SuppService;->REJECT:Landroid_src/telephony/Phone$SuppService;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Landroid_src/telephony/Phone$SuppService;->HANGUP:Landroid_src/telephony/Phone$SuppService;

    aput-object v2, v0, v1

    sput-object v0, Landroid_src/telephony/Phone$SuppService;->$VALUES:[Landroid_src/telephony/Phone$SuppService;

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
    .line 77
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid_src/telephony/Phone$SuppService;
    .locals 1
    .parameter

    .prologue
    .line 77
    const-class v0, Landroid_src/telephony/Phone$SuppService;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid_src/telephony/Phone$SuppService;

    return-object v0
.end method

.method public static values()[Landroid_src/telephony/Phone$SuppService;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Landroid_src/telephony/Phone$SuppService;->$VALUES:[Landroid_src/telephony/Phone$SuppService;

    invoke-virtual {v0}, [Landroid_src/telephony/Phone$SuppService;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid_src/telephony/Phone$SuppService;

    return-object v0
.end method
