.class Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$ContactPickerViewListAdapterProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessagesContactPickerModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/contacts/picker/IContactPickerViewListAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule;

.field private final b:Lcom/google/inject/Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/Key",
            "<+",
            "Lcom/facebook/orca/contacts/picker/ContactPickerListFilter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule;Lcom/google/inject/Key;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Key",
            "<+",
            "Lcom/facebook/orca/contacts/picker/ContactPickerListFilter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 310
    iput-object p1, p0, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$ContactPickerViewListAdapterProvider;->a:Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    .line 311
    iput-object p2, p0, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$ContactPickerViewListAdapterProvider;->b:Lcom/google/inject/Key;

    .line 312
    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule;Lcom/google/inject/Key;Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$1;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 304
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$ContactPickerViewListAdapterProvider;-><init>(Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule;Lcom/google/inject/Key;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;
    .locals 5

    .prologue
    .line 316
    new-instance v3, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;

    const-class v0, Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$ContactPickerViewListAdapterProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$ContactPickerViewListAdapterProvider;->b:Lcom/google/inject/Key;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$ContactPickerViewListAdapterProvider;->a(Lcom/google/inject/Key;)Ljavax/inject/Provider;

    move-result-object v4

    const-class v1, Landroid/view/LayoutInflater;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$ContactPickerViewListAdapterProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const-class v2, Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil;

    invoke-virtual {p0, v2}, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$ContactPickerViewListAdapterProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil;

    invoke-direct {v3, v0, v4, v1, v2}, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;-><init>(Landroid/content/Context;Ljavax/inject/Provider;Landroid/view/LayoutInflater;Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil;)V

    return-object v3
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 304
    invoke-virtual {p0}, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$ContactPickerViewListAdapterProvider;->a()Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;

    move-result-object v0

    return-object v0
.end method
