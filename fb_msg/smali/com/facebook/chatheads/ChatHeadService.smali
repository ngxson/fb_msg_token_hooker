.class public Lcom/facebook/chatheads/ChatHeadService;
.super Landroid/app/Service;
.source "ChatHeadService.java"


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/facebook/chatheads/ChatHeadWindowManager;

.field private c:Landroid/app/ActivityManager;

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/facebook/chatheads/ChatHeadService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/chatheads/ChatHeadService;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/chatheads/ChatHeadService;)I
    .locals 1
    .parameter

    .prologue
    .line 20
    iget v0, p0, Lcom/facebook/chatheads/ChatHeadService;->d:I

    return v0
.end method

.method private a(Lcom/facebook/orca/threads/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 71
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->f()Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v0

    .line 74
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ParticipantInfo;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    iget-object v0, p0, Lcom/facebook/chatheads/ChatHeadService;->b:Lcom/facebook/chatheads/ChatHeadWindowManager;

    invoke-virtual {v0, p1}, Lcom/facebook/chatheads/ChatHeadWindowManager;->a(Lcom/facebook/orca/threads/Message;)V

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter

    .prologue
    .line 67
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 34
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 36
    invoke-static {p0}, Lcom/facebook/orca/inject/FbInjector;->a(Landroid/content/Context;)Lcom/facebook/orca/inject/FbInjector;

    move-result-object v1

    .line 37
    const-class v0, Lcom/facebook/chatheads/ChatHeadWindowManager;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/chatheads/ChatHeadWindowManager;

    iput-object v0, p0, Lcom/facebook/chatheads/ChatHeadService;->b:Lcom/facebook/chatheads/ChatHeadWindowManager;

    .line 38
    const-class v0, Landroid/app/ActivityManager;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/facebook/chatheads/ChatHeadService;->c:Landroid/app/ActivityManager;

    .line 40
    iget-object v0, p0, Lcom/facebook/chatheads/ChatHeadService;->b:Lcom/facebook/chatheads/ChatHeadWindowManager;

    new-instance v1, Lcom/facebook/chatheads/ChatHeadService$1;

    invoke-direct {v1, p0}, Lcom/facebook/chatheads/ChatHeadService$1;-><init>(Lcom/facebook/chatheads/ChatHeadService;)V

    invoke-virtual {v0, v1}, Lcom/facebook/chatheads/ChatHeadWindowManager;->a(Lcom/facebook/chatheads/ChatHeadWindowManager$ChatHeadWindowManagerListener;)V

    .line 46
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/facebook/chatheads/ChatHeadService;->b:Lcom/facebook/chatheads/ChatHeadWindowManager;

    invoke-virtual {v0}, Lcom/facebook/chatheads/ChatHeadWindowManager;->b()V

    .line 84
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 50
    iget v0, p0, Lcom/facebook/chatheads/ChatHeadService;->d:I

    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/facebook/chatheads/ChatHeadService;->d:I

    .line 52
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NEW_MESSAGE_NOTIFICATION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "EXTRA_MESSAGE_NOTIFIED"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    const-string v0, "EXTRA_MESSAGE_NOTIFIED"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/Message;

    .line 57
    invoke-direct {p0, v0}, Lcom/facebook/chatheads/ChatHeadService;->a(Lcom/facebook/orca/threads/Message;)V

    .line 62
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 58
    :cond_1
    iget-object v0, p0, Lcom/facebook/chatheads/ChatHeadService;->b:Lcom/facebook/chatheads/ChatHeadWindowManager;

    invoke-virtual {v0}, Lcom/facebook/chatheads/ChatHeadWindowManager;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    invoke-virtual {p0, p3}, Lcom/facebook/chatheads/ChatHeadService;->stopSelf(I)V

    goto :goto_0
.end method
