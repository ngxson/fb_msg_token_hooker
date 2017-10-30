.class public Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;
.super Ljava/lang/Object;
.source "DefaultMessagingNotificationRenderer.java"

# interfaces
.implements Lcom/facebook/orca/notify/MessagingNotificationRenderer;


# static fields
.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final k:[J

.field private static final l:[J


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Landroid/os/Vibrator;

.field private final d:Landroid/app/NotificationManager;

.field private final e:Lcom/facebook/orca/notify/MessagingNotificationPreferences;

.field private final f:Lcom/facebook/orca/intents/MessagingIntentUris;

.field private final g:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

.field private final h:Lcom/facebook/orca/images/FetchImageExecutor;

.field private final i:Lcom/facebook/orca/photos/tiles/UserTileViewLogic;

.field private final j:Lcom/facebook/orca/ops/OrcaServiceOperationFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    const-class v0, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;

    sput-object v0, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;->a:Ljava/lang/Class;

    .line 115
    const/4 v0, 0x2

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;->k:[J

    .line 119
    const/4 v0, 0x4

    new-array v0, v0, [J

    fill-array-data v0, :array_1

    sput-object v0, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;->l:[J

    return-void

    .line 115
    nop

    :array_0
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 119
    :array_1
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xfat 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xfat 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Vibrator;Landroid/app/NotificationManager;Lcom/facebook/orca/notify/MessagingNotificationPreferences;Lcom/facebook/orca/intents/MessagingIntentUris;Lcom/facebook/orca/prefs/OrcaSharedPreferences;Lcom/facebook/orca/images/FetchImageExecutor;Lcom/facebook/orca/photos/tiles/UserTileViewLogic;Lcom/facebook/orca/ops/OrcaServiceOperationFactory;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p1, p0, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;->b:Landroid/content/Context;

    .line 105
    iput-object p2, p0, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;->c:Landroid/os/Vibrator;

    .line 106
    iput-object p3, p0, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;->d:Landroid/app/NotificationManager;

    .line 107
    iput-object p4, p0, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;->e:Lcom/facebook/orca/notify/MessagingNotificationPreferences;

    .line 108
    iput-object p5, p0, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;->f:Lcom/facebook/orca/intents/MessagingIntentUris;

    .line 109
    iput-object p6, p0, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;->g:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    .line 110
    iput-object p7, p0, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;->h:Lcom/facebook/orca/images/FetchImageExecutor;

    .line 111
    iput-object p8, p0, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;->i:Lcom/facebook/orca/photos/tiles/UserTileViewLogic;

    .line 112
    iput-object p9, p0, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;->j:Lcom/facebook/orca/ops/OrcaServiceOperationFactory;

    .line 113
    return-void
.end method

.method private a(Lcom/facebook/orca/threads/ParticipantInfo;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter

    .prologue
    const/high16 v4, 0x4240

    .line 501
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/facebook/orca/threads/ParticipantInfo;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 502
    :cond_0
    const/4 v0, 0x0

    .line 519
    :goto_0
    return-object v0

    .line 505
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ParticipantInfo;->e()Lcom/facebook/orca/users/UserKey;

    move-result-object v2

    .line 506
    iget-object v0, p0, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 510
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v1, v3, :cond_2

    .line 511
    const v1, 0x1050006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 512
    const v3, 0x1050005

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 518
    :goto_1
    iget-object v3, p0, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;->i:Lcom/facebook/orca/photos/tiles/UserTileViewLogic;

    invoke-virtual {v3, v2, v0, v1}, Lcom/facebook/orca/photos/tiles/UserTileViewLogic;->a(Lcom/facebook/orca/users/UserKey;II)Lcom/facebook/orca/images/FetchImageParams;

    move-result-object v0

    .line 519
    iget-object v1, p0, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;->h:Lcom/facebook/orca/images/FetchImageExecutor;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/images/FetchImageExecutor;->a(Lcom/facebook/orca/images/FetchImageParams;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 514
    :cond_2
    iget-object v0, p0, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;->b:Landroid/content/Context;

    invoke-static {v0, v4}, Lcom/facebook/orca/common/util/SizeUtil;->a(Landroid/content/Context;F)I

    move-result v1

    .line 515
    iget-object v0, p0, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;->b:Landroid/content/Context;

    invoke-static {v0, v4}, Lcom/facebook/orca/common/util/SizeUtil;->a(Landroid/content/Context;F)I

    move-result v0

    goto :goto_1
.end method

.method private a(Ljava/lang/String;Lcom/facebook/orca/threads/Message;Z)Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer$NotificationInfo;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 318
    invoke-direct {p0, p2}, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;->a(Lcom/facebook/orca/threads/Message;)Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v3

    .line 321
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/facebook/orca/threads/ParticipantInfo;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 322
    invoke-virtual {v3}, Lcom/facebook/orca/threads/ParticipantInfo;->d()Ljava/lang/String;

    move-result-object v0

    .line 323
    invoke-virtual {p2}, Lcom/facebook/orca/threads/Message;->h()Ljava/lang/String;

    move-result-object p1

    move-object v2, v0

    .line 329
    :goto_0
    if-eqz p3, :cond_1

    .line 330
    invoke-direct {p0, v3}, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;->a(Lcom/facebook/orca/threads/ParticipantInfo;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 332
    :goto_1
    new-instance v3, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer$NotificationInfo;

    invoke-direct {v3, v2, p1, v0, v1}, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer$NotificationInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer$1;)V

    return-object v3

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/facebook/R$string;->app_name:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 326
    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method private a(Lcom/facebook/orca/threads/Message;)Lcom/facebook/orca/threads/ParticipantInfo;
    .locals 5
    .parameter

    .prologue
    .line 336
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->f()Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v1

    .line 337
    if-nez v1, :cond_0

    .line 338
    const/4 v0, 0x0

    .line 353
    :goto_0
    return-object v0

    .line 343
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;->f(Ljava/lang/String;)Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v0

    .line 344
    if-nez v0, :cond_1

    move-object v0, v1

    .line 345
    goto :goto_0

    .line 347
    :cond_1
    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadSummary;->i()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 348
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/ThreadParticipant;

    .line 349
    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadParticipant;->d()Lcom/facebook/orca/users/UserKey;

    move-result-object v3

    invoke-virtual {v1}, Lcom/facebook/orca/threads/ParticipantInfo;->e()Lcom/facebook/orca/users/UserKey;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 350
    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadParticipant;->a()Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v0

    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 353
    goto :goto_0
.end method

.method private a(Landroid/app/Notification;)V
    .locals 3
    .parameter

    .prologue
    .line 377
    iget-object v0, p0, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;->e:Lcom/facebook/orca/notify/MessagingNotificationPreferences;

    invoke-interface {v0}, Lcom/facebook/orca/notify/MessagingNotificationPreferences;->b()Z

    move-result v0

    .line 378
    iget-object v1, p0, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;->e:Lcom/facebook/orca/notify/MessagingNotificationPreferences;

    invoke-interface {v1}, Lcom/facebook/orca/notify/MessagingNotificationPreferences;->a()Z

    move-result v1

    .line 379
    iget-object v2, p0, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;->e:Lcom/facebook/orca/notify/MessagingNotificationPreferences;

    invoke-interface {v2}, Lcom/facebook/orca/notify/MessagingNotificationPreferences;->c()Z

    move-result v2

    .line 381
    if-eqz v0, :cond_0

    .line 382
    invoke-direct {p0}, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;->c()Landroid/net/Uri;

    move-result-object v0

    .line 383
    if-eqz v0, :cond_3

    .line 384
    iput-object v0, p1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 389
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 390
    const/4 v0, 0x4

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    iput-object v0, p1, Landroid/app/Notification;->vibrate:[J

    .line 392
    :cond_1
    if-eqz v2, :cond_2

    .line 393
    const v0, -0xff0100

    iput v0, p1, Landroid/app/Notification;->ledARGB:I

    .line 394
    const/16 v0, 0x12c

    iput v0, p1, Landroid/app/Notification;->ledOnMS:I

    .line 395
    const/16 v0, 0x3e8

    iput v0, p1, Landroid/app/Notification;->ledOffMS:I

    .line 396
    iget v0, p1, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p1, Landroid/app/Notification;->flags:I

    .line 398
    :cond_2
    return-void

    .line 386
    :cond_3
    iget v0, p1, Landroid/app/Notification;->defaults:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p1, Landroid/app/Notification;->defaults:I

    goto :goto_0

    .line 390
    nop

    :array_0
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private a(Ljava/lang/String;Lcom/facebook/orca/threads/Message;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 235
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 236
    iget-object v2, p0, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;->e:Lcom/facebook/orca/notify/MessagingNotificationPreferences;

    invoke-interface {v2}, Lcom/facebook/orca/notify/MessagingNotificationPreferences;->e()I

    move-result v2

    .line 237
    new-instance v3, Landroid/app/Notification;

    invoke-direct {v3, v2, p1, v0, v1}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 238
    invoke-direct {p0, v3}, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;->a(Landroid/app/Notification;)V

    .line 240
    iget-object v0, p0, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;->f:Lcom/facebook/orca/intents/MessagingIntentUris;

    invoke-virtual {p2}, Lcom/facebook/orca/threads/Message;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/orca/intents/MessagingIntentUris;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 241
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 242
    const/high16 v0, 0x400

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 243
    const-string v0, "from_notification"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 245
    iget-object v0, p0, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;->b:Landroid/content/Context;

    invoke-static {v0, v4, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 247
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_0

    .line 248
    invoke-direct {p0, p1, p2, v3, v0}, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;->a(Ljava/lang/String;Lcom/facebook/orca/threads/Message;Landroid/app/Notification;Landroid/app/PendingIntent;)V

    .line 252
    :goto_0
    sget-object v0, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;->a:Ljava/lang/Class;

    const-string v1, "Calling android NotificationManager notify"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/Class;Ljava/lang/String;)V

    .line 253
    iget-object v0, p0, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;->d:Landroid/app/NotificationManager;

    invoke-virtual {p2}, Lcom/facebook/orca/threads/Message;->b()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 256
    return-void

    .line 250
    :cond_0
    invoke-direct {p0, p1, p2, v3, v0}, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;->b(Ljava/lang/String;Lcom/facebook/orca/threads/Message;Landroid/app/Notification;Landroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Lcom/facebook/orca/threads/Message;Landroid/app/Notification;Landroid/app/PendingIntent;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 263
    iput-object p4, p3, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 265
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;->a(Ljava/lang/String;Lcom/facebook/orca/threads/Message;Z)Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer$NotificationInfo;

    move-result-object v0

    .line 266
    invoke-virtual {p2}, Lcom/facebook/orca/threads/Message;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;->e(Ljava/lang/String;)I

    move-result v1

    .line 267
    new-instance v2, Landroid/widget/RemoteViews;

    iget-object v3, p0, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/facebook/R$layout;->notification_custom:I

    invoke-direct {v2, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 272
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-lt v3, v4, :cond_1

    .line 275
    invoke-static {v0}, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer$NotificationInfo;->a(Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer$NotificationInfo;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 276
    sget v3, Lcom/facebook/R$id;->image:I

    invoke-static {v0}, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer$NotificationInfo;->a(Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer$NotificationInfo;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 293
    :goto_0
    sget v3, Lcom/facebook/R$id;->title:I

    invoke-static {v0}, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer$NotificationInfo;->b(Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer$NotificationInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 294
    sget v3, Lcom/facebook/R$id;->text:I

    invoke-static {v0}, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer$NotificationInfo;->c(Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer$NotificationInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 296
    if-ltz v1, :cond_3

    .line 297
    sget v0, Lcom/facebook/R$id;->count:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 302
    :goto_1
    iput-object v2, p3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 303
    return-void

    .line 278
    :cond_0
    iget-object v3, p0, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;->e:Lcom/facebook/orca/notify/MessagingNotificationPreferences;

    invoke-interface {v3}, Lcom/facebook/orca/notify/MessagingNotificationPreferences;->e()I

    move-result v3

    .line 279
    sget v4, Lcom/facebook/R$id;->image:I

    invoke-virtual {v2, v4, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_0

    .line 284
    :cond_1
    iget-object v3, p0, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;->e:Lcom/facebook/orca/notify/MessagingNotificationPreferences;

    invoke-interface {v3}, Lcom/facebook/orca/notify/MessagingNotificationPreferences;->e()I

    move-result v3

    .line 285
    sget v4, Lcom/facebook/R$id;->icon:I

    invoke-virtual {v2, v4, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 286
    invoke-static {v0}, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer$NotificationInfo;->a(Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer$NotificationInfo;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 287
    sget v3, Lcom/facebook/R$id;->image:I

    invoke-static {v0}, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer$NotificationInfo;->a(Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer$NotificationInfo;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    goto :goto_0

    .line 289
    :cond_2
    sget v3, Lcom/facebook/R$id;->image:I

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_0

    .line 299
    :cond_3
    sget v0, Lcom/facebook/R$id;->count:I

    const/16 v1, 0x8

    invoke-virtual {v2, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_1
.end method

.method private b()V
    .locals 3

    .prologue
    .line 158
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;->c()Landroid/net/Uri;

    move-result-object v1

    .line 159
    if-eqz v1, :cond_0

    .line 160
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    .line 161
    iget-object v2, p0, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;->b:Landroid/content/Context;

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 167
    :goto_0
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 168
    new-instance v1, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer$1;-><init>(Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 174
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 175
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 179
    :goto_1
    return-void

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;->b:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 176
    :catch_0
    move-exception v0

    .line 177
    sget-object v1, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;->a:Ljava/lang/Class;

    const-string v2, "MediaPlayer create failed: "

    invoke-static {v1, v2, v0}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private b(Ljava/lang/String;Lcom/facebook/orca/threads/Message;Landroid/app/Notification;Landroid/app/PendingIntent;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 310
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;->a(Ljava/lang/String;Lcom/facebook/orca/threads/Message;Z)Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer$NotificationInfo;

    move-result-object v0

    .line 311
    iget-object v1, p0, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer$NotificationInfo;->b(Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer$NotificationInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer$NotificationInfo;->c(Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer$NotificationInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v1, v2, v0, p4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 312
    return-void
.end method

.method private c()Landroid/net/Uri;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 407
    iget-object v0, p0, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;->e:Lcom/facebook/orca/notify/MessagingNotificationPreferences;

    invoke-interface {v0}, Lcom/facebook/orca/notify/MessagingNotificationPreferences;->d()Landroid/net/Uri;

    move-result-object v0

    .line 408
    if-nez v0, :cond_1

    .line 442
    :cond_0
    :goto_0
    return-object v1

    .line 414
    :cond_1
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 415
    if-eqz v2, :cond_2

    const-string v3, "file"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 416
    :cond_2
    new-instance v2, Ljava/io/File;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 417
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_1
    move-object v1, v0

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_1

    .line 421
    :cond_4
    const/4 v2, 0x0

    .line 423
    :try_start_0
    iget-object v3, p0, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 424
    const-string v4, "r"

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_5

    move-result-object v2

    .line 425
    if-nez v2, :cond_5

    .line 437
    if-eqz v2, :cond_0

    .line 439
    :try_start_1
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 440
    :catch_0
    move-exception v0

    goto :goto_0

    .line 437
    :cond_5
    if-eqz v2, :cond_6

    .line 439
    :try_start_2
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7

    :cond_6
    :goto_2
    move-object v1, v0

    .line 442
    goto :goto_0

    .line 429
    :catch_1
    move-exception v0

    .line 437
    if-eqz v1, :cond_0

    .line 439
    :try_start_3
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 440
    :catch_2
    move-exception v0

    goto :goto_0

    .line 431
    :catch_3
    move-exception v0

    .line 437
    if-eqz v1, :cond_0

    .line 439
    :try_start_4
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_0

    .line 440
    :catch_4
    move-exception v0

    goto :goto_0

    .line 433
    :catch_5
    move-exception v0

    .line 437
    if-eqz v1, :cond_0

    .line 439
    :try_start_5
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    goto :goto_0

    .line 440
    :catch_6
    move-exception v0

    goto :goto_0

    .line 437
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_7

    .line 439
    :try_start_6
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8

    .line 442
    :cond_7
    :goto_3
    throw v0

    .line 440
    :catch_7
    move-exception v1

    goto :goto_2

    :catch_8
    move-exception v1

    goto :goto_3
.end method

.method private c(Ljava/lang/String;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 357
    iget-object v0, p0, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/R$string;->retry_send_heading:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 358
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 359
    iget-object v3, p0, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;->e:Lcom/facebook/orca/notify/MessagingNotificationPreferences;

    invoke-interface {v3}, Lcom/facebook/orca/notify/MessagingNotificationPreferences;->e()I

    move-result v3

    .line 360
    new-instance v4, Landroid/app/Notification;

    invoke-direct {v4, v3, v0, v1, v2}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 361
    invoke-direct {p0, v4}, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;->a(Landroid/app/Notification;)V

    .line 363
    iget-object v1, p0, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;->f:Lcom/facebook/orca/intents/MessagingIntentUris;

    invoke-interface {v1, p1}, Lcom/facebook/orca/intents/MessagingIntentUris;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 364
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 365
    const/high16 v1, 0x400

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 366
    const-string v1, "from_notification"

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 368
    iget-object v1, p0, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/facebook/R$string;->app_name:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 369
    iget-object v3, p0, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;->b:Landroid/content/Context;

    invoke-static {v3, v5, v2, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 370
    iget-object v3, p0, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;->b:Landroid/content/Context;

    invoke-virtual {v4, v3, v1, v0, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 372
    iget-object v0, p0, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;->d:Landroid/app/NotificationManager;

    const/16 v1, 0x2711

    invoke-virtual {v0, v1, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 374
    return-void
.end method

.method private d()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 456
    iget-object v0, p0, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;->g:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    sget-object v1, Lcom/facebook/orca/prefs/MessagesPrefKeys;->t:Lcom/facebook/orca/prefs/PrefKey;

    invoke-interface {v0, v1}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Lcom/facebook/orca/prefs/PrefKey;)Ljava/util/SortedSet;

    move-result-object v0

    .line 458
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 459
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->c()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 466
    :goto_0
    return-object v0

    .line 461
    :cond_0
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->f()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v1

    .line 462
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/PrefKey;

    .line 463
    sget-object v3, Lcom/facebook/orca/prefs/MessagesPrefKeys;->t:Lcom/facebook/orca/prefs/PrefKey;

    invoke-virtual {v0, v3}, Lcom/facebook/orca/prefs/PrefKey;->b(Lcom/facebook/orca/common/util/TypedKey;)Ljava/lang/String;

    move-result-object v0

    .line 464
    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_1

    .line 466
    :cond_1
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList$Builder;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    goto :goto_0
.end method

.method private d(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 448
    invoke-static {p1}, Lcom/facebook/orca/prefs/MessagesPrefKeys;->c(Ljava/lang/String;)Lcom/facebook/orca/prefs/PrefKey;

    move-result-object v0

    .line 449
    iget-object v1, p0, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;->g:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Lcom/facebook/orca/prefs/PrefKey;I)I

    move-result v1

    .line 450
    iget-object v2, p0, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;->g:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-interface {v2}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->b()Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    move-result-object v2

    .line 451
    add-int/lit8 v1, v1, 0x1

    invoke-interface {v2, v0, v1}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a(Lcom/facebook/orca/prefs/PrefKey;I)Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    .line 452
    invoke-interface {v2}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a()V

    .line 453
    return-void
.end method

.method private e(Ljava/lang/String;)I
    .locals 3
    .parameter

    .prologue
    .line 476
    invoke-static {p1}, Lcom/facebook/orca/prefs/MessagesPrefKeys;->c(Ljava/lang/String;)Lcom/facebook/orca/prefs/PrefKey;

    move-result-object v0

    .line 477
    iget-object v1, p0, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;->g:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Lcom/facebook/orca/prefs/PrefKey;I)I

    move-result v0

    return v0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 470
    iget-object v0, p0, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;->g:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-interface {v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->b()Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    move-result-object v0

    .line 471
    sget-object v1, Lcom/facebook/orca/prefs/MessagesPrefKeys;->t:Lcom/facebook/orca/prefs/PrefKey;

    invoke-interface {v0, v1}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->b(Lcom/facebook/orca/prefs/PrefKey;)Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    .line 472
    invoke-interface {v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a()V

    .line 473
    return-void
.end method

.method private f(Ljava/lang/String;)Lcom/facebook/orca/threads/ThreadSummary;
    .locals 3
    .parameter

    .prologue
    .line 481
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 482
    new-instance v1, Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    invoke-direct {v1}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;-><init>()V

    invoke-static {p1}, Lcom/facebook/orca/server/ThreadCriteria;->a(Ljava/lang/String;)Lcom/facebook/orca/server/ThreadCriteria;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->a(Lcom/facebook/orca/server/ThreadCriteria;)Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    move-result-object v1

    sget-object v2, Lcom/facebook/orca/server/DataFreshnessParam;->DO_NOT_CHECK_SERVER:Lcom/facebook/orca/server/DataFreshnessParam;

    invoke-virtual {v1, v2}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->a(Lcom/facebook/orca/server/DataFreshnessParam;)Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->a(I)Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->g()Lcom/facebook/orca/server/FetchThreadParams;

    move-result-object v1

    .line 487
    const-string v2, "fetchThreadParams"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 488
    iget-object v1, p0, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;->j:Lcom/facebook/orca/ops/OrcaServiceOperationFactory;

    const-string v2, "fetch_thread"

    invoke-virtual {v1, v2, v0}, Lcom/facebook/orca/ops/OrcaServiceOperationFactory;->a(Ljava/lang/String;Landroid/os/Bundle;)Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/ops/OrcaServiceOperationFactory$OrcaServiceOperation;->e()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 492
    :try_start_0
    invoke-interface {v0}, Lcom/google/common/util/concurrent/ListenableFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/OperationResult;

    .line 493
    invoke-virtual {v0}, Lcom/facebook/orca/server/OperationResult;->h()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/FetchThreadResult;

    .line 494
    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadResult;->a()Lcom/facebook/orca/threads/ThreadSummary;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 496
    :goto_0
    return-object v0

    .line 495
    :catch_0
    move-exception v0

    .line 496
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 219
    sget-object v0, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;->a:Ljava/lang/Class;

    const-string v1, "Clearing all notifications"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/Class;Ljava/lang/String;)V

    .line 220
    invoke-direct {p0}, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 221
    iget-object v2, p0, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;->d:Landroid/app/NotificationManager;

    const/16 v3, 0x2710

    invoke-virtual {v2, v0, v3}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    goto :goto_0

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;->d:Landroid/app/NotificationManager;

    const/16 v1, 0x2711

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 224
    iget-object v0, p0, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;->d:Landroid/app/NotificationManager;

    const/16 v1, 0x2712

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 225
    invoke-direct {p0}, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;->e()V

    .line 226
    return-void
.end method

.method public a(Lcom/facebook/orca/push/FriendInstallNotification;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x1

    .line 183
    iget-object v0, p0, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;->e:Lcom/facebook/orca/notify/MessagingNotificationPreferences;

    invoke-interface {v0}, Lcom/facebook/orca/notify/MessagingNotificationPreferences;->e()I

    move-result v0

    .line 185
    iget-object v1, p0, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;->f:Lcom/facebook/orca/intents/MessagingIntentUris;

    invoke-virtual {p1}, Lcom/facebook/orca/push/FriendInstallNotification;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/facebook/orca/intents/MessagingIntentUris;->b(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 186
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 187
    const-string v1, "from_notification"

    invoke-virtual {v2, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 189
    new-instance v1, Lcom/facebook/orca/threads/ParticipantInfo;

    new-instance v3, Lcom/facebook/orca/users/UserKey;

    sget-object v4, Lcom/facebook/orca/users/User$Type;->FACEBOOK:Lcom/facebook/orca/users/User$Type;

    invoke-virtual {p1}, Lcom/facebook/orca/push/FriendInstallNotification;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/facebook/orca/users/UserKey;-><init>(Lcom/facebook/orca/users/User$Type;Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Lcom/facebook/orca/threads/ParticipantInfo;-><init>(Lcom/facebook/orca/users/UserKey;Ljava/lang/String;)V

    .line 191
    invoke-direct {p0, v1}, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;->a(Lcom/facebook/orca/threads/ParticipantInfo;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 193
    iget-object v3, p0, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;->b:Landroid/content/Context;

    const/4 v4, 0x0

    const/high16 v5, 0x800

    invoke-static {v3, v4, v2, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 195
    new-instance v3, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v4, p0, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;->b:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/facebook/orca/push/FriendInstallNotification;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->a(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/facebook/orca/push/FriendInstallNotification;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->b(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/facebook/orca/push/FriendInstallNotification;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->c(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->a(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->a(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->a(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->a(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->a()Landroid/app/Notification;

    move-result-object v0

    .line 204
    invoke-direct {p0, v0}, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;->a(Landroid/app/Notification;)V

    .line 205
    iget-object v1, p0, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;->d:Landroid/app/NotificationManager;

    invoke-virtual {p1}, Lcom/facebook/orca/push/FriendInstallNotification;->a()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2713

    invoke-virtual {v1, v2, v3, v0}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 208
    return v6
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 213
    invoke-direct {p0, p1}, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;->c(Ljava/lang/String;)V

    .line 214
    const/4 v0, 0x1

    return v0
.end method

.method public a(Ljava/lang/String;Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/notify/MessagingNotificationRenderer$PresenceLevel;)Z
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, -0x1

    .line 129
    sget-object v0, Lcom/facebook/orca/notify/MessagingNotificationRenderer$PresenceLevel;->IN_APP_IDLE:Lcom/facebook/orca/notify/MessagingNotificationRenderer$PresenceLevel;

    if-eq p3, v0, :cond_0

    sget-object v0, Lcom/facebook/orca/notify/MessagingNotificationRenderer$PresenceLevel;->IN_APP_ACTIVE:Lcom/facebook/orca/notify/MessagingNotificationRenderer$PresenceLevel;

    if-ne p3, v0, :cond_4

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;->e:Lcom/facebook/orca/notify/MessagingNotificationPreferences;

    invoke-interface {v0}, Lcom/facebook/orca/notify/MessagingNotificationPreferences;->a()Z

    move-result v0

    .line 132
    iget-object v1, p0, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;->e:Lcom/facebook/orca/notify/MessagingNotificationPreferences;

    invoke-interface {v1}, Lcom/facebook/orca/notify/MessagingNotificationPreferences;->b()Z

    move-result v1

    .line 134
    sget-object v2, Lcom/facebook/orca/notify/MessagingNotificationRenderer$PresenceLevel;->IN_APP_IDLE:Lcom/facebook/orca/notify/MessagingNotificationRenderer$PresenceLevel;

    if-ne p3, v2, :cond_1

    if-eqz v1, :cond_1

    .line 135
    invoke-direct {p0}, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;->b()V

    .line 138
    :cond_1
    if-eqz v0, :cond_2

    .line 139
    sget-object v1, Lcom/facebook/orca/notify/MessagingNotificationRenderer$PresenceLevel;->IN_APP_ACTIVE:Lcom/facebook/orca/notify/MessagingNotificationRenderer$PresenceLevel;

    if-ne p3, v1, :cond_3

    .line 140
    sget-object v1, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;->a:Ljava/lang/Class;

    const-string v2, "Vibrating short"

    invoke-static {v1, v2}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/Class;Ljava/lang/String;)V

    .line 141
    iget-object v1, p0, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;->c:Landroid/os/Vibrator;

    sget-object v2, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;->k:[J

    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 151
    :cond_2
    :goto_0
    return v0

    .line 143
    :cond_3
    sget-object v1, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;->a:Ljava/lang/Class;

    const-string v2, "Vibrating normal"

    invoke-static {v1, v2}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/Class;Ljava/lang/String;)V

    .line 144
    iget-object v1, p0, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;->c:Landroid/os/Vibrator;

    sget-object v2, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;->l:[J

    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate([JI)V

    goto :goto_0

    .line 149
    :cond_4
    invoke-virtual {p2}, Lcom/facebook/orca/threads/Message;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;->d(Ljava/lang/String;)V

    .line 150
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;->a(Ljava/lang/String;Lcom/facebook/orca/threads/Message;)V

    .line 151
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 230
    sget-object v0, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;->a:Ljava/lang/Class;

    const-string v1, "Clearing thread notification for %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 231
    iget-object v0, p0, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;->d:Landroid/app/NotificationManager;

    const/16 v1, 0x2710

    invoke-virtual {v0, p1, v1}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 232
    return-void
.end method
