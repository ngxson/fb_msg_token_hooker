.class Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$AddressBookPickerCacheProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessagesContactPickerModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/contacts/picker/AddressBookPickerCache;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule;)V
    .locals 0
    .parameter

    .prologue
    .line 178
    iput-object p1, p0, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$AddressBookPickerCacheProvider;->a:Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule;Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 178
    invoke-direct {p0, p1}, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$AddressBookPickerCacheProvider;-><init>(Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/contacts/picker/AddressBookPickerCache;
    .locals 3

    .prologue
    .line 182
    new-instance v1, Lcom/facebook/orca/contacts/picker/AddressBookPickerCache;

    const-class v0, Lcom/facebook/orca/common/util/Clock;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$AddressBookPickerCacheProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/util/Clock;

    iget-object v2, p0, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$AddressBookPickerCacheProvider;->a:Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule;

    invoke-static {v2}, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule;->a(Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/facebook/orca/contacts/picker/AddressBookPickerCache;-><init>(Lcom/facebook/orca/common/util/Clock;Landroid/content/ContentResolver;)V

    return-object v1
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$AddressBookPickerCacheProvider;->a()Lcom/facebook/orca/contacts/picker/AddressBookPickerCache;

    move-result-object v0

    return-object v0
.end method
