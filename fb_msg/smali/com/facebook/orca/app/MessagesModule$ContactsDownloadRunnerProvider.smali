.class Lcom/facebook/orca/app/MessagesModule$ContactsDownloadRunnerProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessagesModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/contacts/download/ContactsDownloadRunner;",
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
    .line 2365
    iput-object p1, p0, Lcom/facebook/orca/app/MessagesModule$ContactsDownloadRunnerProvider;->a:Lcom/facebook/orca/app/MessagesModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2365
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/MessagesModule$ContactsDownloadRunnerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/contacts/download/ContactsDownloadRunner;
    .locals 3

    .prologue
    .line 2369
    new-instance v1, Lcom/facebook/orca/contacts/download/ContactsDownloadRunner;

    const-class v0, Lcom/facebook/orca/ops/OrcaServiceOperation;

    const-class v2, Lcom/facebook/orca/annotations/FromApplication;

    invoke-virtual {p0, v0, v2}, Lcom/facebook/orca/app/MessagesModule$ContactsDownloadRunnerProvider;->b(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/ops/OrcaServiceOperation;

    invoke-direct {v1, v0}, Lcom/facebook/orca/contacts/download/ContactsDownloadRunner;-><init>(Lcom/facebook/orca/ops/OrcaServiceOperation;)V

    return-object v1
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2365
    invoke-virtual {p0}, Lcom/facebook/orca/app/MessagesModule$ContactsDownloadRunnerProvider;->a()Lcom/facebook/orca/contacts/download/ContactsDownloadRunner;

    move-result-object v0

    return-object v0
.end method
