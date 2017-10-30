.class public Lcom/facebook/orca/app/LoginReminderManager;
.super Ljava/lang/Object;
.source "LoginReminderManager.java"


# static fields
.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Lcom/facebook/orca/prefs/PrefKey;

.field private final c:Landroid/content/Context;

.field private final d:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

.field private final e:Lcom/facebook/orca/cache/DataCache;

.field private final f:Lcom/facebook/orca/notify/MessagingNotificationPreferences;

.field private final g:Lcom/facebook/orca/analytics/AnalyticsLogger;

.field private final h:Landroid/app/AlarmManager;

.field private final i:Landroid/app/NotificationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/facebook/orca/app/LoginReminderManager;

    sput-object v0, Lcom/facebook/orca/app/LoginReminderManager;->a:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/orca/cache/DataCache;Lcom/facebook/orca/prefs/OrcaSharedPreferences;Lcom/facebook/orca/notify/MessagingNotificationPreferences;Lcom/facebook/orca/analytics/AnalyticsLogger;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-string v0, "messenger_logout_notify_android"

    invoke-static {v0}, Lcom/facebook/orca/prefs/ConfigPrefKeys;->a(Ljava/lang/String;)Lcom/facebook/orca/prefs/PrefKey;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/app/LoginReminderManager;->b:Lcom/facebook/orca/prefs/PrefKey;

    .line 56
    iput-object p1, p0, Lcom/facebook/orca/app/LoginReminderManager;->c:Landroid/content/Context;

    .line 57
    iput-object p2, p0, Lcom/facebook/orca/app/LoginReminderManager;->e:Lcom/facebook/orca/cache/DataCache;

    .line 58
    iput-object p3, p0, Lcom/facebook/orca/app/LoginReminderManager;->d:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    .line 59
    iput-object p4, p0, Lcom/facebook/orca/app/LoginReminderManager;->f:Lcom/facebook/orca/notify/MessagingNotificationPreferences;

    .line 60
    iput-object p5, p0, Lcom/facebook/orca/app/LoginReminderManager;->g:Lcom/facebook/orca/analytics/AnalyticsLogger;

    .line 61
    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/facebook/orca/app/LoginReminderManager;->h:Landroid/app/AlarmManager;

    .line 62
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/facebook/orca/app/LoginReminderManager;->i:Landroid/app/NotificationManager;

    .line 66
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 67
    const-string v1, "com.facebook.orca.login.LoginActions.SHOWING_LOGIN_UI"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 68
    const-string v1, "com.facebook.orca.login.LoginActions.ON_LOGIN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 69
    const-string v1, "com.facebook.orca.login.LoginActions.ON_LOGOUT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 71
    new-instance v1, Lcom/facebook/orca/app/LoginReminderManager$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/facebook/orca/app/LoginReminderManager$1;-><init>(Lcom/facebook/orca/app/LoginReminderManager;Landroid/content/Context;Landroid/content/IntentFilter;)V

    .line 85
    invoke-virtual {v1}, Lcom/facebook/orca/activity/SafeLocalBroadcastReceiver;->a()V

    .line 86
    return-void
.end method

.method private a(I)V
    .locals 6
    .parameter

    .prologue
    const/16 v5, 0xb

    const/4 v3, 0x0

    const/16 v4, 0xa

    .line 123
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/facebook/orca/app/LoginReminderManager;->c:Landroid/content/Context;

    const-class v2, Lcom/facebook/orca/app/LoginReminderManager$AlarmBroadcastReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 124
    iget-object v1, p0, Lcom/facebook/orca/app/LoginReminderManager;->c:Landroid/content/Context;

    invoke-static {v1, v3, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 125
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 126
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 128
    packed-switch p1, :pswitch_data_0

    .line 151
    :goto_0
    return-void

    .line 130
    :pswitch_0
    const/4 v2, 0x3

    invoke-virtual {v1, v4, v2}, Ljava/util/Calendar;->add(II)V

    .line 145
    :goto_1
    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/16 v3, 0x14

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v1, v5, v2}, Ljava/util/Calendar;->set(II)V

    .line 146
    iget-object v2, p0, Lcom/facebook/orca/app/LoginReminderManager;->h:Landroid/app/AlarmManager;

    const/4 v3, 0x1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 148
    iget-object v0, p0, Lcom/facebook/orca/app/LoginReminderManager;->d:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-interface {v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->b()Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    move-result-object v0

    .line 149
    sget-object v1, Lcom/facebook/orca/prefs/MessengerPrefKeys;->e:Lcom/facebook/orca/prefs/PrefKey;

    invoke-interface {v0, v1, p1}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a(Lcom/facebook/orca/prefs/PrefKey;I)Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    .line 150
    invoke-interface {v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a()V

    goto :goto_0

    .line 133
    :pswitch_1
    const/16 v2, 0x12

    invoke-virtual {v1, v4, v2}, Ljava/util/Calendar;->add(II)V

    goto :goto_1

    .line 136
    :pswitch_2
    const/16 v2, 0x24

    invoke-virtual {v1, v4, v2}, Ljava/util/Calendar;->add(II)V

    goto :goto_1

    .line 139
    :pswitch_3
    const/16 v2, 0x48

    invoke-virtual {v1, v4, v2}, Ljava/util/Calendar;->add(II)V

    goto :goto_1

    .line 128
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic a(Lcom/facebook/orca/app/LoginReminderManager;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/facebook/orca/app/LoginReminderManager;->e()V

    return-void
.end method

.method static synthetic b(Lcom/facebook/orca/app/LoginReminderManager;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/facebook/orca/app/LoginReminderManager;->f()V

    return-void
.end method

.method private d()V
    .locals 3

    .prologue
    .line 116
    iget-object v0, p0, Lcom/facebook/orca/app/LoginReminderManager;->d:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-interface {v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->b()Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    move-result-object v0

    .line 117
    sget-object v1, Lcom/facebook/orca/prefs/MessengerPrefKeys;->e:Lcom/facebook/orca/prefs/PrefKey;

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a(Lcom/facebook/orca/prefs/PrefKey;I)Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    .line 118
    invoke-interface {v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a()V

    .line 119
    return-void
.end method

.method private e()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 155
    iget-object v0, p0, Lcom/facebook/orca/app/LoginReminderManager;->e:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v0}, Lcom/facebook/orca/cache/DataCache;->a()Lcom/facebook/orca/users/User;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 159
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/app/LoginReminderManager;->f:Lcom/facebook/orca/notify/MessagingNotificationPreferences;

    invoke-interface {v0}, Lcom/facebook/orca/notify/MessagingNotificationPreferences;->e()I

    move-result v0

    .line 160
    new-instance v1, Landroid/app/Notification;

    iget-object v2, p0, Lcom/facebook/orca/app/LoginReminderManager;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/facebook/R$string;->notifications_login_reminder_description:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v1, v0, v2, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 166
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/facebook/orca/app/LoginReminderManager;->c:Landroid/content/Context;

    const-class v3, Lcom/facebook/orca/app/LoginReminderManager$NotificationBroadcastReceiver;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 169
    iget-object v2, p0, Lcom/facebook/orca/app/LoginReminderManager;->c:Landroid/content/Context;

    invoke-static {v2, v5, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 175
    iget-object v2, p0, Lcom/facebook/orca/app/LoginReminderManager;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/facebook/R$string;->app_name:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 176
    iget-object v3, p0, Lcom/facebook/orca/app/LoginReminderManager;->c:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/facebook/R$string;->notifications_login_reminder_description:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 179
    iget-object v4, p0, Lcom/facebook/orca/app/LoginReminderManager;->c:Landroid/content/Context;

    invoke-virtual {v1, v4, v2, v3, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 185
    iget-object v0, p0, Lcom/facebook/orca/app/LoginReminderManager;->i:Landroid/app/NotificationManager;

    const/16 v2, 0x2712

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 189
    iget-object v0, p0, Lcom/facebook/orca/app/LoginReminderManager;->d:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    sget-object v1, Lcom/facebook/orca/prefs/MessengerPrefKeys;->e:Lcom/facebook/orca/prefs/PrefKey;

    invoke-interface {v0, v1, v5}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Lcom/facebook/orca/prefs/PrefKey;I)I

    move-result v0

    .line 192
    iget-object v1, p0, Lcom/facebook/orca/app/LoginReminderManager;->g:Lcom/facebook/orca/analytics/AnalyticsLogger;

    new-instance v2, Lcom/facebook/orca/analytics/HoneyClientEvent;

    const-string v3, "login_reminder_notification_created"

    invoke-direct {v2, v3}, Lcom/facebook/orca/analytics/HoneyClientEvent;-><init>(Ljava/lang/String;)V

    const-string v3, "trigger_state"

    invoke-virtual {v2, v3, v0}, Lcom/facebook/orca/analytics/HoneyClientEvent;->a(Ljava/lang/String;I)Lcom/facebook/orca/analytics/HoneyClientEvent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/orca/analytics/AnalyticsLogger;->b(Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;)V

    .line 196
    if-ltz v0, :cond_0

    .line 197
    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/orca/app/LoginReminderManager;->a(I)V

    goto :goto_0
.end method

.method private f()V
    .locals 4

    .prologue
    .line 203
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/facebook/orca/app/LoginReminderManager;->c:Landroid/content/Context;

    const-class v2, Lcom/facebook/orca/auth/StartScreenActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 204
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 205
    iget-object v1, p0, Lcom/facebook/orca/app/LoginReminderManager;->c:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 207
    iget-object v0, p0, Lcom/facebook/orca/app/LoginReminderManager;->d:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    sget-object v1, Lcom/facebook/orca/prefs/MessengerPrefKeys;->e:Lcom/facebook/orca/prefs/PrefKey;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Lcom/facebook/orca/prefs/PrefKey;I)I

    move-result v0

    .line 210
    iget-object v1, p0, Lcom/facebook/orca/app/LoginReminderManager;->g:Lcom/facebook/orca/analytics/AnalyticsLogger;

    new-instance v2, Lcom/facebook/orca/analytics/HoneyClientEvent;

    const-string v3, "login_reminder_notification_clicked"

    invoke-direct {v2, v3}, Lcom/facebook/orca/analytics/HoneyClientEvent;-><init>(Ljava/lang/String;)V

    const-string v3, "trigger_state"

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v3, v0}, Lcom/facebook/orca/analytics/HoneyClientEvent;->a(Ljava/lang/String;I)Lcom/facebook/orca/analytics/HoneyClientEvent;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/orca/analytics/AnalyticsLogger;->b(Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;)V

    .line 213
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 89
    iget-object v0, p0, Lcom/facebook/orca/app/LoginReminderManager;->d:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    iget-object v1, p0, Lcom/facebook/orca/app/LoginReminderManager;->b:Lcom/facebook/orca/prefs/PrefKey;

    invoke-interface {v0, v1, v2}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Lcom/facebook/orca/prefs/PrefKey;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    invoke-direct {p0, v2}, Lcom/facebook/orca/app/LoginReminderManager;->a(I)V

    .line 92
    :cond_0
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 95
    iget-object v0, p0, Lcom/facebook/orca/app/LoginReminderManager;->e:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v0}, Lcom/facebook/orca/cache/DataCache;->a()Lcom/facebook/orca/users/User;

    move-result-object v0

    if-nez v0, :cond_1

    .line 96
    iget-object v0, p0, Lcom/facebook/orca/app/LoginReminderManager;->d:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    iget-object v1, p0, Lcom/facebook/orca/app/LoginReminderManager;->b:Lcom/facebook/orca/prefs/PrefKey;

    invoke-interface {v0, v1, v2}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Lcom/facebook/orca/prefs/PrefKey;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/facebook/orca/app/LoginReminderManager;->d:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    sget-object v1, Lcom/facebook/orca/prefs/MessengerPrefKeys;->e:Lcom/facebook/orca/prefs/PrefKey;

    invoke-interface {v0, v1, v2}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Lcom/facebook/orca/prefs/PrefKey;I)I

    move-result v0

    .line 101
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 102
    invoke-direct {p0, v2}, Lcom/facebook/orca/app/LoginReminderManager;->a(I)V

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    invoke-direct {p0}, Lcom/facebook/orca/app/LoginReminderManager;->d()V

    goto :goto_0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/facebook/orca/app/LoginReminderManager;->i:Landroid/app/NotificationManager;

    const/16 v1, 0x2712

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 112
    invoke-direct {p0}, Lcom/facebook/orca/app/LoginReminderManager;->d()V

    .line 113
    return-void
.end method
