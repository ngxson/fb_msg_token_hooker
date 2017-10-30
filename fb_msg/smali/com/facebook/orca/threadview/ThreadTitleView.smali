.class public Lcom/facebook/orca/threadview/ThreadTitleView;
.super Lcom/facebook/widget/CustomViewGroup;
.source "ThreadTitleView.java"


# instance fields
.field private a:Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/ProgressBar;

.field private d:Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;

.field private e:Lcom/facebook/orca/presence/PresenceState;

.field private f:Lcom/facebook/orca/threads/ThreadParticipantUtils;

.field private g:Lcom/facebook/orca/cache/DataCache;

.field private h:Lcom/facebook/orca/threads/ThreadSummary;

.field private i:Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil;

.field private j:Lcom/facebook/orca/users/CanonicalThreadPresenceHelper$Listener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/facebook/widget/CustomViewGroup;-><init>(Landroid/content/Context;)V

    .line 35
    sget-object v0, Lcom/facebook/orca/presence/PresenceState;->a:Lcom/facebook/orca/presence/PresenceState;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadTitleView;->e:Lcom/facebook/orca/presence/PresenceState;

    .line 45
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadTitleView;->a()V

    .line 46
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadTitleView;->getInjector()Lcom/facebook/orca/inject/FbInjector;

    move-result-object v1

    .line 60
    const-class v0, Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadTitleView;->d:Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;

    .line 61
    const-class v0, Lcom/facebook/orca/threads/ThreadParticipantUtils;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/ThreadParticipantUtils;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadTitleView;->f:Lcom/facebook/orca/threads/ThreadParticipantUtils;

    .line 62
    const-class v0, Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadTitleView;->i:Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil;

    .line 63
    const-class v0, Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/cache/DataCache;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadTitleView;->g:Lcom/facebook/orca/cache/DataCache;

    .line 65
    sget v0, Lcom/facebook/R$layout;->orca_thread_title:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/ThreadTitleView;->setContentView(I)V

    .line 66
    sget v0, Lcom/facebook/R$id;->thread_title_name:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/ThreadTitleView;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadTitleView;->a:Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;

    .line 67
    sget v0, Lcom/facebook/R$id;->thread_title_status:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/ThreadTitleView;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadTitleView;->b:Landroid/widget/TextView;

    .line 68
    sget v0, Lcom/facebook/R$id;->thread_title_progress:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/ThreadTitleView;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadTitleView;->c:Landroid/widget/ProgressBar;

    .line 70
    new-instance v0, Lcom/facebook/orca/threadview/ThreadTitleView$1;

    invoke-direct {v0, p0}, Lcom/facebook/orca/threadview/ThreadTitleView$1;-><init>(Lcom/facebook/orca/threadview/ThreadTitleView;)V

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadTitleView;->j:Lcom/facebook/orca/users/CanonicalThreadPresenceHelper$Listener;

    .line 76
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadTitleView;->d:Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadTitleView;->j:Lcom/facebook/orca/users/CanonicalThreadPresenceHelper$Listener;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;->a(Lcom/facebook/orca/users/CanonicalThreadPresenceHelper$Listener;)V

    .line 77
    return-void
.end method

.method private a(Lcom/facebook/orca/presence/PresenceState;)V
    .locals 1
    .parameter

    .prologue
    .line 125
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadTitleView;->e:Lcom/facebook/orca/presence/PresenceState;

    if-ne v0, p1, :cond_0

    .line 129
    :goto_0
    return-void

    .line 128
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/orca/threadview/ThreadTitleView;->b(Lcom/facebook/orca/presence/PresenceState;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/facebook/orca/threadview/ThreadTitleView;Lcom/facebook/orca/presence/PresenceState;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/facebook/orca/threadview/ThreadTitleView;->a(Lcom/facebook/orca/presence/PresenceState;)V

    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 101
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadTitleView;->d:Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;

    invoke-virtual {v0}, Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    invoke-direct {p0, v1}, Lcom/facebook/orca/threadview/ThreadTitleView;->b(Z)V

    .line 103
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadTitleView;->d:Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;

    invoke-virtual {v0}, Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;->c()Lcom/facebook/orca/presence/PresenceState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/orca/threadview/ThreadTitleView;->b(Lcom/facebook/orca/presence/PresenceState;)V

    .line 104
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadTitleView;->c()V

    .line 111
    :goto_0
    return-void

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadTitleView;->h:Lcom/facebook/orca/threads/ThreadSummary;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadTitleView;->h:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/threads/MessagingIdUtil;->j(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    invoke-direct {p0, v1}, Lcom/facebook/orca/threadview/ThreadTitleView;->b(Z)V

    .line 107
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadTitleView;->c()V

    goto :goto_0

    .line 109
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/orca/threadview/ThreadTitleView;->b(Z)V

    goto :goto_0
.end method

.method private b(Lcom/facebook/orca/presence/PresenceState;)V
    .locals 0
    .parameter

    .prologue
    .line 132
    iput-object p1, p0, Lcom/facebook/orca/threadview/ThreadTitleView;->e:Lcom/facebook/orca/presence/PresenceState;

    .line 133
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadTitleView;->c()V

    .line 134
    return-void
.end method

.method private b(Z)V
    .locals 2
    .parameter

    .prologue
    .line 114
    if-eqz p1, :cond_0

    .line 115
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadTitleView;->a:Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;->setMaxLines(I)V

    .line 116
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadTitleView;->a:Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;

    invoke-virtual {v0}, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 121
    :goto_0
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadTitleView;->b:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 122
    return-void

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadTitleView;->a:Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;->setMaxLines(I)V

    .line 119
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadTitleView;->a:Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;

    invoke-virtual {v0}, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0
.end method

.method private c()V
    .locals 4

    .prologue
    .line 137
    const/4 v1, 0x0

    .line 138
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadTitleView;->getResources()Landroid/content/res/Resources;

    .line 139
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadTitleView;->h:Lcom/facebook/orca/threads/ThreadSummary;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadTitleView;->h:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/threads/MessagingIdUtil;->j(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadTitleView;->f:Lcom/facebook/orca/threads/ThreadParticipantUtils;

    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadTitleView;->h:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v0, v2}, Lcom/facebook/orca/threads/ThreadParticipantUtils;->a(Lcom/facebook/orca/threads/ThreadSummary;)Lcom/facebook/orca/threads/ThreadParticipant;

    move-result-object v2

    .line 142
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadTitleView;->i:Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil;

    invoke-virtual {v2}, Lcom/facebook/orca/threads/ThreadParticipant;->d()Lcom/facebook/orca/users/UserKey;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/orca/users/UserKey;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 144
    invoke-virtual {v2}, Lcom/facebook/orca/threads/ThreadParticipant;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 150
    :goto_0
    if-eqz v0, :cond_1

    .line 151
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadTitleView;->b:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 152
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadTitleView;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    :goto_1
    return-void

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadTitleView;->d:Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;

    invoke-virtual {v0}, Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 154
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadTitleView;->b:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 155
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadTitleView;->b:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 160
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadTitleView;->c:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 161
    return-void

    .line 160
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 81
    invoke-super {p0}, Lcom/facebook/widget/CustomViewGroup;->onAttachedToWindow()V

    .line 82
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadTitleView;->d:Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;->a(Z)V

    .line 83
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadTitleView;->b()V

    .line 84
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 88
    invoke-super {p0}, Lcom/facebook/widget/CustomViewGroup;->onDetachedFromWindow()V

    .line 89
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadTitleView;->d:Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;->a(Z)V

    .line 90
    invoke-direct {p0, v1}, Lcom/facebook/orca/threadview/ThreadTitleView;->b(Z)V

    .line 91
    return-void
.end method

.method public setThreadSummary(Lcom/facebook/orca/threads/ThreadSummary;)V
    .locals 1
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/facebook/orca/threadview/ThreadTitleView;->h:Lcom/facebook/orca/threads/ThreadSummary;

    .line 95
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadTitleView;->a:Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;->setData(Ljava/lang/Object;)V

    .line 96
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadTitleView;->d:Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;->a(Lcom/facebook/orca/threads/ThreadSummary;)V

    .line 97
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadTitleView;->b()V

    .line 98
    return-void
.end method
