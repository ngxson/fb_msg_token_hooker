.class public final enum Lcom/facebook/common/util/TimeFormatUtil$TimeFormatStyle;
.super Ljava/lang/Enum;
.source "TimeFormatUtil.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/common/util/TimeFormatUtil$TimeFormatStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/common/util/TimeFormatUtil$TimeFormatStyle;

.field public static final enum DATE_PICKER_STYLE:Lcom/facebook/common/util/TimeFormatUtil$TimeFormatStyle;

.field public static final enum EVENTS_RELATIVE_DATE_STYLE:Lcom/facebook/common/util/TimeFormatUtil$TimeFormatStyle;

.field public static final enum EVENTS_RELATIVE_STYLE:Lcom/facebook/common/util/TimeFormatUtil$TimeFormatStyle;

.field public static final enum HOUR_MINUTE_STYLE:Lcom/facebook/common/util/TimeFormatUtil$TimeFormatStyle;

.field public static final enum MONTH_DAY_YEAR_STYLE:Lcom/facebook/common/util/TimeFormatUtil$TimeFormatStyle;

.field public static final enum STREAM_RELATIVE_STYLE:Lcom/facebook/common/util/TimeFormatUtil$TimeFormatStyle;

.field public static final enum WEEK_DAY_STYLE:Lcom/facebook/common/util/TimeFormatUtil$TimeFormatStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 13
    new-instance v0, Lcom/facebook/common/util/TimeFormatUtil$TimeFormatStyle;

    const-string v1, "HOUR_MINUTE_STYLE"

    invoke-direct {v0, v1, v3}, Lcom/facebook/common/util/TimeFormatUtil$TimeFormatStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/common/util/TimeFormatUtil$TimeFormatStyle;->HOUR_MINUTE_STYLE:Lcom/facebook/common/util/TimeFormatUtil$TimeFormatStyle;

    .line 14
    new-instance v0, Lcom/facebook/common/util/TimeFormatUtil$TimeFormatStyle;

    const-string v1, "WEEK_DAY_STYLE"

    invoke-direct {v0, v1, v4}, Lcom/facebook/common/util/TimeFormatUtil$TimeFormatStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/common/util/TimeFormatUtil$TimeFormatStyle;->WEEK_DAY_STYLE:Lcom/facebook/common/util/TimeFormatUtil$TimeFormatStyle;

    .line 15
    new-instance v0, Lcom/facebook/common/util/TimeFormatUtil$TimeFormatStyle;

    const-string v1, "STREAM_RELATIVE_STYLE"

    invoke-direct {v0, v1, v5}, Lcom/facebook/common/util/TimeFormatUtil$TimeFormatStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/common/util/TimeFormatUtil$TimeFormatStyle;->STREAM_RELATIVE_STYLE:Lcom/facebook/common/util/TimeFormatUtil$TimeFormatStyle;

    .line 16
    new-instance v0, Lcom/facebook/common/util/TimeFormatUtil$TimeFormatStyle;

    const-string v1, "MONTH_DAY_YEAR_STYLE"

    invoke-direct {v0, v1, v6}, Lcom/facebook/common/util/TimeFormatUtil$TimeFormatStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/common/util/TimeFormatUtil$TimeFormatStyle;->MONTH_DAY_YEAR_STYLE:Lcom/facebook/common/util/TimeFormatUtil$TimeFormatStyle;

    .line 17
    new-instance v0, Lcom/facebook/common/util/TimeFormatUtil$TimeFormatStyle;

    const-string v1, "EVENTS_RELATIVE_STYLE"

    invoke-direct {v0, v1, v7}, Lcom/facebook/common/util/TimeFormatUtil$TimeFormatStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/common/util/TimeFormatUtil$TimeFormatStyle;->EVENTS_RELATIVE_STYLE:Lcom/facebook/common/util/TimeFormatUtil$TimeFormatStyle;

    .line 18
    new-instance v0, Lcom/facebook/common/util/TimeFormatUtil$TimeFormatStyle;

    const-string v1, "EVENTS_RELATIVE_DATE_STYLE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/facebook/common/util/TimeFormatUtil$TimeFormatStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/common/util/TimeFormatUtil$TimeFormatStyle;->EVENTS_RELATIVE_DATE_STYLE:Lcom/facebook/common/util/TimeFormatUtil$TimeFormatStyle;

    .line 19
    new-instance v0, Lcom/facebook/common/util/TimeFormatUtil$TimeFormatStyle;

    const-string v1, "DATE_PICKER_STYLE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/facebook/common/util/TimeFormatUtil$TimeFormatStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/common/util/TimeFormatUtil$TimeFormatStyle;->DATE_PICKER_STYLE:Lcom/facebook/common/util/TimeFormatUtil$TimeFormatStyle;

    .line 12
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/facebook/common/util/TimeFormatUtil$TimeFormatStyle;

    sget-object v1, Lcom/facebook/common/util/TimeFormatUtil$TimeFormatStyle;->HOUR_MINUTE_STYLE:Lcom/facebook/common/util/TimeFormatUtil$TimeFormatStyle;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/common/util/TimeFormatUtil$TimeFormatStyle;->WEEK_DAY_STYLE:Lcom/facebook/common/util/TimeFormatUtil$TimeFormatStyle;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/common/util/TimeFormatUtil$TimeFormatStyle;->STREAM_RELATIVE_STYLE:Lcom/facebook/common/util/TimeFormatUtil$TimeFormatStyle;

    aput-object v1, v0, v5

    sget-object v1, Lcom/facebook/common/util/TimeFormatUtil$TimeFormatStyle;->MONTH_DAY_YEAR_STYLE:Lcom/facebook/common/util/TimeFormatUtil$TimeFormatStyle;

    aput-object v1, v0, v6

    sget-object v1, Lcom/facebook/common/util/TimeFormatUtil$TimeFormatStyle;->EVENTS_RELATIVE_STYLE:Lcom/facebook/common/util/TimeFormatUtil$TimeFormatStyle;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/facebook/common/util/TimeFormatUtil$TimeFormatStyle;->EVENTS_RELATIVE_DATE_STYLE:Lcom/facebook/common/util/TimeFormatUtil$TimeFormatStyle;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/facebook/common/util/TimeFormatUtil$TimeFormatStyle;->DATE_PICKER_STYLE:Lcom/facebook/common/util/TimeFormatUtil$TimeFormatStyle;

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/common/util/TimeFormatUtil$TimeFormatStyle;->$VALUES:[Lcom/facebook/common/util/TimeFormatUtil$TimeFormatStyle;

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
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/common/util/TimeFormatUtil$TimeFormatStyle;
    .locals 1
    .parameter

    .prologue
    .line 12
    const-class v0, Lcom/facebook/common/util/TimeFormatUtil$TimeFormatStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/common/util/TimeFormatUtil$TimeFormatStyle;

    return-object v0
.end method

.method public static values()[Lcom/facebook/common/util/TimeFormatUtil$TimeFormatStyle;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/facebook/common/util/TimeFormatUtil$TimeFormatStyle;->$VALUES:[Lcom/facebook/common/util/TimeFormatUtil$TimeFormatStyle;

    invoke-virtual {v0}, [Lcom/facebook/common/util/TimeFormatUtil$TimeFormatStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/common/util/TimeFormatUtil$TimeFormatStyle;

    return-object v0
.end method
