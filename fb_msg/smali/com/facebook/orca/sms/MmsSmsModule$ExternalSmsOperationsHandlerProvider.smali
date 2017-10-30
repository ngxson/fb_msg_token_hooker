.class Lcom/facebook/orca/sms/MmsSmsModule$ExternalSmsOperationsHandlerProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MmsSmsModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/sms/observe/ExternalSmsOperationsHandler;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/sms/MmsSmsModule;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/sms/MmsSmsModule;)V
    .locals 0
    .parameter

    .prologue
    .line 331
    iput-object p1, p0, Lcom/facebook/orca/sms/MmsSmsModule$ExternalSmsOperationsHandlerProvider;->a:Lcom/facebook/orca/sms/MmsSmsModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/sms/MmsSmsModule;Lcom/facebook/orca/sms/MmsSmsModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 331
    invoke-direct {p0, p1}, Lcom/facebook/orca/sms/MmsSmsModule$ExternalSmsOperationsHandlerProvider;-><init>(Lcom/facebook/orca/sms/MmsSmsModule;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/sms/observe/ExternalSmsOperationsHandler;
    .locals 4

    .prologue
    .line 336
    new-instance v3, Lcom/facebook/orca/sms/observe/ExternalSmsOperationsHandler;

    const-class v0, Lcom/facebook/orca/sms/MmsSmsLogger;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/sms/MmsSmsModule$ExternalSmsOperationsHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/sms/MmsSmsLogger;

    const-class v1, Lcom/facebook/orca/ops/OrcaServiceOperation;

    const-class v2, Lcom/facebook/orca/annotations/FromApplication;

    invoke-virtual {p0, v1, v2}, Lcom/facebook/orca/sms/MmsSmsModule$ExternalSmsOperationsHandlerProvider;->b(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/ops/OrcaServiceOperation;

    const-class v2, Lcom/facebook/orca/app/OrcaDataManager;

    invoke-virtual {p0, v2}, Lcom/facebook/orca/sms/MmsSmsModule$ExternalSmsOperationsHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/orca/app/OrcaDataManager;

    invoke-direct {v3, v0, v1, v2}, Lcom/facebook/orca/sms/observe/ExternalSmsOperationsHandler;-><init>(Lcom/facebook/orca/sms/MmsSmsLogger;Lcom/facebook/orca/ops/OrcaServiceOperation;Lcom/facebook/orca/app/OrcaDataManager;)V

    return-object v3
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 331
    invoke-virtual {p0}, Lcom/facebook/orca/sms/MmsSmsModule$ExternalSmsOperationsHandlerProvider;->a()Lcom/facebook/orca/sms/observe/ExternalSmsOperationsHandler;

    move-result-object v0

    return-object v0
.end method
