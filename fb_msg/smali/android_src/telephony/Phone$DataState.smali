.class public final enum Landroid_src/telephony/Phone$DataState;
.super Ljava/lang/Enum;
.source "Phone.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid_src/telephony/Phone$DataState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid_src/telephony/Phone$DataState;

.field public static final enum CONNECTED:Landroid_src/telephony/Phone$DataState;

.field public static final enum CONNECTING:Landroid_src/telephony/Phone$DataState;

.field public static final enum DISCONNECTED:Landroid_src/telephony/Phone$DataState;

.field public static final enum SUSPENDED:Landroid_src/telephony/Phone$DataState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 59
    new-instance v0, Landroid_src/telephony/Phone$DataState;

    const-string v1, "CONNECTED"

    invoke-direct {v0, v1, v2}, Landroid_src/telephony/Phone$DataState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid_src/telephony/Phone$DataState;->CONNECTED:Landroid_src/telephony/Phone$DataState;

    new-instance v0, Landroid_src/telephony/Phone$DataState;

    const-string v1, "CONNECTING"

    invoke-direct {v0, v1, v3}, Landroid_src/telephony/Phone$DataState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid_src/telephony/Phone$DataState;->CONNECTING:Landroid_src/telephony/Phone$DataState;

    new-instance v0, Landroid_src/telephony/Phone$DataState;

    const-string v1, "DISCONNECTED"

    invoke-direct {v0, v1, v4}, Landroid_src/telephony/Phone$DataState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid_src/telephony/Phone$DataState;->DISCONNECTED:Landroid_src/telephony/Phone$DataState;

    new-instance v0, Landroid_src/telephony/Phone$DataState;

    const-string v1, "SUSPENDED"

    invoke-direct {v0, v1, v5}, Landroid_src/telephony/Phone$DataState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid_src/telephony/Phone$DataState;->SUSPENDED:Landroid_src/telephony/Phone$DataState;

    .line 58
    const/4 v0, 0x4

    new-array v0, v0, [Landroid_src/telephony/Phone$DataState;

    sget-object v1, Landroid_src/telephony/Phone$DataState;->CONNECTED:Landroid_src/telephony/Phone$DataState;

    aput-object v1, v0, v2

    sget-object v1, Landroid_src/telephony/Phone$DataState;->CONNECTING:Landroid_src/telephony/Phone$DataState;

    aput-object v1, v0, v3

    sget-object v1, Landroid_src/telephony/Phone$DataState;->DISCONNECTED:Landroid_src/telephony/Phone$DataState;

    aput-object v1, v0, v4

    sget-object v1, Landroid_src/telephony/Phone$DataState;->SUSPENDED:Landroid_src/telephony/Phone$DataState;

    aput-object v1, v0, v5

    sput-object v0, Landroid_src/telephony/Phone$DataState;->$VALUES:[Landroid_src/telephony/Phone$DataState;

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
    .line 58
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid_src/telephony/Phone$DataState;
    .locals 1
    .parameter

    .prologue
    .line 58
    const-class v0, Landroid_src/telephony/Phone$DataState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid_src/telephony/Phone$DataState;

    return-object v0
.end method

.method public static values()[Landroid_src/telephony/Phone$DataState;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Landroid_src/telephony/Phone$DataState;->$VALUES:[Landroid_src/telephony/Phone$DataState;

    invoke-virtual {v0}, [Landroid_src/telephony/Phone$DataState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid_src/telephony/Phone$DataState;

    return-object v0
.end method
