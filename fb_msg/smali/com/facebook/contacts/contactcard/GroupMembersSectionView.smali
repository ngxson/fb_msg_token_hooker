.class public Lcom/facebook/contacts/contactcard/GroupMembersSectionView;
.super Lcom/facebook/contacts/contactcard/SectionView;
.source "GroupMembersSectionView.java"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/threads/ThreadParticipant;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z

.field private c:Lcom/facebook/contacts/contactcard/GroupMembersSectionView$GroupMembersSectionListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/contacts/contactcard/GroupMembersSectionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/contacts/contactcard/GroupMembersSectionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/contacts/contactcard/SectionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/contacts/contactcard/GroupMembersSectionView;->a:Ljava/util/List;

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/contacts/contactcard/GroupMembersSectionView;->b:Z

    .line 49
    return-void
.end method

.method private a()V
    .locals 4

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/facebook/contacts/contactcard/GroupMembersSectionView;->b()V

    .line 64
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/GroupMembersSectionView;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/ThreadParticipant;

    .line 65
    new-instance v2, Lcom/facebook/contacts/contactcard/ThreadMemberRow;

    invoke-virtual {p0}, Lcom/facebook/contacts/contactcard/GroupMembersSectionView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/facebook/contacts/contactcard/ThreadMemberRow;-><init>(Landroid/content/Context;)V

    .line 66
    invoke-virtual {v2, v0}, Lcom/facebook/contacts/contactcard/ThreadMemberRow;->setParticipant(Lcom/facebook/orca/threads/ThreadParticipant;)V

    .line 67
    new-instance v0, Lcom/facebook/contacts/contactcard/GroupMembersSectionView$1;

    invoke-direct {v0, p0}, Lcom/facebook/contacts/contactcard/GroupMembersSectionView$1;-><init>(Lcom/facebook/contacts/contactcard/GroupMembersSectionView;)V

    invoke-virtual {v2, v0}, Lcom/facebook/contacts/contactcard/ThreadMemberRow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    invoke-virtual {p0, v2}, Lcom/facebook/contacts/contactcard/GroupMembersSectionView;->a(Landroid/view/View;)V

    goto :goto_0

    .line 78
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/contacts/contactcard/GroupMembersSectionView;->b:Z

    if-eqz v0, :cond_1

    .line 79
    new-instance v0, Lcom/facebook/contacts/contactcard/entry/TextRowView;

    invoke-virtual {p0}, Lcom/facebook/contacts/contactcard/GroupMembersSectionView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/contacts/contactcard/entry/TextRowView;-><init>(Landroid/content/Context;)V

    .line 80
    invoke-virtual {p0}, Lcom/facebook/contacts/contactcard/GroupMembersSectionView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/R$string;->contact_card_group_add_person:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/contacts/contactcard/entry/TextRowView;->setText(Ljava/lang/String;)V

    .line 81
    new-instance v1, Lcom/facebook/contacts/contactcard/GroupMembersSectionView$2;

    invoke-direct {v1, p0}, Lcom/facebook/contacts/contactcard/GroupMembersSectionView$2;-><init>(Lcom/facebook/contacts/contactcard/GroupMembersSectionView;)V

    invoke-virtual {v0, v1}, Lcom/facebook/contacts/contactcard/entry/TextRowView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    invoke-virtual {p0, v0}, Lcom/facebook/contacts/contactcard/GroupMembersSectionView;->a(Landroid/view/View;)V

    .line 89
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/facebook/contacts/contactcard/GroupMembersSectionView;)V
    .locals 0
    .parameter

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/facebook/contacts/contactcard/GroupMembersSectionView;->c()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/contacts/contactcard/GroupMembersSectionView;Lcom/facebook/orca/threads/ThreadParticipant;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/facebook/contacts/contactcard/GroupMembersSectionView;->a(Lcom/facebook/orca/threads/ThreadParticipant;)V

    return-void
.end method

.method private a(Lcom/facebook/orca/threads/ThreadParticipant;)V
    .locals 2
    .parameter

    .prologue
    .line 92
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/GroupMembersSectionView;->c:Lcom/facebook/contacts/contactcard/GroupMembersSectionView$GroupMembersSectionListener;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/GroupMembersSectionView;->c:Lcom/facebook/contacts/contactcard/GroupMembersSectionView$GroupMembersSectionListener;

    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadParticipant;->d()Lcom/facebook/orca/users/UserKey;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/contacts/contactcard/GroupMembersSectionView$GroupMembersSectionListener;->a(Lcom/facebook/orca/users/UserKey;)V

    .line 95
    :cond_0
    return-void
.end method

.method private c()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/GroupMembersSectionView;->c:Lcom/facebook/contacts/contactcard/GroupMembersSectionView$GroupMembersSectionListener;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/GroupMembersSectionView;->c:Lcom/facebook/contacts/contactcard/GroupMembersSectionView$GroupMembersSectionListener;

    invoke-interface {v0}, Lcom/facebook/contacts/contactcard/GroupMembersSectionView$GroupMembersSectionListener;->a()V

    .line 101
    :cond_0
    return-void
.end method


# virtual methods
.method public setGroupMembersSectionListener(Lcom/facebook/contacts/contactcard/GroupMembersSectionView$GroupMembersSectionListener;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/facebook/contacts/contactcard/GroupMembersSectionView;->c:Lcom/facebook/contacts/contactcard/GroupMembersSectionView$GroupMembersSectionListener;

    .line 60
    return-void
.end method

.method public setThreadSummary(Lcom/facebook/orca/threads/ThreadSummary;)V
    .locals 1
    .parameter

    .prologue
    .line 52
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/threads/MessagingIdUtil;->j(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/facebook/contacts/contactcard/GroupMembersSectionView;->b:Z

    .line 54
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->i()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/contacts/contactcard/GroupMembersSectionView;->a:Ljava/util/List;

    .line 55
    invoke-direct {p0}, Lcom/facebook/contacts/contactcard/GroupMembersSectionView;->a()V

    .line 56
    return-void

    .line 52
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
