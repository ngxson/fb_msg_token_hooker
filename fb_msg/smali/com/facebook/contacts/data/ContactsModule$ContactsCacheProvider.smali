.class Lcom/facebook/contacts/data/ContactsModule$ContactsCacheProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "ContactsModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/contacts/cache/ContactsCache;",
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
    .line 293
    iput-object p1, p0, Lcom/facebook/contacts/data/ContactsModule$ContactsCacheProvider;->a:Lcom/facebook/contacts/data/ContactsModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/contacts/data/ContactsModule;Lcom/facebook/contacts/data/ContactsModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 293
    invoke-direct {p0, p1}, Lcom/facebook/contacts/data/ContactsModule$ContactsCacheProvider;-><init>(Lcom/facebook/contacts/data/ContactsModule;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/contacts/cache/ContactsCache;
    .locals 1

    .prologue
    .line 297
    new-instance v0, Lcom/facebook/contacts/cache/ContactsCache;

    invoke-direct {v0}, Lcom/facebook/contacts/cache/ContactsCache;-><init>()V

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 293
    invoke-virtual {p0}, Lcom/facebook/contacts/data/ContactsModule$ContactsCacheProvider;->a()Lcom/facebook/contacts/cache/ContactsCache;

    move-result-object v0

    return-object v0
.end method
