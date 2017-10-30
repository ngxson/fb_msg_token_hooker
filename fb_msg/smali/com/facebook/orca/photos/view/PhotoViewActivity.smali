.class public Lcom/facebook/orca/photos/view/PhotoViewActivity;
.super Lcom/facebook/orca/activity/FbFragmentActivity;
.source "PhotoViewActivity.java"

# interfaces
.implements Lcom/facebook/orca/analytics/AnalyticsActivity;


# instance fields
.field private final A:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private final B:Landroid/view/GestureDetector$SimpleOnGestureListener;

.field private n:Landroid/widget/Gallery;

.field private o:Lcom/facebook/orca/photos/view/PhotoGalleryAdapter;

.field private p:Landroid/widget/RelativeLayout;

.field private q:Landroid/widget/FrameLayout;

.field private r:Landroid/view/GestureDetector;

.field private s:Landroid/widget/TextView;

.field private t:Lcom/facebook/orca/photos/tiles/UserTileView;

.field private u:Landroid/widget/TextView;

.field private v:Landroid/widget/TextView;

.field private w:Landroid/widget/TextView;

.field private x:Lcom/facebook/orca/emoji/EmojiUtil;

.field private y:Lcom/facebook/orca/threads/ThreadDateUtil;

.field private z:Lcom/facebook/orca/threads/Message;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/facebook/orca/activity/FbFragmentActivity;-><init>()V

    .line 111
    new-instance v0, Lcom/facebook/orca/photos/view/PhotoViewActivity$1;

    invoke-direct {v0, p0}, Lcom/facebook/orca/photos/view/PhotoViewActivity$1;-><init>(Lcom/facebook/orca/photos/view/PhotoViewActivity;)V

    iput-object v0, p0, Lcom/facebook/orca/photos/view/PhotoViewActivity;->A:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 146
    new-instance v0, Lcom/facebook/orca/photos/view/PhotoViewActivity$2;

    invoke-direct {v0, p0}, Lcom/facebook/orca/photos/view/PhotoViewActivity$2;-><init>(Lcom/facebook/orca/photos/view/PhotoViewActivity;)V

    iput-object v0, p0, Lcom/facebook/orca/photos/view/PhotoViewActivity;->B:Landroid/view/GestureDetector$SimpleOnGestureListener;

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/photos/view/PhotoViewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/facebook/orca/photos/view/PhotoViewActivity;->j()V

    return-void
.end method

.method static synthetic b(Lcom/facebook/orca/photos/view/PhotoViewActivity;)Landroid/widget/Gallery;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/facebook/orca/photos/view/PhotoViewActivity;->n:Landroid/widget/Gallery;

    return-object v0
.end method

.method static synthetic c(Lcom/facebook/orca/photos/view/PhotoViewActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/facebook/orca/photos/view/PhotoViewActivity;->s:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic d(Lcom/facebook/orca/photos/view/PhotoViewActivity;)Lcom/facebook/orca/emoji/EmojiUtil;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/facebook/orca/photos/view/PhotoViewActivity;->x:Lcom/facebook/orca/emoji/EmojiUtil;

    return-object v0
.end method

.method static synthetic e(Lcom/facebook/orca/photos/view/PhotoViewActivity;)Lcom/facebook/orca/photos/tiles/UserTileView;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/facebook/orca/photos/view/PhotoViewActivity;->t:Lcom/facebook/orca/photos/tiles/UserTileView;

    return-object v0
.end method

.method static synthetic f(Lcom/facebook/orca/photos/view/PhotoViewActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/facebook/orca/photos/view/PhotoViewActivity;->u:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic g(Lcom/facebook/orca/photos/view/PhotoViewActivity;)Lcom/facebook/orca/threads/ThreadDateUtil;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/facebook/orca/photos/view/PhotoViewActivity;->y:Lcom/facebook/orca/threads/ThreadDateUtil;

    return-object v0
.end method

.method static synthetic h(Lcom/facebook/orca/photos/view/PhotoViewActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/facebook/orca/photos/view/PhotoViewActivity;->v:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic i(Lcom/facebook/orca/photos/view/PhotoViewActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/facebook/orca/photos/view/PhotoViewActivity;->p:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private i()Z
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/facebook/orca/photos/view/PhotoViewActivity;->p:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic j(Lcom/facebook/orca/photos/view/PhotoViewActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/facebook/orca/photos/view/PhotoViewActivity;->w:Landroid/widget/TextView;

    return-object v0
.end method

.method private j()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 169
    iget-object v0, p0, Lcom/facebook/orca/photos/view/PhotoViewActivity;->q:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 170
    iget-object v0, p0, Lcom/facebook/orca/photos/view/PhotoViewActivity;->n:Landroid/widget/Gallery;

    invoke-virtual {v0}, Landroid/widget/Gallery;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/photos/view/PhotoMessageItem;

    invoke-virtual {v0}, Lcom/facebook/orca/photos/view/PhotoMessageItem;->b()Lcom/facebook/orca/threads/Message;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/facebook/orca/photos/view/PhotoViewActivity;->p:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/photos/view/PhotoViewActivity;->q:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 175
    :cond_1
    return-void
.end method

.method private k()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 178
    iget-object v0, p0, Lcom/facebook/orca/photos/view/PhotoViewActivity;->q:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/facebook/orca/photos/view/PhotoViewActivity;->p:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 180
    iget-object v0, p0, Lcom/facebook/orca/photos/view/PhotoViewActivity;->q:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 182
    :cond_0
    return-void
.end method

.method static synthetic k(Lcom/facebook/orca/photos/view/PhotoViewActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/facebook/orca/photos/view/PhotoViewActivity;->i()Z

    move-result v0

    return v0
.end method

.method static synthetic l(Lcom/facebook/orca/photos/view/PhotoViewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/facebook/orca/photos/view/PhotoViewActivity;->k()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 9
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 60
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/FbFragmentActivity;->a(Landroid/os/Bundle;)V

    .line 62
    invoke-virtual {p0}, Lcom/facebook/orca/photos/view/PhotoViewActivity;->l()Lcom/facebook/orca/inject/FbInjector;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/threads/ThreadDateUtil;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/ThreadDateUtil;

    iput-object v0, p0, Lcom/facebook/orca/photos/view/PhotoViewActivity;->y:Lcom/facebook/orca/threads/ThreadDateUtil;

    .line 63
    invoke-virtual {p0}, Lcom/facebook/orca/photos/view/PhotoViewActivity;->l()Lcom/facebook/orca/inject/FbInjector;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/emoji/EmojiUtil;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/emoji/EmojiUtil;

    iput-object v0, p0, Lcom/facebook/orca/photos/view/PhotoViewActivity;->x:Lcom/facebook/orca/emoji/EmojiUtil;

    .line 64
    sget v0, Lcom/facebook/R$layout;->orca_photo_view:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/photos/view/PhotoViewActivity;->setContentView(I)V

    .line 66
    invoke-virtual {p0}, Lcom/facebook/orca/photos/view/PhotoViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 67
    const-string v0, "imageData"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/attachments/ImageAttachmentData;

    .line 68
    if-nez v0, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/facebook/orca/photos/view/PhotoViewActivity;->finish()V

    .line 109
    :goto_0
    return-void

    .line 73
    :cond_0
    const-string v1, "message"

    invoke-virtual {v3, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 74
    const-string v1, "message"

    invoke-virtual {v3, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/threads/Message;

    iput-object v1, p0, Lcom/facebook/orca/photos/view/PhotoViewActivity;->z:Lcom/facebook/orca/threads/Message;

    .line 77
    :cond_1
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v4

    .line 79
    const-string v1, "imageAttachments"

    invoke-virtual {v3, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 80
    const-string v1, "imageAttachments"

    invoke-virtual {v3, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 83
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v3, v2

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/attachments/ImageAttachmentData;

    .line 84
    new-instance v6, Lcom/facebook/orca/photos/view/PhotoMessageItem;

    invoke-virtual {v1}, Lcom/facebook/orca/attachments/ImageAttachmentData;->b()Landroid/net/Uri;

    move-result-object v7

    iget-object v8, p0, Lcom/facebook/orca/photos/view/PhotoViewActivity;->z:Lcom/facebook/orca/threads/Message;

    invoke-direct {v6, v7, v8}, Lcom/facebook/orca/photos/view/PhotoMessageItem;-><init>(Landroid/net/Uri;Lcom/facebook/orca/threads/Message;)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    invoke-virtual {v1}, Lcom/facebook/orca/attachments/ImageAttachmentData;->b()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0}, Lcom/facebook/orca/attachments/ImageAttachmentData;->b()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v3, v2

    .line 88
    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 91
    :cond_3
    new-instance v1, Lcom/facebook/orca/photos/view/PhotoMessageItem;

    invoke-virtual {v0}, Lcom/facebook/orca/attachments/ImageAttachmentData;->b()Landroid/net/Uri;

    move-result-object v0

    const/4 v3, 0x0

    invoke-direct {v1, v0, v3}, Lcom/facebook/orca/photos/view/PhotoMessageItem;-><init>(Landroid/net/Uri;Lcom/facebook/orca/threads/Message;)V

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v3, v2

    .line 94
    :cond_4
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/facebook/orca/photos/view/PhotoViewActivity;->B:Landroid/view/GestureDetector$SimpleOnGestureListener;

    invoke-direct {v0, p0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/facebook/orca/photos/view/PhotoViewActivity;->r:Landroid/view/GestureDetector;

    .line 96
    sget v0, Lcom/facebook/R$id;->gallery:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/photos/view/PhotoViewActivity;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Gallery;

    iput-object v0, p0, Lcom/facebook/orca/photos/view/PhotoViewActivity;->n:Landroid/widget/Gallery;

    .line 97
    new-instance v0, Lcom/facebook/orca/photos/view/PhotoGalleryAdapter;

    invoke-direct {v0, p0, v4}, Lcom/facebook/orca/photos/view/PhotoGalleryAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/facebook/orca/photos/view/PhotoViewActivity;->o:Lcom/facebook/orca/photos/view/PhotoGalleryAdapter;

    .line 98
    iget-object v0, p0, Lcom/facebook/orca/photos/view/PhotoViewActivity;->n:Landroid/widget/Gallery;

    iget-object v1, p0, Lcom/facebook/orca/photos/view/PhotoViewActivity;->o:Lcom/facebook/orca/photos/view/PhotoGalleryAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 99
    iget-object v0, p0, Lcom/facebook/orca/photos/view/PhotoViewActivity;->n:Landroid/widget/Gallery;

    iget-object v1, p0, Lcom/facebook/orca/photos/view/PhotoViewActivity;->A:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 100
    sget v0, Lcom/facebook/R$id;->message_container:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/photos/view/PhotoViewActivity;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/facebook/orca/photos/view/PhotoViewActivity;->p:Landroid/widget/RelativeLayout;

    .line 101
    sget v0, Lcom/facebook/R$id;->message_text:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/photos/view/PhotoViewActivity;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/orca/photos/view/PhotoViewActivity;->s:Landroid/widget/TextView;

    .line 102
    sget v0, Lcom/facebook/R$id;->message_user_tile:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/photos/view/PhotoViewActivity;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/photos/tiles/UserTileView;

    iput-object v0, p0, Lcom/facebook/orca/photos/view/PhotoViewActivity;->t:Lcom/facebook/orca/photos/tiles/UserTileView;

    .line 103
    sget v0, Lcom/facebook/R$id;->message_user:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/photos/view/PhotoViewActivity;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/orca/photos/view/PhotoViewActivity;->u:Landroid/widget/TextView;

    .line 104
    sget v0, Lcom/facebook/R$id;->message_time:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/photos/view/PhotoViewActivity;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/orca/photos/view/PhotoViewActivity;->v:Landroid/widget/TextView;

    .line 105
    sget v0, Lcom/facebook/R$id;->photo_count_text:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/photos/view/PhotoViewActivity;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/orca/photos/view/PhotoViewActivity;->w:Landroid/widget/TextView;

    .line 106
    sget v0, Lcom/facebook/R$id;->photo_count_container:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/photos/view/PhotoViewActivity;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/facebook/orca/photos/view/PhotoViewActivity;->q:Landroid/widget/FrameLayout;

    .line 108
    iget-object v0, p0, Lcom/facebook/orca/photos/view/PhotoViewActivity;->n:Landroid/widget/Gallery;

    invoke-virtual {v0, v3}, Landroid/widget/Gallery;->setSelection(I)V

    goto/16 :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 161
    iget-object v0, p0, Lcom/facebook/orca/photos/view/PhotoViewActivity;->r:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/facebook/orca/activity/FbFragmentActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    const-string v0, "photo"

    return-object v0
.end method
