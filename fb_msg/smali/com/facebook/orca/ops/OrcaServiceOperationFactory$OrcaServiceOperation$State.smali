.class public final enum Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$State;
.super Ljava/lang/Enum;
.source "OrcaServiceOperationFactory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$State;

.field public static final enum COMPLETED:Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$State;

.field public static final enum INIT:Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$State;

.field public static final enum OPERATION_QUEUED:Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$State;

.field public static final enum READY_TO_QUEUE:Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$State;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 110
    new-instance v0, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$State;

    const-string v1, "INIT"

    invoke-direct {v0, v1, v2}, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$State;->INIT:Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$State;

    .line 111
    new-instance v0, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$State;

    const-string v1, "READY_TO_QUEUE"

    invoke-direct {v0, v1, v3}, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$State;->READY_TO_QUEUE:Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$State;

    .line 112
    new-instance v0, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$State;

    const-string v1, "OPERATION_QUEUED"

    invoke-direct {v0, v1, v4}, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$State;->OPERATION_QUEUED:Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$State;

    .line 113
    new-instance v0, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$State;

    const-string v1, "COMPLETED"

    invoke-direct {v0, v1, v5}, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$State;->COMPLETED:Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$State;

    .line 109
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$State;

    sget-object v1, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$State;->INIT:Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$State;->READY_TO_QUEUE:Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$State;->OPERATION_QUEUED:Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$State;->COMPLETED:Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$State;

    aput-object v1, v0, v5

    sput-object v0, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$State;->$VALUES:[Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$State;

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
    .line 109
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$State;
    .locals 1
    .parameter

    .prologue
    .line 109
    const-class v0, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$State;

    return-object v0
.end method

.method public static values()[Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$State;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$State;->$VALUES:[Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$State;

    invoke-virtual {v0}, [Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation$State;

    return-object v0
.end method
