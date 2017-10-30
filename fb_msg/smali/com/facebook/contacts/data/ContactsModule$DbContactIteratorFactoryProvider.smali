.class Lcom/facebook/contacts/data/ContactsModule$DbContactIteratorFactoryProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "ContactsModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/contacts/iterator/DbContactIteratorFactory;",
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
    .line 328
    iput-object p1, p0, Lcom/facebook/contacts/data/ContactsModule$DbContactIteratorFactoryProvider;->a:Lcom/facebook/contacts/data/ContactsModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/contacts/data/ContactsModule;Lcom/facebook/contacts/data/ContactsModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 328
    invoke-direct {p0, p1}, Lcom/facebook/contacts/data/ContactsModule$DbContactIteratorFactoryProvider;-><init>(Lcom/facebook/contacts/data/ContactsModule;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/contacts/iterator/DbContactIteratorFactory;
    .locals 2

    .prologue
    .line 333
    new-instance v0, Lcom/facebook/contacts/iterator/DbContactIteratorFactory;

    const-class v1, Lcom/facebook/contacts/iterator/DbContactIterator;

    invoke-virtual {p0, v1}, Lcom/facebook/contacts/data/ContactsModule$DbContactIteratorFactoryProvider;->a(Ljava/lang/Class;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/contacts/iterator/DbContactIteratorFactory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 328
    invoke-virtual {p0}, Lcom/facebook/contacts/data/ContactsModule$DbContactIteratorFactoryProvider;->a()Lcom/facebook/contacts/iterator/DbContactIteratorFactory;

    move-result-object v0

    return-object v0
.end method
