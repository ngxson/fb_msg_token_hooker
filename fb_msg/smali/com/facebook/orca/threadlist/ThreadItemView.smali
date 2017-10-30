.class public Lcom/facebook/orca/threadlist/ThreadItemView;
.super Lcom/facebook/widget/CustomViewGroup;
.source "ThreadItemView.java"


# static fields
.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/regex/Pattern;


# instance fields
.field private c:Lcom/facebook/orca/cache/DataCache;

.field private d:Lcom/facebook/orca/cache/ThreadDisplayCache;

.field private e:Lcom/facebook/orca/threads/ThreadDateUtil;

.field private f:Lcom/facebook/orca/threads/ThreadParticipantUtils;

.field private g:Lcom/facebook/orca/emoji/EmojiUtil;

.field private h:Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;

.field private i:Lcom/facebook/orca/photos/tiles/ThreadTileView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/ImageView;

.field private m:Lcom/facebook/orca/threads/ThreadSummary;

.field private n:Lcom/facebook/orca/threadlist/ThreadListAdapter$Mode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/facebook/orca/threadlist/ThreadItemView;

    sput-object v0, Lcom/facebook/orca/threadlist/ThreadItemView;->a:Ljava/lang/Class;

    .line 45
    const-string v0, "\\n+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/facebook/orca/threadlist/ThreadItemView;->b:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/facebook/widget/CustomViewGroup;-><init>(Landroid/content/Context;)V

    .line 64
    invoke-direct {p0, p1}, Lcom/facebook/orca/threadlist/ThreadItemView;->a(Landroid/content/Context;)V

    .line 65
    return-void
.end method

.method private static a(Lcom/facebook/orca/threads/ThreadSummary;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 143
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "<null>"

    goto :goto_0
.end method

.method private a(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/facebook/orca/threadlist/ThreadItemView;->getInjector()Lcom/facebook/orca/inject/FbInjector;

    move-result-object v1

    .line 79
    const-class v0, Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/cache/DataCache;

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadItemView;->c:Lcom/facebook/orca/cache/DataCache;

    .line 80
    const-class v0, Lcom/facebook/orca/cache/ThreadDisplayCache;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/cache/ThreadDisplayCache;

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadItemView;->d:Lcom/facebook/orca/cache/ThreadDisplayCache;

    .line 81
    const-class v0, Lcom/facebook/orca/threads/ThreadDateUtil;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/ThreadDateUtil;

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadItemView;->e:Lcom/facebook/orca/threads/ThreadDateUtil;

    .line 82
    const-class v0, Lcom/facebook/orca/threads/ThreadParticipantUtils;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/ThreadParticipantUtils;

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadItemView;->f:Lcom/facebook/orca/threads/ThreadParticipantUtils;

    .line 83
    const-class v0, Lcom/facebook/orca/emoji/EmojiUtil;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/emoji/EmojiUtil;

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadItemView;->g:Lcom/facebook/orca/emoji/EmojiUtil;

    .line 85
    sget v0, Lcom/facebook/R$layout;->orca_thread_list_item:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadlist/ThreadItemView;->setContentView(I)V

    .line 87
    sget v0, Lcom/facebook/R$id;->thread_name:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadlist/ThreadItemView;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadItemView;->h:Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;

    .line 88
    sget v0, Lcom/facebook/R$id;->thread_tile_img:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadlist/ThreadItemView;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/photos/tiles/ThreadTileView;

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadItemView;->i:Lcom/facebook/orca/photos/tiles/ThreadTileView;

    .line 89
    sget v0, Lcom/facebook/R$id;->thread_last_msg:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadlist/ThreadItemView;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadItemView;->j:Landroid/widget/TextView;

    .line 90
    sget v0, Lcom/facebook/R$id;->thread_time:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadlist/ThreadItemView;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadItemView;->k:Landroid/widget/TextView;

    .line 91
    sget v0, Lcom/facebook/R$id;->thread_failed_icon:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadlist/ThreadItemView;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadItemView;->l:Landroid/widget/ImageView;

    .line 92
    return-void
.end method

.method private a(Z)V
    .locals 3
    .parameter

    .prologue
    const v0, 0x106000d

    .line 162
    iget-object v1, p0, Lcom/facebook/orca/threadlist/ThreadItemView;->n:Lcom/facebook/orca/threadlist/ThreadListAdapter$Mode;

    sget-object v2, Lcom/facebook/orca/threadlist/ThreadListAdapter$Mode;->NORMAL:Lcom/facebook/orca/threadlist/ThreadListAdapter$Mode;

    if-ne v1, v2, :cond_1

    .line 163
    if-eqz p1, :cond_0

    sget v0, Lcom/facebook/R$drawable;->orca_thread_list_item_unread_background:I

    :cond_0
    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadlist/ThreadItemView;->setBackgroundResource(I)V

    .line 170
    :goto_0
    return-void

    .line 168
    :cond_1
    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadlist/ThreadItemView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private b(Lcom/facebook/orca/threads/ThreadSummary;)Ljava/lang/CharSequence;
    .locals 12
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 173
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->n()Ljava/lang/String;

    move-result-object v0

    .line 174
    invoke-static {v0}, Lcom/facebook/orca/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 252
    :goto_0
    return-object v0

    .line 178
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->m()Ljava/lang/String;

    move-result-object v1

    .line 179
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->o()Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v0

    .line 180
    iget-object v2, p0, Lcom/facebook/orca/threadlist/ThreadItemView;->d:Lcom/facebook/orca/cache/ThreadDisplayCache;

    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/facebook/orca/cache/ThreadDisplayCache;->b(Ljava/lang/String;)Lcom/facebook/orca/cache/ThreadDisplayCache$ThreadSnippet;

    move-result-object v2

    .line 182
    if-eqz v2, :cond_c

    invoke-virtual {v2}, Lcom/facebook/orca/cache/ThreadDisplayCache$ThreadSnippet;->c()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->k()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-ltz v4, :cond_c

    .line 184
    invoke-virtual {v2}, Lcom/facebook/orca/cache/ThreadDisplayCache$ThreadSnippet;->a()Ljava/lang/String;

    move-result-object v1

    .line 185
    invoke-virtual {v2}, Lcom/facebook/orca/cache/ThreadDisplayCache$ThreadSnippet;->b()Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v0

    move-object v2, v0

    move-object v0, v1

    .line 188
    :goto_1
    if-eqz v0, :cond_1

    if-nez v2, :cond_2

    .line 189
    :cond_1
    const-string v0, ""

    goto :goto_0

    .line 193
    :cond_2
    sget-object v1, Lcom/facebook/orca/threadlist/ThreadItemView;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 194
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 195
    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 202
    :goto_2
    invoke-virtual {p0}, Lcom/facebook/orca/threadlist/ThreadItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 203
    new-instance v6, Lcom/facebook/orca/common/util/StyledStringBuilder;

    invoke-virtual {p0}, Lcom/facebook/orca/threadlist/ThreadItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {v6, v0}, Lcom/facebook/orca/common/util/StyledStringBuilder;-><init>(Landroid/content/res/Resources;)V

    .line 204
    invoke-virtual {v2}, Lcom/facebook/orca/threads/ParticipantInfo;->e()Lcom/facebook/orca/users/UserKey;

    move-result-object v0

    iget-object v4, p0, Lcom/facebook/orca/threadlist/ThreadItemView;->c:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v4}, Lcom/facebook/orca/cache/DataCache;->b()Lcom/facebook/orca/users/UserKey;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 205
    sget v0, Lcom/facebook/R$drawable;->orca_reply_arrow:I

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 206
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 207
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadItemView;->f:Lcom/facebook/orca/threads/ThreadParticipantUtils;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/threads/ThreadParticipantUtils;->b(Lcom/facebook/orca/threads/ThreadSummary;)Lcom/facebook/orca/threads/ThreadParticipant;

    move-result-object v0

    .line 209
    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->k()J

    move-result-wide v7

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadParticipant;->i()J

    move-result-wide v9

    cmp-long v0, v7, v9

    if-gez v0, :cond_9

    .line 211
    sget v0, Lcom/facebook/R$drawable;->orca_inbox_seen:I

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 226
    :goto_3
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {v0, v3, v3, v2, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 227
    new-instance v2, Landroid/text/style/ImageSpan;

    invoke-direct {v2, v0}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 228
    const/16 v0, 0x21

    invoke-virtual {v6, v2, v0}, Lcom/facebook/orca/common/util/StyledStringBuilder;->a(Ljava/lang/Object;I)Lcom/facebook/orca/common/util/StyledStringBuilder;

    .line 229
    const-string v0, "\u00a0"

    invoke-virtual {v6, v0}, Lcom/facebook/orca/common/util/StyledStringBuilder;->a(Ljava/lang/String;)Lcom/facebook/orca/common/util/StyledStringBuilder;

    .line 230
    invoke-virtual {v6}, Lcom/facebook/orca/common/util/StyledStringBuilder;->a()Lcom/facebook/orca/common/util/StyledStringBuilder;

    .line 231
    const-string v0, "\u00a0"

    invoke-virtual {v6, v0}, Lcom/facebook/orca/common/util/StyledStringBuilder;->a(Ljava/lang/String;)Lcom/facebook/orca/common/util/StyledStringBuilder;

    .line 232
    invoke-virtual {v6, v1}, Lcom/facebook/orca/common/util/StyledStringBuilder;->a(Ljava/lang/String;)Lcom/facebook/orca/common/util/StyledStringBuilder;

    .line 249
    :goto_4
    invoke-virtual {v6}, Lcom/facebook/orca/common/util/StyledStringBuilder;->b()Landroid/text/SpannableString;

    move-result-object v0

    .line 250
    invoke-virtual {p0}, Lcom/facebook/orca/threadlist/ThreadItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x4140

    invoke-static {v1, v2}, Lcom/facebook/orca/common/util/SizeUtil;->b(Landroid/content/Context;F)I

    move-result v1

    .line 251
    iget-object v2, p0, Lcom/facebook/orca/threadlist/ThreadItemView;->g:Lcom/facebook/orca/emoji/EmojiUtil;

    invoke-virtual {v2, v0, v1}, Lcom/facebook/orca/emoji/EmojiUtil;->a(Landroid/text/Spannable;I)V

    goto/16 :goto_0

    .line 214
    :cond_3
    const/4 v4, 0x1

    .line 215
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->i()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/ThreadParticipant;

    .line 216
    iget-object v8, p0, Lcom/facebook/orca/threadlist/ThreadItemView;->c:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v8}, Lcom/facebook/orca/cache/DataCache;->b()Lcom/facebook/orca/users/UserKey;

    move-result-object v8

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadParticipant;->d()Lcom/facebook/orca/users/UserKey;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->k()J

    move-result-wide v8

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadParticipant;->i()J

    move-result-wide v10

    cmp-long v0, v8, v10

    if-ltz v0, :cond_4

    move v0, v3

    .line 222
    :goto_5
    if-eqz v0, :cond_9

    .line 223
    sget v0, Lcom/facebook/R$drawable;->orca_inbox_seen:I

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_3

    .line 233
    :cond_5
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadItemView;->d:Lcom/facebook/orca/cache/ThreadDisplayCache;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/cache/ThreadDisplayCache;->c(Lcom/facebook/orca/threads/ThreadSummary;)I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_6

    .line 234
    invoke-virtual {v6, v1}, Lcom/facebook/orca/common/util/StyledStringBuilder;->a(Ljava/lang/String;)Lcom/facebook/orca/common/util/StyledStringBuilder;

    goto :goto_4

    .line 237
    :cond_6
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->e()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 238
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadItemView;->c:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/facebook/orca/cache/DataCache;->a(Ljava/lang/String;Lcom/facebook/orca/threads/ParticipantInfo;)Ljava/lang/String;

    move-result-object v0

    .line 240
    if-eqz v0, :cond_7

    .line 241
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/facebook/orca/common/util/StyledStringBuilder;->a(Ljava/lang/String;)Lcom/facebook/orca/common/util/StyledStringBuilder;

    goto/16 :goto_4

    .line 243
    :cond_7
    invoke-virtual {v6, v1}, Lcom/facebook/orca/common/util/StyledStringBuilder;->a(Ljava/lang/String;)Lcom/facebook/orca/common/util/StyledStringBuilder;

    goto/16 :goto_4

    .line 246
    :cond_8
    invoke-virtual {v6, v1}, Lcom/facebook/orca/common/util/StyledStringBuilder;->a(Ljava/lang/String;)Lcom/facebook/orca/common/util/StyledStringBuilder;

    goto/16 :goto_4

    :cond_9
    move-object v0, v2

    goto/16 :goto_3

    :cond_a
    move v0, v4

    goto :goto_5

    :cond_b
    move-object v1, v0

    goto/16 :goto_2

    :cond_c
    move-object v2, v0

    move-object v0, v1

    goto/16 :goto_1
.end method

.method private b()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 147
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadItemView;->h:Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;

    iget-object v2, p0, Lcom/facebook/orca/threadlist/ThreadItemView;->m:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v0, v2}, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;->setData(Ljava/lang/Object;)V

    .line 148
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadItemView;->i:Lcom/facebook/orca/photos/tiles/ThreadTileView;

    iget-object v2, p0, Lcom/facebook/orca/threadlist/ThreadItemView;->m:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v0, v2}, Lcom/facebook/orca/photos/tiles/ThreadTileView;->setThreadSummary(Lcom/facebook/orca/threads/ThreadSummary;)V

    .line 149
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadItemView;->j:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/facebook/orca/threadlist/ThreadItemView;->m:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-direct {p0, v2}, Lcom/facebook/orca/threadlist/ThreadItemView;->b(Lcom/facebook/orca/threads/ThreadSummary;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadItemView;->k:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/facebook/orca/threadlist/ThreadItemView;->e:Lcom/facebook/orca/threads/ThreadDateUtil;

    iget-object v3, p0, Lcom/facebook/orca/threadlist/ThreadItemView;->m:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v3}, Lcom/facebook/orca/threads/ThreadSummary;->k()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/facebook/orca/threads/ThreadDateUtil;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadItemView;->c:Lcom/facebook/orca/cache/DataCache;

    iget-object v2, p0, Lcom/facebook/orca/threadlist/ThreadItemView;->m:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v2}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/facebook/orca/cache/DataCache;->a(Ljava/lang/String;)J

    move-result-wide v2

    .line 152
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadItemView;->m:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadSummary;->b()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gez v0, :cond_0

    const/4 v0, 0x1

    .line 153
    :goto_0
    invoke-direct {p0, v0}, Lcom/facebook/orca/threadlist/ThreadItemView;->a(Z)V

    .line 154
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadItemView;->m:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadSummary;->w()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 155
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadItemView;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 159
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 152
    goto :goto_0

    .line 157
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadItemView;->l:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method a()V
    .locals 4

    .prologue
    .line 135
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadItemView;->n:Lcom/facebook/orca/threadlist/ThreadListAdapter$Mode;

    sget-object v1, Lcom/facebook/orca/threadlist/ThreadListAdapter$Mode;->NORMAL:Lcom/facebook/orca/threadlist/ThreadListAdapter$Mode;

    if-ne v0, v1, :cond_0

    .line 136
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadItemView;->c:Lcom/facebook/orca/cache/DataCache;

    iget-object v1, p0, Lcom/facebook/orca/threadlist/ThreadItemView;->m:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v1}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/cache/DataCache;->a(Ljava/lang/String;)J

    move-result-wide v0

    .line 137
    iget-object v2, p0, Lcom/facebook/orca/threadlist/ThreadItemView;->m:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v2}, Lcom/facebook/orca/threads/ThreadSummary;->b()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    const/4 v0, 0x1

    .line 138
    :goto_0
    invoke-direct {p0, v0}, Lcom/facebook/orca/threadlist/ThreadItemView;->a(Z)V

    .line 140
    :cond_0
    return-void

    .line 137
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(Lcom/facebook/orca/threads/ThreadSummary;Lcom/facebook/orca/threadlist/ThreadListAdapter$Mode;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 115
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadItemView;->m:Lcom/facebook/orca/threads/ThreadSummary;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadItemView;->n:Lcom/facebook/orca/threadlist/ThreadListAdapter$Mode;

    if-eq p2, v0, :cond_1

    .line 116
    :cond_0
    sget-object v0, Lcom/facebook/orca/threadlist/ThreadItemView;->a:Ljava/lang/Class;

    const-string v1, "addThreadToThreadList (%s to %s)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/facebook/orca/threadlist/ThreadItemView;->m:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-static {v4}, Lcom/facebook/orca/threadlist/ThreadItemView;->a(Lcom/facebook/orca/threads/ThreadSummary;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Lcom/facebook/orca/threadlist/ThreadItemView;->a(Lcom/facebook/orca/threads/ThreadSummary;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    iput-object p1, p0, Lcom/facebook/orca/threadlist/ThreadItemView;->m:Lcom/facebook/orca/threads/ThreadSummary;

    .line 119
    iput-object p2, p0, Lcom/facebook/orca/threadlist/ThreadItemView;->n:Lcom/facebook/orca/threadlist/ThreadListAdapter$Mode;

    .line 120
    invoke-direct {p0}, Lcom/facebook/orca/threadlist/ThreadItemView;->b()V

    .line 128
    :goto_0
    return-void

    .line 126
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/orca/threadlist/ThreadItemView;->a()V

    goto :goto_0
.end method

.method getThreadId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadItemView;->m:Lcom/facebook/orca/threads/ThreadSummary;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadItemView;->m:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 104
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadItemView;->m:Lcom/facebook/orca/threads/ThreadSummary;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadItemView;->m:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v0

    .line 105
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ThreadItemView.onLayout ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/debug/Tracer;->a(Ljava/lang/String;)Lcom/facebook/orca/debug/Tracer;

    move-result-object v0

    .line 106
    invoke-super/range {p0 .. p5}, Lcom/facebook/widget/CustomViewGroup;->onLayout(ZIIII)V

    .line 107
    invoke-virtual {v0}, Lcom/facebook/orca/debug/Tracer;->a()J

    .line 108
    return-void

    .line 104
    :cond_0
    const-string v0, "<none>"

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 96
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadItemView;->m:Lcom/facebook/orca/threads/ThreadSummary;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadItemView;->m:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v0

    .line 97
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ThreadItemView.onMeasure ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/debug/Tracer;->a(Ljava/lang/String;)Lcom/facebook/orca/debug/Tracer;

    move-result-object v0

    .line 98
    invoke-super {p0, p1, p2}, Lcom/facebook/widget/CustomViewGroup;->onMeasure(II)V

    .line 99
    invoke-virtual {v0}, Lcom/facebook/orca/debug/Tracer;->a()J

    .line 100
    return-void

    .line 96
    :cond_0
    const-string v0, "<none>"

    goto :goto_0
.end method
