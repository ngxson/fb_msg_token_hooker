.class public Lcom/facebook/orca/notify/InAppNotificationView;
.super Lcom/facebook/widget/CustomViewGroup;
.source "InAppNotificationView.java"


# static fields
.field private static final a:Ljava/util/regex/Pattern;


# instance fields
.field private b:Lcom/facebook/orca/photos/tiles/UserTileView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/ImageButton;

.field private f:Lcom/facebook/orca/threads/Message;

.field private final g:Landroid/content/Context;

.field private final h:Lcom/facebook/orca/emoji/EmojiUtil;

.field private final i:Lcom/facebook/orca/threads/ThreadSnippetUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-string v0, "\\n+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/facebook/orca/notify/InAppNotificationView;->a:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/orca/emoji/EmojiUtil;Lcom/facebook/orca/threads/ThreadSnippetUtil;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/facebook/widget/CustomViewGroup;-><init>(Landroid/content/Context;)V

    .line 45
    iput-object p1, p0, Lcom/facebook/orca/notify/InAppNotificationView;->g:Landroid/content/Context;

    .line 46
    iput-object p2, p0, Lcom/facebook/orca/notify/InAppNotificationView;->h:Lcom/facebook/orca/emoji/EmojiUtil;

    .line 47
    iput-object p3, p0, Lcom/facebook/orca/notify/InAppNotificationView;->i:Lcom/facebook/orca/threads/ThreadSnippetUtil;

    .line 48
    invoke-direct {p0, p1}, Lcom/facebook/orca/notify/InAppNotificationView;->a(Landroid/content/Context;)V

    .line 49
    return-void
.end method

.method private a(Lcom/facebook/orca/threads/Message;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/facebook/orca/notify/InAppNotificationView;->i:Lcom/facebook/orca/threads/ThreadSnippetUtil;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/threads/ThreadSnippetUtil;->a(Lcom/facebook/orca/threads/Message;)Ljava/lang/String;

    move-result-object v0

    .line 83
    if-nez v0, :cond_1

    .line 84
    const-string v0, ""

    .line 91
    :cond_0
    :goto_0
    return-object v0

    .line 87
    :cond_1
    sget-object v1, Lcom/facebook/orca/notify/InAppNotificationView;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 88
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 89
    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 52
    sget v0, Lcom/facebook/R$layout;->orca_in_app_notification:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/notify/InAppNotificationView;->setContentView(I)V

    .line 54
    sget v0, Lcom/facebook/R$id;->notification_user_tile:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/notify/InAppNotificationView;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/photos/tiles/UserTileView;

    iput-object v0, p0, Lcom/facebook/orca/notify/InAppNotificationView;->b:Lcom/facebook/orca/photos/tiles/UserTileView;

    .line 55
    sget v0, Lcom/facebook/R$id;->notification_title:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/notify/InAppNotificationView;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/orca/notify/InAppNotificationView;->c:Landroid/widget/TextView;

    .line 56
    sget v0, Lcom/facebook/R$id;->notification_snippet:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/notify/InAppNotificationView;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/orca/notify/InAppNotificationView;->d:Landroid/widget/TextView;

    .line 57
    sget v0, Lcom/facebook/R$id;->notification_dismiss_button:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/notify/InAppNotificationView;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/facebook/orca/notify/InAppNotificationView;->e:Landroid/widget/ImageButton;

    .line 58
    return-void
.end method


# virtual methods
.method public getMessage()Lcom/facebook/orca/threads/Message;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/facebook/orca/notify/InAppNotificationView;->f:Lcom/facebook/orca/threads/Message;

    return-object v0
.end method

.method public setMessage(Lcom/facebook/orca/threads/Message;)V
    .locals 3
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/facebook/orca/notify/InAppNotificationView;->f:Lcom/facebook/orca/threads/Message;

    .line 62
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->f()Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v0

    .line 63
    if-eqz v0, :cond_0

    .line 64
    iget-object v1, p0, Lcom/facebook/orca/notify/InAppNotificationView;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ParticipantInfo;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    iget-object v1, p0, Lcom/facebook/orca/notify/InAppNotificationView;->b:Lcom/facebook/orca/photos/tiles/UserTileView;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ParticipantInfo;->e()Lcom/facebook/orca/users/UserKey;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/orca/photos/tiles/UserTileView;->setUserKey(Lcom/facebook/orca/users/UserKey;)V

    .line 70
    :goto_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {p0, p1}, Lcom/facebook/orca/notify/InAppNotificationView;->a(Lcom/facebook/orca/threads/Message;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v1, p0, Lcom/facebook/orca/notify/InAppNotificationView;->g:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/R$dimen;->in_app_notification_font_size_dp:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 73
    iget-object v2, p0, Lcom/facebook/orca/notify/InAppNotificationView;->h:Lcom/facebook/orca/emoji/EmojiUtil;

    invoke-virtual {v2, v0, v1}, Lcom/facebook/orca/emoji/EmojiUtil;->a(Landroid/text/Spannable;I)V

    .line 74
    iget-object v1, p0, Lcom/facebook/orca/notify/InAppNotificationView;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    return-void

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/notify/InAppNotificationView;->c:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v0, p0, Lcom/facebook/orca/notify/InAppNotificationView;->b:Lcom/facebook/orca/photos/tiles/UserTileView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/orca/photos/tiles/UserTileView;->setUserKey(Lcom/facebook/orca/users/UserKey;)V

    goto :goto_0
.end method

.method public setOnDismissListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter

    .prologue
    .line 95
    iget-object v0, p0, Lcom/facebook/orca/notify/InAppNotificationView;->e:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    return-void
.end method
