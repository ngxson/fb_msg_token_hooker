.class public Lcom/facebook/orca/photos/tiles/ThreadTileView;
.super Lcom/facebook/widget/CustomViewGroup;
.source "ThreadTileView.java"


# static fields
.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final b:Lcom/facebook/orca/debug/WtfToken;


# instance fields
.field private final c:Lcom/facebook/orca/cache/DataCache;

.field private final d:Lcom/facebook/orca/cache/ThreadDisplayCache;

.field private final e:Lcom/facebook/orca/photos/sizing/GraphicSizerFactory;

.field private final f:Lcom/facebook/orca/photos/tiles/UserTileViewLogic;

.field private final g:Lcom/facebook/orca/photos/tiles/DefaultTiles;

.field private final h:Lcom/facebook/orca/attachments/AttachmentDataFactory;

.field private final i:Lcom/facebook/orca/threads/ThreadParticipantUtils;

.field private final j:Landroid/graphics/drawable/ColorDrawable;

.field private final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/widget/UrlImage;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lcom/facebook/orca/threads/ThreadSummary;

.field private n:I

.field private o:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lcom/facebook/orca/photos/tiles/ThreadTileView;

    sput-object v0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->a:Ljava/lang/Class;

    .line 46
    new-instance v0, Lcom/facebook/orca/debug/WtfToken;

    invoke-direct {v0}, Lcom/facebook/orca/debug/WtfToken;-><init>()V

    sput-object v0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->b:Lcom/facebook/orca/debug/WtfToken;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 70
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/orca/photos/tiles/ThreadTileView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/orca/photos/tiles/ThreadTileView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x3

    const/4 v3, -0x1

    const/16 v2, 0xff

    .line 78
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/widget/CustomViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 80
    invoke-virtual {p0}, Lcom/facebook/orca/photos/tiles/ThreadTileView;->getInjector()Lcom/facebook/orca/inject/FbInjector;

    move-result-object v1

    .line 81
    const-class v0, Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/cache/DataCache;

    iput-object v0, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->c:Lcom/facebook/orca/cache/DataCache;

    .line 82
    const-class v0, Lcom/facebook/orca/cache/ThreadDisplayCache;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/cache/ThreadDisplayCache;

    iput-object v0, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->d:Lcom/facebook/orca/cache/ThreadDisplayCache;

    .line 83
    const-class v0, Lcom/facebook/orca/photos/sizing/GraphicSizerFactory;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/photos/sizing/GraphicSizerFactory;

    iput-object v0, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->e:Lcom/facebook/orca/photos/sizing/GraphicSizerFactory;

    .line 84
    const-class v0, Lcom/facebook/orca/photos/tiles/UserTileViewLogic;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/photos/tiles/UserTileViewLogic;

    iput-object v0, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->f:Lcom/facebook/orca/photos/tiles/UserTileViewLogic;

    .line 85
    const-class v0, Lcom/facebook/orca/photos/tiles/DefaultTiles;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/photos/tiles/DefaultTiles;

    iput-object v0, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->g:Lcom/facebook/orca/photos/tiles/DefaultTiles;

    .line 86
    const-class v0, Lcom/facebook/orca/attachments/AttachmentDataFactory;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/attachments/AttachmentDataFactory;

    iput-object v0, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->h:Lcom/facebook/orca/attachments/AttachmentDataFactory;

    .line 87
    const-class v0, Lcom/facebook/orca/threads/ThreadParticipantUtils;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/ThreadParticipantUtils;

    iput-object v0, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->i:Lcom/facebook/orca/threads/ThreadParticipantUtils;

    .line 89
    invoke-virtual {p0}, Lcom/facebook/orca/photos/tiles/ThreadTileView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/facebook/R$styleable;->ThreadTileView:[I

    invoke-virtual {v0, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 90
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->n:I

    .line 91
    iget v1, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->n:I

    if-ne v1, v3, :cond_0

    .line 92
    const/high16 v1, 0x4248

    invoke-static {p1, v1}, Lcom/facebook/orca/common/util/SizeUtil;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->n:I

    .line 94
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 96
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/facebook/orca/photos/tiles/ThreadTileView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 98
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    sget v1, Lcom/facebook/orca/photos/tiles/DefaultTiles;->a:I

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->j:Landroid/graphics/drawable/ColorDrawable;

    .line 99
    invoke-static {v4}, Lcom/google/common/collect/Lists;->c(I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->k:Ljava/util/List;

    .line 100
    invoke-static {v4}, Lcom/google/common/collect/Lists;->c(I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->l:Ljava/util/List;

    .line 101
    return-void
.end method

.method private a()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 191
    iput v7, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->o:I

    .line 192
    iget-object v0, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/widget/UrlImage;

    .line 193
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/facebook/widget/UrlImage;->setVisibility(I)V

    goto :goto_0

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->m:Lcom/facebook/orca/threads/ThreadSummary;

    if-nez v0, :cond_1

    .line 271
    :goto_1
    return-void

    .line 200
    :cond_1
    invoke-direct {p0, v6}, Lcom/facebook/orca/photos/tiles/ThreadTileView;->a(I)V

    .line 201
    iget-object v0, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->k:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/widget/UrlImage;

    .line 202
    invoke-virtual {v0, v7}, Lcom/facebook/widget/UrlImage;->setVisibility(I)V

    .line 203
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/facebook/widget/UrlImage;->setPlaceHolderScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 206
    iget-object v1, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->m:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v1}, Lcom/facebook/orca/threads/ThreadSummary;->q()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->m:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v1}, Lcom/facebook/orca/threads/ThreadSummary;->s()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 207
    :cond_2
    iget-object v1, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->h:Lcom/facebook/orca/attachments/AttachmentDataFactory;

    iget-object v2, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->m:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v1, v2}, Lcom/facebook/orca/attachments/AttachmentDataFactory;->a(Lcom/facebook/orca/threads/ThreadSummary;)Landroid/net/Uri;

    move-result-object v1

    .line 209
    invoke-virtual {v1}, Landroid/net/Uri;->isRelative()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 212
    sget-object v2, Lcom/facebook/orca/photos/tiles/ThreadTileView;->b:Lcom/facebook/orca/debug/WtfToken;

    sget-object v3, Lcom/facebook/orca/photos/tiles/ThreadTileView;->a:Ljava/lang/Class;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Uri is not absolute - Uri: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " TID: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->m:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v4}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/facebook/orca/debug/BLog;->a(Lcom/facebook/orca/debug/WtfToken;Ljava/lang/Class;Ljava/lang/String;)V

    .line 228
    :cond_3
    iget-object v1, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->d:Lcom/facebook/orca/cache/ThreadDisplayCache;

    iget-object v2, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->m:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v1, v2}, Lcom/facebook/orca/cache/ThreadDisplayCache;->c(Lcom/facebook/orca/threads/ThreadSummary;)I

    move-result v1

    .line 229
    if-ne v1, v6, :cond_5

    .line 230
    iget-object v1, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->m:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v1}, Lcom/facebook/orca/threads/ThreadSummary;->i()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/threads/ThreadParticipant;

    .line 231
    iget-object v2, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->f:Lcom/facebook/orca/photos/tiles/UserTileViewLogic;

    invoke-virtual {v1}, Lcom/facebook/orca/threads/ThreadParticipant;->d()Lcom/facebook/orca/users/UserKey;

    move-result-object v1

    iget v3, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->n:I

    invoke-virtual {v2, v1, v3}, Lcom/facebook/orca/photos/tiles/UserTileViewLogic;->a(Lcom/facebook/orca/users/UserKey;I)Lcom/facebook/orca/images/FetchImageParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/widget/UrlImage;->setImageParams(Lcom/facebook/orca/images/FetchImageParams;)V

    .line 233
    iget-object v1, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->g:Lcom/facebook/orca/photos/tiles/DefaultTiles;

    iget-object v2, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->m:Lcom/facebook/orca/threads/ThreadSummary;

    iget v3, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->n:I

    iget v4, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->n:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/facebook/orca/photos/tiles/DefaultTiles;->b(Lcom/facebook/orca/threads/ThreadSummary;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/widget/UrlImage;->setPlaceHolderDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 236
    iput v6, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->o:I

    goto/16 :goto_1

    .line 217
    :cond_4
    iget-object v2, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->e:Lcom/facebook/orca/photos/sizing/GraphicSizerFactory;

    iget v3, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->n:I

    invoke-static {v3}, Lcom/facebook/orca/photos/tiles/ThreadTileView;->b(I)Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/facebook/orca/photos/sizing/GraphicSizerFactory;->a(Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;)Lcom/facebook/orca/images/UrlImageProcessor;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/widget/UrlImage;->a(Landroid/net/Uri;Lcom/facebook/orca/images/UrlImageProcessor;)V

    .line 220
    iget-object v1, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->g:Lcom/facebook/orca/photos/tiles/DefaultTiles;

    iget v2, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->n:I

    iget v3, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->n:I

    invoke-virtual {v1, v2, v3}, Lcom/facebook/orca/photos/tiles/DefaultTiles;->a(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/widget/UrlImage;->setPlaceHolderDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 222
    iput v6, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->o:I

    goto/16 :goto_1

    .line 238
    :cond_5
    if-ne v1, v8, :cond_6

    .line 239
    iget-object v1, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->i:Lcom/facebook/orca/threads/ThreadParticipantUtils;

    iget-object v2, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->m:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v1, v2}, Lcom/facebook/orca/threads/ThreadParticipantUtils;->a(Lcom/facebook/orca/threads/ThreadSummary;)Lcom/facebook/orca/threads/ThreadParticipant;

    move-result-object v1

    .line 241
    iget-object v2, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->f:Lcom/facebook/orca/photos/tiles/UserTileViewLogic;

    invoke-virtual {v1}, Lcom/facebook/orca/threads/ThreadParticipant;->d()Lcom/facebook/orca/users/UserKey;

    move-result-object v1

    iget v3, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->n:I

    invoke-virtual {v2, v1, v3}, Lcom/facebook/orca/photos/tiles/UserTileViewLogic;->a(Lcom/facebook/orca/users/UserKey;I)Lcom/facebook/orca/images/FetchImageParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/widget/UrlImage;->setImageParams(Lcom/facebook/orca/images/FetchImageParams;)V

    .line 243
    iget-object v1, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->g:Lcom/facebook/orca/photos/tiles/DefaultTiles;

    iget-object v2, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->m:Lcom/facebook/orca/threads/ThreadSummary;

    iget v3, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->n:I

    iget v4, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->n:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/facebook/orca/photos/tiles/DefaultTiles;->b(Lcom/facebook/orca/threads/ThreadSummary;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/widget/UrlImage;->setPlaceHolderDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 246
    iput v6, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->o:I

    goto/16 :goto_1

    .line 251
    :cond_6
    iget-object v1, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->m:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v1}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/threads/MessagingIdUtil;->j(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 252
    sget-object v1, Lcom/facebook/widget/UrlImage;->a:Lcom/facebook/orca/images/FetchImageParams;

    invoke-virtual {v0, v1}, Lcom/facebook/widget/UrlImage;->setImageParams(Lcom/facebook/orca/images/FetchImageParams;)V

    .line 253
    iget-object v1, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->g:Lcom/facebook/orca/photos/tiles/DefaultTiles;

    iget v2, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->n:I

    iget v3, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->n:I

    invoke-virtual {v1, v2, v3}, Lcom/facebook/orca/photos/tiles/DefaultTiles;->b(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/widget/UrlImage;->setPlaceHolderDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 255
    iput v6, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->o:I

    goto/16 :goto_1

    .line 260
    :cond_7
    iget-object v1, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->d:Lcom/facebook/orca/cache/ThreadDisplayCache;

    iget-object v2, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->m:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v1, v2}, Lcom/facebook/orca/cache/ThreadDisplayCache;->b(Lcom/facebook/orca/threads/ThreadSummary;)Ljava/util/List;

    move-result-object v1

    .line 261
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v2, v8, :cond_8

    .line 263
    sget-object v1, Lcom/facebook/widget/UrlImage;->a:Lcom/facebook/orca/images/FetchImageParams;

    invoke-virtual {v0, v1}, Lcom/facebook/widget/UrlImage;->setImageParams(Lcom/facebook/orca/images/FetchImageParams;)V

    .line 264
    iget-object v1, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->g:Lcom/facebook/orca/photos/tiles/DefaultTiles;

    iget-object v2, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->m:Lcom/facebook/orca/threads/ThreadSummary;

    iget v3, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->n:I

    iget v4, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->n:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/facebook/orca/photos/tiles/DefaultTiles;->a(Lcom/facebook/orca/threads/ThreadSummary;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/widget/UrlImage;->setPlaceHolderDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 266
    iput v6, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->o:I

    goto/16 :goto_1

    .line 270
    :cond_8
    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/photos/tiles/ThreadTileView;->a(Lcom/facebook/widget/UrlImage;Ljava/util/List;)V

    goto/16 :goto_1
.end method

.method private a(I)V
    .locals 3
    .parameter

    .prologue
    .line 339
    iget-object v0, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 340
    new-instance v1, Lcom/facebook/widget/UrlImage;

    invoke-virtual {p0}, Lcom/facebook/orca/photos/tiles/ThreadTileView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/widget/UrlImage;-><init>(Landroid/content/Context;)V

    .line 341
    iget-object v2, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->j:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v1, v2}, Lcom/facebook/widget/UrlImage;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 342
    invoke-virtual {p0, v1}, Lcom/facebook/orca/photos/tiles/ThreadTileView;->addView(Landroid/view/View;)V

    .line 343
    iget-object v2, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->k:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 344
    iget-object v1, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->l:Ljava/util/List;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 339
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 346
    :cond_0
    return-void
.end method

.method private a(Lcom/facebook/widget/UrlImage;Lcom/facebook/orca/threads/ParticipantInfo;Landroid/graphics/Rect;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 330
    invoke-virtual {p2}, Lcom/facebook/orca/threads/ParticipantInfo;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->j:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p1, v0}, Lcom/facebook/widget/UrlImage;->setPlaceHolderDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 336
    :goto_0
    return-void

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->g:Lcom/facebook/orca/photos/tiles/DefaultTiles;

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v0, p2, v1, v2}, Lcom/facebook/orca/photos/tiles/DefaultTiles;->a(Lcom/facebook/orca/threads/ParticipantInfo;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/widget/UrlImage;->setPlaceHolderDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private a(Lcom/facebook/widget/UrlImage;Ljava/util/List;)V
    .locals 11
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/widget/UrlImage;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/threads/ParticipantInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x1

    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 274
    invoke-direct {p0, v10}, Lcom/facebook/orca/photos/tiles/ThreadTileView;->a(I)V

    .line 275
    invoke-virtual {p0}, Lcom/facebook/orca/photos/tiles/ThreadTileView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x3f80

    invoke-static {v0, v1}, Lcom/facebook/orca/common/util/SizeUtil;->a(Landroid/content/Context;F)I

    move-result v3

    .line 276
    iget v0, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->n:I

    sub-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v4, v0, 0x3

    .line 277
    iget v0, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->n:I

    sub-int/2addr v0, v3

    div-int/lit8 v5, v0, 0x2

    .line 279
    iget-object v0, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->l:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 280
    iget v1, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->n:I

    invoke-virtual {v0, v7, v7, v4, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 282
    iget-object v1, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->l:Ljava/util/List;

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 283
    add-int v2, v4, v3

    iget v6, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->n:I

    invoke-virtual {v1, v2, v7, v6, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 285
    iget-object v2, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->l:Ljava/util/List;

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 286
    add-int/2addr v4, v3

    add-int/2addr v3, v5

    iget v5, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->n:I

    iget v6, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->n:I

    invoke-virtual {v2, v4, v3, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 289
    iget-object v4, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->f:Lcom/facebook/orca/photos/tiles/UserTileViewLogic;

    invoke-interface {p2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/orca/threads/ParticipantInfo;

    invoke-virtual {v3}, Lcom/facebook/orca/threads/ParticipantInfo;->e()Lcom/facebook/orca/users/UserKey;

    move-result-object v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-virtual {v4, v3, v5, v6}, Lcom/facebook/orca/photos/tiles/UserTileViewLogic;->a(Lcom/facebook/orca/users/UserKey;II)Lcom/facebook/orca/images/FetchImageParams;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/facebook/widget/UrlImage;->setImageParams(Lcom/facebook/orca/images/FetchImageParams;)V

    .line 293
    invoke-interface {p2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/orca/threads/ParticipantInfo;

    invoke-direct {p0, p1, v3, v0}, Lcom/facebook/orca/photos/tiles/ThreadTileView;->a(Lcom/facebook/widget/UrlImage;Lcom/facebook/orca/threads/ParticipantInfo;Landroid/graphics/Rect;)V

    .line 295
    iget-object v0, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->k:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/widget/UrlImage;

    .line 296
    iget-object v4, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->f:Lcom/facebook/orca/photos/tiles/UserTileViewLogic;

    invoke-interface {p2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/orca/threads/ParticipantInfo;

    invoke-virtual {v3}, Lcom/facebook/orca/threads/ParticipantInfo;->e()Lcom/facebook/orca/users/UserKey;

    move-result-object v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-virtual {v4, v3, v5, v6}, Lcom/facebook/orca/photos/tiles/UserTileViewLogic;->a(Lcom/facebook/orca/users/UserKey;II)Lcom/facebook/orca/images/FetchImageParams;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/facebook/widget/UrlImage;->setImageParams(Lcom/facebook/orca/images/FetchImageParams;)V

    .line 300
    invoke-interface {p2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/orca/threads/ParticipantInfo;

    invoke-direct {p0, v0, v3, v1}, Lcom/facebook/orca/photos/tiles/ThreadTileView;->a(Lcom/facebook/widget/UrlImage;Lcom/facebook/orca/threads/ParticipantInfo;Landroid/graphics/Rect;)V

    .line 301
    invoke-virtual {v0, v7}, Lcom/facebook/widget/UrlImage;->setVisibility(I)V

    .line 303
    iget-object v0, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->k:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/widget/UrlImage;

    .line 304
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v8, :cond_0

    .line 306
    iget-object v1, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->f:Lcom/facebook/orca/photos/tiles/UserTileViewLogic;

    iget-object v3, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->c:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v3}, Lcom/facebook/orca/cache/DataCache;->b()Lcom/facebook/orca/users/UserKey;

    move-result-object v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-virtual {v1, v3, v4, v5}, Lcom/facebook/orca/photos/tiles/UserTileViewLogic;->a(Lcom/facebook/orca/users/UserKey;II)Lcom/facebook/orca/images/FetchImageParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/widget/UrlImage;->setImageParams(Lcom/facebook/orca/images/FetchImageParams;)V

    .line 310
    new-instance v1, Lcom/facebook/orca/threads/ParticipantInfo;

    iget-object v3, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->c:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v3}, Lcom/facebook/orca/cache/DataCache;->b()Lcom/facebook/orca/users/UserKey;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Lcom/facebook/orca/threads/ParticipantInfo;-><init>(Lcom/facebook/orca/users/UserKey;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/facebook/orca/photos/tiles/ThreadTileView;->a(Lcom/facebook/widget/UrlImage;Lcom/facebook/orca/threads/ParticipantInfo;Landroid/graphics/Rect;)V

    .line 324
    :goto_0
    invoke-virtual {v0, v7}, Lcom/facebook/widget/UrlImage;->setVisibility(I)V

    .line 325
    iput v10, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->o:I

    .line 326
    return-void

    .line 318
    :cond_0
    iget-object v3, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->f:Lcom/facebook/orca/photos/tiles/UserTileViewLogic;

    invoke-interface {p2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/threads/ParticipantInfo;

    invoke-virtual {v1}, Lcom/facebook/orca/threads/ParticipantInfo;->e()Lcom/facebook/orca/users/UserKey;

    move-result-object v1

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-virtual {v3, v1, v4, v5}, Lcom/facebook/orca/photos/tiles/UserTileViewLogic;->a(Lcom/facebook/orca/users/UserKey;II)Lcom/facebook/orca/images/FetchImageParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/widget/UrlImage;->setImageParams(Lcom/facebook/orca/images/FetchImageParams;)V

    .line 322
    invoke-interface {p2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/threads/ParticipantInfo;

    invoke-direct {p0, v0, v1, v2}, Lcom/facebook/orca/photos/tiles/ThreadTileView;->a(Lcom/facebook/widget/UrlImage;Lcom/facebook/orca/threads/ParticipantInfo;Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method private static b(I)Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;
    .locals 3
    .parameter

    .prologue
    const/high16 v2, 0x3f80

    .line 349
    new-instance v0, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;

    invoke-direct {v0}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;-><init>()V

    new-instance v1, Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;

    invoke-direct {v1}, Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;-><init>()V

    invoke-virtual {v1, v2}, Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;->a(F)Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;->b(F)Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;->c(F)Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;->e()Lcom/facebook/orca/photos/sizing/CropRegionConstraints;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;->a(Lcom/facebook/orca/photos/sizing/CropRegionConstraints;)Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;

    move-result-object v0

    div-int/lit8 v1, p0, 0x2

    invoke-virtual {v0, v1}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;->a(I)Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;

    move-result-object v0

    div-int/lit8 v1, p0, 0x2

    invoke-virtual {v0, v1}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;->b(I)Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;->c(I)Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;->d(I)Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;->i()Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getThreadSummary()Lcom/facebook/orca/threads/ThreadSummary;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->m:Lcom/facebook/orca/threads/ThreadSummary;

    return-object v0
.end method

.method public getTileSizePx()I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->n:I

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 166
    const-string v1, "ThreadTileView.onLayout"

    invoke-static {v1}, Lcom/facebook/orca/debug/Tracer;->a(Ljava/lang/String;)Lcom/facebook/orca/debug/Tracer;

    move-result-object v3

    .line 167
    invoke-virtual {p0}, Lcom/facebook/orca/photos/tiles/ThreadTileView;->getPaddingLeft()I

    move-result v1

    .line 168
    invoke-virtual {p0}, Lcom/facebook/orca/photos/tiles/ThreadTileView;->getRight()I

    move-result v2

    invoke-virtual {p0}, Lcom/facebook/orca/photos/tiles/ThreadTileView;->getLeft()I

    move-result v4

    sub-int/2addr v2, v4

    invoke-virtual {p0}, Lcom/facebook/orca/photos/tiles/ThreadTileView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v2, v4

    .line 170
    invoke-virtual {p0}, Lcom/facebook/orca/photos/tiles/ThreadTileView;->getPaddingTop()I

    move-result v2

    .line 171
    invoke-virtual {p0}, Lcom/facebook/orca/photos/tiles/ThreadTileView;->getBottom()I

    move-result v4

    invoke-virtual {p0}, Lcom/facebook/orca/photos/tiles/ThreadTileView;->getTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/facebook/orca/photos/tiles/ThreadTileView;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    .line 173
    iget v4, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->o:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 175
    iget-object v4, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->k:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/widget/UrlImage;

    .line 176
    invoke-virtual {v0}, Lcom/facebook/widget/UrlImage;->getMeasuredWidth()I

    move-result v4

    .line 177
    invoke-virtual {v0}, Lcom/facebook/widget/UrlImage;->getMeasuredHeight()I

    move-result v5

    .line 178
    add-int/2addr v4, v1

    add-int/2addr v5, v2

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/facebook/widget/UrlImage;->layout(IIII)V

    .line 186
    :cond_0
    invoke-virtual {v3}, Lcom/facebook/orca/debug/Tracer;->a()J

    .line 187
    return-void

    .line 179
    :cond_1
    iget v1, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->o:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    move v2, v0

    .line 180
    :goto_0
    iget v0, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->o:I

    if-ge v2, v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->k:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/widget/UrlImage;

    .line 182
    iget-object v1, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->l:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 183
    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget v5, v1, Landroid/graphics/Rect;->top:I

    iget v6, v1, Landroid/graphics/Rect;->right:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v4, v5, v6, v1}, Lcom/facebook/widget/UrlImage;->layout(IIII)V

    .line 180
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/high16 v4, 0x4000

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 128
    const-string v0, "ThreadTileView.onMeasure"

    invoke-static {v0}, Lcom/facebook/orca/debug/Tracer;->a(Ljava/lang/String;)Lcom/facebook/orca/debug/Tracer;

    move-result-object v8

    .line 134
    invoke-virtual {p0}, Lcom/facebook/orca/photos/tiles/ThreadTileView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/facebook/orca/photos/tiles/ThreadTileView;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    add-int v6, v3, v0

    .line 135
    invoke-virtual {p0}, Lcom/facebook/orca/photos/tiles/ThreadTileView;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/facebook/orca/photos/tiles/ThreadTileView;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    add-int v7, v3, v0

    .line 138
    iget v0, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->o:I

    if-ne v0, v2, :cond_0

    .line 139
    invoke-direct {p0, v2}, Lcom/facebook/orca/photos/tiles/ThreadTileView;->a(I)V

    .line 140
    iget-object v0, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->k:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/widget/UrlImage;

    move-object v0, p0

    move v2, p1

    move v4, p2

    move v5, v3

    .line 141
    invoke-virtual/range {v0 .. v5}, Lcom/facebook/orca/photos/tiles/ThreadTileView;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 142
    invoke-virtual {v1}, Lcom/facebook/widget/UrlImage;->getMeasuredWidth()I

    move-result v0

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 143
    invoke-virtual {v1}, Lcom/facebook/widget/UrlImage;->getMeasuredHeight()I

    move-result v1

    invoke-static {v7, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 156
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/orca/photos/tiles/ThreadTileView;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 157
    invoke-virtual {p0}, Lcom/facebook/orca/photos/tiles/ThreadTileView;->getSuggestedMinimumWidth()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 158
    invoke-static {v0, p1}, Lcom/facebook/orca/photos/tiles/ThreadTileView;->resolveSize(II)I

    move-result v0

    invoke-static {v1, p2}, Lcom/facebook/orca/photos/tiles/ThreadTileView;->resolveSize(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/facebook/orca/photos/tiles/ThreadTileView;->setMeasuredDimension(II)V

    .line 161
    invoke-virtual {v8}, Lcom/facebook/orca/debug/Tracer;->a()J

    .line 162
    return-void

    .line 144
    :cond_0
    iget v0, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->o:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 145
    iget v0, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->o:I

    invoke-direct {p0, v0}, Lcom/facebook/orca/photos/tiles/ThreadTileView;->a(I)V

    .line 146
    :goto_1
    iget v0, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->o:I

    if-ge v3, v0, :cond_1

    .line 147
    iget-object v0, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->k:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/widget/UrlImage;

    .line 148
    iget-object v1, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->l:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 149
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/facebook/widget/UrlImage;->measure(II)V

    .line 146
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    move v0, v6

    move v1, v7

    goto :goto_0
.end method

.method public setThreadSummary(Lcom/facebook/orca/threads/ThreadSummary;)V
    .locals 0
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->m:Lcom/facebook/orca/threads/ThreadSummary;

    .line 109
    invoke-direct {p0}, Lcom/facebook/orca/photos/tiles/ThreadTileView;->a()V

    .line 110
    invoke-virtual {p0}, Lcom/facebook/orca/photos/tiles/ThreadTileView;->requestLayout()V

    .line 111
    invoke-virtual {p0}, Lcom/facebook/orca/photos/tiles/ThreadTileView;->invalidate()V

    .line 112
    return-void
.end method

.method public setTileSizePx(I)V
    .locals 0
    .parameter

    .prologue
    .line 120
    iput p1, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView;->n:I

    .line 121
    invoke-direct {p0}, Lcom/facebook/orca/photos/tiles/ThreadTileView;->a()V

    .line 122
    invoke-virtual {p0}, Lcom/facebook/orca/photos/tiles/ThreadTileView;->requestLayout()V

    .line 123
    invoke-virtual {p0}, Lcom/facebook/orca/photos/tiles/ThreadTileView;->invalidate()V

    .line 124
    return-void
.end method
