.class public Lcom/facebook/chatheads/ChatHeadPopUpActivity;
.super Lcom/facebook/orca/activity/FbFragmentActivity;
.source "ChatHeadPopUpActivity.java"

# interfaces
.implements Lcom/facebook/orca/threadview/ThreadMessageFragmentHost;


# static fields
.field private static final n:Ljava/lang/String;


# instance fields
.field private o:Lcom/facebook/orca/cache/DataCache;

.field private p:Lcom/facebook/orca/threadview/ThreadViewLoader;

.field private q:Lcom/facebook/orca/cache/ReadThreadManager;

.field private r:Lcom/facebook/chatheads/ChatHeadBroadcaster;

.field private s:Ljava/lang/String;

.field private t:Lcom/facebook/orca/threadview/ThreadViewFragmentBroadcastReceiver;

.field private u:Lcom/facebook/orca/activity/SafeLocalBroadcastReceiver;

.field private v:Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;

.field private w:Lcom/facebook/orca/threadview/ThreadViewLoader$Result;

.field private x:Z

.field private y:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/facebook/chatheads/ChatHeadPopUpActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/chatheads/ChatHeadPopUpActivity;->n:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/facebook/orca/activity/FbFragmentActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/chatheads/ChatHeadPopUpActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/facebook/chatheads/ChatHeadPopUpActivity;->i()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/chatheads/ChatHeadPopUpActivity;Lcom/facebook/orca/threadview/ThreadViewLoader$LoadType;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/facebook/chatheads/ChatHeadPopUpActivity;->a(Lcom/facebook/orca/threadview/ThreadViewLoader$LoadType;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/chatheads/ChatHeadPopUpActivity;Lcom/facebook/orca/threadview/ThreadViewLoader$LoadType;Lcom/facebook/orca/threadview/ThreadViewLoader$Error;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/facebook/chatheads/ChatHeadPopUpActivity;->a(Lcom/facebook/orca/threadview/ThreadViewLoader$LoadType;Lcom/facebook/orca/threadview/ThreadViewLoader$Error;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/chatheads/ChatHeadPopUpActivity;Lcom/facebook/orca/threadview/ThreadViewLoader$LoadType;Lcom/facebook/orca/threadview/ThreadViewLoader$Result;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/facebook/chatheads/ChatHeadPopUpActivity;->a(Lcom/facebook/orca/threadview/ThreadViewLoader$LoadType;Lcom/facebook/orca/threadview/ThreadViewLoader$Result;)V

    return-void
.end method

.method private a(Lcom/facebook/orca/threadview/ThreadViewLoader$LoadType;)V
    .locals 1
    .parameter

    .prologue
    .line 278
    sget-object v0, Lcom/facebook/orca/threadview/ThreadViewLoader$LoadType;->MORE_MESSAGES:Lcom/facebook/orca/threadview/ThreadViewLoader$LoadType;

    if-ne p1, v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/facebook/chatheads/ChatHeadPopUpActivity;->v:Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;

    invoke-virtual {v0}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->b()V

    .line 281
    :cond_0
    return-void
.end method

.method private a(Lcom/facebook/orca/threadview/ThreadViewLoader$LoadType;Lcom/facebook/orca/threadview/ThreadViewLoader$Error;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 292
    sget-object v0, Lcom/facebook/orca/threadview/ThreadViewLoader$LoadType;->MORE_MESSAGES:Lcom/facebook/orca/threadview/ThreadViewLoader$LoadType;

    if-ne p1, v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/facebook/chatheads/ChatHeadPopUpActivity;->v:Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;

    invoke-virtual {v0}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->I()V

    .line 295
    :cond_0
    return-void
.end method

.method private a(Lcom/facebook/orca/threadview/ThreadViewLoader$LoadType;Lcom/facebook/orca/threadview/ThreadViewLoader$Result;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 284
    iput-object p2, p0, Lcom/facebook/chatheads/ChatHeadPopUpActivity;->w:Lcom/facebook/orca/threadview/ThreadViewLoader$Result;

    .line 285
    invoke-direct {p0}, Lcom/facebook/chatheads/ChatHeadPopUpActivity;->m()V

    .line 286
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lcom/facebook/chatheads/ChatHeadPopUpActivity;->s:Ljava/lang/String;

    .line 129
    iget-object v0, p0, Lcom/facebook/chatheads/ChatHeadPopUpActivity;->p:Lcom/facebook/orca/threadview/ThreadViewLoader;

    iget-object v1, p0, Lcom/facebook/chatheads/ChatHeadPopUpActivity;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threadview/ThreadViewLoader;->a(Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/facebook/chatheads/ChatHeadPopUpActivity;->v:Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;

    iget-object v1, p0, Lcom/facebook/chatheads/ChatHeadPopUpActivity;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->a(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/facebook/chatheads/ChatHeadPopUpActivity;->t:Lcom/facebook/orca/threadview/ThreadViewFragmentBroadcastReceiver;

    iget-object v1, p0, Lcom/facebook/chatheads/ChatHeadPopUpActivity;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threadview/ThreadViewFragmentBroadcastReceiver;->a(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p0}, Lcom/facebook/chatheads/ChatHeadPopUpActivity;->h()V

    .line 134
    invoke-direct {p0}, Lcom/facebook/chatheads/ChatHeadPopUpActivity;->n()V

    .line 135
    return-void
.end method

.method static synthetic a(Lcom/facebook/chatheads/ChatHeadPopUpActivity;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/facebook/chatheads/ChatHeadPopUpActivity;->y:Z

    return p1
.end method

.method static synthetic b(Lcom/facebook/chatheads/ChatHeadPopUpActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/facebook/chatheads/ChatHeadPopUpActivity;->s:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/chatheads/ChatHeadPopUpActivity;Lcom/facebook/orca/threadview/ThreadViewLoader$LoadType;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/facebook/chatheads/ChatHeadPopUpActivity;->b(Lcom/facebook/orca/threadview/ThreadViewLoader$LoadType;)V

    return-void
.end method

.method private b(Lcom/facebook/orca/threadview/ThreadViewLoader$LoadType;)V
    .locals 0
    .parameter

    .prologue
    .line 289
    return-void
.end method

.method static synthetic b(Lcom/facebook/chatheads/ChatHeadPopUpActivity;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/facebook/chatheads/ChatHeadPopUpActivity;->x:Z

    return p1
.end method

.method private c(Z)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 258
    if-eqz p1, :cond_0

    .line 259
    new-instance v0, Lcom/facebook/orca/threadview/ThreadViewLoader$Params;

    invoke-direct {v0, v2, v2}, Lcom/facebook/orca/threadview/ThreadViewLoader$Params;-><init>(ZZ)V

    .line 269
    :goto_0
    iget-object v1, p0, Lcom/facebook/chatheads/ChatHeadPopUpActivity;->p:Lcom/facebook/orca/threadview/ThreadViewLoader;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/threadview/ThreadViewLoader;->a(Lcom/facebook/orca/threadview/ThreadViewLoader$Params;)V

    .line 270
    return-void

    .line 264
    :cond_0
    new-instance v0, Lcom/facebook/orca/threadview/ThreadViewLoader$Params;

    invoke-direct {v0, v1, v1}, Lcom/facebook/orca/threadview/ThreadViewLoader$Params;-><init>(ZZ)V

    goto :goto_0
.end method

.method private i()V
    .locals 3

    .prologue
    .line 186
    sget v0, Lcom/facebook/R$id;->messenger_popup_layout:I

    invoke-virtual {p0, v0}, Lcom/facebook/chatheads/ChatHeadPopUpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 187
    sget v1, Lcom/facebook/R$anim;->chat_heads_chatbox_close:I

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 188
    new-instance v2, Lcom/facebook/chatheads/ChatHeadPopUpActivity$4;

    invoke-direct {v2, p0}, Lcom/facebook/chatheads/ChatHeadPopUpActivity$4;-><init>(Lcom/facebook/chatheads/ChatHeadPopUpActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 201
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 202
    return-void
.end method

.method private j()V
    .locals 2

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/facebook/chatheads/ChatHeadPopUpActivity;->l()Lcom/facebook/orca/inject/FbInjector;

    move-result-object v1

    .line 206
    const-class v0, Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/cache/DataCache;

    iput-object v0, p0, Lcom/facebook/chatheads/ChatHeadPopUpActivity;->o:Lcom/facebook/orca/cache/DataCache;

    .line 207
    const-class v0, Lcom/facebook/orca/cache/ReadThreadManager;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/cache/ReadThreadManager;

    iput-object v0, p0, Lcom/facebook/chatheads/ChatHeadPopUpActivity;->q:Lcom/facebook/orca/cache/ReadThreadManager;

    .line 208
    const-class v0, Lcom/facebook/orca/threadview/ThreadViewLoader;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threadview/ThreadViewLoader;

    iput-object v0, p0, Lcom/facebook/chatheads/ChatHeadPopUpActivity;->p:Lcom/facebook/orca/threadview/ThreadViewLoader;

    .line 209
    const-class v0, Lcom/facebook/chatheads/ChatHeadBroadcaster;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/chatheads/ChatHeadBroadcaster;

    iput-object v0, p0, Lcom/facebook/chatheads/ChatHeadPopUpActivity;->r:Lcom/facebook/chatheads/ChatHeadBroadcaster;

    .line 210
    return-void
.end method

.method private k()V
    .locals 2

    .prologue
    .line 213
    iget-object v0, p0, Lcom/facebook/chatheads/ChatHeadPopUpActivity;->p:Lcom/facebook/orca/threadview/ThreadViewLoader;

    new-instance v1, Lcom/facebook/chatheads/ChatHeadPopUpActivity$5;

    invoke-direct {v1, p0}, Lcom/facebook/chatheads/ChatHeadPopUpActivity$5;-><init>(Lcom/facebook/chatheads/ChatHeadPopUpActivity;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threadview/ThreadViewLoader;->a(Lcom/facebook/orca/threadview/ThreadViewLoader$Callback;)V

    .line 238
    return-void
.end method

.method private m()V
    .locals 2

    .prologue
    .line 308
    iget-object v0, p0, Lcom/facebook/chatheads/ChatHeadPopUpActivity;->v:Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/facebook/chatheads/ChatHeadPopUpActivity;->v:Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;

    iget-object v1, p0, Lcom/facebook/chatheads/ChatHeadPopUpActivity;->w:Lcom/facebook/orca/threadview/ThreadViewLoader$Result;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->a(Lcom/facebook/orca/threadview/ThreadViewLoader$Result;)V

    .line 311
    :cond_0
    invoke-direct {p0}, Lcom/facebook/chatheads/ChatHeadPopUpActivity;->n()V

    .line 312
    return-void
.end method

.method private n()V
    .locals 4

    .prologue
    .line 315
    iget-object v0, p0, Lcom/facebook/chatheads/ChatHeadPopUpActivity;->o:Lcom/facebook/orca/cache/DataCache;

    iget-object v1, p0, Lcom/facebook/chatheads/ChatHeadPopUpActivity;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/cache/DataCache;->a(Ljava/lang/String;)J

    move-result-wide v0

    .line 316
    iget-object v2, p0, Lcom/facebook/chatheads/ChatHeadPopUpActivity;->w:Lcom/facebook/orca/threadview/ThreadViewLoader$Result;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/facebook/chatheads/ChatHeadPopUpActivity;->w:Lcom/facebook/orca/threadview/ThreadViewLoader$Result;

    iget-object v2, v2, Lcom/facebook/orca/threadview/ThreadViewLoader$Result;->a:Lcom/facebook/orca/threads/ThreadSummary;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/facebook/chatheads/ChatHeadPopUpActivity;->w:Lcom/facebook/orca/threadview/ThreadViewLoader$Result;

    iget-object v2, v2, Lcom/facebook/orca/threadview/ThreadViewLoader$Result;->a:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v2}, Lcom/facebook/orca/threads/ThreadSummary;->b()J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-lez v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/facebook/chatheads/ChatHeadPopUpActivity;->q:Lcom/facebook/orca/cache/ReadThreadManager;

    iget-object v1, p0, Lcom/facebook/chatheads/ChatHeadPopUpActivity;->w:Lcom/facebook/orca/threadview/ThreadViewLoader$Result;

    iget-object v1, v1, Lcom/facebook/orca/threadview/ThreadViewLoader$Result;->a:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/cache/ReadThreadManager;->a(Lcom/facebook/orca/threads/ThreadSummary;)V

    .line 320
    :cond_0
    return-void
.end method


# virtual methods
.method protected a(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/FbFragmentActivity;->a(Landroid/os/Bundle;)V

    .line 58
    sget v0, Lcom/facebook/R$anim;->chat_heads_activity_transition:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/facebook/chatheads/ChatHeadPopUpActivity;->overridePendingTransition(II)V

    .line 60
    sget v0, Lcom/facebook/R$layout;->chat_heads_pop_up_activity_layout:I

    invoke-virtual {p0, v0}, Lcom/facebook/chatheads/ChatHeadPopUpActivity;->setContentView(I)V

    .line 63
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Lcom/facebook/chatheads/ChatHeadPopUpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/facebook/chatheads/ChatHeadPopUpActivity$1;

    invoke-direct {v1, p0}, Lcom/facebook/chatheads/ChatHeadPopUpActivity$1;-><init>(Lcom/facebook/chatheads/ChatHeadPopUpActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    invoke-virtual {p0}, Lcom/facebook/chatheads/ChatHeadPopUpActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 72
    const-string v1, "thread_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/chatheads/ChatHeadPopUpActivity;->s:Ljava/lang/String;

    .line 74
    invoke-direct {p0}, Lcom/facebook/chatheads/ChatHeadPopUpActivity;->j()V

    .line 75
    invoke-direct {p0}, Lcom/facebook/chatheads/ChatHeadPopUpActivity;->k()V

    .line 77
    invoke-virtual {p0}, Lcom/facebook/chatheads/ChatHeadPopUpActivity;->l()Lcom/facebook/orca/inject/FbInjector;

    move-result-object v0

    const-class v1, Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/FragmentManager;

    .line 78
    sget v1, Lcom/facebook/R$id;->thread_view_messages_fragment:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;

    iput-object v0, p0, Lcom/facebook/chatheads/ChatHeadPopUpActivity;->v:Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;

    .line 82
    new-instance v0, Lcom/facebook/chatheads/ChatHeadPopUpActivity$2;

    invoke-direct {v0, p0, p0}, Lcom/facebook/chatheads/ChatHeadPopUpActivity$2;-><init>(Lcom/facebook/chatheads/ChatHeadPopUpActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/chatheads/ChatHeadPopUpActivity;->t:Lcom/facebook/orca/threadview/ThreadViewFragmentBroadcastReceiver;

    .line 94
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.facebook.chathead.CHAT_HEAD_CLOSED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 95
    new-instance v1, Lcom/facebook/chatheads/ChatHeadPopUpActivity$3;

    invoke-direct {v1, p0, p0, v0}, Lcom/facebook/chatheads/ChatHeadPopUpActivity$3;-><init>(Lcom/facebook/chatheads/ChatHeadPopUpActivity;Landroid/content/Context;Landroid/content/IntentFilter;)V

    iput-object v1, p0, Lcom/facebook/chatheads/ChatHeadPopUpActivity;->u:Lcom/facebook/orca/activity/SafeLocalBroadcastReceiver;

    .line 110
    iget-object v0, p0, Lcom/facebook/chatheads/ChatHeadPopUpActivity;->p:Lcom/facebook/orca/threadview/ThreadViewLoader;

    iget-object v1, p0, Lcom/facebook/chatheads/ChatHeadPopUpActivity;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threadview/ThreadViewLoader;->a(Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/facebook/chatheads/ChatHeadPopUpActivity;->v:Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;

    iget-object v1, p0, Lcom/facebook/chatheads/ChatHeadPopUpActivity;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->a(Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/facebook/chatheads/ChatHeadPopUpActivity;->t:Lcom/facebook/orca/threadview/ThreadViewFragmentBroadcastReceiver;

    iget-object v1, p0, Lcom/facebook/chatheads/ChatHeadPopUpActivity;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threadview/ThreadViewFragmentBroadcastReceiver;->a(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/facebook/chatheads/ChatHeadPopUpActivity;->v:Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;

    invoke-virtual {v0, p0}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab;->a(Lcom/facebook/orca/threadview/ThreadMessageFragmentHost;)V

    .line 116
    iget-object v0, p0, Lcom/facebook/chatheads/ChatHeadPopUpActivity;->t:Lcom/facebook/orca/threadview/ThreadViewFragmentBroadcastReceiver;

    invoke-virtual {v0}, Lcom/facebook/orca/threadview/ThreadViewFragmentBroadcastReceiver;->a()V

    .line 117
    iget-object v0, p0, Lcom/facebook/chatheads/ChatHeadPopUpActivity;->u:Lcom/facebook/orca/activity/SafeLocalBroadcastReceiver;

    invoke-virtual {v0}, Lcom/facebook/orca/activity/SafeLocalBroadcastReceiver;->a()V

    .line 118
    return-void
.end method

.method public a(Lcom/facebook/orca/compose/ComposeMode;)V
    .locals 0
    .parameter

    .prologue
    .line 275
    return-void
.end method

.method public b(Z)V
    .locals 1
    .parameter

    .prologue
    .line 301
    iget-object v0, p0, Lcom/facebook/chatheads/ChatHeadPopUpActivity;->p:Lcom/facebook/orca/threadview/ThreadViewLoader;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/threadview/ThreadViewLoader;->a(Z)V

    .line 302
    return-void
.end method

.method public h()V
    .locals 1

    .prologue
    .line 249
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/chatheads/ChatHeadPopUpActivity;->c(Z)V

    .line 250
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 181
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/chatheads/ChatHeadPopUpActivity;->y:Z

    .line 182
    invoke-direct {p0}, Lcom/facebook/chatheads/ChatHeadPopUpActivity;->i()V

    .line 183
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 174
    invoke-super {p0}, Lcom/facebook/orca/activity/FbFragmentActivity;->onDestroy()V

    .line 175
    iget-object v0, p0, Lcom/facebook/chatheads/ChatHeadPopUpActivity;->t:Lcom/facebook/orca/threadview/ThreadViewFragmentBroadcastReceiver;

    invoke-virtual {v0}, Lcom/facebook/orca/threadview/ThreadViewFragmentBroadcastReceiver;->b()V

    .line 176
    iget-object v0, p0, Lcom/facebook/chatheads/ChatHeadPopUpActivity;->u:Lcom/facebook/orca/activity/SafeLocalBroadcastReceiver;

    invoke-virtual {v0}, Lcom/facebook/orca/activity/SafeLocalBroadcastReceiver;->b()V

    .line 177
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter

    .prologue
    .line 122
    const-string v0, "thread_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 123
    invoke-direct {p0, v0}, Lcom/facebook/chatheads/ChatHeadPopUpActivity;->a(Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 165
    invoke-super {p0}, Lcom/facebook/orca/activity/FbFragmentActivity;->onPause()V

    .line 167
    iget-boolean v0, p0, Lcom/facebook/chatheads/ChatHeadPopUpActivity;->x:Z

    if-nez v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/facebook/chatheads/ChatHeadPopUpActivity;->r:Lcom/facebook/chatheads/ChatHeadBroadcaster;

    iget-object v1, p0, Lcom/facebook/chatheads/ChatHeadPopUpActivity;->s:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/facebook/chatheads/ChatHeadPopUpActivity;->y:Z

    invoke-virtual {v0, v1, v2}, Lcom/facebook/chatheads/ChatHeadBroadcaster;->a(Ljava/lang/String;Z)V

    .line 170
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 151
    invoke-super {p0}, Lcom/facebook/orca/activity/FbFragmentActivity;->onResume()V

    .line 153
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/chatheads/ChatHeadPopUpActivity;->x:Z

    .line 154
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/chatheads/ChatHeadPopUpActivity;->y:Z

    .line 156
    invoke-virtual {p0}, Lcom/facebook/chatheads/ChatHeadPopUpActivity;->h()V

    .line 158
    sget v0, Lcom/facebook/R$id;->messenger_popup_layout:I

    invoke-virtual {p0, v0}, Lcom/facebook/chatheads/ChatHeadPopUpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 159
    sget v1, Lcom/facebook/R$anim;->chat_heads_chatbox_open:I

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 160
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 161
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 139
    invoke-super {p0}, Lcom/facebook/orca/activity/FbFragmentActivity;->onStart()V

    .line 140
    iget-object v0, p0, Lcom/facebook/chatheads/ChatHeadPopUpActivity;->t:Lcom/facebook/orca/threadview/ThreadViewFragmentBroadcastReceiver;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threadview/ThreadViewFragmentBroadcastReceiver;->a(Z)V

    .line 141
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 145
    invoke-super {p0}, Lcom/facebook/orca/activity/FbFragmentActivity;->onStop()V

    .line 146
    iget-object v0, p0, Lcom/facebook/chatheads/ChatHeadPopUpActivity;->t:Lcom/facebook/orca/threadview/ThreadViewFragmentBroadcastReceiver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threadview/ThreadViewFragmentBroadcastReceiver;->a(Z)V

    .line 147
    return-void
.end method
