.class Lcom/facebook/orca/app/MessagesModule$ContactsUploadRunnerProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessagesModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/contacts/upload/ContactsUploadRunner;",
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
    .line 2342
    iput-object p1, p0, Lcom/facebook/orca/app/MessagesModule$ContactsUploadRunnerProvider;->a:Lcom/facebook/orca/app/MessagesModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2342
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/MessagesModule$ContactsUploadRunnerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/contacts/upload/ContactsUploadRunner;
    .locals 3

    .prologue
    .line 2346
    new-instance v1, Lcom/facebook/orca/contacts/upload/ContactsUploadRunner;

    const-class v0, Lcom/facebook/orca/ops/OrcaServiceOperation;

    const-class v2, Lcom/facebook/orca/annotations/FromApplication;

    invoke-virtual {p0, v0, v2}, Lcom/facebook/orca/app/MessagesModule$ContactsUploadRunnerProvider;->b(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/ops/OrcaServiceOperation;

    invoke-direct {v1, v0}, Lcom/facebook/orca/contacts/upload/ContactsUploadRunner;-><init>(Lcom/facebook/orca/ops/OrcaServiceOperation;)V

    return-object v1
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2342
    invoke-virtual {p0}, Lcom/facebook/orca/app/MessagesModule$ContactsUploadRunnerProvider;->a()Lcom/facebook/orca/contacts/upload/ContactsUploadRunner;

    move-result-object v0

    return-object v0
.end method
