.class Lcom/facebook/orca/sms/MmsSmsModule$SmsReceiverWakeLockHolderProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MmsSmsModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/sms/SmsReceiverWakeLockHolder;",
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
    .line 288
    iput-object p1, p0, Lcom/facebook/orca/sms/MmsSmsModule$SmsReceiverWakeLockHolderProvider;->a:Lcom/facebook/orca/sms/MmsSmsModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/sms/MmsSmsModule;Lcom/facebook/orca/sms/MmsSmsModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 288
    invoke-direct {p0, p1}, Lcom/facebook/orca/sms/MmsSmsModule$SmsReceiverWakeLockHolderProvider;-><init>(Lcom/facebook/orca/sms/MmsSmsModule;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/sms/SmsReceiverWakeLockHolder;
    .locals 2

    .prologue
    .line 293
    new-instance v1, Lcom/facebook/orca/sms/SmsReceiverWakeLockHolder;

    const-class v0, Lcom/facebook/orca/common/OrcaWakeLockManager;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/sms/MmsSmsModule$SmsReceiverWakeLockHolderProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/OrcaWakeLockManager;

    invoke-direct {v1, v0}, Lcom/facebook/orca/sms/SmsReceiverWakeLockHolder;-><init>(Lcom/facebook/orca/common/OrcaWakeLockManager;)V

    return-object v1
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 288
    invoke-virtual {p0}, Lcom/facebook/orca/sms/MmsSmsModule$SmsReceiverWakeLockHolderProvider;->a()Lcom/facebook/orca/sms/SmsReceiverWakeLockHolder;

    move-result-object v0

    return-object v0
.end method
