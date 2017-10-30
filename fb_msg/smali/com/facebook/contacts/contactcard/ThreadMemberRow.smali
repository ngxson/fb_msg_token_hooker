.class public Lcom/facebook/contacts/contactcard/ThreadMemberRow;
.super Lcom/facebook/widget/CustomViewGroup;
.source "ThreadMemberRow.java"


# instance fields
.field private final a:Landroid/widget/TextView;

.field private final b:Landroid/widget/TextView;

.field private final c:Lcom/facebook/orca/photos/tiles/UserTileView;

.field private d:Lcom/facebook/orca/threads/ThreadParticipant;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/contacts/contactcard/ThreadMemberRow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/contacts/contactcard/ThreadMemberRow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/widget/CustomViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    sget v0, Lcom/facebook/R$layout;->orca_thread_member_item:I

    invoke-virtual {p0, v0}, Lcom/facebook/contacts/contactcard/ThreadMemberRow;->setContentView(I)V

    .line 42
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/contacts/contactcard/ThreadMemberRow;->setClickable(Z)V

    .line 43
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 44
    sget v0, Lcom/facebook/R$drawable;->orca_item_background_holo_light:I

    invoke-virtual {p0, v0}, Lcom/facebook/contacts/contactcard/ThreadMemberRow;->setBackgroundResource(I)V

    .line 49
    :goto_0
    sget v0, Lcom/facebook/R$id;->member_user:I

    invoke-virtual {p0, v0}, Lcom/facebook/contacts/contactcard/ThreadMemberRow;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/contacts/contactcard/ThreadMemberRow;->a:Landroid/widget/TextView;

    .line 50
    sget v0, Lcom/facebook/R$id;->member_email:I

    invoke-virtual {p0, v0}, Lcom/facebook/contacts/contactcard/ThreadMemberRow;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/contacts/contactcard/ThreadMemberRow;->b:Landroid/widget/TextView;

    .line 51
    sget v0, Lcom/facebook/R$id;->member_user_img:I

    invoke-virtual {p0, v0}, Lcom/facebook/contacts/contactcard/ThreadMemberRow;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/photos/tiles/UserTileView;

    iput-object v0, p0, Lcom/facebook/contacts/contactcard/ThreadMemberRow;->c:Lcom/facebook/orca/photos/tiles/UserTileView;

    .line 54
    sget v0, Lcom/facebook/R$id;->member_separator:I

    invoke-virtual {p0, v0}, Lcom/facebook/contacts/contactcard/ThreadMemberRow;->getView(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 55
    return-void

    .line 46
    :cond_0
    const v0, 0x1080062

    invoke-virtual {p0, v0}, Lcom/facebook/contacts/contactcard/ThreadMemberRow;->setBackgroundResource(I)V

    goto :goto_0
.end method


# virtual methods
.method public getParticipant()Lcom/facebook/orca/threads/ThreadParticipant;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/ThreadMemberRow;->d:Lcom/facebook/orca/threads/ThreadParticipant;

    return-object v0
.end method

.method public setParticipant(Lcom/facebook/orca/threads/ThreadParticipant;)V
    .locals 3
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/facebook/contacts/contactcard/ThreadMemberRow;->d:Lcom/facebook/orca/threads/ThreadParticipant;

    .line 60
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadParticipant;->a()Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ParticipantInfo;->d()Ljava/lang/String;

    move-result-object v0

    .line 61
    iget-object v1, p0, Lcom/facebook/contacts/contactcard/ThreadMemberRow;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    const/4 v0, 0x0

    .line 65
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadParticipant;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 66
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadParticipant;->d()Lcom/facebook/orca/users/UserKey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/users/UserKey;->b()Ljava/lang/String;

    move-result-object v0

    .line 73
    :cond_0
    :goto_0
    invoke-static {v0}, Lcom/facebook/orca/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 74
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/ThreadMemberRow;->b:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 80
    :goto_1
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/ThreadMemberRow;->c:Lcom/facebook/orca/photos/tiles/UserTileView;

    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadParticipant;->d()Lcom/facebook/orca/users/UserKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/photos/tiles/UserTileView;->setUserKey(Lcom/facebook/orca/users/UserKey;)V

    .line 81
    return-void

    .line 67
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadParticipant;->b()Z

    move-result v1

    if-nez v1, :cond_0

    .line 68
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadParticipant;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadParticipant;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadParticipant;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 70
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadParticipant;->e()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 76
    :cond_2
    iget-object v1, p0, Lcom/facebook/contacts/contactcard/ThreadMemberRow;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/ThreadMemberRow;->b:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method
