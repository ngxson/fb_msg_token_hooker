.class public Lcom/facebook/orca/activity/AuthenticatedActivityHelper;
.super Lcom/facebook/orca/activity/AbstractFbActivityListener;
.source "AuthenticatedActivityHelper.java"


# instance fields
.field protected a:Lcom/facebook/orca/activity/SafeLocalBroadcastReceiver;

.field private final b:Landroid/app/Activity;

.field private final c:Lcom/facebook/orca/auth/AuthDataStore;

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

.field private final e:Lcom/facebook/orca/app/AppInitLock;

.field private final f:Ljavax/inject/Provider;
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
.method public constructor <init>(Landroid/app/Activity;Lcom/facebook/orca/auth/AuthDataStore;Ljavax/inject/Provider;Lcom/facebook/orca/app/AppInitLock;Ljavax/inject/Provider;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/facebook/orca/auth/AuthDataStore;",
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/facebook/orca/app/AppInitLock;",
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/facebook/orca/activity/AbstractFbActivityListener;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/facebook/orca/activity/AuthenticatedActivityHelper;->b:Landroid/app/Activity;

    .line 44
    iput-object p2, p0, Lcom/facebook/orca/activity/AuthenticatedActivityHelper;->c:Lcom/facebook/orca/auth/AuthDataStore;

    .line 45
    iput-object p3, p0, Lcom/facebook/orca/activity/AuthenticatedActivityHelper;->d:Ljavax/inject/Provider;

    .line 46
    iput-object p4, p0, Lcom/facebook/orca/activity/AuthenticatedActivityHelper;->e:Lcom/facebook/orca/app/AppInitLock;

    .line 47
    iput-object p5, p0, Lcom/facebook/orca/activity/AuthenticatedActivityHelper;->f:Ljavax/inject/Provider;

    .line 48
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/activity/AuthenticatedActivityHelper;)Landroid/app/Activity;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/facebook/orca/activity/AuthenticatedActivityHelper;->b:Landroid/app/Activity;

    return-object v0
.end method

.method private a()V
    .locals 3

    .prologue
    .line 123
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/facebook/orca/activity/AuthenticatedActivityHelper;->b:Landroid/app/Activity;

    const-class v2, Lcom/facebook/orca/auth/StartScreenActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 124
    const-string v1, "orca:loginparam:LoginFragmentState"

    const-class v2, Lcom/facebook/orca/login/LogoutFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    iget-object v1, p0, Lcom/facebook/orca/activity/AuthenticatedActivityHelper;->b:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 126
    iget-object v1, p0, Lcom/facebook/orca/activity/AuthenticatedActivityHelper;->b:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 127
    return-void
.end method

.method private b()V
    .locals 3

    .prologue
    .line 130
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/facebook/orca/activity/AuthenticatedActivityHelper;->b:Landroid/app/Activity;

    const-class v2, Lcom/facebook/orca/auth/StartScreenActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 131
    const-string v1, "orca:loginparam:LoginFragmentState"

    const-class v2, Lcom/facebook/orca/login/PasswordCredentialsFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    iget-object v1, p0, Lcom/facebook/orca/activity/AuthenticatedActivityHelper;->b:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 133
    iget-object v1, p0, Lcom/facebook/orca/activity/AuthenticatedActivityHelper;->b:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 134
    return-void
.end method

.method private m(Landroid/app/Activity;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 137
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v2, Lcom/facebook/orca/annotations/AuthNotRequired;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 149
    :goto_0
    return v0

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/activity/AuthenticatedActivityHelper;->e:Lcom/facebook/orca/app/AppInitLock;

    invoke-virtual {v0}, Lcom/facebook/orca/app/AppInitLock;->c()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 142
    goto :goto_0

    .line 145
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/activity/AuthenticatedActivityHelper;->c:Lcom/facebook/orca/auth/AuthDataStore;

    invoke-interface {v0}, Lcom/facebook/orca/auth/AuthDataStore;->a()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/facebook/orca/activity/AuthenticatedActivityHelper;->d:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    move v0, v1

    .line 146
    goto :goto_0

    .line 149
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .locals 1
    .parameter

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/facebook/orca/activity/AuthenticatedActivityHelper;->m(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    :goto_0
    return-void

    .line 80
    :cond_0
    invoke-direct {p0}, Lcom/facebook/orca/activity/AuthenticatedActivityHelper;->b()V

    goto :goto_0
.end method

.method public a(Landroid/app/Activity;Ljava/lang/Exception;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 96
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v2, Lcom/facebook/orca/annotations/AuthNotRequired;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 119
    :goto_0
    return v0

    .line 100
    :cond_0
    instance-of v0, p2, Lcom/facebook/orca/ops/ServiceException;

    if-nez v0, :cond_1

    move v0, v1

    .line 101
    goto :goto_0

    .line 104
    :cond_1
    check-cast p2, Lcom/facebook/orca/ops/ServiceException;

    .line 105
    invoke-virtual {p2}, Lcom/facebook/orca/ops/ServiceException;->a()Lcom/facebook/orca/server/ErrorCode;

    move-result-object v0

    sget-object v2, Lcom/facebook/orca/server/ErrorCode;->API_ERROR:Lcom/facebook/orca/server/ErrorCode;

    if-eq v0, v2, :cond_2

    move v0, v1

    .line 107
    goto :goto_0

    .line 110
    :cond_2
    invoke-virtual {p2}, Lcom/facebook/orca/ops/ServiceException;->b()Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/server/OperationResult;->h()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/protocol/base/ApiErrorResult;

    .line 111
    invoke-virtual {v0}, Lcom/facebook/orca/protocol/base/ApiErrorResult;->a()I

    move-result v2

    const/16 v3, 0xbe

    if-eq v2, v3, :cond_3

    invoke-virtual {v0}, Lcom/facebook/orca/protocol/base/ApiErrorResult;->a()I

    move-result v0

    const/16 v2, 0x66

    if-eq v0, v2, :cond_3

    move v0, v1

    .line 114
    goto :goto_0

    .line 118
    :cond_3
    invoke-direct {p0}, Lcom/facebook/orca/activity/AuthenticatedActivityHelper;->a()V

    .line 119
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public d(Landroid/app/Activity;)V
    .locals 1
    .parameter

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/facebook/orca/activity/AuthenticatedActivityHelper;->m(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    :goto_0
    return-void

    .line 55
    :cond_0
    invoke-direct {p0}, Lcom/facebook/orca/activity/AuthenticatedActivityHelper;->b()V

    goto :goto_0
.end method

.method public e(Landroid/app/Activity;)V
    .locals 2
    .parameter

    .prologue
    .line 60
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/annotations/AuthNotRequired;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 73
    :goto_0
    return-void

    .line 64
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 65
    const-string v1, "com.facebook.orca.ACTION_LOGGED_OUT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 66
    new-instance v1, Lcom/facebook/orca/activity/AuthenticatedActivityHelper$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/facebook/orca/activity/AuthenticatedActivityHelper$1;-><init>(Lcom/facebook/orca/activity/AuthenticatedActivityHelper;Landroid/content/Context;Landroid/content/IntentFilter;)V

    iput-object v1, p0, Lcom/facebook/orca/activity/AuthenticatedActivityHelper;->a:Lcom/facebook/orca/activity/SafeLocalBroadcastReceiver;

    .line 72
    iget-object v0, p0, Lcom/facebook/orca/activity/AuthenticatedActivityHelper;->a:Lcom/facebook/orca/activity/SafeLocalBroadcastReceiver;

    invoke-virtual {v0}, Lcom/facebook/orca/activity/SafeLocalBroadcastReceiver;->a()V

    goto :goto_0
.end method

.method public h(Landroid/app/Activity;)V
    .locals 2
    .parameter

    .prologue
    .line 85
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/annotations/AuthNotRequired;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/activity/AuthenticatedActivityHelper;->a:Lcom/facebook/orca/activity/SafeLocalBroadcastReceiver;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/facebook/orca/activity/AuthenticatedActivityHelper;->a:Lcom/facebook/orca/activity/SafeLocalBroadcastReceiver;

    invoke-virtual {v0}, Lcom/facebook/orca/activity/SafeLocalBroadcastReceiver;->b()V

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/activity/AuthenticatedActivityHelper;->a:Lcom/facebook/orca/activity/SafeLocalBroadcastReceiver;

    goto :goto_0
.end method
