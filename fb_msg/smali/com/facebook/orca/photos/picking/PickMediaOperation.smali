.class public Lcom/facebook/orca/photos/picking/PickMediaOperation;
.super Landroid/support/v4/app/Fragment;
.source "PickMediaOperation.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
.end annotation


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
.field private b:Lcom/facebook/orca/attachments/MediaAttachmentFactory;

.field private c:Lcom/facebook/orca/photos/picking/PickMediaOperation$OnMediaPickedListener;

.field private d:Lcom/facebook/orca/photos/picking/PickMediaParams;

.field private e:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/facebook/orca/photos/picking/PickMediaOperation;

    sput-object v0, Lcom/facebook/orca/photos/picking/PickMediaOperation;->a:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 74
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/photos/picking/PickMediaOperation;->e:J

    .line 75
    return-void
.end method

.method private E()V
    .locals 3

    .prologue
    .line 210
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.VIDEO_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 211
    const-string v1, "android.intent.extra.durationLimit"

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 212
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 213
    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->a(Landroid/content/Intent;I)V

    .line 214
    return-void
.end method

.method private F()V
    .locals 3

    .prologue
    .line 223
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->l()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->H()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentActivity;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    .line 225
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 226
    invoke-virtual {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->l()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->I()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentActivity;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    .line 228
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    :goto_0
    return-void

    .line 229
    :catch_0
    move-exception v0

    .line 230
    const-string v1, "Exception opening files"

    invoke-static {v1, v0}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private G()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    .line 397
    invoke-direct {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->J()Ljava/io/File;

    move-result-object v0

    .line 398
    invoke-direct {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->K()Ljava/io/File;

    move-result-object v1

    .line 400
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->l()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-class v4, Lcom/facebook/orca/camera/CropImage;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 401
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    const-string v3, "image/*"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 402
    const-string v0, "outputX"

    iget-object v3, p0, Lcom/facebook/orca/photos/picking/PickMediaOperation;->d:Lcom/facebook/orca/photos/picking/PickMediaParams;

    invoke-virtual {v3}, Lcom/facebook/orca/photos/picking/PickMediaParams;->c()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 403
    const-string v0, "outputY"

    iget-object v3, p0, Lcom/facebook/orca/photos/picking/PickMediaOperation;->d:Lcom/facebook/orca/photos/picking/PickMediaParams;

    invoke-virtual {v3}, Lcom/facebook/orca/photos/picking/PickMediaParams;->d()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 404
    const-string v0, "aspectX"

    iget-object v3, p0, Lcom/facebook/orca/photos/picking/PickMediaOperation;->d:Lcom/facebook/orca/photos/picking/PickMediaParams;

    invoke-virtual {v3}, Lcom/facebook/orca/photos/picking/PickMediaParams;->e()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 405
    const-string v0, "aspectY"

    iget-object v3, p0, Lcom/facebook/orca/photos/picking/PickMediaOperation;->d:Lcom/facebook/orca/photos/picking/PickMediaParams;

    invoke-virtual {v3}, Lcom/facebook/orca/photos/picking/PickMediaParams;->f()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 406
    const-string v0, "scale"

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 407
    const-string v0, "output"

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 408
    const-string v0, "outputFormat"

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v1}, Landroid/graphics/Bitmap$CompressFormat;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 409
    invoke-virtual {v2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 411
    invoke-virtual {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->l()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v1, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 417
    invoke-direct {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->J()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/media/MediaResource;->a(Landroid/net/Uri;)Lcom/facebook/orca/media/MediaResource;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->a(Lcom/facebook/orca/media/MediaResource;)V

    .line 421
    :goto_0
    return-void

    .line 419
    :cond_0
    invoke-virtual {p0, v2, v5}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->a(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private H()Ljava/lang/String;
    .locals 3

    .prologue
    .line 424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "temp-compose-photo_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/facebook/orca/photos/picking/PickMediaOperation;->e:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private I()Ljava/lang/String;
    .locals 3

    .prologue
    .line 428
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "temp-compose-photo-post-cropped_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/facebook/orca/photos/picking/PickMediaOperation;->e:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private J()Ljava/io/File;
    .locals 2

    .prologue
    .line 432
    invoke-virtual {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->l()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->H()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private K()Ljava/io/File;
    .locals 2

    .prologue
    .line 436
    invoke-virtual {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->l()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->I()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private L()V
    .locals 1

    .prologue
    .line 440
    invoke-direct {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->J()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->deleteOnExit()V

    .line 441
    invoke-direct {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->K()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->deleteOnExit()V

    .line 442
    return-void
.end method

.method private M()V
    .locals 1

    .prologue
    .line 452
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/photos/picking/PickMediaOperation;->d:Lcom/facebook/orca/photos/picking/PickMediaParams;

    .line 453
    iget-object v0, p0, Lcom/facebook/orca/photos/picking/PickMediaOperation;->c:Lcom/facebook/orca/photos/picking/PickMediaOperation$OnMediaPickedListener;

    if-eqz v0, :cond_0

    .line 454
    iget-object v0, p0, Lcom/facebook/orca/photos/picking/PickMediaOperation;->c:Lcom/facebook/orca/photos/picking/PickMediaOperation$OnMediaPickedListener;

    invoke-virtual {v0}, Lcom/facebook/orca/photos/picking/PickMediaOperation$OnMediaPickedListener;->b()V

    .line 456
    :cond_0
    return-void
.end method

.method private N()V
    .locals 1

    .prologue
    .line 459
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/photos/picking/PickMediaOperation;->d:Lcom/facebook/orca/photos/picking/PickMediaParams;

    .line 460
    iget-object v0, p0, Lcom/facebook/orca/photos/picking/PickMediaOperation;->c:Lcom/facebook/orca/photos/picking/PickMediaOperation$OnMediaPickedListener;

    if-eqz v0, :cond_0

    .line 461
    iget-object v0, p0, Lcom/facebook/orca/photos/picking/PickMediaOperation;->c:Lcom/facebook/orca/photos/picking/PickMediaOperation$OnMediaPickedListener;

    invoke-virtual {v0}, Lcom/facebook/orca/photos/picking/PickMediaOperation$OnMediaPickedListener;->a()V

    .line 463
    :cond_0
    return-void
.end method

.method private O()V
    .locals 1

    .prologue
    .line 466
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/photos/picking/PickMediaOperation;->d:Lcom/facebook/orca/photos/picking/PickMediaParams;

    .line 467
    iget-object v0, p0, Lcom/facebook/orca/photos/picking/PickMediaOperation;->c:Lcom/facebook/orca/photos/picking/PickMediaOperation$OnMediaPickedListener;

    if-eqz v0, :cond_0

    .line 468
    iget-object v0, p0, Lcom/facebook/orca/photos/picking/PickMediaOperation;->c:Lcom/facebook/orca/photos/picking/PickMediaOperation$OnMediaPickedListener;

    invoke-virtual {v0}, Lcom/facebook/orca/photos/picking/PickMediaOperation$OnMediaPickedListener;->c()V

    .line 470
    :cond_0
    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->F()V

    .line 185
    invoke-direct {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->J()Ljava/io/File;

    move-result-object v0

    .line 186
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 187
    const-string v2, "output"

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 188
    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 189
    const/4 v0, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->a(Landroid/content/Intent;I)V

    .line 190
    return-void
.end method

.method private a(Lcom/facebook/orca/media/MediaResource;)V
    .locals 1
    .parameter

    .prologue
    .line 445
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/photos/picking/PickMediaOperation;->d:Lcom/facebook/orca/photos/picking/PickMediaParams;

    .line 446
    iget-object v0, p0, Lcom/facebook/orca/photos/picking/PickMediaOperation;->c:Lcom/facebook/orca/photos/picking/PickMediaOperation$OnMediaPickedListener;

    if-eqz v0, :cond_0

    .line 447
    iget-object v0, p0, Lcom/facebook/orca/photos/picking/PickMediaOperation;->c:Lcom/facebook/orca/photos/picking/PickMediaOperation$OnMediaPickedListener;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/photos/picking/PickMediaOperation$OnMediaPickedListener;->a(Lcom/facebook/orca/media/MediaResource;)V

    .line 449
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/photos/picking/PickMediaOperation;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->a()V

    return-void
.end method

.method private a(Lcom/google/common/io/InputSupplier;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/io/InputSupplier",
            "<+",
            "Ljava/io/InputStream;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 236
    new-instance v0, Lcom/facebook/orca/photos/picking/PickMediaOperation$2;

    invoke-direct {v0, p0, p2}, Lcom/facebook/orca/photos/picking/PickMediaOperation$2;-><init>(Lcom/facebook/orca/photos/picking/PickMediaOperation;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/google/common/io/ByteStreams;->a(Lcom/google/common/io/InputSupplier;Lcom/google/common/io/OutputSupplier;)J

    .line 243
    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 193
    invoke-direct {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->F()V

    .line 194
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 195
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 196
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->a(Landroid/content/Intent;I)V

    .line 197
    return-void
.end method

.method static synthetic b(Lcom/facebook/orca/photos/picking/PickMediaOperation;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->b()V

    return-void
.end method

.method private c()V
    .locals 3

    .prologue
    .line 200
    invoke-direct {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->F()V

    .line 201
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->l()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/facebook/orca/images/ImageSearchActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 202
    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->a(Landroid/content/Intent;I)V

    .line 203
    return-void
.end method

.method static synthetic c(Lcom/facebook/orca/photos/picking/PickMediaOperation;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->c()V

    return-void
.end method

.method static synthetic d(Lcom/facebook/orca/photos/picking/PickMediaOperation;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->E()V

    return-void
.end method

.method static synthetic e(Lcom/facebook/orca/photos/picking/PickMediaOperation;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->M()V

    return-void
.end method

.method static synthetic f(Lcom/facebook/orca/photos/picking/PickMediaOperation;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->O()V

    return-void
.end method


# virtual methods
.method public a(IILandroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 383
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 384
    invoke-virtual {p0, p2, p3}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->a(ILandroid/content/Intent;)V

    .line 394
    :cond_0
    :goto_0
    return-void

    .line 385
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 386
    invoke-virtual {p0, p2, p3}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->b(ILandroid/content/Intent;)V

    goto :goto_0

    .line 387
    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    .line 388
    invoke-virtual {p0, p2, p3}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->c(ILandroid/content/Intent;)V

    goto :goto_0

    .line 389
    :cond_3
    const/4 v0, 0x3

    if-ne p1, v0, :cond_4

    .line 390
    invoke-virtual {p0, p2, p3}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->d(ILandroid/content/Intent;)V

    goto :goto_0

    .line 391
    :cond_4
    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    .line 392
    invoke-virtual {p0, p2, p3}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->e(ILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public a(ILandroid/content/Intent;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 246
    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    .line 247
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/media/MediaResource;->a(Landroid/net/Uri;)Lcom/facebook/orca/media/MediaResource;

    move-result-object v0

    .line 248
    iget-object v1, p0, Lcom/facebook/orca/photos/picking/PickMediaOperation;->b:Lcom/facebook/orca/attachments/MediaAttachmentFactory;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/attachments/MediaAttachmentFactory;->b(Lcom/facebook/orca/media/MediaResource;)Lcom/facebook/orca/attachments/MediaAttachment;

    move-result-object v1

    .line 250
    if-eqz v1, :cond_1

    .line 251
    sget-object v2, Lcom/facebook/orca/photos/picking/PickMediaOperation;->a:Ljava/lang/Class;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got attachment "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/facebook/orca/media/MediaResource;->c()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/Class;Ljava/lang/String;)V

    .line 253
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->J()Ljava/io/File;

    move-result-object v0

    .line 254
    invoke-virtual {v1}, Lcom/facebook/orca/attachments/MediaAttachment;->c()Lcom/google/common/io/InputSupplier;

    move-result-object v1

    invoke-direct {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->H()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->a(Lcom/google/common/io/InputSupplier;Ljava/lang/String;)V

    .line 255
    iget-object v1, p0, Lcom/facebook/orca/photos/picking/PickMediaOperation;->d:Lcom/facebook/orca/photos/picking/PickMediaParams;

    invoke-virtual {v1}, Lcom/facebook/orca/photos/picking/PickMediaParams;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 256
    invoke-direct {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->G()V

    .line 270
    :goto_0
    return-void

    .line 258
    :cond_0
    invoke-static {v0}, Lcom/facebook/orca/media/MediaResource;->a(Ljava/io/File;)Lcom/facebook/orca/media/MediaResource;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->a(Lcom/facebook/orca/media/MediaResource;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 260
    :catch_0
    move-exception v0

    .line 261
    sget-object v1, Lcom/facebook/orca/photos/picking/PickMediaOperation;->a:Ljava/lang/Class;

    const-string v2, "Got IOException while trying to process file"

    invoke-static {v1, v2, v0}, Lcom/facebook/orca/debug/BLog;->d(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 262
    invoke-direct {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->M()V

    goto :goto_0

    .line 265
    :cond_1
    invoke-direct {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->N()V

    goto :goto_0

    .line 268
    :cond_2
    invoke-direct {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->M()V

    goto :goto_0
.end method

.method public a(Landroid/app/Activity;)V
    .locals 2
    .parameter

    .prologue
    .line 79
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->a(Landroid/app/Activity;)V

    .line 80
    invoke-static {p1}, Lcom/facebook/orca/inject/FbInjector;->a(Landroid/content/Context;)Lcom/facebook/orca/inject/FbInjector;

    move-result-object v0

    .line 81
    const-class v1, Lcom/facebook/orca/attachments/MediaAttachmentFactory;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/attachments/MediaAttachmentFactory;

    iput-object v0, p0, Lcom/facebook/orca/photos/picking/PickMediaOperation;->b:Lcom/facebook/orca/attachments/MediaAttachmentFactory;

    .line 82
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 86
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->a(Landroid/os/Bundle;)V

    .line 87
    if-eqz p1, :cond_0

    .line 88
    const-string v0, "params"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/photos/picking/PickMediaParams;

    iput-object v0, p0, Lcom/facebook/orca/photos/picking/PickMediaOperation;->d:Lcom/facebook/orca/photos/picking/PickMediaParams;

    .line 89
    const-string v0, "uniqueId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/photos/picking/PickMediaOperation;->e:J

    .line 91
    :cond_0
    return-void
.end method

.method public a(Lcom/facebook/orca/photos/picking/PickMediaOperation$OnMediaPickedListener;)V
    .locals 0
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/facebook/orca/photos/picking/PickMediaOperation;->c:Lcom/facebook/orca/photos/picking/PickMediaOperation$OnMediaPickedListener;

    .line 106
    return-void
.end method

.method public a(Lcom/facebook/orca/photos/picking/PickMediaParams;)V
    .locals 3
    .parameter

    .prologue
    .line 111
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/photos/picking/PickMediaOperation;->e:J

    .line 112
    iget-object v0, p0, Lcom/facebook/orca/photos/picking/PickMediaOperation;->d:Lcom/facebook/orca/photos/picking/PickMediaParams;

    if-eqz v0, :cond_0

    .line 115
    sget-object v0, Lcom/facebook/orca/photos/picking/PickMediaOperation;->a:Ljava/lang/Class;

    const-string v1, "Photo operation already in progress. Shouldn\'t happen"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 118
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->n()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 119
    invoke-virtual {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->n()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 120
    if-eqz v1, :cond_1

    .line 121
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->a(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 124
    :cond_1
    iput-object p1, p0, Lcom/facebook/orca/photos/picking/PickMediaOperation;->d:Lcom/facebook/orca/photos/picking/PickMediaParams;

    .line 125
    invoke-virtual {p1}, Lcom/facebook/orca/photos/picking/PickMediaParams;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/orca/photos/picking/PickMediaParams;->g()Ljava/util/EnumSet;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/facebook/orca/photos/picking/MediaChoiceDialog;->a(Ljava/lang/String;Ljava/util/EnumSet;)Lcom/facebook/orca/photos/picking/MediaChoiceDialog;

    move-result-object v1

    .line 129
    new-instance v2, Lcom/facebook/orca/photos/picking/PickMediaOperation$1;

    invoke-direct {v2, p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation$1;-><init>(Lcom/facebook/orca/photos/picking/PickMediaOperation;)V

    invoke-virtual {v1, v2}, Lcom/facebook/orca/photos/picking/MediaChoiceDialog;->a(Lcom/facebook/orca/photos/picking/MediaChoiceDialog$Listener;)V

    .line 154
    const-string v2, "dialog"

    invoke-virtual {v1, v0, v2}, Lcom/facebook/orca/photos/picking/MediaChoiceDialog;->a(Landroid/support/v4/app/FragmentTransaction;Ljava/lang/String;)I

    .line 155
    return-void
.end method

.method public a(Lcom/facebook/orca/photos/picking/PickMediaParams;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 160
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/photos/picking/PickMediaOperation;->e:J

    .line 161
    iget-object v0, p0, Lcom/facebook/orca/photos/picking/PickMediaOperation;->d:Lcom/facebook/orca/photos/picking/PickMediaParams;

    if-eqz v0, :cond_0

    .line 164
    sget-object v0, Lcom/facebook/orca/photos/picking/PickMediaOperation;->a:Ljava/lang/Class;

    const-string v1, "Photo operation already in progress. Shouldn\'t happen"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 166
    :cond_0
    iput-object p1, p0, Lcom/facebook/orca/photos/picking/PickMediaOperation;->d:Lcom/facebook/orca/photos/picking/PickMediaParams;

    .line 168
    packed-switch p2, :pswitch_data_0

    .line 181
    :goto_0
    :pswitch_0
    return-void

    .line 170
    :pswitch_1
    invoke-direct {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->a()V

    goto :goto_0

    .line 174
    :pswitch_2
    invoke-direct {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->b()V

    goto :goto_0

    .line 178
    :pswitch_3
    invoke-direct {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->c()V

    goto :goto_0

    .line 168
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public b(ILandroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 273
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 283
    iget-object v0, p0, Lcom/facebook/orca/photos/picking/PickMediaOperation;->d:Lcom/facebook/orca/photos/picking/PickMediaParams;

    invoke-virtual {v0}, Lcom/facebook/orca/photos/picking/PickMediaParams;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    invoke-direct {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->G()V

    .line 289
    :goto_0
    invoke-direct {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->L()V

    .line 293
    :goto_1
    return-void

    .line 286
    :cond_0
    invoke-direct {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->J()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/media/MediaResource;->a(Ljava/io/File;)Lcom/facebook/orca/media/MediaResource;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->a(Lcom/facebook/orca/media/MediaResource;)V

    goto :goto_0

    .line 291
    :cond_1
    invoke-direct {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->M()V

    goto :goto_1
.end method

.method public c(ILandroid/content/Intent;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 296
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 297
    const/4 v1, 0x0

    .line 299
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 300
    invoke-direct {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->J()Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 301
    :try_start_1
    new-instance v1, Ljava/io/File;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/google/common/io/Files;->a(Ljava/io/File;)Lcom/google/common/io/InputSupplier;

    move-result-object v1

    invoke-direct {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->H()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->a(Lcom/google/common/io/InputSupplier;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 307
    :goto_0
    iget-object v1, p0, Lcom/facebook/orca/photos/picking/PickMediaOperation;->d:Lcom/facebook/orca/photos/picking/PickMediaParams;

    invoke-virtual {v1}, Lcom/facebook/orca/photos/picking/PickMediaParams;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 308
    invoke-direct {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->G()V

    .line 315
    :goto_1
    return-void

    .line 303
    :catch_0
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    .line 304
    :goto_2
    sget-object v2, Lcom/facebook/orca/photos/picking/PickMediaOperation;->a:Ljava/lang/Class;

    const-string v3, "Got IOException while trying to process file"

    invoke-static {v2, v3, v1}, Lcom/facebook/orca/debug/BLog;->d(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 305
    invoke-direct {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->M()V

    goto :goto_0

    .line 310
    :cond_0
    invoke-static {v0}, Lcom/facebook/orca/media/MediaResource;->a(Ljava/io/File;)Lcom/facebook/orca/media/MediaResource;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->a(Lcom/facebook/orca/media/MediaResource;)V

    goto :goto_1

    .line 313
    :cond_1
    invoke-direct {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->M()V

    goto :goto_1

    .line 303
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method public d(ILandroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 318
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 319
    invoke-direct {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->K()Ljava/io/File;

    move-result-object v0

    .line 320
    invoke-static {v0}, Lcom/facebook/orca/media/MediaResource;->a(Ljava/io/File;)Lcom/facebook/orca/media/MediaResource;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->a(Lcom/facebook/orca/media/MediaResource;)V

    .line 321
    invoke-direct {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->L()V

    .line 325
    :goto_0
    return-void

    .line 323
    :cond_0
    invoke-direct {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->M()V

    goto :goto_0
.end method

.method public e(ILandroid/content/Intent;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 328
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 329
    invoke-direct {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->M()V

    .line 352
    :goto_0
    return-void

    .line 333
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/media/MediaResource;->b(Landroid/net/Uri;)Lcom/facebook/orca/media/MediaResource;

    move-result-object v0

    .line 334
    iget-object v1, p0, Lcom/facebook/orca/photos/picking/PickMediaOperation;->b:Lcom/facebook/orca/attachments/MediaAttachmentFactory;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/attachments/MediaAttachmentFactory;->b(Lcom/facebook/orca/media/MediaResource;)Lcom/facebook/orca/attachments/MediaAttachment;

    move-result-object v0

    .line 336
    if-nez v0, :cond_1

    .line 337
    invoke-direct {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->N()V

    goto :goto_0

    .line 341
    :cond_1
    sget-object v1, Lcom/facebook/orca/photos/picking/PickMediaOperation;->a:Ljava/lang/Class;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got video attachment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/facebook/orca/attachments/MediaAttachment;->a()Lcom/facebook/orca/media/MediaResource;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/orca/media/MediaResource;->c()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/Class;Ljava/lang/String;)V

    .line 343
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->J()Ljava/io/File;

    move-result-object v1

    .line 344
    invoke-virtual {v0}, Lcom/facebook/orca/attachments/MediaAttachment;->c()Lcom/google/common/io/InputSupplier;

    move-result-object v0

    invoke-direct {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->H()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->a(Lcom/google/common/io/InputSupplier;Ljava/lang/String;)V

    .line 346
    invoke-static {v1}, Lcom/facebook/orca/media/MediaResource;->b(Ljava/io/File;)Lcom/facebook/orca/media/MediaResource;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->a(Lcom/facebook/orca/media/MediaResource;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 348
    :catch_0
    move-exception v0

    .line 349
    sget-object v1, Lcom/facebook/orca/photos/picking/PickMediaOperation;->a:Ljava/lang/Class;

    const-string v2, "Got IOException while trying to process file"

    invoke-static {v1, v2, v0}, Lcom/facebook/orca/debug/BLog;->d(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 350
    invoke-direct {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->M()V

    goto :goto_0
.end method

.method public e(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 95
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->e(Landroid/os/Bundle;)V

    .line 96
    const-string v0, "params"

    iget-object v1, p0, Lcom/facebook/orca/photos/picking/PickMediaOperation;->d:Lcom/facebook/orca/photos/picking/PickMediaParams;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 97
    const-string v0, "uniqueId"

    iget-wide v1, p0, Lcom/facebook/orca/photos/picking/PickMediaOperation;->e:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 98
    return-void
.end method
