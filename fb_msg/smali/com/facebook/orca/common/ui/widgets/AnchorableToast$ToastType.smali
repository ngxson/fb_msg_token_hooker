.class public final enum Lcom/facebook/orca/common/ui/widgets/AnchorableToast$ToastType;
.super Ljava/lang/Enum;
.source "AnchorableToast.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/orca/common/ui/widgets/AnchorableToast$ToastType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/orca/common/ui/widgets/AnchorableToast$ToastType;

.field public static final enum NORMAL:Lcom/facebook/orca/common/ui/widgets/AnchorableToast$ToastType;

.field public static final enum WARNING:Lcom/facebook/orca/common/ui/widgets/AnchorableToast$ToastType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 37
    new-instance v0, Lcom/facebook/orca/common/ui/widgets/AnchorableToast$ToastType;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v2}, Lcom/facebook/orca/common/ui/widgets/AnchorableToast$ToastType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/orca/common/ui/widgets/AnchorableToast$ToastType;->NORMAL:Lcom/facebook/orca/common/ui/widgets/AnchorableToast$ToastType;

    .line 38
    new-instance v0, Lcom/facebook/orca/common/ui/widgets/AnchorableToast$ToastType;

    const-string v1, "WARNING"

    invoke-direct {v0, v1, v3}, Lcom/facebook/orca/common/ui/widgets/AnchorableToast$ToastType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/orca/common/ui/widgets/AnchorableToast$ToastType;->WARNING:Lcom/facebook/orca/common/ui/widgets/AnchorableToast$ToastType;

    .line 36
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/facebook/orca/common/ui/widgets/AnchorableToast$ToastType;

    sget-object v1, Lcom/facebook/orca/common/ui/widgets/AnchorableToast$ToastType;->NORMAL:Lcom/facebook/orca/common/ui/widgets/AnchorableToast$ToastType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/orca/common/ui/widgets/AnchorableToast$ToastType;->WARNING:Lcom/facebook/orca/common/ui/widgets/AnchorableToast$ToastType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/facebook/orca/common/ui/widgets/AnchorableToast$ToastType;->$VALUES:[Lcom/facebook/orca/common/ui/widgets/AnchorableToast$ToastType;

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
    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/orca/common/ui/widgets/AnchorableToast$ToastType;
    .locals 1
    .parameter

    .prologue
    .line 36
    const-class v0, Lcom/facebook/orca/common/ui/widgets/AnchorableToast$ToastType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/ui/widgets/AnchorableToast$ToastType;

    return-object v0
.end method

.method public static values()[Lcom/facebook/orca/common/ui/widgets/AnchorableToast$ToastType;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/facebook/orca/common/ui/widgets/AnchorableToast$ToastType;->$VALUES:[Lcom/facebook/orca/common/ui/widgets/AnchorableToast$ToastType;

    invoke-virtual {v0}, [Lcom/facebook/orca/common/ui/widgets/AnchorableToast$ToastType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/orca/common/ui/widgets/AnchorableToast$ToastType;

    return-object v0
.end method
