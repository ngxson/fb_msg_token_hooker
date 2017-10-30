.class public Lcom/facebook/orca/phonenumber/identification/PhoneNumberIdentificationServiceHandler;
.super Ljava/lang/Object;
.source "PhoneNumberIdentificationServiceHandler.java"

# interfaces
.implements Lcom/facebook/orca/server/OrcaServiceHandler;


# instance fields
.field private final a:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/orca/protocol/base/SingleMethodRunner;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/facebook/orca/protocol/methods/RequestSmsConfirmationCodeMethod;

.field private final c:Lcom/facebook/orca/phonenumber/identification/VerifyPhoneNumberSmsConsumer;


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Lcom/facebook/orca/protocol/methods/RequestSmsConfirmationCodeMethod;Lcom/facebook/orca/phonenumber/identification/VerifyPhoneNumberSmsConsumer;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/orca/protocol/base/SingleMethodRunner;",
            ">;",
            "Lcom/facebook/orca/protocol/methods/RequestSmsConfirmationCodeMethod;",
            "Lcom/facebook/orca/phonenumber/identification/VerifyPhoneNumberSmsConsumer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/facebook/orca/phonenumber/identification/PhoneNumberIdentificationServiceHandler;->a:Ljavax/inject/Provider;

    .line 42
    iput-object p2, p0, Lcom/facebook/orca/phonenumber/identification/PhoneNumberIdentificationServiceHandler;->b:Lcom/facebook/orca/protocol/methods/RequestSmsConfirmationCodeMethod;

    .line 43
    iput-object p3, p0, Lcom/facebook/orca/phonenumber/identification/PhoneNumberIdentificationServiceHandler;->c:Lcom/facebook/orca/phonenumber/identification/VerifyPhoneNumberSmsConsumer;

    .line 44
    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 124
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 125
    const v1, 0x15f8f

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit16 v0, v0, 0x2710

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;
    .locals 6
    .parameter

    .prologue
    .line 69
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 70
    const-string v1, "verifyPhoneNumberParams"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/phonenumber/identification/VerifyPhoneNumberParams;

    .line 74
    invoke-direct {p0}, Lcom/facebook/orca/phonenumber/identification/PhoneNumberIdentificationServiceHandler;->a()Ljava/lang/String;

    move-result-object v1

    .line 79
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->c()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v2

    .line 80
    new-instance v3, Lcom/facebook/orca/server/FutureOperationResult;

    invoke-direct {v3, v2}, Lcom/facebook/orca/server/FutureOperationResult;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;)V

    .line 86
    iget-object v4, p0, Lcom/facebook/orca/phonenumber/identification/PhoneNumberIdentificationServiceHandler;->c:Lcom/facebook/orca/phonenumber/identification/VerifyPhoneNumberSmsConsumer;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v4, v5, v1}, Lcom/facebook/orca/phonenumber/identification/VerifyPhoneNumberSmsConsumer;->a(Landroid/os/Handler;Ljava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v4

    .line 87
    new-instance v5, Lcom/facebook/orca/phonenumber/identification/PhoneNumberIdentificationServiceHandler$1;

    invoke-direct {v5, p0, v2}, Lcom/facebook/orca/phonenumber/identification/PhoneNumberIdentificationServiceHandler$1;-><init>(Lcom/facebook/orca/phonenumber/identification/PhoneNumberIdentificationServiceHandler;Lcom/google/common/util/concurrent/SettableFuture;)V

    invoke-static {v4, v5}, Lcom/google/common/util/concurrent/Futures;->a(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;)V

    .line 103
    :try_start_0
    new-instance v2, Lcom/facebook/orca/server/RequestSmsConfirmationCodeParams;

    invoke-virtual {v0}, Lcom/facebook/orca/phonenumber/identification/VerifyPhoneNumberParams;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/facebook/orca/phonenumber/identification/VerifyPhoneNumberParams;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v4, v0, v1}, Lcom/facebook/orca/server/RequestSmsConfirmationCodeParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/facebook/orca/phonenumber/identification/PhoneNumberIdentificationServiceHandler;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/protocol/base/SingleMethodRunner;

    .line 108
    iget-object v1, p0, Lcom/facebook/orca/phonenumber/identification/PhoneNumberIdentificationServiceHandler;->b:Lcom/facebook/orca/protocol/methods/RequestSmsConfirmationCodeMethod;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->a(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    return-object v3

    .line 109
    :catch_0
    move-exception v0

    .line 111
    iget-object v1, p0, Lcom/facebook/orca/phonenumber/identification/PhoneNumberIdentificationServiceHandler;->c:Lcom/facebook/orca/phonenumber/identification/VerifyPhoneNumberSmsConsumer;

    invoke-virtual {v1}, Lcom/facebook/orca/phonenumber/identification/VerifyPhoneNumberSmsConsumer;->a()V

    .line 112
    throw v0
.end method


# virtual methods
.method public a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;
    .locals 4
    .parameter

    .prologue
    .line 52
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->a()Ljava/lang/String;

    move-result-object v0

    .line 54
    const-string v1, "verify_phone_number"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    invoke-direct {p0, p1}, Lcom/facebook/orca/phonenumber/identification/PhoneNumberIdentificationServiceHandler;->b(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0

    .line 57
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown operation type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
