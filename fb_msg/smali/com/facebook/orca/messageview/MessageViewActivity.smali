.class public Lcom/facebook/orca/messageview/MessageViewActivity;
.super Lcom/facebook/orca/activity/FbFragmentActivity;
.source "MessageViewActivity.java"

# interfaces
.implements Lcom/facebook/orca/activity/ExportMenuToFbHostActivity;
.implements Lcom/facebook/orca/analytics/AnalyticsActivity;


# static fields
.field private static final n:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private A:Landroid/widget/TextView;

.field private B:Lcom/facebook/orca/photos/tiles/UserTileView;

.field private C:Lcom/facebook/widget/MapImage;

.field private D:Landroid/widget/TextView;

.field private E:Lcom/facebook/orca/messageview/MessageViewOtherAttachmentsView;

.field private F:Lcom/facebook/orca/messageview/MessageReaderListView;

.field private G:Ljava/lang/String;

.field private H:Lcom/facebook/orca/threads/Message;

.field private I:Lcom/facebook/orca/activity/SafeLocalBroadcastReceiver;

.field private J:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/facebook/orca/location/GeocodingForMessageLocationResult;",
            ">;"
        }
    .end annotation
.end field

.field private o:Lcom/facebook/orca/common/util/AndroidThreadUtil;

.field private p:Lcom/facebook/orca/cache/DataCache;

.field private q:Lcom/facebook/orca/common/ui/util/MessageRenderingUtil;

.field private r:Lcom/facebook/orca/attachments/AttachmentDataFactory;

.field private s:Lcom/facebook/orca/threads/ThreadDateUtil;

.field private t:Lcom/facebook/orca/threads/ThreadSourceUtil;

.field private u:Lcom/facebook/orca/location/GeocodingForMessageLocationExecutor;

.field private v:Lcom/facebook/orca/analytics/AnalyticsLogger;

.field private w:Lcom/facebook/orca/threads/ThreadSummary;

.field private x:Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;

.field private y:Landroid/widget/TextView;

.field private z:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    const-class v0, Lcom/facebook/orca/messageview/MessageViewActivity;

    sput-object v0, Lcom/facebook/orca/messageview/MessageViewActivity;->n:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/facebook/orca/activity/FbFragmentActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/messageview/MessageViewActivity;Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->J:Lcom/google/common/util/concurrent/ListenableFuture;

    return-object p1
.end method

.method private a(Landroid/widget/RelativeLayout$LayoutParams;Landroid/widget/RelativeLayout$LayoutParams;Landroid/widget/LinearLayout$LayoutParams;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 279
    const/16 v0, 0x9

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 280
    const/4 v0, 0x1

    sget v1, Lcom/facebook/R$id;->message_user_img:I

    invoke-virtual {p2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 281
    invoke-virtual {p0}, Lcom/facebook/orca/messageview/MessageViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x40a0

    invoke-static {v0, v1}, Lcom/facebook/orca/common/util/SizeUtil;->a(Landroid/content/res/Resources;F)I

    move-result v0

    iput v0, p2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 284
    invoke-virtual {p0}, Lcom/facebook/orca/messageview/MessageViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x4238

    invoke-static {v0, v1}, Lcom/facebook/orca/common/util/SizeUtil;->a(Landroid/content/res/Resources;F)I

    move-result v0

    iput v0, p3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 285
    return-void
.end method

.method private a(Landroid/widget/RelativeLayout$LayoutParams;Landroid/widget/RelativeLayout$LayoutParams;Landroid/widget/LinearLayout$LayoutParams;Landroid/widget/LinearLayout$LayoutParams;Landroid/widget/LinearLayout$LayoutParams;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x5

    .line 294
    const/16 v0, 0xb

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 295
    const/4 v0, 0x0

    sget v1, Lcom/facebook/R$id;->message_user_img:I

    invoke-virtual {p2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 296
    invoke-virtual {p0}, Lcom/facebook/orca/messageview/MessageViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x40a0

    invoke-static {v0, v1}, Lcom/facebook/orca/common/util/SizeUtil;->a(Landroid/content/res/Resources;F)I

    move-result v0

    iput v0, p2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 298
    iget-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->H:Lcom/facebook/orca/threads/Message;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/Message;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/threads/MessagingIdUtil;->j(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->D:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/facebook/orca/messageview/MessageViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/R$drawable;->orca_convo_bubble_green_normal:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 306
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/orca/messageview/MessageViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x4238

    invoke-static {v0, v1}, Lcom/facebook/orca/common/util/SizeUtil;->a(Landroid/content/res/Resources;F)I

    move-result v0

    iput v0, p3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 307
    iput v3, p3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 308
    iput v3, p4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 309
    iput v3, p5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 310
    return-void

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->D:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/facebook/orca/messageview/MessageViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/R$drawable;->orca_convo_bubble_blue_normal:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private a(Lcom/facebook/orca/location/Coordinates;)V
    .locals 3
    .parameter

    .prologue
    .line 313
    if-nez p1, :cond_0

    .line 336
    :goto_0
    return-void

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->u:Lcom/facebook/orca/location/GeocodingForMessageLocationExecutor;

    iget-object v1, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->H:Lcom/facebook/orca/threads/Message;

    invoke-virtual {v1}, Lcom/facebook/orca/threads/Message;->k()Lcom/facebook/orca/location/Coordinates;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/location/GeocodingForMessageLocationExecutor;->a(Lcom/facebook/orca/location/Coordinates;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->J:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 317
    iget-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->o:Lcom/facebook/orca/common/util/AndroidThreadUtil;

    iget-object v1, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->J:Lcom/google/common/util/concurrent/ListenableFuture;

    new-instance v2, Lcom/facebook/orca/messageview/MessageViewActivity$4;

    invoke-direct {v2, p0}, Lcom/facebook/orca/messageview/MessageViewActivity$4;-><init>(Lcom/facebook/orca/messageview/MessageViewActivity;)V

    invoke-interface {v0, v1, v2}, Lcom/facebook/orca/common/util/AndroidThreadUtil;->a(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/facebook/orca/messageview/MessageViewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/facebook/orca/messageview/MessageViewActivity;->n()V

    return-void
.end method

.method static synthetic b(Lcom/facebook/orca/messageview/MessageViewActivity;)Lcom/facebook/orca/threads/Message;
    .locals 1
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->H:Lcom/facebook/orca/threads/Message;

    return-object v0
.end method

.method static synthetic c(Lcom/facebook/orca/messageview/MessageViewActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->G:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/facebook/orca/messageview/MessageViewActivity;)Lcom/facebook/orca/common/ui/util/MessageRenderingUtil;
    .locals 1
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->q:Lcom/facebook/orca/common/ui/util/MessageRenderingUtil;

    return-object v0
.end method

.method static synthetic e(Lcom/facebook/orca/messageview/MessageViewActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->A:Landroid/widget/TextView;

    return-object v0
.end method

.method private i()V
    .locals 7

    .prologue
    .line 256
    iget-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->B:Lcom/facebook/orca/photos/tiles/UserTileView;

    invoke-virtual {v0}, Lcom/facebook/orca/photos/tiles/UserTileView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 258
    iget-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->D:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 260
    iget-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->A:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 262
    iget-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->y:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 264
    iget-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->z:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 267
    iget-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->H:Lcom/facebook/orca/threads/Message;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/Message;->f()Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ParticipantInfo;->e()Lcom/facebook/orca/users/UserKey;

    move-result-object v0

    iget-object v6, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->p:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v6}, Lcom/facebook/orca/cache/DataCache;->b()Lcom/facebook/orca/users/UserKey;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/facebook/orca/users/UserKey;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    .line 268
    invoke-direct/range {v0 .. v5}, Lcom/facebook/orca/messageview/MessageViewActivity;->a(Landroid/widget/RelativeLayout$LayoutParams;Landroid/widget/RelativeLayout$LayoutParams;Landroid/widget/LinearLayout$LayoutParams;Landroid/widget/LinearLayout$LayoutParams;Landroid/widget/LinearLayout$LayoutParams;)V

    .line 272
    :goto_0
    return-void

    .line 270
    :cond_0
    invoke-direct {p0, v1, v2, v3}, Lcom/facebook/orca/messageview/MessageViewActivity;->a(Landroid/widget/RelativeLayout$LayoutParams;Landroid/widget/RelativeLayout$LayoutParams;Landroid/widget/LinearLayout$LayoutParams;)V

    goto :goto_0
.end method

.method private j()V
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->I:Lcom/facebook/orca/activity/SafeLocalBroadcastReceiver;

    invoke-virtual {v0}, Lcom/facebook/orca/activity/SafeLocalBroadcastReceiver;->a()V

    .line 360
    return-void
.end method

.method private k()V
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->I:Lcom/facebook/orca/activity/SafeLocalBroadcastReceiver;

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->I:Lcom/facebook/orca/activity/SafeLocalBroadcastReceiver;

    invoke-virtual {v0}, Lcom/facebook/orca/activity/SafeLocalBroadcastReceiver;->b()V

    .line 366
    :cond_0
    return-void
.end method

.method private m()V
    .locals 2

    .prologue
    .line 369
    iget-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->J:Lcom/google/common/util/concurrent/ListenableFuture;

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->J:Lcom/google/common/util/concurrent/ListenableFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/common/util/concurrent/ListenableFuture;->cancel(Z)Z

    .line 371
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->J:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 373
    :cond_0
    return-void
.end method

.method private n()V
    .locals 4

    .prologue
    .line 376
    iget-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->H:Lcom/facebook/orca/threads/Message;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/Message;->f()Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v0

    .line 377
    invoke-virtual {v0}, Lcom/facebook/orca/threads/ParticipantInfo;->e()Lcom/facebook/orca/users/UserKey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/users/UserKey;->b()Ljava/lang/String;

    move-result-object v0

    .line 378
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fb://profile/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 379
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 380
    invoke-static {p0, v2}, Lcom/facebook/orca/common/util/IntentUtil;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 381
    invoke-virtual {p0, v2}, Lcom/facebook/orca/messageview/MessageViewActivity;->startActivity(Landroid/content/Intent;)V

    .line 388
    :goto_0
    return-void

    .line 385
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://m.facebook.com/profile.php?id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 386
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 387
    invoke-virtual {p0, v1}, Lcom/facebook/orca/messageview/MessageViewActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 114
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/FbFragmentActivity;->a(Landroid/os/Bundle;)V

    .line 116
    sget v0, Lcom/facebook/R$layout;->orca_message_view:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/messageview/MessageViewActivity;->setContentView(I)V

    .line 118
    invoke-virtual {p0}, Lcom/facebook/orca/messageview/MessageViewActivity;->l()Lcom/facebook/orca/inject/FbInjector;

    move-result-object v1

    .line 119
    const-class v0, Lcom/facebook/orca/common/util/AndroidThreadUtil;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/util/AndroidThreadUtil;

    iput-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->o:Lcom/facebook/orca/common/util/AndroidThreadUtil;

    .line 120
    const-class v0, Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/cache/DataCache;

    iput-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->p:Lcom/facebook/orca/cache/DataCache;

    .line 121
    const-class v0, Lcom/facebook/orca/common/ui/util/MessageRenderingUtil;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/ui/util/MessageRenderingUtil;

    iput-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->q:Lcom/facebook/orca/common/ui/util/MessageRenderingUtil;

    .line 122
    const-class v0, Lcom/facebook/orca/attachments/AttachmentDataFactory;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/attachments/AttachmentDataFactory;

    iput-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->r:Lcom/facebook/orca/attachments/AttachmentDataFactory;

    .line 123
    const-class v0, Lcom/facebook/orca/threads/ThreadDateUtil;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/ThreadDateUtil;

    iput-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->s:Lcom/facebook/orca/threads/ThreadDateUtil;

    .line 124
    const-class v0, Lcom/facebook/orca/threads/ThreadSourceUtil;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/ThreadSourceUtil;

    iput-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->t:Lcom/facebook/orca/threads/ThreadSourceUtil;

    .line 125
    const-class v0, Lcom/facebook/orca/analytics/AnalyticsLogger;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/analytics/AnalyticsLogger;

    iput-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->v:Lcom/facebook/orca/analytics/AnalyticsLogger;

    .line 126
    const-class v0, Lcom/facebook/orca/location/GeocodingForMessageLocationExecutor;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/location/GeocodingForMessageLocationExecutor;

    iput-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->u:Lcom/facebook/orca/location/GeocodingForMessageLocationExecutor;

    .line 129
    invoke-static {p0}, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->a(Landroid/app/Activity;)Z

    .line 130
    sget v0, Lcom/facebook/R$id;->titlebar:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/messageview/MessageViewActivity;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;

    iput-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->x:Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;

    .line 131
    sget v0, Lcom/facebook/R$id;->message_name:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/messageview/MessageViewActivity;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->y:Landroid/widget/TextView;

    .line 132
    sget v0, Lcom/facebook/R$id;->message_date:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/messageview/MessageViewActivity;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->z:Landroid/widget/TextView;

    .line 133
    sget v0, Lcom/facebook/R$id;->message_via:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/messageview/MessageViewActivity;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->A:Landroid/widget/TextView;

    .line 134
    sget v0, Lcom/facebook/R$id;->message_user_img:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/messageview/MessageViewActivity;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/photos/tiles/UserTileView;

    iput-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->B:Lcom/facebook/orca/photos/tiles/UserTileView;

    .line 135
    sget v0, Lcom/facebook/R$id;->message_map_image:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/messageview/MessageViewActivity;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/widget/MapImage;

    iput-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->C:Lcom/facebook/widget/MapImage;

    .line 136
    sget v0, Lcom/facebook/R$id;->message_text:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/messageview/MessageViewActivity;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->D:Landroid/widget/TextView;

    .line 137
    sget v0, Lcom/facebook/R$id;->message_other_attachments:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/messageview/MessageViewActivity;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/messageview/MessageViewOtherAttachmentsView;

    iput-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->E:Lcom/facebook/orca/messageview/MessageViewOtherAttachmentsView;

    .line 138
    sget v0, Lcom/facebook/R$id;->message_reader_list:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/messageview/MessageViewActivity;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/messageview/MessageReaderListView;

    iput-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->F:Lcom/facebook/orca/messageview/MessageReaderListView;

    .line 140
    invoke-virtual {p0}, Lcom/facebook/orca/messageview/MessageViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 141
    const-string v0, "thread_id"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->G:Ljava/lang/String;

    .line 142
    iget-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->p:Lcom/facebook/orca/cache/DataCache;

    iget-object v3, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->G:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/facebook/orca/cache/DataCache;->b(Ljava/lang/String;)Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->w:Lcom/facebook/orca/threads/ThreadSummary;

    .line 143
    const-string v0, "message"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/Message;

    iput-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->H:Lcom/facebook/orca/threads/Message;

    .line 144
    iget-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->w:Lcom/facebook/orca/threads/ThreadSummary;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->H:Lcom/facebook/orca/threads/Message;

    if-nez v0, :cond_1

    .line 145
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/orca/messageview/MessageViewActivity;->finish()V

    .line 253
    :goto_0
    return-void

    .line 149
    :cond_1
    new-instance v0, Lcom/facebook/orca/messageview/MessageReaderListView$Parameters;

    invoke-direct {v0}, Lcom/facebook/orca/messageview/MessageReaderListView$Parameters;-><init>()V

    .line 150
    const-string v3, "readers"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 151
    const-string v3, "readers"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 153
    invoke-virtual {v0, v3}, Lcom/facebook/orca/messageview/MessageReaderListView$Parameters;->a(Ljava/util/List;)V

    .line 155
    :cond_2
    const-string v3, "other_readers"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 156
    const-string v3, "other_readers"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 158
    invoke-virtual {v0, v2}, Lcom/facebook/orca/messageview/MessageReaderListView$Parameters;->b(Ljava/util/List;)V

    .line 160
    :cond_3
    iget-object v2, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->H:Lcom/facebook/orca/threads/Message;

    invoke-virtual {v0, v2}, Lcom/facebook/orca/messageview/MessageReaderListView$Parameters;->a(Lcom/facebook/orca/threads/Message;)V

    .line 161
    iget-object v2, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->w:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v0, v2}, Lcom/facebook/orca/messageview/MessageReaderListView$Parameters;->a(Lcom/facebook/orca/threads/ThreadSummary;)V

    .line 162
    iget-object v2, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->F:Lcom/facebook/orca/messageview/MessageReaderListView;

    invoke-virtual {v2, v0}, Lcom/facebook/orca/messageview/MessageReaderListView;->setParameters(Lcom/facebook/orca/messageview/MessageReaderListView$Parameters;)V

    .line 164
    const-class v0, Lcom/facebook/orca/threadview/ThreadViewTitleHelper;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threadview/ThreadViewTitleHelper;

    .line 165
    iget-object v1, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->x:Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threadview/ThreadViewTitleHelper;->a(Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;)V

    .line 166
    iget-object v1, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->w:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threadview/ThreadViewTitleHelper;->a(Lcom/facebook/orca/threads/ThreadSummary;)V

    .line 171
    iget-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->H:Lcom/facebook/orca/threads/Message;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/Message;->f()Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v0

    .line 172
    iget-object v1, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->w:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/threads/ThreadSummary;->a(Lcom/facebook/orca/threads/ParticipantInfo;)Lcom/facebook/orca/threads/ThreadParticipant;

    move-result-object v1

    .line 173
    if-eqz v1, :cond_6

    .line 174
    iget-object v2, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->B:Lcom/facebook/orca/photos/tiles/UserTileView;

    invoke-virtual {v1}, Lcom/facebook/orca/threads/ThreadParticipant;->d()Lcom/facebook/orca/users/UserKey;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/facebook/orca/photos/tiles/UserTileView;->setUserKey(Lcom/facebook/orca/users/UserKey;)V

    .line 180
    :goto_1
    iget-object v1, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->y:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ParticipantInfo;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    invoke-virtual {v0}, Lcom/facebook/orca/threads/ParticipantInfo;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 182
    iget-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->y:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setClickable(Z)V

    .line 183
    iget-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->y:Landroid/widget/TextView;

    new-instance v1, Lcom/facebook/orca/messageview/MessageViewActivity$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/messageview/MessageViewActivity$1;-><init>(Lcom/facebook/orca/messageview/MessageViewActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    :cond_4
    iget-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->z:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->s:Lcom/facebook/orca/threads/ThreadDateUtil;

    iget-object v2, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->H:Lcom/facebook/orca/threads/Message;

    invoke-virtual {v2}, Lcom/facebook/orca/threads/Message;->c()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/facebook/orca/threads/ThreadDateUtil;->d(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    iget-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->A:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->t:Lcom/facebook/orca/threads/ThreadSourceUtil;

    iget-object v2, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->H:Lcom/facebook/orca/threads/Message;

    invoke-virtual {v1, v2}, Lcom/facebook/orca/threads/ThreadSourceUtil;->a(Lcom/facebook/orca/threads/Message;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    iget-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->H:Lcom/facebook/orca/threads/Message;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/Message;->k()Lcom/facebook/orca/location/Coordinates;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/orca/messageview/MessageViewActivity;->a(Lcom/facebook/orca/location/Coordinates;)V

    .line 198
    iget-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->H:Lcom/facebook/orca/threads/Message;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/Message;->o()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 199
    iget-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->C:Lcom/facebook/widget/MapImage;

    invoke-virtual {v0, v5}, Lcom/facebook/widget/MapImage;->setVisibility(I)V

    .line 200
    iget-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->C:Lcom/facebook/widget/MapImage;

    iget-object v1, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->H:Lcom/facebook/orca/threads/Message;

    invoke-virtual {v1}, Lcom/facebook/orca/threads/Message;->k()Lcom/facebook/orca/location/Coordinates;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/orca/location/Coordinates;->a()Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/widget/MapImage;->setCenter(Landroid/location/Location;)V

    .line 202
    iget-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->C:Lcom/facebook/widget/MapImage;

    new-instance v1, Lcom/facebook/orca/messageview/MessageViewActivity$2;

    invoke-direct {v1, p0}, Lcom/facebook/orca/messageview/MessageViewActivity$2;-><init>(Lcom/facebook/orca/messageview/MessageViewActivity;)V

    invoke-virtual {v0, v1}, Lcom/facebook/widget/MapImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    :cond_5
    iget-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->H:Lcom/facebook/orca/threads/Message;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/Message;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/StringUtil;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 220
    iget-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->D:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 221
    iget-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->A:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 232
    :goto_2
    iget-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->r:Lcom/facebook/orca/attachments/AttachmentDataFactory;

    iget-object v1, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->H:Lcom/facebook/orca/threads/Message;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/attachments/AttachmentDataFactory;->e(Lcom/facebook/orca/threads/Message;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 233
    iget-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->E:Lcom/facebook/orca/messageview/MessageViewOtherAttachmentsView;

    iget-object v1, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->H:Lcom/facebook/orca/threads/Message;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/messageview/MessageViewOtherAttachmentsView;->setMessage(Lcom/facebook/orca/threads/Message;)V

    .line 234
    iget-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->E:Lcom/facebook/orca/messageview/MessageViewOtherAttachmentsView;

    invoke-virtual {v0, v5}, Lcom/facebook/orca/messageview/MessageViewOtherAttachmentsView;->setVisibility(I)V

    .line 239
    :goto_3
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 240
    const-string v1, "com.facebook.orca.ACTION_DELETED_MESSAGES_FOR_UI"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 241
    new-instance v1, Lcom/facebook/orca/messageview/MessageViewActivity$3;

    invoke-direct {v1, p0, p0, v0}, Lcom/facebook/orca/messageview/MessageViewActivity$3;-><init>(Lcom/facebook/orca/messageview/MessageViewActivity;Landroid/content/Context;Landroid/content/IntentFilter;)V

    iput-object v1, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->I:Lcom/facebook/orca/activity/SafeLocalBroadcastReceiver;

    goto/16 :goto_0

    .line 176
    :cond_6
    iget-object v1, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->B:Lcom/facebook/orca/photos/tiles/UserTileView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/facebook/orca/photos/tiles/UserTileView;->setUserKey(Lcom/facebook/orca/users/UserKey;)V

    goto/16 :goto_1

    .line 223
    :cond_7
    iget-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->q:Lcom/facebook/orca/common/ui/util/MessageRenderingUtil;

    iget-object v1, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->H:Lcom/facebook/orca/threads/Message;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/util/MessageRenderingUtil;->a(Lcom/facebook/orca/threads/Message;)Landroid/text/Spanned;

    move-result-object v0

    .line 224
    iget-object v1, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->D:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setLinksClickable(Z)V

    .line 225
    iget-object v1, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->D:Landroid/widget/TextView;

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 226
    iget-object v1, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->D:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 227
    iget-object v1, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->D:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    invoke-direct {p0}, Lcom/facebook/orca/messageview/MessageViewActivity;->i()V

    goto :goto_2

    .line 236
    :cond_8
    iget-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->E:Lcom/facebook/orca/messageview/MessageViewOtherAttachmentsView;

    invoke-virtual {v0, v4}, Lcom/facebook/orca/messageview/MessageViewOtherAttachmentsView;->setVisibility(I)V

    goto :goto_3
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    const-string v0, "message"

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter

    .prologue
    .line 392
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/FbFragmentActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 393
    invoke-virtual {p0}, Lcom/facebook/orca/messageview/MessageViewActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 394
    sget v1, Lcom/facebook/R$menu;->message_view_menu:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 395
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 353
    invoke-super {p0}, Lcom/facebook/orca/activity/FbFragmentActivity;->onDestroy()V

    .line 354
    invoke-direct {p0}, Lcom/facebook/orca/messageview/MessageViewActivity;->k()V

    .line 355
    invoke-direct {p0}, Lcom/facebook/orca/messageview/MessageViewActivity;->m()V

    .line 356
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter

    .prologue
    .line 401
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/facebook/R$id;->delete:I

    if-ne v0, v1, :cond_0

    .line 402
    iget-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->v:Lcom/facebook/orca/analytics/AnalyticsLogger;

    new-instance v1, Lcom/facebook/orca/analytics/HoneyClientEvent;

    const-string v2, "click"

    invoke-direct {v1, v2}, Lcom/facebook/orca/analytics/HoneyClientEvent;-><init>(Ljava/lang/String;)V

    const-string v2, "opt_menu_item"

    invoke-virtual {v1, v2}, Lcom/facebook/orca/analytics/HoneyClientEvent;->d(Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    move-result-object v1

    const-string v2, "delete"

    invoke-virtual {v1, v2}, Lcom/facebook/orca/analytics/HoneyClientEvent;->e(Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/analytics/AnalyticsLogger;->a(Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;)V

    .line 405
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/facebook/orca/mutators/DeleteMessagesActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 406
    const-string v1, "thread_id"

    iget-object v2, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->H:Lcom/facebook/orca/threads/Message;

    invoke-virtual {v2}, Lcom/facebook/orca/threads/Message;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 407
    const-string v1, "message_ids"

    iget-object v2, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->H:Lcom/facebook/orca/threads/Message;

    invoke-virtual {v2}, Lcom/facebook/orca/threads/Message;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/collect/ImmutableList;->a(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 408
    invoke-virtual {p0, v0}, Lcom/facebook/orca/messageview/MessageViewActivity;->startActivity(Landroid/content/Intent;)V

    .line 409
    const/4 v0, 0x1

    .line 411
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/FbFragmentActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 340
    invoke-super {p0}, Lcom/facebook/orca/activity/FbFragmentActivity;->onStart()V

    .line 341
    invoke-direct {p0}, Lcom/facebook/orca/messageview/MessageViewActivity;->j()V

    .line 342
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 346
    invoke-super {p0}, Lcom/facebook/orca/activity/FbFragmentActivity;->onStop()V

    .line 347
    invoke-direct {p0}, Lcom/facebook/orca/messageview/MessageViewActivity;->k()V

    .line 348
    invoke-direct {p0}, Lcom/facebook/orca/messageview/MessageViewActivity;->m()V

    .line 349
    return-void
.end method
