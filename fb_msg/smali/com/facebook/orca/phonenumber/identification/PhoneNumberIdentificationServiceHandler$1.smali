.class Lcom/facebook/orca/phonenumber/identification/PhoneNumberIdentificationServiceHandler$1;
.super Ljava/lang/Object;
.source "PhoneNumberIdentificationServiceHandler.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/FutureCallback",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/util/concurrent/SettableFuture;

.field final synthetic b:Lcom/facebook/orca/phonenumber/identification/PhoneNumberIdentificationServiceHandler;


# direct methods
.method constructor <init>(Lcom/facebook/orca/phonenumber/identification/PhoneNumberIdentificationServiceHandler;Lcom/google/common/util/concurrent/SettableFuture;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/facebook/orca/phonenumber/identification/PhoneNumberIdentificationServiceHandler$1;->b:Lcom/facebook/orca/phonenumber/identification/PhoneNumberIdentificationServiceHandler;

    iput-object p2, p0, Lcom/facebook/orca/phonenumber/identification/PhoneNumberIdentificationServiceHandler$1;->a:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 87
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/facebook/orca/phonenumber/identification/PhoneNumberIdentificationServiceHandler$1;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 90
    const-string v0, "orca:PhoneNumberIdentificationServiceHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Phone number verification Successful Code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    new-instance v0, Lcom/facebook/orca/phonenumber/identification/VerifyPhoneNumberResult;

    invoke-direct {v0, p1}, Lcom/facebook/orca/phonenumber/identification/VerifyPhoneNumberResult;-><init>(Ljava/lang/String;)V

    .line 92
    iget-object v1, p0, Lcom/facebook/orca/phonenumber/identification/PhoneNumberIdentificationServiceHandler$1;->a:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-static {v0}, Lcom/facebook/orca/server/OperationResult;->a(Landroid/os/Parcelable;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/common/util/concurrent/SettableFuture;->a(Ljava/lang/Object;)Z

    .line 93
    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 3
    .parameter

    .prologue
    .line 96
    const-string v0, "orca:PhoneNumberIdentificationServiceHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Phone number confirmation failure"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/facebook/orca/phonenumber/identification/PhoneNumberIdentificationServiceHandler$1;->a:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/SettableFuture;->a(Ljava/lang/Throwable;)Z

    .line 98
    return-void
.end method
