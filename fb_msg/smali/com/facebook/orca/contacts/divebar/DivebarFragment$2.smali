.class Lcom/facebook/orca/contacts/divebar/DivebarFragment$2;
.super Ljava/lang/Object;
.source "DivebarFragment.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Lcom/facebook/orca/contacts/picker/FriendListsLoader$Result;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/contacts/divebar/DivebarFragment;


# direct methods
.method constructor <init>(Lcom/facebook/orca/contacts/divebar/DivebarFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 185
    iput-object p1, p0, Lcom/facebook/orca/contacts/divebar/DivebarFragment$2;->a:Lcom/facebook/orca/contacts/divebar/DivebarFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader",
            "<",
            "Lcom/facebook/orca/contacts/picker/FriendListsLoader$Result;",
            ">;"
        }
    .end annotation

    .prologue
    .line 189
    iget-object v0, p0, Lcom/facebook/orca/contacts/divebar/DivebarFragment$2;->a:Lcom/facebook/orca/contacts/divebar/DivebarFragment;

    invoke-virtual {v0}, Lcom/facebook/orca/contacts/divebar/DivebarFragment;->l()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/inject/FbInjector;->a(Landroid/content/Context;)Lcom/facebook/orca/inject/FbInjector;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/contacts/picker/FriendListsLoader;

    const-class v2, Lcom/facebook/orca/annotations/ForDivebarList;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/contacts/picker/FriendListsLoader;

    .line 191
    iget-object v1, p0, Lcom/facebook/orca/contacts/divebar/DivebarFragment$2;->a:Lcom/facebook/orca/contacts/divebar/DivebarFragment;

    invoke-virtual {v1}, Lcom/facebook/orca/contacts/divebar/DivebarFragment;->l()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    instance-of v1, v1, Lcom/facebook/orca/activity/FbFragmentActivity;

    if-eqz v1, :cond_0

    .line 192
    iget-object v1, p0, Lcom/facebook/orca/contacts/divebar/DivebarFragment$2;->a:Lcom/facebook/orca/contacts/divebar/DivebarFragment;

    invoke-virtual {v1}, Lcom/facebook/orca/contacts/divebar/DivebarFragment;->l()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/activity/FbFragmentActivity;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/contacts/picker/FriendListsLoader;->a(Lcom/facebook/orca/activity/FbFragmentActivity;)V

    .line 194
    :cond_0
    return-object v0
.end method

.method public a(Landroid/support/v4/content/Loader;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Lcom/facebook/orca/contacts/picker/FriendListsLoader$Result;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 207
    return-void
.end method

.method public a(Landroid/support/v4/content/Loader;Lcom/facebook/orca/contacts/picker/FriendListsLoader$Result;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Lcom/facebook/orca/contacts/picker/FriendListsLoader$Result;",
            ">;",
            "Lcom/facebook/orca/contacts/picker/FriendListsLoader$Result;",
            ")V"
        }
    .end annotation

    .prologue
    .line 201
    iget-object v0, p0, Lcom/facebook/orca/contacts/divebar/DivebarFragment$2;->a:Lcom/facebook/orca/contacts/divebar/DivebarFragment;

    invoke-static {v0, p2}, Lcom/facebook/orca/contacts/divebar/DivebarFragment;->a(Lcom/facebook/orca/contacts/divebar/DivebarFragment;Lcom/facebook/orca/contacts/picker/FriendListsLoader$Result;)V

    .line 202
    return-void
.end method

.method public bridge synthetic a(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 185
    check-cast p2, Lcom/facebook/orca/contacts/picker/FriendListsLoader$Result;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/orca/contacts/divebar/DivebarFragment$2;->a(Landroid/support/v4/content/Loader;Lcom/facebook/orca/contacts/picker/FriendListsLoader$Result;)V

    return-void
.end method
