.class Lcom/facebook/contacts/data/ContactsModule$ContactsDbSchemaPartProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "ContactsModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/contacts/data/ContactsDbSchemaPart;",
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
    .line 154
    iput-object p1, p0, Lcom/facebook/contacts/data/ContactsModule$ContactsDbSchemaPartProvider;->a:Lcom/facebook/contacts/data/ContactsModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/contacts/data/ContactsModule;Lcom/facebook/contacts/data/ContactsModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 154
    invoke-direct {p0, p1}, Lcom/facebook/contacts/data/ContactsModule$ContactsDbSchemaPartProvider;-><init>(Lcom/facebook/contacts/data/ContactsModule;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/contacts/data/ContactsDbSchemaPart;
    .locals 1

    .prologue
    .line 158
    new-instance v0, Lcom/facebook/contacts/data/ContactsDbSchemaPart;

    invoke-direct {v0}, Lcom/facebook/contacts/data/ContactsDbSchemaPart;-><init>()V

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/facebook/contacts/data/ContactsModule$ContactsDbSchemaPartProvider;->a()Lcom/facebook/contacts/data/ContactsDbSchemaPart;

    move-result-object v0

    return-object v0
.end method
