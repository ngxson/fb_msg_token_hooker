.class Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$ContactPickerListFilterProviderForFacebookList;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessagesContactPickerModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/contacts/picker/ContactPickerListFilter;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Lcom/facebook/orca/prefs/PrefKey;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 259
    const-string v0, "messenger_fof_android"

    invoke-static {v0}, Lcom/facebook/orca/prefs/ConfigPrefKeys;->a(Ljava/lang/String;)Lcom/facebook/orca/prefs/PrefKey;

    move-result-object v0

    sput-object v0, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$ContactPickerListFilterProviderForFacebookList;->a:Lcom/facebook/orca/prefs/PrefKey;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 256
    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$1;)V
    .locals 0
    .parameter

    .prologue
    .line 256
    invoke-direct {p0}, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$ContactPickerListFilterProviderForFacebookList;-><init>()V

    return-void
.end method

.method private d()Lcom/google/common/collect/ImmutableList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/contacts/picker/ContactPickerMergedFilter$ContactPickerSubFilterConfig;",
            ">;"
        }
    .end annotation

    .prologue
    .line 276
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->f()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v2

    .line 279
    new-instance v1, Lcom/facebook/orca/contacts/picker/ContactPickerMergedFilter$ContactPickerSubFilterConfig;

    const-class v0, Lcom/facebook/orca/contacts/picker/ContactPickerFriendFilter;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$ContactPickerListFilterProviderForFacebookList;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/contacts/picker/ContactPickerListFilter;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v1, v0, v3, v4}, Lcom/facebook/orca/contacts/picker/ContactPickerMergedFilter$ContactPickerSubFilterConfig;-><init>(Lcom/facebook/orca/contacts/picker/ContactPickerListFilter;Ljava/lang/String;Z)V

    invoke-virtual {v2, v1}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 284
    new-instance v3, Lcom/facebook/orca/contacts/picker/ContactPickerMergedFilter$ContactPickerSubFilterConfig;

    const-class v0, Lcom/facebook/orca/contacts/picker/ContactPickerFriendsOfFriendsFilter;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$ContactPickerListFilterProviderForFacebookList;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/contacts/picker/ContactPickerListFilter;

    const-class v1, Landroid/content/res/Resources;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$ContactPickerListFilterProviderForFacebookList;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/Resources;

    sget v4, Lcom/facebook/R$string;->friends_of_friends_section_header:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    invoke-direct {v3, v0, v1, v4}, Lcom/facebook/orca/contacts/picker/ContactPickerMergedFilter$ContactPickerSubFilterConfig;-><init>(Lcom/facebook/orca/contacts/picker/ContactPickerListFilter;Ljava/lang/String;Z)V

    invoke-virtual {v2, v3}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 289
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList$Builder;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Lcom/facebook/orca/contacts/picker/ContactPickerListFilter;
    .locals 3

    .prologue
    .line 265
    const-class v0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$ContactPickerListFilterProviderForFacebookList;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    .line 266
    sget-object v1, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$ContactPickerListFilterProviderForFacebookList;->a:Lcom/facebook/orca/prefs/PrefKey;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Lcom/facebook/orca/prefs/PrefKey;Z)Z

    move-result v0

    .line 268
    if-eqz v0, :cond_0

    .line 269
    new-instance v0, Lcom/facebook/orca/contacts/picker/ContactPickerMergedFilter;

    invoke-direct {p0}, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$ContactPickerListFilterProviderForFacebookList;->d()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/orca/contacts/picker/ContactPickerMergedFilter;-><init>(Lcom/google/common/collect/ImmutableList;)V

    .line 271
    :goto_0
    return-object v0

    :cond_0
    const-class v0, Lcom/facebook/orca/contacts/picker/ContactPickerFriendFilter;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$ContactPickerListFilterProviderForFacebookList;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/contacts/picker/ContactPickerListFilter;

    goto :goto_0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 256
    invoke-virtual {p0}, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule$ContactPickerListFilterProviderForFacebookList;->a()Lcom/facebook/orca/contacts/picker/ContactPickerListFilter;

    move-result-object v0

    return-object v0
.end method
