.class public final enum Lcom/facebook/orca/common/ui/titlebar/DivebarController$DivebarState;
.super Ljava/lang/Enum;
.source "DivebarController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/orca/common/ui/titlebar/DivebarController$DivebarState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/orca/common/ui/titlebar/DivebarController$DivebarState;

.field public static final enum ANIMATING:Lcom/facebook/orca/common/ui/titlebar/DivebarController$DivebarState;

.field public static final enum CLOSED:Lcom/facebook/orca/common/ui/titlebar/DivebarController$DivebarState;

.field public static final enum OPENED:Lcom/facebook/orca/common/ui/titlebar/DivebarController$DivebarState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 70
    new-instance v0, Lcom/facebook/orca/common/ui/titlebar/DivebarController$DivebarState;

    const-string v1, "CLOSED"

    invoke-direct {v0, v1, v2}, Lcom/facebook/orca/common/ui/titlebar/DivebarController$DivebarState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/orca/common/ui/titlebar/DivebarController$DivebarState;->CLOSED:Lcom/facebook/orca/common/ui/titlebar/DivebarController$DivebarState;

    .line 71
    new-instance v0, Lcom/facebook/orca/common/ui/titlebar/DivebarController$DivebarState;

    const-string v1, "OPENED"

    invoke-direct {v0, v1, v3}, Lcom/facebook/orca/common/ui/titlebar/DivebarController$DivebarState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/orca/common/ui/titlebar/DivebarController$DivebarState;->OPENED:Lcom/facebook/orca/common/ui/titlebar/DivebarController$DivebarState;

    .line 72
    new-instance v0, Lcom/facebook/orca/common/ui/titlebar/DivebarController$DivebarState;

    const-string v1, "ANIMATING"

    invoke-direct {v0, v1, v4}, Lcom/facebook/orca/common/ui/titlebar/DivebarController$DivebarState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/orca/common/ui/titlebar/DivebarController$DivebarState;->ANIMATING:Lcom/facebook/orca/common/ui/titlebar/DivebarController$DivebarState;

    .line 69
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/facebook/orca/common/ui/titlebar/DivebarController$DivebarState;

    sget-object v1, Lcom/facebook/orca/common/ui/titlebar/DivebarController$DivebarState;->CLOSED:Lcom/facebook/orca/common/ui/titlebar/DivebarController$DivebarState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/orca/common/ui/titlebar/DivebarController$DivebarState;->OPENED:Lcom/facebook/orca/common/ui/titlebar/DivebarController$DivebarState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/orca/common/ui/titlebar/DivebarController$DivebarState;->ANIMATING:Lcom/facebook/orca/common/ui/titlebar/DivebarController$DivebarState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/facebook/orca/common/ui/titlebar/DivebarController$DivebarState;->$VALUES:[Lcom/facebook/orca/common/ui/titlebar/DivebarController$DivebarState;

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
    .line 69
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/orca/common/ui/titlebar/DivebarController$DivebarState;
    .locals 1
    .parameter

    .prologue
    .line 69
    const-class v0, Lcom/facebook/orca/common/ui/titlebar/DivebarController$DivebarState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/ui/titlebar/DivebarController$DivebarState;

    return-object v0
.end method

.method public static values()[Lcom/facebook/orca/common/ui/titlebar/DivebarController$DivebarState;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/facebook/orca/common/ui/titlebar/DivebarController$DivebarState;->$VALUES:[Lcom/facebook/orca/common/ui/titlebar/DivebarController$DivebarState;

    invoke-virtual {v0}, [Lcom/facebook/orca/common/ui/titlebar/DivebarController$DivebarState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/orca/common/ui/titlebar/DivebarController$DivebarState;

    return-object v0
.end method
