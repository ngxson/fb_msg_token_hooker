.class public Lcom/facebook/orca/threadview/AddMembersActivity;
.super Lcom/facebook/orca/activity/FbFragmentActivity;
.source "AddMembersActivity.java"

# interfaces
.implements Lcom/facebook/orca/analytics/AnalyticsActivity;


# static fields
.field private static final n:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private o:Lcom/facebook/orca/cache/DataCache;

.field private p:Lcom/facebook/orca/presence/PresenceManager;

.field private q:Landroid/support/v4/app/FragmentManager;

.field private r:Landroid/view/inputmethod/InputMethodManager;

.field private s:Lcom/facebook/orca/threadview/ThreadViewTitleHelper;

.field private t:Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;

.field private u:Landroid/widget/Button;

.field private v:Lcom/facebook/orca/contacts/picker/ContactPickerFragment;

.field private w:Lcom/facebook/orca/threads/ThreadSummary;

.field private x:Lcom/facebook/orca/ops/OrcaServiceFragment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-class v0, Lcom/facebook/orca/threadview/AddMembersActivity;

    sput-object v0, Lcom/facebook/orca/threadview/AddMembersActivity;->n:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/facebook/orca/activity/FbFragmentActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/threadview/AddMembersActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/facebook/orca/threadview/AddMembersActivity;->i()V

    return-void
.end method

.method static synthetic b(Lcom/facebook/orca/threadview/AddMembersActivity;)Lcom/facebook/orca/presence/PresenceManager;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/facebook/orca/threadview/AddMembersActivity;->p:Lcom/facebook/orca/presence/PresenceManager;

    return-object v0
.end method

.method private i()V
    .locals 4

    .prologue
    .line 167
    iget-object v0, p0, Lcom/facebook/orca/threadview/AddMembersActivity;->x:Lcom/facebook/orca/ops/OrcaServiceFragment;

    invoke-virtual {v0}, Lcom/facebook/orca/ops/OrcaServiceFragment;->b()Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/ops/OrcaServiceOperation$State;->INIT:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    if-eq v0, v1, :cond_0

    .line 187
    :goto_0
    return-void

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/threadview/AddMembersActivity;->v:Lcom/facebook/orca/contacts/picker/ContactPickerFragment;

    invoke-virtual {v0}, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 174
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 175
    invoke-static {p0}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a(Landroid/content/Context;)Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;

    move-result-object v0

    sget v1, Lcom/facebook/R$string;->add_members_missing_people:I

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a(I)Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a()Landroid/app/AlertDialog;

    goto :goto_0

    .line 179
    :cond_1
    iget-object v1, p0, Lcom/facebook/orca/threadview/AddMembersActivity;->r:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/facebook/orca/threadview/AddMembersActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 181
    new-instance v1, Lcom/facebook/orca/server/AddMembersParams;

    iget-object v2, p0, Lcom/facebook/orca/threadview/AddMembersActivity;->w:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v2}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/facebook/orca/server/AddMembersParams;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 182
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 183
    const-string v2, "addMembersParams"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 185
    iget-object v1, p0, Lcom/facebook/orca/threadview/AddMembersActivity;->x:Lcom/facebook/orca/ops/OrcaServiceFragment;

    const-string v2, "add_members"

    invoke-virtual {v1, v2, v0}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 6
    .parameter

    .prologue
    .line 77
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/FbFragmentActivity;->a(Landroid/os/Bundle;)V

    .line 79
    sget v0, Lcom/facebook/R$layout;->orca_add_members:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/AddMembersActivity;->setContentView(I)V

    .line 80
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/AddMembersActivity;->l()Lcom/facebook/orca/inject/FbInjector;

    move-result-object v1

    .line 81
    const-class v0, Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/cache/DataCache;

    iput-object v0, p0, Lcom/facebook/orca/threadview/AddMembersActivity;->o:Lcom/facebook/orca/cache/DataCache;

    .line 82
    const-class v0, Lcom/facebook/orca/presence/PresenceManager;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/presence/PresenceManager;

    iput-object v0, p0, Lcom/facebook/orca/threadview/AddMembersActivity;->p:Lcom/facebook/orca/presence/PresenceManager;

    .line 83
    const-class v0, Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/FragmentManager;

    iput-object v0, p0, Lcom/facebook/orca/threadview/AddMembersActivity;->q:Landroid/support/v4/app/FragmentManager;

    .line 84
    const-class v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/facebook/orca/threadview/AddMembersActivity;->r:Landroid/view/inputmethod/InputMethodManager;

    .line 85
    const-class v0, Lcom/facebook/orca/threadview/ThreadViewTitleHelper;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threadview/ThreadViewTitleHelper;

    iput-object v0, p0, Lcom/facebook/orca/threadview/AddMembersActivity;->s:Lcom/facebook/orca/threadview/ThreadViewTitleHelper;

    .line 86
    invoke-static {p0}, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->a(Landroid/app/Activity;)Z

    .line 87
    sget v0, Lcom/facebook/R$id;->titlebar:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/AddMembersActivity;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;

    iput-object v0, p0, Lcom/facebook/orca/threadview/AddMembersActivity;->t:Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;

    .line 88
    sget v0, Lcom/facebook/R$id;->add_members_button:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/AddMembersActivity;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/facebook/orca/threadview/AddMembersActivity;->u:Landroid/widget/Button;

    .line 90
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/AddMembersActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 91
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    if-le v2, v0, :cond_0

    .line 93
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/AddMembersActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 94
    const-string v2, "thread_id"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 95
    iget-object v2, p0, Lcom/facebook/orca/threadview/AddMembersActivity;->o:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v2, v0}, Lcom/facebook/orca/cache/DataCache;->b(Ljava/lang/String;)Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadview/AddMembersActivity;->w:Lcom/facebook/orca/threads/ThreadSummary;

    .line 96
    iget-object v0, p0, Lcom/facebook/orca/threadview/AddMembersActivity;->w:Lcom/facebook/orca/threads/ThreadSummary;

    if-nez v0, :cond_1

    .line 97
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/AddMembersActivity;->finish()V

    .line 164
    :goto_0
    return-void

    .line 101
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/threadview/AddMembersActivity;->s:Lcom/facebook/orca/threadview/ThreadViewTitleHelper;

    iget-object v2, p0, Lcom/facebook/orca/threadview/AddMembersActivity;->t:Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;

    invoke-virtual {v0, v2}, Lcom/facebook/orca/threadview/ThreadViewTitleHelper;->a(Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;)V

    .line 102
    iget-object v0, p0, Lcom/facebook/orca/threadview/AddMembersActivity;->s:Lcom/facebook/orca/threadview/ThreadViewTitleHelper;

    iget-object v2, p0, Lcom/facebook/orca/threadview/AddMembersActivity;->w:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v0, v2}, Lcom/facebook/orca/threadview/ThreadViewTitleHelper;->a(Lcom/facebook/orca/threads/ThreadSummary;)V

    .line 104
    iget-object v0, p0, Lcom/facebook/orca/threadview/AddMembersActivity;->q:Landroid/support/v4/app/FragmentManager;

    sget v2, Lcom/facebook/R$id;->add_members_contact_picker:I

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentManager;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;

    iput-object v0, p0, Lcom/facebook/orca/threadview/AddMembersActivity;->v:Lcom/facebook/orca/contacts/picker/ContactPickerFragment;

    .line 107
    iget-object v0, p0, Lcom/facebook/orca/threadview/AddMembersActivity;->u:Landroid/widget/Button;

    new-instance v2, Lcom/facebook/orca/threadview/AddMembersActivity$1;

    invoke-direct {v2, p0}, Lcom/facebook/orca/threadview/AddMembersActivity$1;-><init>(Lcom/facebook/orca/threadview/AddMembersActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    const-class v0, Lcom/facebook/orca/contacts/picker/IContactPickerViewListAdapter;

    const-class v2, Lcom/facebook/orca/annotations/ForFacebookList;

    invoke-virtual {v1, v0, v2}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/contacts/picker/IContactPickerViewListAdapter;

    .line 116
    new-instance v1, Lcom/facebook/orca/threadview/AddMembersActivity$2;

    invoke-direct {v1, p0}, Lcom/facebook/orca/threadview/AddMembersActivity$2;-><init>(Lcom/facebook/orca/threadview/AddMembersActivity;)V

    .line 132
    invoke-interface {v0}, Lcom/facebook/orca/contacts/picker/IContactPickerViewListAdapter;->d()Lcom/facebook/orca/contacts/picker/ContactPickerListFilter;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/facebook/orca/contacts/picker/ContactPickerListFilter;->a(Lcom/facebook/orca/contacts/picker/ContactPickerListFilter$RowCreator;)V

    .line 133
    iget-object v1, p0, Lcom/facebook/orca/threadview/AddMembersActivity;->v:Lcom/facebook/orca/contacts/picker/ContactPickerFragment;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->a(Lcom/facebook/orca/contacts/picker/IContactPickerViewListAdapter;)V

    .line 134
    iget-object v0, p0, Lcom/facebook/orca/threadview/AddMembersActivity;->v:Lcom/facebook/orca/contacts/picker/ContactPickerFragment;

    sget-object v1, Lcom/facebook/orca/contacts/picker/ContactPickerFragment$Mode;->ADD_MEMBERS:Lcom/facebook/orca/contacts/picker/ContactPickerFragment$Mode;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->a(Lcom/facebook/orca/contacts/picker/ContactPickerFragment$Mode;)V

    .line 135
    iget-object v0, p0, Lcom/facebook/orca/threadview/AddMembersActivity;->v:Lcom/facebook/orca/contacts/picker/ContactPickerFragment;

    sget v1, Lcom/facebook/R$string;->name_search_hint:I

    invoke-virtual {p0, v1}, Lcom/facebook/orca/threadview/AddMembersActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->a(Ljava/lang/String;)V

    .line 136
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v1

    .line 137
    iget-object v0, p0, Lcom/facebook/orca/threadview/AddMembersActivity;->w:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadSummary;->i()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/ThreadParticipant;

    .line 138
    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadParticipant;->b()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 139
    iget-object v3, p0, Lcom/facebook/orca/threadview/AddMembersActivity;->o:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadParticipant;->d()Lcom/facebook/orca/users/UserKey;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/orca/cache/DataCache;->a(Lcom/facebook/orca/users/UserKey;)Lcom/facebook/orca/users/User;

    move-result-object v0

    .line 140
    if-eqz v0, :cond_2

    .line 141
    new-instance v3, Lcom/facebook/orca/users/PickedUser;

    new-instance v4, Lcom/facebook/orca/users/UserWithIdentifier;

    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->g()Lcom/facebook/orca/users/UserFbidIdentifier;

    move-result-object v5

    invoke-direct {v4, v0, v5}, Lcom/facebook/orca/users/UserWithIdentifier;-><init>(Lcom/facebook/orca/users/User;Lcom/facebook/orca/users/UserIdentifier;)V

    const/4 v0, 0x0

    invoke-direct {v3, v4, v0}, Lcom/facebook/orca/users/PickedUser;-><init>(Lcom/facebook/orca/users/UserWithIdentifier;Lcom/facebook/orca/users/UserIdentifier;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 146
    :cond_3
    iget-object v0, p0, Lcom/facebook/orca/threadview/AddMembersActivity;->v:Lcom/facebook/orca/contacts/picker/ContactPickerFragment;

    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->a(Lcom/google/common/collect/ImmutableList;)V

    .line 148
    const-string v0, "addMembersOperation"

    invoke-static {p0, v0}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)Lcom/facebook/orca/ops/OrcaServiceFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadview/AddMembersActivity;->x:Lcom/facebook/orca/ops/OrcaServiceFragment;

    .line 149
    iget-object v0, p0, Lcom/facebook/orca/threadview/AddMembersActivity;->x:Lcom/facebook/orca/ops/OrcaServiceFragment;

    new-instance v1, Lcom/facebook/orca/threadview/AddMembersActivity$3;

    invoke-direct {v1, p0}, Lcom/facebook/orca/threadview/AddMembersActivity$3;-><init>(Lcom/facebook/orca/threadview/AddMembersActivity;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;)V

    .line 162
    iget-object v0, p0, Lcom/facebook/orca/threadview/AddMembersActivity;->x:Lcom/facebook/orca/ops/OrcaServiceFragment;

    new-instance v1, Lcom/facebook/orca/ops/DialogBasedProgressIndicator;

    sget v2, Lcom/facebook/R$string;->add_members_progress:I

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/ops/DialogBasedProgressIndicator;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Lcom/facebook/orca/ops/OperationProgressIndicator;)V

    goto/16 :goto_0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    const-string v0, "add_members"

    return-object v0
.end method
