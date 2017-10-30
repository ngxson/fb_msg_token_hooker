.class public Lcom/facebook/orca/phone/TelephonyReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TelephonyReceiver.java"


# static fields
.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static e:Z

.field private static f:Ljava/lang/String;


# instance fields
.field private b:Landroid/app/ActivityManager;

.field private c:Landroid/telephony/TelephonyManager;

.field private d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/facebook/orca/phone/TelephonyReceiver;

    sput-object v0, Lcom/facebook/orca/phone/TelephonyReceiver;->a:Ljava/lang/Class;

    .line 49
    const/4 v0, 0x0

    sput-boolean v0, Lcom/facebook/orca/phone/TelephonyReceiver;->e:Z

    .line 50
    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/orca/phone/TelephonyReceiver;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 43
    iput-object v0, p0, Lcom/facebook/orca/phone/TelephonyReceiver;->b:Landroid/app/ActivityManager;

    .line 44
    iput-object v0, p0, Lcom/facebook/orca/phone/TelephonyReceiver;->c:Landroid/telephony/TelephonyManager;

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/facebook/orca/phone/TelephonyReceiver;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/phone/TelephonyReceiver;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 136
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 138
    :cond_1
    invoke-direct {p0}, Lcom/facebook/orca/phone/TelephonyReceiver;->a()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/facebook/orca/phone/TelephonyReceiver;->c:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    if-eqz v2, :cond_2

    .line 148
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/32 v4, 0x3b9aca00

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 152
    sget-object v0, Lcom/facebook/orca/phone/TelephonyReceiver;->a:Ljava/lang/Class;

    const-string v1, "Incall UI launch loop has timed out!"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->e(Ljava/lang/Class;Ljava/lang/String;)V

    .line 159
    :goto_0
    return-void

    .line 158
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/phone/TelephonyReceiver;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a()Z
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/facebook/orca/phone/TelephonyReceiver;->b:Landroid/app/ActivityManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 112
    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    .line 113
    const-string v1, "com.android.phone.InCallScreen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 169
    iget-object v0, p0, Lcom/facebook/orca/phone/TelephonyReceiver;->c:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/facebook/orca/phone/IncallActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 172
    const-string v1, "android.intent.extra.PHONE_NUMBER"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 173
    const/high16 v1, 0x1040

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 176
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 178
    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-static {p1}, Lcom/facebook/orca/inject/FbInjector;->a(Landroid/content/Context;)Lcom/facebook/orca/inject/FbInjector;

    move-result-object v0

    .line 56
    const-class v1, Ljava/lang/Boolean;

    const-class v2, Lcom/facebook/orca/annotations/IsIncallPermitted;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/inject/FbInjector;->b(Ljava/lang/Class;Ljava/lang/Class;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/phone/TelephonyReceiver;->d:Ljavax/inject/Provider;

    .line 59
    iget-object v0, p0, Lcom/facebook/orca/phone/TelephonyReceiver;->d:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/facebook/orca/phone/TelephonyReceiver;->b:Landroid/app/ActivityManager;

    .line 62
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/facebook/orca/phone/TelephonyReceiver;->c:Landroid/telephony/TelephonyManager;

    .line 65
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 68
    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 71
    const-string v0, "state"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 72
    if-eqz v0, :cond_3

    .line 74
    sget-object v1, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 75
    const-string v0, "incoming_number"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77
    invoke-direct {p0, p1, v0}, Lcom/facebook/orca/phone/TelephonyReceiver;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 87
    :cond_0
    :goto_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/facebook/orca/phone/TelephonyReceiver;->e:Z

    .line 102
    :cond_1
    :goto_1
    return-void

    .line 80
    :cond_2
    sget-object v1, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    sget-boolean v0, Lcom/facebook/orca/phone/TelephonyReceiver;->e:Z

    if-eqz v0, :cond_0

    .line 82
    sget-object v0, Lcom/facebook/orca/phone/TelephonyReceiver;->f:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/facebook/orca/phone/TelephonyReceiver;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 89
    :cond_3
    sget-object v1, Lcom/facebook/orca/phone/TelephonyReceiver;->a:Ljava/lang/Class;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown call state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/orca/debug/BLog;->e(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_1

    .line 93
    :cond_4
    const-string v1, "android.intent.action.NEW_OUTGOING_CALL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1
.end method
