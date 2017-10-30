.class Lcom/facebook/orca/app/MessagesModule$PhoneNumberIdentificationServiceHandlerProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessagesModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/phonenumber/identification/PhoneNumberIdentificationServiceHandler;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/app/MessagesModule;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/MessagesModule;)V
    .locals 0
    .parameter

    .prologue
    .line 2400
    iput-object p1, p0, Lcom/facebook/orca/app/MessagesModule$PhoneNumberIdentificationServiceHandlerProvider;->a:Lcom/facebook/orca/app/MessagesModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2400
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/MessagesModule$PhoneNumberIdentificationServiceHandlerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/phonenumber/identification/PhoneNumberIdentificationServiceHandler;
    .locals 4

    .prologue
    .line 2405
    new-instance v2, Lcom/facebook/orca/phonenumber/identification/PhoneNumberIdentificationServiceHandler;

    const-class v0, Lcom/facebook/orca/protocol/base/SingleMethodRunner;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule$PhoneNumberIdentificationServiceHandlerProvider;->a(Ljava/lang/Class;)Ljavax/inject/Provider;

    move-result-object v3

    const-class v0, Lcom/facebook/orca/protocol/methods/RequestSmsConfirmationCodeMethod;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule$PhoneNumberIdentificationServiceHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/protocol/methods/RequestSmsConfirmationCodeMethod;

    const-class v1, Lcom/facebook/orca/phonenumber/identification/VerifyPhoneNumberSmsConsumer;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule$PhoneNumberIdentificationServiceHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/phonenumber/identification/VerifyPhoneNumberSmsConsumer;

    invoke-direct {v2, v3, v0, v1}, Lcom/facebook/orca/phonenumber/identification/PhoneNumberIdentificationServiceHandler;-><init>(Ljavax/inject/Provider;Lcom/facebook/orca/protocol/methods/RequestSmsConfirmationCodeMethod;Lcom/facebook/orca/phonenumber/identification/VerifyPhoneNumberSmsConsumer;)V

    return-object v2
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2400
    invoke-virtual {p0}, Lcom/facebook/orca/app/MessagesModule$PhoneNumberIdentificationServiceHandlerProvider;->a()Lcom/facebook/orca/phonenumber/identification/PhoneNumberIdentificationServiceHandler;

    move-result-object v0

    return-object v0
.end method
