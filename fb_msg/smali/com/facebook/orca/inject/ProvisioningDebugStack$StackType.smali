.class final enum Lcom/facebook/orca/inject/ProvisioningDebugStack$StackType;
.super Ljava/lang/Enum;
.source "ProvisioningDebugStack.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/orca/inject/ProvisioningDebugStack$StackType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/orca/inject/ProvisioningDebugStack$StackType;

.field public static final enum INSTANCE_GET:Lcom/facebook/orca/inject/ProvisioningDebugStack$StackType;

.field public static final enum PROVIDER_GET:Lcom/facebook/orca/inject/ProvisioningDebugStack$StackType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 18
    new-instance v0, Lcom/facebook/orca/inject/ProvisioningDebugStack$StackType;

    const-string v1, "PROVIDER_GET"

    invoke-direct {v0, v1, v2}, Lcom/facebook/orca/inject/ProvisioningDebugStack$StackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/orca/inject/ProvisioningDebugStack$StackType;->PROVIDER_GET:Lcom/facebook/orca/inject/ProvisioningDebugStack$StackType;

    .line 19
    new-instance v0, Lcom/facebook/orca/inject/ProvisioningDebugStack$StackType;

    const-string v1, "INSTANCE_GET"

    invoke-direct {v0, v1, v3}, Lcom/facebook/orca/inject/ProvisioningDebugStack$StackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/orca/inject/ProvisioningDebugStack$StackType;->INSTANCE_GET:Lcom/facebook/orca/inject/ProvisioningDebugStack$StackType;

    .line 17
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/facebook/orca/inject/ProvisioningDebugStack$StackType;

    sget-object v1, Lcom/facebook/orca/inject/ProvisioningDebugStack$StackType;->PROVIDER_GET:Lcom/facebook/orca/inject/ProvisioningDebugStack$StackType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/orca/inject/ProvisioningDebugStack$StackType;->INSTANCE_GET:Lcom/facebook/orca/inject/ProvisioningDebugStack$StackType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/facebook/orca/inject/ProvisioningDebugStack$StackType;->$VALUES:[Lcom/facebook/orca/inject/ProvisioningDebugStack$StackType;

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
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/orca/inject/ProvisioningDebugStack$StackType;
    .locals 1
    .parameter

    .prologue
    .line 17
    const-class v0, Lcom/facebook/orca/inject/ProvisioningDebugStack$StackType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/inject/ProvisioningDebugStack$StackType;

    return-object v0
.end method

.method public static values()[Lcom/facebook/orca/inject/ProvisioningDebugStack$StackType;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/facebook/orca/inject/ProvisioningDebugStack$StackType;->$VALUES:[Lcom/facebook/orca/inject/ProvisioningDebugStack$StackType;

    invoke-virtual {v0}, [Lcom/facebook/orca/inject/ProvisioningDebugStack$StackType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/orca/inject/ProvisioningDebugStack$StackType;

    return-object v0
.end method
