.class public Lcom/facebook/chatheads/ChatHeadPushHandler;
.super Lcom/facebook/orca/push/AbstractPushHandler;
.source "ChatHeadPushHandler.java"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/facebook/orca/cache/DataCache;

.field private final c:Lcom/facebook/app/UserActivityManager;

.field private final d:Ljavax/inject/Provider;
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
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/orca/cache/DataCache;Lcom/facebook/app/UserActivityManager;Ljavax/inject/Provider;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/facebook/orca/cache/DataCache;",
            "Lcom/facebook/app/UserActivityManager;",
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/facebook/orca/push/AbstractPushHandler;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/facebook/chatheads/ChatHeadPushHandler;->a:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lcom/facebook/chatheads/ChatHeadPushHandler;->b:Lcom/facebook/orca/cache/DataCache;

    .line 32
    iput-object p3, p0, Lcom/facebook/chatheads/ChatHeadPushHandler;->c:Lcom/facebook/app/UserActivityManager;

    .line 33
    iput-object p4, p0, Lcom/facebook/chatheads/ChatHeadPushHandler;->d:Ljavax/inject/Provider;

    .line 34
    return-void
.end method

.method private a(Lcom/facebook/orca/threads/Message;)V
    .locals 3
    .parameter

    .prologue
    .line 52
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/facebook/chatheads/ChatHeadPushHandler;->a:Landroid/content/Context;

    const-class v2, Lcom/facebook/chatheads/ChatHeadService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 53
    const-string v1, "NEW_MESSAGE_NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    const-string v1, "EXTRA_MESSAGE_NOTIFIED"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 55
    iget-object v1, p0, Lcom/facebook/chatheads/ChatHeadPushHandler;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 56
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/push/PushSource;)V
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/facebook/chatheads/ChatHeadPushHandler;->d:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 49
    :cond_0
    :goto_0
    return-void

    .line 45
    :cond_1
    iget-object v0, p0, Lcom/facebook/chatheads/ChatHeadPushHandler;->b:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v0}, Lcom/facebook/orca/cache/DataCache;->b()Lcom/facebook/orca/users/UserKey;

    move-result-object v0

    invoke-virtual {p3}, Lcom/facebook/orca/threads/Message;->f()Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/orca/threads/ParticipantInfo;->e()Lcom/facebook/orca/users/UserKey;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/chatheads/ChatHeadPushHandler;->c:Lcom/facebook/app/UserActivityManager;

    invoke-virtual {v0}, Lcom/facebook/app/UserActivityManager;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    invoke-direct {p0, p3}, Lcom/facebook/chatheads/ChatHeadPushHandler;->a(Lcom/facebook/orca/threads/Message;)V

    goto :goto_0
.end method
