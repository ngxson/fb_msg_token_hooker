.class public Lcom/facebook/contacts/contactcard/ConversationSettingsView;
.super Lcom/facebook/contacts/contactcard/SectionView;
.source "ConversationSettingsView.java"


# instance fields
.field private final a:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

.field private final b:Lcom/facebook/orca/notify/NotificationSettingsUtil;

.field private final c:Lcom/facebook/orca/prefs/UiCounters;

.field private final d:Lcom/facebook/contacts/contactcard/entry/LabelValueRowView;

.field private final e:Lcom/facebook/orca/threadview/GlobalAlertMessageView;

.field private f:Lcom/facebook/contacts/contactcard/ContactCardFragment$ContactCardListener;

.field private g:Ljava/lang/String;

.field private h:Lcom/facebook/orca/notify/NotificationSetting;

.field private i:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 96
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/contacts/contactcard/ConversationSettingsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 100
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/contacts/contactcard/ConversationSettingsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 104
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/contacts/contactcard/SectionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 106
    invoke-virtual {p0}, Lcom/facebook/contacts/contactcard/ConversationSettingsView;->getInjector()Lcom/facebook/orca/inject/FbInjector;

    move-result-object v1

    .line 107
    const-class v0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    iput-object v0, p0, Lcom/facebook/contacts/contactcard/ConversationSettingsView;->a:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    .line 108
    const-class v0, Lcom/facebook/orca/notify/NotificationSettingsUtil;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/notify/NotificationSettingsUtil;

    iput-object v0, p0, Lcom/facebook/contacts/contactcard/ConversationSettingsView;->b:Lcom/facebook/orca/notify/NotificationSettingsUtil;

    .line 109
    const-class v0, Lcom/facebook/orca/prefs/UiCounters;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/UiCounters;

    iput-object v0, p0, Lcom/facebook/contacts/contactcard/ConversationSettingsView;->c:Lcom/facebook/orca/prefs/UiCounters;

    .line 111
    new-instance v0, Lcom/facebook/contacts/contactcard/entry/LabelValueRowView;

    invoke-direct {v0, p1}, Lcom/facebook/contacts/contactcard/entry/LabelValueRowView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/contacts/contactcard/ConversationSettingsView;->d:Lcom/facebook/contacts/contactcard/entry/LabelValueRowView;

    .line 112
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/ConversationSettingsView;->d:Lcom/facebook/contacts/contactcard/entry/LabelValueRowView;

    sget v1, Lcom/facebook/R$string;->contact_notifications_label:I

    invoke-virtual {v0, v1}, Lcom/facebook/contacts/contactcard/entry/LabelValueRowView;->setLabelText(I)V

    .line 113
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/ConversationSettingsView;->d:Lcom/facebook/contacts/contactcard/entry/LabelValueRowView;

    new-instance v1, Lcom/facebook/contacts/contactcard/ConversationSettingsView$1;

    invoke-direct {v1, p0}, Lcom/facebook/contacts/contactcard/ConversationSettingsView$1;-><init>(Lcom/facebook/contacts/contactcard/ConversationSettingsView;)V

    invoke-virtual {v0, v1}, Lcom/facebook/contacts/contactcard/entry/LabelValueRowView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/ConversationSettingsView;->d:Lcom/facebook/contacts/contactcard/entry/LabelValueRowView;

    invoke-virtual {p0, v0, v2}, Lcom/facebook/contacts/contactcard/ConversationSettingsView;->a(Landroid/view/View;Z)V

    .line 121
    new-instance v0, Lcom/facebook/orca/threadview/GlobalAlertMessageView;

    invoke-direct {v0, p1}, Lcom/facebook/orca/threadview/GlobalAlertMessageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/contacts/contactcard/ConversationSettingsView;->e:Lcom/facebook/orca/threadview/GlobalAlertMessageView;

    .line 122
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/ConversationSettingsView;->e:Lcom/facebook/orca/threadview/GlobalAlertMessageView;

    iget-object v1, p0, Lcom/facebook/contacts/contactcard/ConversationSettingsView;->d:Lcom/facebook/contacts/contactcard/entry/LabelValueRowView;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threadview/GlobalAlertMessageView;->setHideableView(Landroid/view/View;)V

    .line 123
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/ConversationSettingsView;->e:Lcom/facebook/orca/threadview/GlobalAlertMessageView;

    invoke-virtual {p0, v0, v2}, Lcom/facebook/contacts/contactcard/ConversationSettingsView;->a(Landroid/view/View;Z)V

    .line 124
    return-void
.end method

.method static synthetic a(Lcom/facebook/contacts/contactcard/ConversationSettingsView;)Lcom/facebook/orca/notify/NotificationSettingsUtil;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/ConversationSettingsView;->b:Lcom/facebook/orca/notify/NotificationSettingsUtil;

    return-object v0
.end method

.method private a(I)V
    .locals 4
    .parameter

    .prologue
    const-wide/16 v2, 0x3e8

    .line 185
    packed-switch p1, :pswitch_data_0

    .line 201
    :goto_0
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/ConversationSettingsView;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/orca/prefs/MessagesPrefKeys;->a(Ljava/lang/String;)Lcom/facebook/orca/prefs/PrefKey;

    move-result-object v0

    .line 202
    iget-object v1, p0, Lcom/facebook/contacts/contactcard/ConversationSettingsView;->a:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-interface {v1}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->b()Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    move-result-object v1

    .line 203
    iget-object v2, p0, Lcom/facebook/contacts/contactcard/ConversationSettingsView;->h:Lcom/facebook/orca/notify/NotificationSetting;

    invoke-virtual {v2}, Lcom/facebook/orca/notify/NotificationSetting;->d()J

    move-result-wide v2

    invoke-interface {v1, v0, v2, v3}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a(Lcom/facebook/orca/prefs/PrefKey;J)Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    .line 204
    invoke-interface {v1}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a()V

    .line 206
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/ConversationSettingsView;->c:Lcom/facebook/orca/prefs/UiCounters;

    const-string v1, "thread_mute"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/UiCounters;->c(Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/ConversationSettingsView;->c:Lcom/facebook/orca/prefs/UiCounters;

    const-string v1, "thread_mute"

    iget-object v2, p0, Lcom/facebook/contacts/contactcard/ConversationSettingsView;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/prefs/UiCounters;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/contacts/contactcard/ConversationSettingsView;->a(Z)V

    .line 209
    return-void

    .line 187
    :pswitch_0
    sget-object v0, Lcom/facebook/orca/notify/NotificationSetting;->a:Lcom/facebook/orca/notify/NotificationSetting;

    iput-object v0, p0, Lcom/facebook/contacts/contactcard/ConversationSettingsView;->h:Lcom/facebook/orca/notify/NotificationSetting;

    goto :goto_0

    .line 190
    :pswitch_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    div-long/2addr v0, v2

    const-wide/16 v2, 0xe10

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/facebook/orca/notify/NotificationSetting;->a(J)Lcom/facebook/orca/notify/NotificationSetting;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/contacts/contactcard/ConversationSettingsView;->h:Lcom/facebook/orca/notify/NotificationSetting;

    goto :goto_0

    .line 194
    :pswitch_2
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/ConversationSettingsView;->b:Lcom/facebook/orca/notify/NotificationSettingsUtil;

    invoke-virtual {v0}, Lcom/facebook/orca/notify/NotificationSettingsUtil;->b()Ljava/util/Date;

    move-result-object v0

    .line 195
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/facebook/orca/notify/NotificationSetting;->a(J)Lcom/facebook/orca/notify/NotificationSetting;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/contacts/contactcard/ConversationSettingsView;->h:Lcom/facebook/orca/notify/NotificationSetting;

    goto :goto_0

    .line 198
    :pswitch_3
    sget-object v0, Lcom/facebook/orca/notify/NotificationSetting;->b:Lcom/facebook/orca/notify/NotificationSetting;

    iput-object v0, p0, Lcom/facebook/contacts/contactcard/ConversationSettingsView;->h:Lcom/facebook/orca/notify/NotificationSetting;

    goto :goto_0

    .line 185
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic a(Lcom/facebook/contacts/contactcard/ConversationSettingsView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/facebook/contacts/contactcard/ConversationSettingsView;->a(I)V

    return-void
.end method

.method private a(Z)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 141
    invoke-virtual {p0}, Lcom/facebook/contacts/contactcard/ConversationSettingsView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 144
    iget-object v1, p0, Lcom/facebook/contacts/contactcard/ConversationSettingsView;->e:Lcom/facebook/orca/threadview/GlobalAlertMessageView;

    invoke-virtual {v1}, Lcom/facebook/orca/threadview/GlobalAlertMessageView;->a()V

    .line 146
    iget-object v1, p0, Lcom/facebook/contacts/contactcard/ConversationSettingsView;->b:Lcom/facebook/orca/notify/NotificationSettingsUtil;

    iget-object v2, p0, Lcom/facebook/contacts/contactcard/ConversationSettingsView;->h:Lcom/facebook/orca/notify/NotificationSetting;

    invoke-virtual {v1, v2}, Lcom/facebook/orca/notify/NotificationSettingsUtil;->b(Lcom/facebook/orca/notify/NotificationSetting;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 147
    new-instance v1, Ljava/util/Date;

    iget-object v2, p0, Lcom/facebook/contacts/contactcard/ConversationSettingsView;->h:Lcom/facebook/orca/notify/NotificationSetting;

    invoke-virtual {v2}, Lcom/facebook/orca/notify/NotificationSetting;->b()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 148
    iget-object v2, p0, Lcom/facebook/contacts/contactcard/ConversationSettingsView;->b:Lcom/facebook/orca/notify/NotificationSettingsUtil;

    invoke-virtual {v2}, Lcom/facebook/orca/notify/NotificationSettingsUtil;->b()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 149
    iget-object v1, p0, Lcom/facebook/contacts/contactcard/ConversationSettingsView;->b:Lcom/facebook/orca/notify/NotificationSettingsUtil;

    invoke-virtual {v1}, Lcom/facebook/orca/notify/NotificationSettingsUtil;->b()Ljava/util/Date;

    move-result-object v1

    .line 150
    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 151
    sget v2, Lcom/facebook/R$string;->contact_notifications_muted_until:I

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v1, v3, v6

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 153
    iget-object v1, p0, Lcom/facebook/contacts/contactcard/ConversationSettingsView;->d:Lcom/facebook/contacts/contactcard/entry/LabelValueRowView;

    invoke-virtual {v1, v0}, Lcom/facebook/contacts/contactcard/entry/LabelValueRowView;->setValueText(Ljava/lang/String;)V

    .line 154
    const/4 v0, 0x3

    iput v0, p0, Lcom/facebook/contacts/contactcard/ConversationSettingsView;->i:I

    .line 173
    :goto_0
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/facebook/contacts/contactcard/ConversationSettingsView;->f:Lcom/facebook/contacts/contactcard/ContactCardFragment$ContactCardListener;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/ConversationSettingsView;->f:Lcom/facebook/contacts/contactcard/ContactCardFragment$ContactCardListener;

    invoke-interface {v0}, Lcom/facebook/contacts/contactcard/ContactCardFragment$ContactCardListener;->b()V

    .line 176
    :cond_0
    return-void

    .line 156
    :cond_1
    if-eqz p1, :cond_2

    .line 157
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/ConversationSettingsView;->d:Lcom/facebook/contacts/contactcard/entry/LabelValueRowView;

    sget v1, Lcom/facebook/R$string;->contact_notifications_muted_one_hour:I

    invoke-virtual {v0, v1}, Lcom/facebook/contacts/contactcard/entry/LabelValueRowView;->setValueText(I)V

    .line 163
    :goto_1
    const/4 v0, 0x2

    iput v0, p0, Lcom/facebook/contacts/contactcard/ConversationSettingsView;->i:I

    goto :goto_0

    .line 159
    :cond_2
    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 160
    sget v2, Lcom/facebook/R$string;->contact_notifications_muted_until:I

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v1, v3, v6

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 161
    iget-object v1, p0, Lcom/facebook/contacts/contactcard/ConversationSettingsView;->d:Lcom/facebook/contacts/contactcard/entry/LabelValueRowView;

    invoke-virtual {v1, v0}, Lcom/facebook/contacts/contactcard/entry/LabelValueRowView;->setValueText(Ljava/lang/String;)V

    goto :goto_1

    .line 165
    :cond_3
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/ConversationSettingsView;->h:Lcom/facebook/orca/notify/NotificationSetting;

    invoke-virtual {v0}, Lcom/facebook/orca/notify/NotificationSetting;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 166
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/ConversationSettingsView;->d:Lcom/facebook/contacts/contactcard/entry/LabelValueRowView;

    sget v1, Lcom/facebook/R$string;->contact_notifications_enabled:I

    invoke-virtual {v0, v1}, Lcom/facebook/contacts/contactcard/entry/LabelValueRowView;->setValueText(I)V

    .line 167
    iput v6, p0, Lcom/facebook/contacts/contactcard/ConversationSettingsView;->i:I

    goto :goto_0

    .line 169
    :cond_4
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/ConversationSettingsView;->d:Lcom/facebook/contacts/contactcard/entry/LabelValueRowView;

    sget v1, Lcom/facebook/R$string;->contact_notifications_disabled:I

    invoke-virtual {v0, v1}, Lcom/facebook/contacts/contactcard/entry/LabelValueRowView;->setValueText(I)V

    .line 170
    iput v7, p0, Lcom/facebook/contacts/contactcard/ConversationSettingsView;->i:I

    goto :goto_0
.end method

.method static synthetic b(Lcom/facebook/contacts/contactcard/ConversationSettingsView;)I
    .locals 1
    .parameter

    .prologue
    .line 33
    iget v0, p0, Lcom/facebook/contacts/contactcard/ConversationSettingsView;->i:I

    return v0
.end method

.method static synthetic c(Lcom/facebook/contacts/contactcard/ConversationSettingsView;)Lcom/facebook/orca/notify/NotificationSetting;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/ConversationSettingsView;->h:Lcom/facebook/orca/notify/NotificationSetting;

    return-object v0
.end method

.method private c()V
    .locals 3

    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/facebook/contacts/contactcard/ConversationSettingsView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/activity/FbFragmentActivity;

    .line 180
    invoke-virtual {v0}, Lcom/facebook/orca/activity/FbFragmentActivity;->f()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 181
    new-instance v1, Lcom/facebook/contacts/contactcard/ConversationSettingsView$NotificationsDialogFragment;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/facebook/contacts/contactcard/ConversationSettingsView$NotificationsDialogFragment;-><init>(Lcom/facebook/contacts/contactcard/ConversationSettingsView;Lcom/facebook/contacts/contactcard/ConversationSettingsView$1;)V

    const-string v2, "notifications"

    invoke-virtual {v1, v0, v2}, Lcom/facebook/contacts/contactcard/ConversationSettingsView$NotificationsDialogFragment;->a(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 182
    return-void
.end method

.method static synthetic d(Lcom/facebook/contacts/contactcard/ConversationSettingsView;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/facebook/contacts/contactcard/ConversationSettingsView;->c()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/facebook/contacts/contactcard/ConversationSettingsView;->b:Lcom/facebook/orca/notify/NotificationSettingsUtil;

    iget-object v1, p0, Lcom/facebook/contacts/contactcard/ConversationSettingsView;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/notify/NotificationSettingsUtil;->a(Ljava/lang/String;)Lcom/facebook/orca/notify/NotificationSetting;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/contacts/contactcard/ConversationSettingsView;->h:Lcom/facebook/orca/notify/NotificationSetting;

    .line 137
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/contacts/contactcard/ConversationSettingsView;->a(Z)V

    .line 138
    return-void
.end method

.method public setContactCardListener(Lcom/facebook/contacts/contactcard/ContactCardFragment$ContactCardListener;)V
    .locals 0
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lcom/facebook/contacts/contactcard/ConversationSettingsView;->f:Lcom/facebook/contacts/contactcard/ContactCardFragment$ContactCardListener;

    .line 128
    return-void
.end method

.method public setThreadId(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 131
    iput-object p1, p0, Lcom/facebook/contacts/contactcard/ConversationSettingsView;->g:Ljava/lang/String;

    .line 132
    invoke-virtual {p0}, Lcom/facebook/contacts/contactcard/ConversationSettingsView;->a()V

    .line 133
    return-void
.end method
