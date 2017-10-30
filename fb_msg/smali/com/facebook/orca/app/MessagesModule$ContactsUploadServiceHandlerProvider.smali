.class Lcom/facebook/orca/app/MessagesModule$ContactsUploadServiceHandlerProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessagesModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/contacts/upload/ContactsUploadServiceHandler;",
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
    .line 2352
    iput-object p1, p0, Lcom/facebook/orca/app/MessagesModule$ContactsUploadServiceHandlerProvider;->a:Lcom/facebook/orca/app/MessagesModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2352
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/MessagesModule$ContactsUploadServiceHandlerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/contacts/upload/ContactsUploadServiceHandler;
    .locals 4

    .prologue
    .line 2357
    new-instance v2, Lcom/facebook/orca/contacts/upload/ContactsUploadServiceHandler;

    const-class v0, Lcom/facebook/orca/users/PhoneUserIterator;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule$ContactsUploadServiceHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/PhoneUserIterator;

    const-class v1, Lcom/facebook/orca/protocol/base/SingleMethodRunner;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule$ContactsUploadServiceHandlerProvider;->a(Ljava/lang/Class;)Ljavax/inject/Provider;

    move-result-object v3

    const-class v1, Lcom/facebook/contacts/protocol/UploadBulkContactsMethod;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule$ContactsUploadServiceHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/contacts/protocol/UploadBulkContactsMethod;

    invoke-direct {v2, v0, v3, v1}, Lcom/facebook/orca/contacts/upload/ContactsUploadServiceHandler;-><init>(Lcom/facebook/orca/users/PhoneUserIterator;Ljavax/inject/Provider;Lcom/facebook/contacts/protocol/UploadBulkContactsMethod;)V

    return-object v2
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2352
    invoke-virtual {p0}, Lcom/facebook/orca/app/MessagesModule$ContactsUploadServiceHandlerProvider;->a()Lcom/facebook/orca/contacts/upload/ContactsUploadServiceHandler;

    move-result-object v0

    return-object v0
.end method
