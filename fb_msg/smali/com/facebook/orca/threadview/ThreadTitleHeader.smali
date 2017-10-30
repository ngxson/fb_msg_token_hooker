.class public Lcom/facebook/orca/threadview/ThreadTitleHeader;
.super Lcom/facebook/widget/CustomFrameLayout;
.source "ThreadTitleHeader.java"


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;

.field private c:Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;

.field private d:Lcom/facebook/orca/presence/PresenceState;

.field private e:Lcom/facebook/orca/users/CanonicalThreadPresenceHelper$Listener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/facebook/widget/CustomFrameLayout;-><init>(Landroid/content/Context;)V

    .line 28
    sget-object v0, Lcom/facebook/orca/presence/PresenceState;->a:Lcom/facebook/orca/presence/PresenceState;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadTitleHeader;->d:Lcom/facebook/orca/presence/PresenceState;

    .line 34
    invoke-direct {p0, p1}, Lcom/facebook/orca/threadview/ThreadTitleHeader;->a(Landroid/content/Context;)V

    .line 35
    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 96
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadTitleHeader;->d:Lcom/facebook/orca/presence/PresenceState;

    invoke-virtual {v0}, Lcom/facebook/orca/presence/PresenceState;->a()Lcom/facebook/orca/presence/Availability;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/presence/Availability;->AVAILABLE:Lcom/facebook/orca/presence/Availability;

    if-ne v0, v1, :cond_0

    .line 97
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadTitleHeader;->a:Landroid/widget/ImageView;

    sget v1, Lcom/facebook/R$drawable;->orca_online_icon:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 98
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadTitleHeader;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 105
    :goto_0
    return-void

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadTitleHeader;->d:Lcom/facebook/orca/presence/PresenceState;

    invoke-virtual {v0}, Lcom/facebook/orca/presence/PresenceState;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadTitleHeader;->a:Landroid/widget/ImageView;

    sget v1, Lcom/facebook/R$drawable;->orca_mobile_icon:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 101
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadTitleHeader;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 103
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadTitleHeader;->a:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private a(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadTitleHeader;->getInjector()Lcom/facebook/orca/inject/FbInjector;

    move-result-object v0

    .line 62
    const-class v1, Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadTitleHeader;->c:Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;

    .line 64
    sget v0, Lcom/facebook/R$layout;->orca_thread_title_header:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/ThreadTitleHeader;->setContentView(I)V

    .line 65
    sget v0, Lcom/facebook/R$id;->thread_title_header_view:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/ThreadTitleHeader;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadTitleHeader;->b:Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;

    .line 66
    sget v0, Lcom/facebook/R$id;->thread_title_header_image:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/ThreadTitleHeader;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadTitleHeader;->a:Landroid/widget/ImageView;

    .line 68
    new-instance v0, Lcom/facebook/orca/threadview/ThreadTitleHeader$1;

    invoke-direct {v0, p0}, Lcom/facebook/orca/threadview/ThreadTitleHeader$1;-><init>(Lcom/facebook/orca/threadview/ThreadTitleHeader;)V

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadTitleHeader;->e:Lcom/facebook/orca/users/CanonicalThreadPresenceHelper$Listener;

    .line 74
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadTitleHeader;->c:Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadTitleHeader;->e:Lcom/facebook/orca/users/CanonicalThreadPresenceHelper$Listener;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;->a(Lcom/facebook/orca/users/CanonicalThreadPresenceHelper$Listener;)V

    .line 75
    return-void
.end method

.method private a(Lcom/facebook/orca/presence/PresenceState;)V
    .locals 1
    .parameter

    .prologue
    .line 84
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadTitleHeader;->d:Lcom/facebook/orca/presence/PresenceState;

    if-ne v0, p1, :cond_0

    .line 88
    :goto_0
    return-void

    .line 87
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/orca/threadview/ThreadTitleHeader;->b(Lcom/facebook/orca/presence/PresenceState;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/facebook/orca/threadview/ThreadTitleHeader;Lcom/facebook/orca/presence/PresenceState;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/facebook/orca/threadview/ThreadTitleHeader;->a(Lcom/facebook/orca/presence/PresenceState;)V

    return-void
.end method

.method private b(Lcom/facebook/orca/presence/PresenceState;)V
    .locals 0
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/facebook/orca/threadview/ThreadTitleHeader;->d:Lcom/facebook/orca/presence/PresenceState;

    .line 92
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadTitleHeader;->a()V

    .line 93
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 49
    invoke-super {p0}, Lcom/facebook/widget/CustomFrameLayout;->onAttachedToWindow()V

    .line 50
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadTitleHeader;->c:Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;->a(Z)V

    .line 51
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadTitleHeader;->c:Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;

    invoke-virtual {v0}, Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;->c()Lcom/facebook/orca/presence/PresenceState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/orca/threadview/ThreadTitleHeader;->b(Lcom/facebook/orca/presence/PresenceState;)V

    .line 52
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 56
    invoke-super {p0}, Lcom/facebook/widget/CustomFrameLayout;->onDetachedFromWindow()V

    .line 57
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadTitleHeader;->c:Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;->a(Z)V

    .line 58
    return-void
.end method

.method public setThreadSummary(Lcom/facebook/orca/threads/ThreadSummary;)V
    .locals 1
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadTitleHeader;->b:Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;->setData(Ljava/lang/Object;)V

    .line 79
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadTitleHeader;->c:Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;->a(Lcom/facebook/orca/threads/ThreadSummary;)V

    .line 80
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadTitleHeader;->c:Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;

    invoke-virtual {v0}, Lcom/facebook/orca/users/CanonicalThreadPresenceHelper;->c()Lcom/facebook/orca/presence/PresenceState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/orca/threadview/ThreadTitleHeader;->b(Lcom/facebook/orca/presence/PresenceState;)V

    .line 81
    return-void
.end method
