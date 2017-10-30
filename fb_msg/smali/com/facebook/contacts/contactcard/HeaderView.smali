.class public Lcom/facebook/contacts/contactcard/HeaderView;
.super Lcom/facebook/widget/CustomViewGroup;
.source "HeaderView.java"


# instance fields
.field private a:Lcom/facebook/orca/photos/tiles/UserTileView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;

.field private e:Lcom/facebook/contacts/models/Contact;

.field private f:Lcom/facebook/orca/threads/ThreadSummary;

.field private g:Lcom/facebook/orca/presence/PresenceState;

.field private h:Lcom/facebook/orca/users/CanonicalThreadPresenceHelper$Listener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/facebook/widget/CustomViewGroup;-><init>(Landroid/content/Context;)V

    .line 31
    sget-object v0, Lcom/facebook/orca/presence/PresenceState;->a:Lcom/facebook/orca/presence/PresenceState;

    iput-object v0, p0, Lcom/facebook/contacts/contactcard/HeaderView;->g:Lcom/facebook/orca/presence/PresenceState;

    .line 37
    invoke-direct {p0}, Lcom/facebook/contacts/contactcard/HeaderView;->a()V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/facebook/widget/CustomViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    sget-object v0, Lcom/facebook/orca/presence/PresenceState;->a:Lcom/facebook/orca/presence/PresenceState;

    iput-object v0, p0, Lcom/facebook/contacts/contactcard/HeaderView;->g:Lcom/facebook/orca/presence/PresenceState;

    .line 42
    invoke-direct {p0}, Lcom/facebook/contacts/contactcard/HeaderView;->a()V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/widget/CustomViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    sget-object v0, Lcom/facebook/orca/presence/PresenceState;->a:Lcom/facebook/orca/presence/PresenceState;

    iput-object v0, p0, Lcom/facebook/contacts/contactcard/HeaderView;->g:Lcom/facebook/orca/presence/PresenceState;

    .line 47
    invoke-direct {p0}, Lcom/facebook/contacts/contactcard/HeaderView;->a()V

    .line 48
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/facebook/contacts/contactcard/HeaderView;->getInjector()Lcom/facebook/orca/inject/FbInjector;

    move-result-object v0

    .line 52
    const-class v1, Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;

    iput-object v0, p0, Lcom/facebook/contacts/contactcard/HeaderView;->d:Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;

    .line 54
    sget v0, Lcom/facebook/R$layout;->contacts_header_view:I

    invoke-virtual {p0, v0}, Lcom/facebook/contacts/contactcard/HeaderView;->setContentView(I)V

    .line 55
    sget v0, Lcom/facebook/R$id;->contact_user_tile_image:I

    invoke-virtual {p0, v0}, Lcom/facebook/contacts/contactcard/HeaderView;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/photos/tiles/UserTileView;

    iput-object v0, p0, Lcom/facebook/contacts/contactcard/HeaderView;->a:Lcom/facebook/orca/photos/tiles/UserTileView;

    .line 56
    sget v0, Lcom/facebook/R$id;->contact_name:I

    invoke-virtual {p0, v0}, Lcom/facebook/contacts/contactcard/HeaderView;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/contacts/contactcard/HeaderView;->b:Landroid/widget/TextView;

    .line 57
    sget v0, Lcom/facebook/R$id;->last_active:I

    invoke-virtual {p0, v0}, Lcom/facebook/contacts/contactcard/HeaderView;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/contacts/contactcard/HeaderView;->c:Landroid/widget/TextView;

    .line 59
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/HeaderView;->a:Lcom/facebook/orca/photos/tiles/UserTileView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/photos/tiles/UserTileView;->setShowBuiltInContactPic(Z)V

    .line 61
    new-instance v0, Lcom/facebook/contacts/contactcard/HeaderView$1;

    invoke-direct {v0, p0}, Lcom/facebook/contacts/contactcard/HeaderView$1;-><init>(Lcom/facebook/contacts/contactcard/HeaderView;)V

    iput-object v0, p0, Lcom/facebook/contacts/contactcard/HeaderView;->h:Lcom/facebook/orca/users/CanonicalThreadPresenceHelper$Listener;

    .line 67
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/HeaderView;->d:Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;

    iget-object v1, p0, Lcom/facebook/contacts/contactcard/HeaderView;->h:Lcom/facebook/orca/users/CanonicalThreadPresenceHelper$Listener;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;->a(Lcom/facebook/orca/users/CanonicalThreadPresenceHelper$Listener;)V

    .line 68
    return-void
.end method

.method static synthetic a(Lcom/facebook/contacts/contactcard/HeaderView;Lcom/facebook/orca/presence/PresenceState;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/facebook/contacts/contactcard/HeaderView;->a(Lcom/facebook/orca/presence/PresenceState;)V

    return-void
.end method

.method private a(Lcom/facebook/orca/presence/PresenceState;)V
    .locals 1
    .parameter

    .prologue
    .line 100
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/HeaderView;->g:Lcom/facebook/orca/presence/PresenceState;

    if-ne v0, p1, :cond_0

    .line 104
    :goto_0
    return-void

    .line 103
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/contacts/contactcard/HeaderView;->b(Lcom/facebook/orca/presence/PresenceState;)V

    goto :goto_0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/HeaderView;->f:Lcom/facebook/orca/threads/ThreadSummary;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/HeaderView;->d:Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;

    invoke-virtual {v0}, Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;->d()Ljava/lang/String;

    move-result-object v0

    .line 117
    if-eqz v0, :cond_0

    .line 118
    iget-object v1, p0, Lcom/facebook/contacts/contactcard/HeaderView;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    :cond_0
    return-void
.end method

.method private b(Lcom/facebook/orca/presence/PresenceState;)V
    .locals 0
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/facebook/contacts/contactcard/HeaderView;->g:Lcom/facebook/orca/presence/PresenceState;

    .line 108
    invoke-direct {p0}, Lcom/facebook/contacts/contactcard/HeaderView;->b()V

    .line 109
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 72
    invoke-super {p0}, Lcom/facebook/widget/CustomViewGroup;->onAttachedToWindow()V

    .line 73
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/HeaderView;->d:Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;->a(Z)V

    .line 74
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/HeaderView;->d:Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;

    invoke-virtual {v0}, Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;->c()Lcom/facebook/orca/presence/PresenceState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/contacts/contactcard/HeaderView;->b(Lcom/facebook/orca/presence/PresenceState;)V

    .line 75
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 79
    invoke-super {p0}, Lcom/facebook/widget/CustomViewGroup;->onDetachedFromWindow()V

    .line 80
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/HeaderView;->d:Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;->a(Z)V

    .line 81
    return-void
.end method

.method public setContact(Lcom/facebook/contacts/models/Contact;)V
    .locals 2
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/facebook/contacts/contactcard/HeaderView;->e:Lcom/facebook/contacts/models/Contact;

    .line 85
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/HeaderView;->a:Lcom/facebook/orca/photos/tiles/UserTileView;

    invoke-static {p1}, Lcom/facebook/contacts/models/ContactUserKey;->a(Lcom/facebook/contacts/models/Contact;)Lcom/facebook/orca/users/UserKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/photos/tiles/UserTileView;->setUserKey(Lcom/facebook/orca/users/UserKey;)V

    .line 86
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/HeaderView;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/facebook/contacts/models/Contact;->c()Lcom/facebook/orca/users/Name;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/orca/users/Name;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/HeaderView;->c:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    invoke-direct {p0}, Lcom/facebook/contacts/contactcard/HeaderView;->b()V

    .line 91
    return-void
.end method

.method public setThreadSummary(Lcom/facebook/orca/threads/ThreadSummary;)V
    .locals 1
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/facebook/contacts/contactcard/HeaderView;->f:Lcom/facebook/orca/threads/ThreadSummary;

    .line 95
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/HeaderView;->d:Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;->a(Lcom/facebook/orca/threads/ThreadSummary;)V

    .line 96
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/HeaderView;->d:Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;

    invoke-virtual {v0}, Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;->c()Lcom/facebook/orca/presence/PresenceState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/contacts/contactcard/HeaderView;->b(Lcom/facebook/orca/presence/PresenceState;)V

    .line 97
    return-void
.end method
