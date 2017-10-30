.class public Lcom/facebook/contacts/contactcard/GroupContactCardFragment;
.super Lcom/facebook/orca/activity/OrcaFragment;
.source "GroupContactCardFragment.java"


# instance fields
.field private Y:Lcom/facebook/orca/threads/MessagesCollection;

.field private a:Lcom/facebook/orca/cache/DataCache;

.field private b:Ljava/lang/String;

.field private c:Lcom/facebook/contacts/contactcard/NameConversationView;

.field private d:Lcom/facebook/contacts/contactcard/GroupMembersSectionView;

.field private e:Lcom/facebook/contacts/contactcard/ConversationSettingsView;

.field private f:Lcom/facebook/contacts/contactcard/MapSectionView;

.field private g:Landroid/widget/Button;

.field private h:Lcom/facebook/contacts/contactcard/GroupContactCardFragment$GroupContactCardListener;

.field private i:Lcom/facebook/orca/threads/ThreadSummary;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/facebook/orca/activity/OrcaFragment;-><init>()V

    .line 43
    return-void
.end method

.method static synthetic a(Lcom/facebook/contacts/contactcard/GroupContactCardFragment;)Lcom/facebook/contacts/contactcard/GroupContactCardFragment$GroupContactCardListener;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/GroupContactCardFragment;->h:Lcom/facebook/contacts/contactcard/GroupContactCardFragment$GroupContactCardListener;

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/contacts/contactcard/GroupContactCardFragment;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/GroupContactCardFragment;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 51
    sget v0, Lcom/facebook/R$layout;->contacts_group_card_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/facebook/contacts/contactcard/GroupContactCardFragment$GroupContactCardListener;)V
    .locals 1
    .parameter

    .prologue
    .line 167
    iput-object p1, p0, Lcom/facebook/contacts/contactcard/GroupContactCardFragment;->h:Lcom/facebook/contacts/contactcard/GroupContactCardFragment$GroupContactCardListener;

    .line 168
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/GroupContactCardFragment;->f:Lcom/facebook/contacts/contactcard/MapSectionView;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/GroupContactCardFragment;->f:Lcom/facebook/contacts/contactcard/MapSectionView;

    invoke-virtual {v0, p1}, Lcom/facebook/contacts/contactcard/MapSectionView;->setContactCardListener(Lcom/facebook/contacts/contactcard/ContactCardFragment$ContactCardListener;)V

    .line 170
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/GroupContactCardFragment;->e:Lcom/facebook/contacts/contactcard/ConversationSettingsView;

    invoke-virtual {v0, p1}, Lcom/facebook/contacts/contactcard/ConversationSettingsView;->setContactCardListener(Lcom/facebook/contacts/contactcard/ContactCardFragment$ContactCardListener;)V

    .line 172
    :cond_0
    return-void
.end method

.method public a(Lcom/facebook/orca/threads/ThreadSummary;Lcom/facebook/orca/threads/MessagesCollection;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/16 v1, 0x8

    .line 130
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/GroupContactCardFragment;->i:Lcom/facebook/orca/threads/ThreadSummary;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/facebook/contacts/contactcard/GroupContactCardFragment;->Y:Lcom/facebook/orca/threads/MessagesCollection;

    if-ne p2, v0, :cond_1

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 133
    :cond_1
    iput-object p1, p0, Lcom/facebook/contacts/contactcard/GroupContactCardFragment;->i:Lcom/facebook/orca/threads/ThreadSummary;

    .line 134
    iput-object p2, p0, Lcom/facebook/contacts/contactcard/GroupContactCardFragment;->Y:Lcom/facebook/orca/threads/MessagesCollection;

    .line 137
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/GroupContactCardFragment;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/orca/threads/MessagingIdUtil;->j(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 138
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/GroupContactCardFragment;->c:Lcom/facebook/contacts/contactcard/NameConversationView;

    invoke-virtual {v0, v1}, Lcom/facebook/contacts/contactcard/NameConversationView;->setVisibility(I)V

    .line 139
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/GroupContactCardFragment;->g:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 143
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->v()Z

    move-result v0

    if-nez v0, :cond_4

    .line 144
    :cond_3
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/GroupContactCardFragment;->c:Lcom/facebook/contacts/contactcard/NameConversationView;

    invoke-virtual {v0, v1}, Lcom/facebook/contacts/contactcard/NameConversationView;->setVisibility(I)V

    .line 145
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/GroupContactCardFragment;->g:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 149
    :cond_4
    if-eqz p1, :cond_5

    .line 150
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/GroupContactCardFragment;->c:Lcom/facebook/contacts/contactcard/NameConversationView;

    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/facebook/contacts/contactcard/NameConversationView;->a(Ljava/lang/String;Lcom/facebook/orca/threads/ThreadSummary;)V

    .line 151
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/GroupContactCardFragment;->d:Lcom/facebook/contacts/contactcard/GroupMembersSectionView;

    invoke-virtual {v0, p1}, Lcom/facebook/contacts/contactcard/GroupMembersSectionView;->setThreadSummary(Lcom/facebook/orca/threads/ThreadSummary;)V

    .line 152
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/GroupContactCardFragment;->e:Lcom/facebook/contacts/contactcard/ConversationSettingsView;

    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/contacts/contactcard/ConversationSettingsView;->setThreadId(Ljava/lang/String;)V

    .line 154
    :cond_5
    if-eqz p2, :cond_0

    .line 155
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/GroupContactCardFragment;->f:Lcom/facebook/contacts/contactcard/MapSectionView;

    invoke-virtual {v0, p2}, Lcom/facebook/contacts/contactcard/MapSectionView;->setGroupMessages(Lcom/facebook/orca/threads/MessagesCollection;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/facebook/contacts/contactcard/GroupContactCardFragment;->b:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/GroupContactCardFragment;->e:Lcom/facebook/contacts/contactcard/ConversationSettingsView;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/GroupContactCardFragment;->e:Lcom/facebook/contacts/contactcard/ConversationSettingsView;

    invoke-virtual {v0}, Lcom/facebook/contacts/contactcard/ConversationSettingsView;->a()V

    .line 164
    :cond_0
    return-void
.end method

.method public d(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 60
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/OrcaFragment;->d(Landroid/os/Bundle;)V

    .line 62
    invoke-virtual {p0}, Lcom/facebook/contacts/contactcard/GroupContactCardFragment;->G()Lcom/facebook/orca/inject/FbInjector;

    move-result-object v0

    .line 63
    const-class v1, Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/cache/DataCache;

    iput-object v0, p0, Lcom/facebook/contacts/contactcard/GroupContactCardFragment;->a:Lcom/facebook/orca/cache/DataCache;

    .line 65
    sget v0, Lcom/facebook/R$id;->name_conversation_section:I

    invoke-virtual {p0, v0}, Lcom/facebook/contacts/contactcard/GroupContactCardFragment;->f(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/contacts/contactcard/NameConversationView;

    iput-object v0, p0, Lcom/facebook/contacts/contactcard/GroupContactCardFragment;->c:Lcom/facebook/contacts/contactcard/NameConversationView;

    .line 66
    sget v0, Lcom/facebook/R$id;->group_members_section:I

    invoke-virtual {p0, v0}, Lcom/facebook/contacts/contactcard/GroupContactCardFragment;->f(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/contacts/contactcard/GroupMembersSectionView;

    iput-object v0, p0, Lcom/facebook/contacts/contactcard/GroupContactCardFragment;->d:Lcom/facebook/contacts/contactcard/GroupMembersSectionView;

    .line 67
    sget v0, Lcom/facebook/R$id;->conversation_settings_section:I

    invoke-virtual {p0, v0}, Lcom/facebook/contacts/contactcard/GroupContactCardFragment;->f(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/contacts/contactcard/ConversationSettingsView;

    iput-object v0, p0, Lcom/facebook/contacts/contactcard/GroupContactCardFragment;->e:Lcom/facebook/contacts/contactcard/ConversationSettingsView;

    .line 68
    sget v0, Lcom/facebook/R$id;->map_section:I

    invoke-virtual {p0, v0}, Lcom/facebook/contacts/contactcard/GroupContactCardFragment;->f(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/contacts/contactcard/MapSectionView;

    iput-object v0, p0, Lcom/facebook/contacts/contactcard/GroupContactCardFragment;->f:Lcom/facebook/contacts/contactcard/MapSectionView;

    .line 69
    sget v0, Lcom/facebook/R$id;->group_contact_card_leave_conversation:I

    invoke-virtual {p0, v0}, Lcom/facebook/contacts/contactcard/GroupContactCardFragment;->f(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/facebook/contacts/contactcard/GroupContactCardFragment;->g:Landroid/widget/Button;

    .line 71
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/GroupContactCardFragment;->h:Lcom/facebook/contacts/contactcard/GroupContactCardFragment$GroupContactCardListener;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/GroupContactCardFragment;->f:Lcom/facebook/contacts/contactcard/MapSectionView;

    iget-object v1, p0, Lcom/facebook/contacts/contactcard/GroupContactCardFragment;->h:Lcom/facebook/contacts/contactcard/GroupContactCardFragment$GroupContactCardListener;

    invoke-virtual {v0, v1}, Lcom/facebook/contacts/contactcard/MapSectionView;->setContactCardListener(Lcom/facebook/contacts/contactcard/ContactCardFragment$ContactCardListener;)V

    .line 73
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/GroupContactCardFragment;->e:Lcom/facebook/contacts/contactcard/ConversationSettingsView;

    iget-object v1, p0, Lcom/facebook/contacts/contactcard/GroupContactCardFragment;->h:Lcom/facebook/contacts/contactcard/GroupContactCardFragment$GroupContactCardListener;

    invoke-virtual {v0, v1}, Lcom/facebook/contacts/contactcard/ConversationSettingsView;->setContactCardListener(Lcom/facebook/contacts/contactcard/ContactCardFragment$ContactCardListener;)V

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/GroupContactCardFragment;->d:Lcom/facebook/contacts/contactcard/GroupMembersSectionView;

    new-instance v1, Lcom/facebook/contacts/contactcard/GroupContactCardFragment$1;

    invoke-direct {v1, p0}, Lcom/facebook/contacts/contactcard/GroupContactCardFragment$1;-><init>(Lcom/facebook/contacts/contactcard/GroupContactCardFragment;)V

    invoke-virtual {v0, v1}, Lcom/facebook/contacts/contactcard/GroupMembersSectionView;->setGroupMembersSectionListener(Lcom/facebook/contacts/contactcard/GroupMembersSectionView$GroupMembersSectionListener;)V

    .line 94
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/GroupContactCardFragment;->g:Landroid/widget/Button;

    new-instance v1, Lcom/facebook/contacts/contactcard/GroupContactCardFragment$2;

    invoke-direct {v1, p0}, Lcom/facebook/contacts/contactcard/GroupContactCardFragment$2;-><init>(Lcom/facebook/contacts/contactcard/GroupContactCardFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/GroupContactCardFragment;->a:Lcom/facebook/orca/cache/DataCache;

    iget-object v1, p0, Lcom/facebook/contacts/contactcard/GroupContactCardFragment;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/cache/DataCache;->b(Ljava/lang/String;)Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v0

    .line 107
    if-eqz v0, :cond_1

    .line 108
    iget-object v1, p0, Lcom/facebook/contacts/contactcard/GroupContactCardFragment;->a:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/orca/cache/DataCache;->c(Ljava/lang/String;)Lcom/facebook/orca/threads/MessagesCollection;

    move-result-object v1

    .line 110
    invoke-virtual {p0, v0, v1}, Lcom/facebook/contacts/contactcard/GroupContactCardFragment;->a(Lcom/facebook/orca/threads/ThreadSummary;Lcom/facebook/orca/threads/MessagesCollection;)V

    .line 112
    :cond_1
    return-void
.end method

.method public v()V
    .locals 3

    .prologue
    .line 116
    invoke-super {p0}, Lcom/facebook/orca/activity/OrcaFragment;->v()V

    .line 117
    invoke-virtual {p0}, Lcom/facebook/contacts/contactcard/GroupContactCardFragment;->b()V

    .line 120
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/GroupContactCardFragment;->a:Lcom/facebook/orca/cache/DataCache;

    iget-object v1, p0, Lcom/facebook/contacts/contactcard/GroupContactCardFragment;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/cache/DataCache;->b(Ljava/lang/String;)Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v0

    .line 121
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/facebook/contacts/contactcard/GroupContactCardFragment;->i:Lcom/facebook/orca/threads/ThreadSummary;

    if-eq v0, v1, :cond_0

    .line 122
    iget-object v1, p0, Lcom/facebook/contacts/contactcard/GroupContactCardFragment;->a:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/orca/cache/DataCache;->c(Ljava/lang/String;)Lcom/facebook/orca/threads/MessagesCollection;

    move-result-object v1

    .line 124
    invoke-virtual {p0, v0, v1}, Lcom/facebook/contacts/contactcard/GroupContactCardFragment;->a(Lcom/facebook/orca/threads/ThreadSummary;Lcom/facebook/orca/threads/MessagesCollection;)V

    .line 126
    :cond_0
    return-void
.end method
