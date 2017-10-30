.class final enum Lcom/facebook/orca/ui/touch/DragMotionDetector$ListenState;
.super Ljava/lang/Enum;
.source "DragMotionDetector.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/orca/ui/touch/DragMotionDetector$ListenState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/orca/ui/touch/DragMotionDetector$ListenState;

.field public static final enum DEFERRING:Lcom/facebook/orca/ui/touch/DragMotionDetector$ListenState;

.field public static final enum INTERCEPTING:Lcom/facebook/orca/ui/touch/DragMotionDetector$ListenState;

.field public static final enum MONITORING:Lcom/facebook/orca/ui/touch/DragMotionDetector$ListenState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 71
    new-instance v0, Lcom/facebook/orca/ui/touch/DragMotionDetector$ListenState;

    const-string v1, "MONITORING"

    invoke-direct {v0, v1, v2}, Lcom/facebook/orca/ui/touch/DragMotionDetector$ListenState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/orca/ui/touch/DragMotionDetector$ListenState;->MONITORING:Lcom/facebook/orca/ui/touch/DragMotionDetector$ListenState;

    .line 72
    new-instance v0, Lcom/facebook/orca/ui/touch/DragMotionDetector$ListenState;

    const-string v1, "INTERCEPTING"

    invoke-direct {v0, v1, v3}, Lcom/facebook/orca/ui/touch/DragMotionDetector$ListenState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/orca/ui/touch/DragMotionDetector$ListenState;->INTERCEPTING:Lcom/facebook/orca/ui/touch/DragMotionDetector$ListenState;

    .line 73
    new-instance v0, Lcom/facebook/orca/ui/touch/DragMotionDetector$ListenState;

    const-string v1, "DEFERRING"

    invoke-direct {v0, v1, v4}, Lcom/facebook/orca/ui/touch/DragMotionDetector$ListenState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/orca/ui/touch/DragMotionDetector$ListenState;->DEFERRING:Lcom/facebook/orca/ui/touch/DragMotionDetector$ListenState;

    .line 70
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/facebook/orca/ui/touch/DragMotionDetector$ListenState;

    sget-object v1, Lcom/facebook/orca/ui/touch/DragMotionDetector$ListenState;->MONITORING:Lcom/facebook/orca/ui/touch/DragMotionDetector$ListenState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/orca/ui/touch/DragMotionDetector$ListenState;->INTERCEPTING:Lcom/facebook/orca/ui/touch/DragMotionDetector$ListenState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/orca/ui/touch/DragMotionDetector$ListenState;->DEFERRING:Lcom/facebook/orca/ui/touch/DragMotionDetector$ListenState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/facebook/orca/ui/touch/DragMotionDetector$ListenState;->$VALUES:[Lcom/facebook/orca/ui/touch/DragMotionDetector$ListenState;

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
    .line 70
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/orca/ui/touch/DragMotionDetector$ListenState;
    .locals 1
    .parameter

    .prologue
    .line 70
    const-class v0, Lcom/facebook/orca/ui/touch/DragMotionDetector$ListenState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/ui/touch/DragMotionDetector$ListenState;

    return-object v0
.end method

.method public static values()[Lcom/facebook/orca/ui/touch/DragMotionDetector$ListenState;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/facebook/orca/ui/touch/DragMotionDetector$ListenState;->$VALUES:[Lcom/facebook/orca/ui/touch/DragMotionDetector$ListenState;

    invoke-virtual {v0}, [Lcom/facebook/orca/ui/touch/DragMotionDetector$ListenState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/orca/ui/touch/DragMotionDetector$ListenState;

    return-object v0
.end method
