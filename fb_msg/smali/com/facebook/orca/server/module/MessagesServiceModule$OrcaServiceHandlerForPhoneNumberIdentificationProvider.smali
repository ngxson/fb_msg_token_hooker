.class Lcom/facebook/orca/server/module/MessagesServiceModule$OrcaServiceHandlerForPhoneNumberIdentificationProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessagesServiceModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/server/OrcaServiceHandler;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/server/module/MessagesServiceModule;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/server/module/MessagesServiceModule;)V
    .locals 0
    .parameter

    .prologue
    .line 133
    iput-object p1, p0, Lcom/facebook/orca/server/module/MessagesServiceModule$OrcaServiceHandlerForPhoneNumberIdentificationProvider;->a:Lcom/facebook/orca/server/module/MessagesServiceModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/server/module/MessagesServiceModule;Lcom/facebook/orca/server/module/MessagesServiceModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/facebook/orca/server/module/MessagesServiceModule$OrcaServiceHandlerForPhoneNumberIdentificationProvider;-><init>(Lcom/facebook/orca/server/module/MessagesServiceModule;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/server/OrcaServiceHandler;
    .locals 1

    .prologue
    .line 138
    const-class v0, Lcom/facebook/orca/phonenumber/identification/PhoneNumberIdentificationServiceHandler;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/server/module/MessagesServiceModule$OrcaServiceHandlerForPhoneNumberIdentificationProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/OrcaServiceHandler;

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/facebook/orca/server/module/MessagesServiceModule$OrcaServiceHandlerForPhoneNumberIdentificationProvider;->a()Lcom/facebook/orca/server/OrcaServiceHandler;

    move-result-object v0

    return-object v0
.end method
