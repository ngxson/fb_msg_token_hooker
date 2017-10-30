.class Lcom/facebook/contacts/data/ContactsModule$ContactGraphQLProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "ContactsModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/contacts/graphql/ContactGraphQL;",
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
    .line 225
    iput-object p1, p0, Lcom/facebook/contacts/data/ContactsModule$ContactGraphQLProvider;->a:Lcom/facebook/contacts/data/ContactsModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/contacts/data/ContactsModule;Lcom/facebook/contacts/data/ContactsModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 225
    invoke-direct {p0, p1}, Lcom/facebook/contacts/data/ContactsModule$ContactGraphQLProvider;-><init>(Lcom/facebook/contacts/data/ContactsModule;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/contacts/graphql/ContactGraphQL;
    .locals 2

    .prologue
    .line 229
    new-instance v1, Lcom/facebook/contacts/graphql/ContactGraphQL;

    const-class v0, Lcom/facebook/contacts/pictures/ContactPictureSizes;

    invoke-virtual {p0, v0}, Lcom/facebook/contacts/data/ContactsModule$ContactGraphQLProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/contacts/pictures/ContactPictureSizes;

    invoke-direct {v1, v0}, Lcom/facebook/contacts/graphql/ContactGraphQL;-><init>(Lcom/facebook/contacts/pictures/ContactPictureSizes;)V

    return-object v1
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 225
    invoke-virtual {p0}, Lcom/facebook/contacts/data/ContactsModule$ContactGraphQLProvider;->a()Lcom/facebook/contacts/graphql/ContactGraphQL;

    move-result-object v0

    return-object v0
.end method
