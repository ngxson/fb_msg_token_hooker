.class Lcom/facebook/contacts/contactcard/ConversationSettingsView$NotificationsDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "ConversationSettingsView.java"


# instance fields
.field final synthetic Y:Lcom/facebook/contacts/contactcard/ConversationSettingsView;


# direct methods
.method private constructor <init>(Lcom/facebook/contacts/contactcard/ConversationSettingsView;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/facebook/contacts/contactcard/ConversationSettingsView$NotificationsDialogFragment;->Y:Lcom/facebook/contacts/contactcard/ConversationSettingsView;

    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/contacts/contactcard/ConversationSettingsView;Lcom/facebook/contacts/contactcard/ConversationSettingsView$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/facebook/contacts/contactcard/ConversationSettingsView$NotificationsDialogFragment;-><init>(Lcom/facebook/contacts/contactcard/ConversationSettingsView;)V

    return-void
.end method


# virtual methods
.method public c(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 11
    .parameter

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 60
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/ConversationSettingsView$NotificationsDialogFragment;->Y:Lcom/facebook/contacts/contactcard/ConversationSettingsView;

    invoke-virtual {v0}, Lcom/facebook/contacts/contactcard/ConversationSettingsView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 61
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 62
    sget v0, Lcom/facebook/R$string;->contact_notifications_dialog_label:I

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 64
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/ConversationSettingsView$NotificationsDialogFragment;->Y:Lcom/facebook/contacts/contactcard/ConversationSettingsView;

    invoke-static {v0}, Lcom/facebook/contacts/contactcard/ConversationSettingsView;->a(Lcom/facebook/contacts/contactcard/ConversationSettingsView;)Lcom/facebook/orca/notify/NotificationSettingsUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/notify/NotificationSettingsUtil;->b()Ljava/util/Date;

    move-result-object v0

    .line 65
    invoke-static {v1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 68
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/ConversationSettingsView$NotificationsDialogFragment;->Y:Lcom/facebook/contacts/contactcard/ConversationSettingsView;

    invoke-static {v0}, Lcom/facebook/contacts/contactcard/ConversationSettingsView;->b(Lcom/facebook/contacts/contactcard/ConversationSettingsView;)I

    move-result v0

    if-ne v0, v10, :cond_0

    .line 69
    new-instance v0, Ljava/util/Date;

    iget-object v4, p0, Lcom/facebook/contacts/contactcard/ConversationSettingsView$NotificationsDialogFragment;->Y:Lcom/facebook/contacts/contactcard/ConversationSettingsView;

    invoke-static {v4}, Lcom/facebook/contacts/contactcard/ConversationSettingsView;->c(Lcom/facebook/contacts/contactcard/ConversationSettingsView;)Lcom/facebook/orca/notify/NotificationSetting;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/orca/notify/NotificationSetting;->b()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 70
    invoke-static {v1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 71
    sget v4, Lcom/facebook/R$string;->contact_notifications_muted_until:I

    new-array v5, v9, [Ljava/lang/Object;

    aput-object v0, v5, v8

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 77
    :goto_0
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/CharSequence;

    sget v5, Lcom/facebook/R$string;->contact_notifications_enabled:I

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    sget v5, Lcom/facebook/R$string;->contact_notifications_disabled:I

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    aput-object v0, v4, v10

    const/4 v0, 0x3

    sget v5, Lcom/facebook/R$string;->contact_notifications_muted_until:I

    new-array v6, v9, [Ljava/lang/Object;

    aput-object v3, v6, v8

    invoke-virtual {v1, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 84
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/ConversationSettingsView$NotificationsDialogFragment;->Y:Lcom/facebook/contacts/contactcard/ConversationSettingsView;

    invoke-static {v0}, Lcom/facebook/contacts/contactcard/ConversationSettingsView;->b(Lcom/facebook/contacts/contactcard/ConversationSettingsView;)I

    move-result v0

    new-instance v1, Lcom/facebook/contacts/contactcard/ConversationSettingsView$NotificationsDialogFragment$1;

    invoke-direct {v1, p0}, Lcom/facebook/contacts/contactcard/ConversationSettingsView$NotificationsDialogFragment$1;-><init>(Lcom/facebook/contacts/contactcard/ConversationSettingsView$NotificationsDialogFragment;)V

    invoke-virtual {v2, v4, v0, v1}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 91
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    .line 74
    :cond_0
    sget v0, Lcom/facebook/R$string;->contact_notifications_muted_one_hour:I

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
