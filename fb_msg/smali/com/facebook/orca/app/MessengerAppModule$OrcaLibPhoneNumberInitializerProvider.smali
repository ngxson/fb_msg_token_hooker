.class Lcom/facebook/orca/app/MessengerAppModule$OrcaLibPhoneNumberInitializerProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessengerAppModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/app/OrcaLibPhoneNumberInitializer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/app/MessengerAppModule;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/MessengerAppModule;)V
    .locals 0
    .parameter

    .prologue
    .line 481
    iput-object p1, p0, Lcom/facebook/orca/app/MessengerAppModule$OrcaLibPhoneNumberInitializerProvider;->a:Lcom/facebook/orca/app/MessengerAppModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/MessengerAppModule;Lcom/facebook/orca/app/MessengerAppModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 481
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/MessengerAppModule$OrcaLibPhoneNumberInitializerProvider;-><init>(Lcom/facebook/orca/app/MessengerAppModule;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/app/OrcaLibPhoneNumberInitializer;
    .locals 2

    .prologue
    .line 486
    new-instance v0, Lcom/facebook/orca/app/OrcaLibPhoneNumberInitializer;

    const-class v1, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessengerAppModule$OrcaLibPhoneNumberInitializerProvider;->a(Ljava/lang/Class;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/orca/app/OrcaLibPhoneNumberInitializer;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 481
    invoke-virtual {p0}, Lcom/facebook/orca/app/MessengerAppModule$OrcaLibPhoneNumberInitializerProvider;->a()Lcom/facebook/orca/app/OrcaLibPhoneNumberInitializer;

    move-result-object v0

    return-object v0
.end method
