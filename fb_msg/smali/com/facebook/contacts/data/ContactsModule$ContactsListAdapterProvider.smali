.class Lcom/facebook/contacts/data/ContactsModule$ContactsListAdapterProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "ContactsModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/contacts/contactslist/ContactsListAdapter;",
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
    .line 233
    iput-object p1, p0, Lcom/facebook/contacts/data/ContactsModule$ContactsListAdapterProvider;->a:Lcom/facebook/contacts/data/ContactsModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/contacts/data/ContactsModule;Lcom/facebook/contacts/data/ContactsModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 233
    invoke-direct {p0, p1}, Lcom/facebook/contacts/data/ContactsModule$ContactsListAdapterProvider;-><init>(Lcom/facebook/contacts/data/ContactsModule;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/contacts/contactslist/ContactsListAdapter;
    .locals 2

    .prologue
    .line 237
    new-instance v0, Lcom/facebook/contacts/contactslist/ContactsListAdapter;

    iget-object v1, p0, Lcom/facebook/contacts/data/ContactsModule$ContactsListAdapterProvider;->a:Lcom/facebook/contacts/data/ContactsModule;

    invoke-static {v1}, Lcom/facebook/contacts/data/ContactsModule;->a(Lcom/facebook/contacts/data/ContactsModule;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/contacts/contactslist/ContactsListAdapter;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 233
    invoke-virtual {p0}, Lcom/facebook/contacts/data/ContactsModule$ContactsListAdapterProvider;->a()Lcom/facebook/contacts/contactslist/ContactsListAdapter;

    move-result-object v0

    return-object v0
.end method
