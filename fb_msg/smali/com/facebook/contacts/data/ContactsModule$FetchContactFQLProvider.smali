.class Lcom/facebook/contacts/data/ContactsModule$FetchContactFQLProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "ContactsModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/contacts/protocol/FetchContactFQLMethod;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/contacts/data/ContactsModule;


# direct methods
.method private constructor <init>(Lcom/facebook/contacts/data/ContactsModule;)V
    .locals 0
    .parameter

    .prologue
    .line 209
    iput-object p1, p0, Lcom/facebook/contacts/data/ContactsModule$FetchContactFQLProvider;->a:Lcom/facebook/contacts/data/ContactsModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/contacts/data/ContactsModule;Lcom/facebook/contacts/data/ContactsModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 209
    invoke-direct {p0, p1}, Lcom/facebook/contacts/data/ContactsModule$FetchContactFQLProvider;-><init>(Lcom/facebook/contacts/data/ContactsModule;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/contacts/protocol/FetchContactFQLMethod;
    .locals 2

    .prologue
    .line 213
    new-instance v1, Lcom/facebook/contacts/protocol/FetchContactFQLMethod;

    const-class v0, Lcom/facebook/contacts/data/ContactSerialization;

    invoke-virtual {p0, v0}, Lcom/facebook/contacts/data/ContactsModule$FetchContactFQLProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/contacts/data/ContactSerialization;

    invoke-direct {v1, v0}, Lcom/facebook/contacts/protocol/FetchContactFQLMethod;-><init>(Lcom/facebook/contacts/data/ContactSerialization;)V

    return-object v1
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 209
    invoke-virtual {p0}, Lcom/facebook/contacts/data/ContactsModule$FetchContactFQLProvider;->a()Lcom/facebook/contacts/protocol/FetchContactFQLMethod;

    move-result-object v0

    return-object v0
.end method
