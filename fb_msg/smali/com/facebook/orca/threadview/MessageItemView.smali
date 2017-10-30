.class public Lcom/facebook/orca/threadview/MessageItemView;
.super Lcom/facebook/widget/CustomLinearLayout;
.source "MessageItemView.java"


# instance fields
.field private A:Lcom/facebook/orca/threadview/MessageListAdapter;

.field private a:Lcom/facebook/orca/cache/DataCache;

.field private b:Lcom/facebook/orca/common/ui/util/MessageRenderingUtil;

.field private c:Lcom/facebook/orca/threads/ThreadDateUtil;

.field private d:Lcom/facebook/orca/share/ShareRenderingLogic;

.field private e:Lcom/facebook/orca/attachments/AttachmentDataFactory;

.field private f:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroid/widget/FrameLayout;

.field private h:Landroid/widget/LinearLayout;

.field private i:Lcom/facebook/widget/BetterTextView;

.field private j:Landroid/widget/TextView;

.field private k:Lcom/facebook/orca/photos/tiles/UserTileView;

.field private l:Lcom/facebook/orca/share/ShareView;

.field private m:Landroid/view/ViewStub;

.field private n:Landroid/view/ViewStub;

.field private o:Landroid/view/ViewStub;

.field private p:Landroid/view/ViewStub;

.field private q:Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;

.field private r:Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;

.field private s:Lcom/facebook/orca/threadview/ThreadViewOtherAttachmentsView;

.field private t:Landroid/widget/ImageButton;

.field private u:Lcom/facebook/orca/threadview/ReceiptItemView;

.field private v:Landroid/widget/LinearLayout;

.field private w:Landroid/widget/TextView;

.field private x:Landroid/view/View;

.field private y:Lcom/facebook/orca/threadview/RowMessageItem;

.field private z:Lcom/facebook/orca/threads/Message;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/facebook/widget/CustomLinearLayout;-><init>(Landroid/content/Context;)V

    .line 98
    invoke-direct {p0, p1}, Lcom/facebook/orca/threadview/MessageItemView;->a(Landroid/content/Context;)V

    .line 99
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/threadview/MessageItemView;)Lcom/facebook/orca/threadview/MessageListAdapter;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->A:Lcom/facebook/orca/threadview/MessageListAdapter;

    return-object v0
.end method

.method private a()V
    .locals 9

    .prologue
    const/4 v8, -0x2

    const/high16 v7, 0x424a

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 149
    invoke-direct {p0}, Lcom/facebook/orca/threadview/MessageItemView;->k()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 150
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->i:Lcom/facebook/widget/BetterTextView;

    invoke-virtual {v0, v5}, Lcom/facebook/widget/BetterTextView;->setVisibility(I)V

    .line 151
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->b:Lcom/facebook/orca/common/ui/util/MessageRenderingUtil;

    iget-object v1, p0, Lcom/facebook/orca/threadview/MessageItemView;->z:Lcom/facebook/orca/threads/Message;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/util/MessageRenderingUtil;->a(Lcom/facebook/orca/threads/Message;)Landroid/text/Spanned;

    move-result-object v0

    .line 152
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v1

    .line 153
    invoke-virtual {v1, v0}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v0

    .line 154
    const/16 v1, 0xf

    invoke-static {v0, v1}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    .line 155
    iget-object v1, p0, Lcom/facebook/orca/threadview/MessageItemView;->i:Lcom/facebook/widget/BetterTextView;

    invoke-virtual {v1, v0}, Lcom/facebook/widget/BetterTextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    :goto_0
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->h:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/facebook/orca/threadview/MessageItemView$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/threadview/MessageItemView$1;-><init>(Lcom/facebook/orca/threadview/MessageItemView;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 172
    iput v8, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 176
    iget-object v1, p0, Lcom/facebook/orca/threadview/MessageItemView;->a:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v1}, Lcom/facebook/orca/cache/DataCache;->b()Lcom/facebook/orca/users/UserKey;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/orca/threadview/MessageItemView;->z:Lcom/facebook/orca/threads/Message;

    invoke-virtual {v2}, Lcom/facebook/orca/threads/Message;->f()Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/orca/threads/ParticipantInfo;->e()Lcom/facebook/orca/users/UserKey;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/orca/users/UserKey;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 178
    iget-object v1, p0, Lcom/facebook/orca/threadview/MessageItemView;->z:Lcom/facebook/orca/threads/Message;

    invoke-virtual {v1}, Lcom/facebook/orca/threads/Message;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/threads/MessagingIdUtil;->j(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 179
    sget v1, Lcom/facebook/R$drawable;->orca_convo_bubble_green_button:I

    .line 183
    :goto_1
    iget-object v2, p0, Lcom/facebook/orca/threadview/MessageItemView;->h:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/facebook/orca/threadview/MessageItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 185
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/MessageItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v7}, Lcom/facebook/orca/common/util/SizeUtil;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 187
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/MessageItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x40a0

    invoke-static {v1, v2}, Lcom/facebook/orca/common/util/SizeUtil;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 189
    const/4 v1, 0x5

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 191
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->k:Lcom/facebook/orca/photos/tiles/UserTileView;

    invoke-virtual {v0, v6}, Lcom/facebook/orca/photos/tiles/UserTileView;->setUserKey(Lcom/facebook/orca/users/UserKey;)V

    .line 192
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->k:Lcom/facebook/orca/photos/tiles/UserTileView;

    invoke-virtual {v0, v4}, Lcom/facebook/orca/photos/tiles/UserTileView;->setVisibility(I)V

    .line 194
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 217
    :goto_2
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->x:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->x:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->f:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 223
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->e:Lcom/facebook/orca/attachments/AttachmentDataFactory;

    iget-object v1, p0, Lcom/facebook/orca/threadview/MessageItemView;->z:Lcom/facebook/orca/threads/Message;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/attachments/AttachmentDataFactory;->c(Lcom/facebook/orca/threads/Message;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 224
    invoke-direct {p0}, Lcom/facebook/orca/threadview/MessageItemView;->c()V

    .line 225
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->o:Landroid/view/ViewStub;

    if-eqz v0, :cond_1

    .line 226
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->o:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;

    iput-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->r:Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;

    .line 227
    iput-object v6, p0, Lcom/facebook/orca/threadview/MessageItemView;->o:Landroid/view/ViewStub;

    .line 229
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->r:Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;

    invoke-virtual {v0, v5}, Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;->setVisibility(I)V

    .line 230
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->r:Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;

    iget-object v1, p0, Lcom/facebook/orca/threadview/MessageItemView;->z:Lcom/facebook/orca/threads/Message;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;->setMessage(Lcom/facebook/orca/threads/Message;)V

    .line 243
    :cond_2
    :goto_3
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->d:Lcom/facebook/orca/share/ShareRenderingLogic;

    iget-object v1, p0, Lcom/facebook/orca/threadview/MessageItemView;->z:Lcom/facebook/orca/threads/Message;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/share/ShareRenderingLogic;->a(Lcom/facebook/orca/threads/Message;)Lcom/facebook/orca/share/Share;

    move-result-object v1

    .line 244
    if-eqz v1, :cond_13

    .line 245
    invoke-direct {p0}, Lcom/facebook/orca/threadview/MessageItemView;->d()V

    .line 246
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->m:Landroid/view/ViewStub;

    if-eqz v0, :cond_3

    .line 247
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->m:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/share/ShareView;

    iput-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->l:Lcom/facebook/orca/share/ShareView;

    .line 248
    iput-object v6, p0, Lcom/facebook/orca/threadview/MessageItemView;->m:Landroid/view/ViewStub;

    .line 252
    :cond_3
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->l:Lcom/facebook/orca/share/ShareView;

    invoke-virtual {v0}, Lcom/facebook/orca/share/ShareView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v8, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 253
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->l:Lcom/facebook/orca/share/ShareView;

    invoke-virtual {v0, v5}, Lcom/facebook/orca/share/ShareView;->setVisibility(I)V

    .line 254
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->l:Lcom/facebook/orca/share/ShareView;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/share/ShareView;->setShare(Lcom/facebook/orca/share/Share;)V

    .line 262
    :cond_4
    :goto_4
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->e:Lcom/facebook/orca/attachments/AttachmentDataFactory;

    iget-object v1, p0, Lcom/facebook/orca/threadview/MessageItemView;->z:Lcom/facebook/orca/threads/Message;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/attachments/AttachmentDataFactory;->e(Lcom/facebook/orca/threads/Message;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 263
    invoke-direct {p0}, Lcom/facebook/orca/threadview/MessageItemView;->e()V

    .line 264
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->p:Landroid/view/ViewStub;

    if-eqz v0, :cond_5

    .line 265
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->p:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threadview/ThreadViewOtherAttachmentsView;

    iput-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->s:Lcom/facebook/orca/threadview/ThreadViewOtherAttachmentsView;

    .line 266
    iput-object v6, p0, Lcom/facebook/orca/threadview/MessageItemView;->p:Landroid/view/ViewStub;

    .line 268
    :cond_5
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->s:Lcom/facebook/orca/threadview/ThreadViewOtherAttachmentsView;

    invoke-virtual {v0, v5}, Lcom/facebook/orca/threadview/ThreadViewOtherAttachmentsView;->setVisibility(I)V

    .line 269
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->s:Lcom/facebook/orca/threadview/ThreadViewOtherAttachmentsView;

    iget-object v1, p0, Lcom/facebook/orca/threadview/MessageItemView;->z:Lcom/facebook/orca/threads/Message;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threadview/ThreadViewOtherAttachmentsView;->setMessage(Lcom/facebook/orca/threads/Message;)V

    .line 277
    :cond_6
    :goto_5
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->e:Lcom/facebook/orca/attachments/AttachmentDataFactory;

    iget-object v1, p0, Lcom/facebook/orca/threadview/MessageItemView;->z:Lcom/facebook/orca/threads/Message;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/attachments/AttachmentDataFactory;->a(Lcom/facebook/orca/threads/Message;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 278
    invoke-direct {p0}, Lcom/facebook/orca/threadview/MessageItemView;->f()V

    .line 279
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->n:Landroid/view/ViewStub;

    if-eqz v0, :cond_7

    .line 280
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->n:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;

    iput-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->q:Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;

    .line 281
    iput-object v6, p0, Lcom/facebook/orca/threadview/MessageItemView;->n:Landroid/view/ViewStub;

    .line 283
    :cond_7
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->q:Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;

    invoke-virtual {v0, v5}, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->setVisibility(I)V

    .line 284
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->q:Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;

    iget-object v1, p0, Lcom/facebook/orca/threadview/MessageItemView;->z:Lcom/facebook/orca/threads/Message;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->setMessage(Lcom/facebook/orca/threads/Message;)V

    .line 291
    :cond_8
    :goto_6
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->z:Lcom/facebook/orca/threads/Message;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/Message;->r()I

    move-result v0

    const/16 v1, 0x385

    if-ne v0, v1, :cond_16

    .line 292
    invoke-direct {p0}, Lcom/facebook/orca/threadview/MessageItemView;->g()V

    .line 293
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->t:Landroid/widget/ImageButton;

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 300
    :cond_9
    :goto_7
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->y:Lcom/facebook/orca/threadview/RowMessageItem;

    invoke-virtual {v0}, Lcom/facebook/orca/threadview/RowMessageItem;->d()Lcom/facebook/orca/threadview/RowReceiptItem;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 301
    invoke-direct {p0}, Lcom/facebook/orca/threadview/MessageItemView;->h()V

    .line 302
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->u:Lcom/facebook/orca/threadview/ReceiptItemView;

    iget-object v1, p0, Lcom/facebook/orca/threadview/MessageItemView;->y:Lcom/facebook/orca/threadview/RowMessageItem;

    invoke-virtual {v1}, Lcom/facebook/orca/threadview/RowMessageItem;->d()Lcom/facebook/orca/threadview/RowReceiptItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threadview/ReceiptItemView;->setRowReceiptItem(Lcom/facebook/orca/threadview/RowReceiptItem;)V

    .line 303
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->u:Lcom/facebook/orca/threadview/ReceiptItemView;

    invoke-virtual {v0, v5}, Lcom/facebook/orca/threadview/ReceiptItemView;->setVisibility(I)V

    .line 306
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->u:Lcom/facebook/orca/threadview/ReceiptItemView;

    invoke-virtual {v0}, Lcom/facebook/orca/threadview/ReceiptItemView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 308
    iget-object v1, p0, Lcom/facebook/orca/threadview/MessageItemView;->a:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v1}, Lcom/facebook/orca/cache/DataCache;->b()Lcom/facebook/orca/users/UserKey;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/orca/threadview/MessageItemView;->z:Lcom/facebook/orca/threads/Message;

    invoke-virtual {v2}, Lcom/facebook/orca/threads/Message;->f()Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/orca/threads/ParticipantInfo;->e()Lcom/facebook/orca/users/UserKey;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/orca/users/UserKey;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 309
    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 310
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/MessageItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x40c0

    invoke-static {v1, v2}, Lcom/facebook/orca/common/util/SizeUtil;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 312
    const/4 v1, 0x5

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 325
    :cond_a
    :goto_8
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->y:Lcom/facebook/orca/threadview/RowMessageItem;

    invoke-virtual {v0}, Lcom/facebook/orca/threadview/RowMessageItem;->c()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 326
    invoke-direct {p0}, Lcom/facebook/orca/threadview/MessageItemView;->i()V

    .line 327
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->z:Lcom/facebook/orca/threads/Message;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/Message;->d()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->z:Lcom/facebook/orca/threads/Message;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/Message;->e()J

    move-result-wide v0

    iget-object v2, p0, Lcom/facebook/orca/threadview/MessageItemView;->z:Lcom/facebook/orca/threads/Message;

    invoke-virtual {v2}, Lcom/facebook/orca/threads/Message;->c()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_19

    .line 328
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->w:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/facebook/orca/threadview/MessageItemView;->c:Lcom/facebook/orca/threads/ThreadDateUtil;

    iget-object v2, p0, Lcom/facebook/orca/threadview/MessageItemView;->z:Lcom/facebook/orca/threads/Message;

    invoke-virtual {v2}, Lcom/facebook/orca/threads/Message;->e()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/facebook/orca/threads/ThreadDateUtil;->c(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 334
    :goto_9
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->v:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 340
    :cond_b
    :goto_a
    return-void

    .line 157
    :cond_c
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->i:Lcom/facebook/widget/BetterTextView;

    invoke-virtual {v0, v4}, Lcom/facebook/widget/BetterTextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 181
    :cond_d
    sget v1, Lcom/facebook/R$drawable;->orca_convo_bubble_blue_button:I

    goto/16 :goto_1

    .line 196
    :cond_e
    iget-object v1, p0, Lcom/facebook/orca/threadview/MessageItemView;->h:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/facebook/orca/threadview/MessageItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/facebook/R$drawable;->orca_convo_bubble_white_button:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 199
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/MessageItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x4234

    invoke-static {v1, v2}, Lcom/facebook/orca/common/util/SizeUtil;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 201
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/MessageItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x4228

    invoke-static {v1, v2}, Lcom/facebook/orca/common/util/SizeUtil;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 203
    const/4 v1, 0x3

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 205
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->k:Lcom/facebook/orca/photos/tiles/UserTileView;

    iget-object v1, p0, Lcom/facebook/orca/threadview/MessageItemView;->z:Lcom/facebook/orca/threads/Message;

    invoke-virtual {v1}, Lcom/facebook/orca/threads/Message;->f()Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/orca/threads/ParticipantInfo;->e()Lcom/facebook/orca/users/UserKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/photos/tiles/UserTileView;->setUserKey(Lcom/facebook/orca/users/UserKey;)V

    .line 206
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->k:Lcom/facebook/orca/photos/tiles/UserTileView;

    invoke-virtual {v0, v5}, Lcom/facebook/orca/photos/tiles/UserTileView;->setVisibility(I)V

    .line 208
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->a:Lcom/facebook/orca/cache/DataCache;

    iget-object v1, p0, Lcom/facebook/orca/threadview/MessageItemView;->z:Lcom/facebook/orca/threads/Message;

    invoke-virtual {v1}, Lcom/facebook/orca/threads/Message;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/cache/DataCache;->b(Ljava/lang/String;)Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v0

    .line 209
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadSummary;->g()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 210
    :cond_f
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 212
    :cond_10
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 213
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->j:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/facebook/orca/threadview/MessageItemView;->a:Lcom/facebook/orca/cache/DataCache;

    iget-object v2, p0, Lcom/facebook/orca/threadview/MessageItemView;->z:Lcom/facebook/orca/threads/Message;

    invoke-virtual {v2}, Lcom/facebook/orca/threads/Message;->f()Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/orca/cache/DataCache;->a(Lcom/facebook/orca/threads/ParticipantInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 232
    :cond_11
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->r:Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;

    if-eqz v0, :cond_2

    .line 233
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->r:Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;

    invoke-virtual {v0, v4}, Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;->setVisibility(I)V

    goto/16 :goto_3

    .line 237
    :cond_12
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->r:Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;

    if-eqz v0, :cond_2

    .line 238
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->r:Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;

    invoke-virtual {v0, v4}, Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;->setVisibility(I)V

    goto/16 :goto_3

    .line 256
    :cond_13
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->l:Lcom/facebook/orca/share/ShareView;

    if-eqz v0, :cond_4

    .line 257
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->l:Lcom/facebook/orca/share/ShareView;

    invoke-virtual {v0, v4}, Lcom/facebook/orca/share/ShareView;->setVisibility(I)V

    goto/16 :goto_4

    .line 271
    :cond_14
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->s:Lcom/facebook/orca/threadview/ThreadViewOtherAttachmentsView;

    if-eqz v0, :cond_6

    .line 272
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->s:Lcom/facebook/orca/threadview/ThreadViewOtherAttachmentsView;

    invoke-virtual {v0, v4}, Lcom/facebook/orca/threadview/ThreadViewOtherAttachmentsView;->setVisibility(I)V

    goto/16 :goto_5

    .line 286
    :cond_15
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->q:Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;

    if-eqz v0, :cond_8

    .line 287
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->q:Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;

    invoke-virtual {v0, v4}, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->setVisibility(I)V

    goto/16 :goto_6

    .line 295
    :cond_16
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->t:Landroid/widget/ImageButton;

    if-eqz v0, :cond_9

    .line 296
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->t:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_7

    .line 314
    :cond_17
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/MessageItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v7}, Lcom/facebook/orca/common/util/SizeUtil;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 316
    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 317
    const/4 v1, 0x3

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto/16 :goto_8

    .line 320
    :cond_18
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->u:Lcom/facebook/orca/threadview/ReceiptItemView;

    if-eqz v0, :cond_a

    .line 321
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->u:Lcom/facebook/orca/threadview/ReceiptItemView;

    invoke-virtual {v0, v4}, Lcom/facebook/orca/threadview/ReceiptItemView;->setVisibility(I)V

    goto/16 :goto_8

    .line 331
    :cond_19
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->w:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/facebook/orca/threadview/MessageItemView;->c:Lcom/facebook/orca/threads/ThreadDateUtil;

    iget-object v2, p0, Lcom/facebook/orca/threadview/MessageItemView;->z:Lcom/facebook/orca/threads/Message;

    invoke-virtual {v2}, Lcom/facebook/orca/threads/Message;->c()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/facebook/orca/threads/ThreadDateUtil;->c(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_9

    .line 336
    :cond_1a
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->v:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_b

    .line 337
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->v:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_a
.end method

.method private a(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 107
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/MessageItemView;->setOrientation(I)V

    .line 109
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/MessageItemView;->getInjector()Lcom/facebook/orca/inject/FbInjector;

    move-result-object v1

    .line 110
    const-class v0, Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/cache/DataCache;

    iput-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->a:Lcom/facebook/orca/cache/DataCache;

    .line 111
    const-class v0, Lcom/facebook/orca/common/ui/util/MessageRenderingUtil;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/ui/util/MessageRenderingUtil;

    iput-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->b:Lcom/facebook/orca/common/ui/util/MessageRenderingUtil;

    .line 112
    const-class v0, Lcom/facebook/orca/threads/ThreadDateUtil;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/ThreadDateUtil;

    iput-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->c:Lcom/facebook/orca/threads/ThreadDateUtil;

    .line 113
    const-class v0, Lcom/facebook/orca/share/ShareRenderingLogic;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/share/ShareRenderingLogic;

    iput-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->d:Lcom/facebook/orca/share/ShareRenderingLogic;

    .line 114
    const-class v0, Lcom/facebook/orca/attachments/AttachmentDataFactory;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/attachments/AttachmentDataFactory;

    iput-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->e:Lcom/facebook/orca/attachments/AttachmentDataFactory;

    .line 115
    const-class v0, Ljava/lang/Boolean;

    const-class v2, Lcom/facebook/orca/annotations/IsAudioMessageEnabled;

    invoke-virtual {v1, v0, v2}, Lcom/facebook/orca/inject/FbInjector;->b(Ljava/lang/Class;Ljava/lang/Class;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->f:Ljavax/inject/Provider;

    .line 118
    sget v0, Lcom/facebook/R$layout;->orca_message_item:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/MessageItemView;->setContentView(I)V

    .line 120
    sget v0, Lcom/facebook/R$id;->message_container:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/MessageItemView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->g:Landroid/widget/FrameLayout;

    .line 121
    sget v0, Lcom/facebook/R$id;->message_bubble_container:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/MessageItemView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->h:Landroid/widget/LinearLayout;

    .line 122
    sget v0, Lcom/facebook/R$id;->message_text:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/MessageItemView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/widget/BetterTextView;

    iput-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->i:Lcom/facebook/widget/BetterTextView;

    .line 123
    sget v0, Lcom/facebook/R$id;->message_user_tile:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/MessageItemView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/photos/tiles/UserTileView;

    iput-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->k:Lcom/facebook/orca/photos/tiles/UserTileView;

    .line 124
    sget v0, Lcom/facebook/R$id;->message_audio:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/MessageItemView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;

    iput-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->r:Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;

    .line 125
    sget v0, Lcom/facebook/R$id;->message_left_bubble_sender_name:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/MessageItemView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->j:Landroid/widget/TextView;

    .line 127
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->i:Lcom/facebook/widget/BetterTextView;

    new-instance v1, Lcom/facebook/orca/common/ui/widgets/text/UrlSpanLinkHook;

    iget-object v2, p0, Lcom/facebook/orca/threadview/MessageItemView;->i:Lcom/facebook/widget/BetterTextView;

    invoke-direct {v1, v2}, Lcom/facebook/orca/common/ui/widgets/text/UrlSpanLinkHook;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Lcom/facebook/widget/BetterTextView;->a(Lcom/facebook/widget/BetterTextViewHook;)V

    .line 131
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/MessageItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40c0

    invoke-static {v0, v1}, Lcom/facebook/orca/common/util/SizeUtil;->a(Landroid/content/Context;F)I

    move-result v0

    .line 132
    invoke-virtual {p0, v3, v0, v3, v0}, Lcom/facebook/orca/threadview/MessageItemView;->setPadding(IIII)V

    .line 133
    return-void
.end method

.method private a(Landroid/view/ViewStub;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 437
    if-nez p2, :cond_1

    .line 438
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->m:Landroid/view/ViewStub;

    iget-object v1, p0, Lcom/facebook/orca/threadview/MessageItemView;->l:Lcom/facebook/orca/share/ShareView;

    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/orca/threadview/MessageItemView;->a(Landroid/view/ViewStub;Landroid/view/ViewStub;Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->p:Landroid/view/ViewStub;

    iget-object v1, p0, Lcom/facebook/orca/threadview/MessageItemView;->s:Lcom/facebook/orca/threadview/ThreadViewOtherAttachmentsView;

    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/orca/threadview/MessageItemView;->a(Landroid/view/ViewStub;Landroid/view/ViewStub;Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->n:Landroid/view/ViewStub;

    iget-object v1, p0, Lcom/facebook/orca/threadview/MessageItemView;->q:Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;

    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/orca/threadview/MessageItemView;->a(Landroid/view/ViewStub;Landroid/view/ViewStub;Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 442
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 457
    :cond_0
    :goto_0
    return-void

    .line 444
    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    .line 445
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->p:Landroid/view/ViewStub;

    iget-object v1, p0, Lcom/facebook/orca/threadview/MessageItemView;->s:Lcom/facebook/orca/threadview/ThreadViewOtherAttachmentsView;

    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/orca/threadview/MessageItemView;->a(Landroid/view/ViewStub;Landroid/view/ViewStub;Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->n:Landroid/view/ViewStub;

    iget-object v1, p0, Lcom/facebook/orca/threadview/MessageItemView;->q:Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;

    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/orca/threadview/MessageItemView;->a(Landroid/view/ViewStub;Landroid/view/ViewStub;Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 448
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 450
    :cond_2
    const/4 v0, 0x2

    if-ne p2, v0, :cond_3

    .line 451
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->n:Landroid/view/ViewStub;

    iget-object v1, p0, Lcom/facebook/orca/threadview/MessageItemView;->q:Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;

    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/orca/threadview/MessageItemView;->a(Landroid/view/ViewStub;Landroid/view/ViewStub;Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 452
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 454
    :cond_3
    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    .line 455
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private a(Landroid/view/ViewStub;Landroid/view/ViewStub;Landroid/view/View;)Z
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 463
    if-nez p2, :cond_0

    if-eqz p3, :cond_2

    .line 464
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->h:Landroid/widget/LinearLayout;

    if-eqz p2, :cond_1

    :goto_0
    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 466
    iget-object v1, p0, Lcom/facebook/orca/threadview/MessageItemView;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 467
    const/4 v0, 0x1

    .line 469
    :goto_1
    return v0

    :cond_1
    move-object p2, p3

    .line 464
    goto :goto_0

    .line 469
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private b()V
    .locals 3

    .prologue
    .line 375
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/facebook/orca/threadview/MessageItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/facebook/orca/mutators/ResendMessageActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 376
    const-string v1, "message"

    iget-object v2, p0, Lcom/facebook/orca/threadview/MessageItemView;->z:Lcom/facebook/orca/threads/Message;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 377
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/MessageItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 378
    return-void
.end method

.method static synthetic b(Lcom/facebook/orca/threadview/MessageItemView;)V
    .locals 0
    .parameter

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/facebook/orca/threadview/MessageItemView;->b()V

    return-void
.end method

.method private c()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 381
    invoke-direct {p0}, Lcom/facebook/orca/threadview/MessageItemView;->j()V

    .line 382
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->o:Landroid/view/ViewStub;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->r:Lcom/facebook/orca/threadview/ThreadViewAudioAttachmentView;

    if-eqz v0, :cond_1

    .line 392
    :cond_0
    :goto_0
    return-void

    .line 386
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/MessageItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 387
    sget v1, Lcom/facebook/R$layout;->orca_message_item_attachment_audio:I

    iget-object v2, p0, Lcom/facebook/orca/threadview/MessageItemView;->g:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->o:Landroid/view/ViewStub;

    .line 391
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->o:Landroid/view/ViewStub;

    invoke-direct {p0, v0, v3}, Lcom/facebook/orca/threadview/MessageItemView;->a(Landroid/view/ViewStub;I)V

    goto :goto_0
.end method

.method private d()V
    .locals 4

    .prologue
    .line 395
    invoke-direct {p0}, Lcom/facebook/orca/threadview/MessageItemView;->j()V

    .line 396
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->m:Landroid/view/ViewStub;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->l:Lcom/facebook/orca/share/ShareView;

    if-eqz v0, :cond_1

    .line 406
    :cond_0
    :goto_0
    return-void

    .line 400
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/MessageItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 401
    sget v1, Lcom/facebook/R$layout;->orca_message_item_attachment_share:I

    iget-object v2, p0, Lcom/facebook/orca/threadview/MessageItemView;->g:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->m:Landroid/view/ViewStub;

    .line 405
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->m:Landroid/view/ViewStub;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/threadview/MessageItemView;->a(Landroid/view/ViewStub;I)V

    goto :goto_0
.end method

.method private e()V
    .locals 4

    .prologue
    .line 409
    invoke-direct {p0}, Lcom/facebook/orca/threadview/MessageItemView;->j()V

    .line 410
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->p:Landroid/view/ViewStub;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->s:Lcom/facebook/orca/threadview/ThreadViewOtherAttachmentsView;

    if-eqz v0, :cond_1

    .line 420
    :cond_0
    :goto_0
    return-void

    .line 414
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/MessageItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 415
    sget v1, Lcom/facebook/R$layout;->orca_message_item_attachment_other_attachments:I

    iget-object v2, p0, Lcom/facebook/orca/threadview/MessageItemView;->g:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->p:Landroid/view/ViewStub;

    .line 419
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->p:Landroid/view/ViewStub;

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/threadview/MessageItemView;->a(Landroid/view/ViewStub;I)V

    goto :goto_0
.end method

.method private f()V
    .locals 4

    .prologue
    .line 423
    invoke-direct {p0}, Lcom/facebook/orca/threadview/MessageItemView;->j()V

    .line 424
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->n:Landroid/view/ViewStub;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->q:Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;

    if-eqz v0, :cond_1

    .line 434
    :cond_0
    :goto_0
    return-void

    .line 428
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/MessageItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 429
    sget v1, Lcom/facebook/R$layout;->orca_message_item_attachment_image:I

    iget-object v2, p0, Lcom/facebook/orca/threadview/MessageItemView;->g:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->n:Landroid/view/ViewStub;

    .line 433
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->n:Landroid/view/ViewStub;

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/threadview/MessageItemView;->a(Landroid/view/ViewStub;I)V

    goto :goto_0
.end method

.method private g()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 473
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->t:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 488
    :goto_0
    return-void

    .line 476
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/MessageItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 477
    sget v1, Lcom/facebook/R$layout;->orca_message_item_retry_button:I

    iget-object v2, p0, Lcom/facebook/orca/threadview/MessageItemView;->g:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->t:Landroid/widget/ImageButton;

    .line 479
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->g:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/facebook/orca/threadview/MessageItemView;->t:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 481
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->t:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 482
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->t:Landroid/widget/ImageButton;

    new-instance v1, Lcom/facebook/orca/threadview/MessageItemView$2;

    invoke-direct {v1, p0}, Lcom/facebook/orca/threadview/MessageItemView$2;-><init>(Lcom/facebook/orca/threadview/MessageItemView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private h()V
    .locals 3

    .prologue
    .line 491
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->u:Lcom/facebook/orca/threadview/ReceiptItemView;

    if-eqz v0, :cond_0

    .line 498
    :goto_0
    return-void

    .line 494
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/MessageItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 495
    sget v1, Lcom/facebook/R$layout;->orca_message_item_receipt_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 496
    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/MessageItemView;->addView(Landroid/view/View;)V

    .line 497
    sget v1, Lcom/facebook/R$id;->row_receipt_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threadview/ReceiptItemView;

    iput-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->u:Lcom/facebook/orca/threadview/ReceiptItemView;

    goto :goto_0
.end method

.method private i()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 501
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->v:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 509
    :goto_0
    return-void

    .line 504
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/MessageItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 505
    sget v1, Lcom/facebook/R$layout;->orca_message_divider:I

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->v:Landroid/widget/LinearLayout;

    .line 507
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->v:Landroid/widget/LinearLayout;

    sget v1, Lcom/facebook/R$id;->message_divider_text:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->w:Landroid/widget/TextView;

    .line 508
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->v:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0, v2}, Lcom/facebook/orca/threadview/MessageItemView;->addView(Landroid/view/View;I)V

    goto :goto_0
.end method

.method private j()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 513
    invoke-direct {p0}, Lcom/facebook/orca/threadview/MessageItemView;->k()Z

    move-result v0

    if-nez v0, :cond_0

    .line 538
    :goto_0
    return-void

    .line 516
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->x:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 517
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->x:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 521
    :cond_1
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/facebook/orca/threadview/MessageItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->x:Landroid/view/View;

    .line 522
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-virtual {p0}, Lcom/facebook/orca/threadview/MessageItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/facebook/R$dimen;->divider_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 525
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/MessageItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x40a0

    invoke-static {v1, v2}, Lcom/facebook/orca/common/util/SizeUtil;->a(Landroid/content/Context;F)I

    move-result v1

    .line 527
    invoke-virtual {v0, v4, v1, v4, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 529
    iget-object v1, p0, Lcom/facebook/orca/threadview/MessageItemView;->x:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 530
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->x:Landroid/view/View;

    invoke-virtual {p0}, Lcom/facebook/orca/threadview/MessageItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/R$drawable;->default_separator_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 532
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->h:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/facebook/orca/threadview/MessageItemView;->i:Lcom/facebook/widget/BetterTextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 533
    if-ltz v0, :cond_2

    invoke-virtual {p0}, Lcom/facebook/orca/threadview/MessageItemView;->getChildCount()I

    move-result v1

    add-int/lit8 v2, v0, 0x1

    if-le v1, v2, :cond_2

    .line 534
    iget-object v1, p0, Lcom/facebook/orca/threadview/MessageItemView;->h:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/facebook/orca/threadview/MessageItemView;->x:Landroid/view/View;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    goto :goto_0

    .line 536
    :cond_2
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->h:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/facebook/orca/threadview/MessageItemView;->x:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private k()Z
    .locals 1

    .prologue
    .line 541
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->z:Lcom/facebook/orca/threads/Message;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/Message;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/StringUtil;->f(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/facebook/orca/threadview/RowMessageItem;Lcom/facebook/orca/threadview/MessageListAdapter;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 142
    iput-object p1, p0, Lcom/facebook/orca/threadview/MessageItemView;->y:Lcom/facebook/orca/threadview/RowMessageItem;

    .line 143
    iput-object p2, p0, Lcom/facebook/orca/threadview/MessageItemView;->A:Lcom/facebook/orca/threadview/MessageListAdapter;

    .line 144
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->y:Lcom/facebook/orca/threadview/RowMessageItem;

    invoke-virtual {v0}, Lcom/facebook/orca/threadview/RowMessageItem;->b()Lcom/facebook/orca/threads/Message;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->z:Lcom/facebook/orca/threads/Message;

    .line 145
    invoke-direct {p0}, Lcom/facebook/orca/threadview/MessageItemView;->a()V

    .line 146
    return-void
.end method

.method protected dispatchSetPressed(Z)V
    .locals 0
    .parameter

    .prologue
    .line 355
    return-void
.end method

.method public getRowMessageItem()Lcom/facebook/orca/threadview/RowMessageItem;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->y:Lcom/facebook/orca/threadview/RowMessageItem;

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation build Landroid/annotation/SuppressLint;
    .end annotation

    .prologue
    .line 360
    invoke-super/range {p0 .. p5}, Lcom/facebook/widget/CustomLinearLayout;->onLayout(ZIIII)V

    .line 361
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->t:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->z:Lcom/facebook/orca/threads/Message;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/Message;->r()I

    move-result v0

    const/16 v1, 0x385

    if-ne v0, v1, :cond_0

    .line 362
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 363
    iget-object v1, p0, Lcom/facebook/orca/threadview/MessageItemView;->t:Landroid/widget/ImageButton;

    invoke-static {v1, p0, v0}, Lcom/facebook/orca/common/util/RectUtil;->a(Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 364
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/MessageItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x4170

    invoke-static {v1, v2}, Lcom/facebook/orca/common/util/SizeUtil;->a(Landroid/content/Context;F)I

    move-result v1

    .line 365
    iget v2, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v1

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 366
    iget v2, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v1

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 367
    iget v2, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v1

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 368
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 369
    new-instance v1, Landroid/view/TouchDelegate;

    iget-object v2, p0, Lcom/facebook/orca/threadview/MessageItemView;->t:Landroid/widget/ImageButton;

    invoke-direct {v1, v0, v2}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 370
    invoke-virtual {p0, v1}, Lcom/facebook/orca/threadview/MessageItemView;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 372
    :cond_0
    return-void
.end method
