.class public Lcom/facebook/orca/intents/IntentHandler;
.super Lcom/facebook/orca/activity/FbFragmentActivity;
.source "IntentHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/facebook/orca/activity/FbFragmentActivity;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 2
    .parameter

    .prologue
    .line 84
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/facebook/orca/threadlist/ThreadListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 85
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 86
    invoke-virtual {p0, v0}, Lcom/facebook/orca/intents/IntentHandler;->startActivity(Landroid/content/Intent;)V

    .line 88
    invoke-virtual {p0, p1}, Lcom/facebook/orca/intents/IntentHandler;->startActivity(Landroid/content/Intent;)V

    .line 89
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 12
    .parameter

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 32
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/FbFragmentActivity;->a(Landroid/os/Bundle;)V

    .line 34
    invoke-virtual {p0}, Lcom/facebook/orca/intents/IntentHandler;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 35
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 36
    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    .line 37
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    .line 38
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v5

    .line 39
    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    .line 41
    invoke-virtual {p0}, Lcom/facebook/orca/intents/IntentHandler;->l()Lcom/facebook/orca/inject/FbInjector;

    move-result-object v7

    .line 42
    const-class v0, Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil;

    invoke-virtual {v7, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil;

    .line 43
    const-class v1, Lcom/facebook/orca/auth/AuthDataStore;

    invoke-virtual {v7, v1}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/auth/AuthDataStore;

    .line 44
    const-class v2, Lcom/facebook/orca/threadview/ThreadViewUtil;

    invoke-virtual {v7, v2}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/orca/threadview/ThreadViewUtil;

    .line 45
    const-class v8, Ljava/lang/Boolean;

    const-class v9, Lcom/facebook/orca/annotations/IsClientSmsEnabled;

    invoke-virtual {v7, v8, v9}, Lcom/facebook/orca/inject/FbInjector;->b(Ljava/lang/Class;Ljava/lang/Class;)Ljavax/inject/Provider;

    move-result-object v7

    .line 50
    invoke-interface {v1}, Lcom/facebook/orca/auth/AuthDataStore;->d()Lcom/facebook/orca/users/User;

    move-result-object v1

    if-nez v1, :cond_1

    .line 51
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/facebook/orca/auth/StartScreenActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 52
    invoke-virtual {p0, v0}, Lcom/facebook/orca/intents/IntentHandler;->startActivity(Landroid/content/Intent;)V

    .line 76
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/orca/intents/IntentHandler;->finish()V

    .line 77
    return-void

    .line 53
    :cond_1
    const-string v1, "smsto"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "sms"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "mmsto"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "mms"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 55
    :cond_2
    invoke-interface {v7}, Ljavax/inject/Provider;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 56
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/facebook/orca/intents/CanonicalThreadHandler;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 57
    const-string v2, "user_key"

    invoke-virtual {v0, v5}, Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil;->d(Ljava/lang/String;)Lcom/facebook/orca/users/UserKey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/users/UserKey;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    invoke-direct {p0, v1}, Lcom/facebook/orca/intents/IntentHandler;->a(Landroid/content/Intent;)V

    goto :goto_0

    .line 60
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/facebook/orca/auth/StartScreenActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 61
    invoke-virtual {p0, v0}, Lcom/facebook/orca/intents/IntentHandler;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 63
    :cond_4
    const-string v0, "thread"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v11, :cond_5

    .line 64
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {v2}, Lcom/facebook/orca/threadview/ThreadViewUtil;->a()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 65
    const-string v2, "thread_id"

    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    invoke-direct {p0, v1}, Lcom/facebook/orca/intents/IntentHandler;->a(Landroid/content/Intent;)V

    goto :goto_0

    .line 67
    :cond_5
    const-string v0, "threads"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 68
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/facebook/orca/threadlist/ThreadListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 69
    invoke-virtual {p0, v0}, Lcom/facebook/orca/intents/IntentHandler;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 70
    :cond_6
    const-string v0, "user"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v11, :cond_0

    .line 71
    new-instance v1, Landroid/content/Intent;

    const-class v0, Lcom/facebook/orca/intents/CanonicalThreadHandler;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 72
    const-string v2, "user_key"

    new-instance v3, Lcom/facebook/orca/users/UserKey;

    sget-object v4, Lcom/facebook/orca/users/User$Type;->FACEBOOK:Lcom/facebook/orca/users/User$Type;

    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v3, v4, v0}, Lcom/facebook/orca/users/UserKey;-><init>(Lcom/facebook/orca/users/User$Type;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/facebook/orca/users/UserKey;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    invoke-direct {p0, v1}, Lcom/facebook/orca/intents/IntentHandler;->a(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
