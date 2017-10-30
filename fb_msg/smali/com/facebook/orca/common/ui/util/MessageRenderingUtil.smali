.class public Lcom/facebook/orca/common/ui/util/MessageRenderingUtil;
.super Ljava/lang/Object;
.source "MessageRenderingUtil.java"


# instance fields
.field private final a:Landroid/content/res/Resources;

.field private final b:Lcom/facebook/orca/share/ShareRenderingLogic;

.field private final c:Lcom/facebook/orca/emoji/EmojiUtil;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lcom/facebook/orca/share/ShareRenderingLogic;Lcom/facebook/orca/emoji/EmojiUtil;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/facebook/orca/common/ui/util/MessageRenderingUtil;->a:Landroid/content/res/Resources;

    .line 47
    iput-object p2, p0, Lcom/facebook/orca/common/ui/util/MessageRenderingUtil;->b:Lcom/facebook/orca/share/ShareRenderingLogic;

    .line 48
    iput-object p3, p0, Lcom/facebook/orca/common/ui/util/MessageRenderingUtil;->c:Lcom/facebook/orca/emoji/EmojiUtil;

    .line 49
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/facebook/orca/threads/Message;)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/facebook/orca/common/ui/util/MessageRenderingUtil;->b:Lcom/facebook/orca/share/ShareRenderingLogic;

    invoke-virtual {v0, p2}, Lcom/facebook/orca/share/ShareRenderingLogic;->a(Lcom/facebook/orca/threads/Message;)Lcom/facebook/orca/share/Share;

    move-result-object v0

    .line 88
    if-nez v0, :cond_0

    .line 112
    :goto_0
    return-object p1

    .line 91
    :cond_0
    iget-object v1, p0, Lcom/facebook/orca/common/ui/util/MessageRenderingUtil;->b:Lcom/facebook/orca/share/ShareRenderingLogic;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/share/ShareRenderingLogic;->a(Lcom/facebook/orca/share/Share;)Lcom/facebook/orca/share/ShareMedia;

    move-result-object v1

    .line 92
    invoke-virtual {v0}, Lcom/facebook/orca/share/Share;->e()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 93
    invoke-virtual {v0}, Lcom/facebook/orca/share/Share;->e()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/facebook/orca/common/ui/util/MessageRenderingUtil;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 95
    :goto_1
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/facebook/orca/share/ShareMedia;->a()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 96
    invoke-virtual {v1}, Lcom/facebook/orca/share/ShareMedia;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/facebook/orca/common/ui/util/MessageRenderingUtil;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 99
    :cond_1
    invoke-static {v0}, Lcom/facebook/orca/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 100
    if-eqz v1, :cond_5

    .line 101
    const-string v0, "photo"

    invoke-virtual {v1}, Lcom/facebook/orca/share/ShareMedia;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 102
    iget-object v0, p0, Lcom/facebook/orca/common/ui/util/MessageRenderingUtil;->a:Landroid/content/res/Resources;

    sget v1, Lcom/facebook/R$string;->share_attachment_shared_a_photo:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_2
    move-object p1, v0

    .line 112
    goto :goto_0

    .line 103
    :cond_3
    const-string v0, "video"

    invoke-virtual {v1}, Lcom/facebook/orca/share/ShareMedia;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 104
    iget-object v0, p0, Lcom/facebook/orca/common/ui/util/MessageRenderingUtil;->a:Landroid/content/res/Resources;

    sget v1, Lcom/facebook/R$string;->share_attachment_shared_a_video:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 106
    :cond_4
    iget-object v0, p0, Lcom/facebook/orca/common/ui/util/MessageRenderingUtil;->a:Landroid/content/res/Resources;

    sget v1, Lcom/facebook/R$string;->share_attachment_shared_a_link:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 109
    :cond_5
    iget-object v0, p0, Lcom/facebook/orca/common/ui/util/MessageRenderingUtil;->a:Landroid/content/res/Resources;

    sget v1, Lcom/facebook/R$string;->share_attachment_shared_a_link:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_6
    move-object v0, p1

    goto :goto_1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 116
    if-nez p2, :cond_1

    .line 136
    :cond_0
    :goto_0
    return-object p1

    .line 120
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 121
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 124
    :cond_2
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 125
    const-string v1, "http"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 126
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "https"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 127
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    invoke-direct {p0, p1, v0}, Lcom/facebook/orca/common/ui/util/MessageRenderingUtil;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 130
    :cond_3
    const-string v1, "https"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 131
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "http"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 132
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 133
    invoke-direct {p0, p1, v0}, Lcom/facebook/orca/common/ui/util/MessageRenderingUtil;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private a(Lcom/facebook/orca/location/GeolocationInfo;)[Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 254
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 256
    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/facebook/orca/location/GeolocationInfo;->d()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 257
    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/facebook/orca/location/GeolocationInfo;->g()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 258
    return-object v0
.end method

.method private a(Ljava/lang/String;Lcom/facebook/orca/location/GeolocationInfo;)[Ljava/lang/String;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 206
    invoke-direct {p0, p2}, Lcom/facebook/orca/common/ui/util/MessageRenderingUtil;->a(Lcom/facebook/orca/location/GeolocationInfo;)[Ljava/lang/String;

    move-result-object v0

    .line 207
    invoke-virtual {p2}, Lcom/facebook/orca/location/GeolocationInfo;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 208
    const/4 v1, 0x1

    invoke-direct {p0, p2}, Lcom/facebook/orca/common/ui/util/MessageRenderingUtil;->b(Lcom/facebook/orca/location/GeolocationInfo;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 210
    :cond_0
    return-object v0
.end method

.method private b(Lcom/facebook/orca/threads/Message;)Landroid/text/Spanned;
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 56
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/StringUtil;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 59
    invoke-direct {p0, v0, p1}, Lcom/facebook/orca/common/ui/util/MessageRenderingUtil;->a(Ljava/lang/String;Lcom/facebook/orca/threads/Message;)Ljava/lang/String;

    move-result-object v1

    .line 62
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    const-string v0, "<"

    .line 64
    const-string v0, "> "

    .line 65
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/StringUtil;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 66
    iget-object v2, p0, Lcom/facebook/orca/common/ui/util/MessageRenderingUtil;->a:Landroid/content/res/Resources;

    sget v3, Lcom/facebook/R$string;->message_subject:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 67
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 70
    const-string v2, "<"

    invoke-interface {v0, v5, v2}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 71
    const-string v2, "> "

    invoke-interface {v0, v2}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 72
    new-instance v2, Landroid/text/style/StyleSpan;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v3

    const/16 v4, 0x21

    invoke-interface {v0, v2, v5, v3, v4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 74
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 81
    :goto_0
    iget-object v1, p0, Lcom/facebook/orca/common/ui/util/MessageRenderingUtil;->a:Landroid/content/res/Resources;

    const/high16 v2, 0x4160

    invoke-static {v1, v2}, Lcom/facebook/orca/common/util/SizeUtil;->b(Landroid/content/res/Resources;F)I

    move-result v1

    .line 82
    iget-object v2, p0, Lcom/facebook/orca/common/ui/util/MessageRenderingUtil;->c:Lcom/facebook/orca/emoji/EmojiUtil;

    invoke-virtual {v2, v0, v1}, Lcom/facebook/orca/emoji/EmojiUtil;->a(Landroid/text/Spannable;I)V

    .line 83
    return-object v0

    .line 76
    :cond_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private b(Lcom/facebook/orca/location/GeolocationInfo;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 270
    invoke-virtual {p1}, Lcom/facebook/orca/location/GeolocationInfo;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CA"

    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/facebook/orca/location/GeolocationInfo;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, "US"

    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 272
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/orca/location/GeolocationInfo;->e()Ljava/lang/String;

    move-result-object v0

    .line 274
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 141
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 145
    const/4 v0, 0x0

    .line 146
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 147
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 152
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v0, v2, :cond_2

    .line 153
    const-string v0, ""

    .line 155
    :goto_1
    return-object v0

    .line 150
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 155
    :cond_2
    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private b(Lcom/facebook/orca/location/GeolocationInfo;Lcom/facebook/orca/location/GeolocationInfo;)[Ljava/lang/String;
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 223
    invoke-direct {p0, p2}, Lcom/facebook/orca/common/ui/util/MessageRenderingUtil;->a(Lcom/facebook/orca/location/GeolocationInfo;)[Ljava/lang/String;

    move-result-object v0

    .line 224
    invoke-virtual {p1}, Lcom/facebook/orca/location/GeolocationInfo;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/facebook/orca/location/GeolocationInfo;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 226
    invoke-direct {p0, p2}, Lcom/facebook/orca/common/ui/util/MessageRenderingUtil;->b(Lcom/facebook/orca/location/GeolocationInfo;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 227
    invoke-virtual {p1}, Lcom/facebook/orca/location/GeolocationInfo;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/facebook/orca/location/GeolocationInfo;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 230
    aput-object v5, v0, v3

    .line 232
    invoke-virtual {p2}, Lcom/facebook/orca/location/GeolocationInfo;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 234
    invoke-virtual {p2}, Lcom/facebook/orca/location/GeolocationInfo;->c()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 235
    invoke-virtual {p2}, Lcom/facebook/orca/location/GeolocationInfo;->d()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 237
    aget-object v1, v0, v4

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 239
    aput-object v5, v0, v3

    .line 244
    :cond_0
    return-object v0
.end method


# virtual methods
.method public a(Lcom/facebook/orca/threads/Message;)Landroid/text/Spanned;
    .locals 1
    .parameter

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/facebook/orca/common/ui/util/MessageRenderingUtil;->b(Lcom/facebook/orca/threads/Message;)Landroid/text/Spanned;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/facebook/orca/location/GeolocationInfo;Lcom/facebook/orca/location/GeolocationInfo;)Ljava/lang/String;
    .locals 7
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 168
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/facebook/orca/location/GeolocationInfo;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 169
    :cond_0
    const/4 v0, 0x0

    .line 189
    :goto_0
    return-object v0

    .line 174
    :cond_1
    if-eqz p2, :cond_2

    .line 175
    invoke-direct {p0, p2, p1}, Lcom/facebook/orca/common/ui/util/MessageRenderingUtil;->b(Lcom/facebook/orca/location/GeolocationInfo;Lcom/facebook/orca/location/GeolocationInfo;)[Ljava/lang/String;

    move-result-object v0

    .line 186
    :goto_1
    aget-object v1, v0, v6

    invoke-static {v1}, Lcom/facebook/orca/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 187
    iget-object v1, p0, Lcom/facebook/orca/common/ui/util/MessageRenderingUtil;->a:Landroid/content/res/Resources;

    sget v2, Lcom/facebook/R$string;->message_sent_x:I

    new-array v3, v6, [Ljava/lang/Object;

    aget-object v0, v0, v5

    aput-object v0, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 177
    :cond_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 178
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/facebook/orca/common/ui/util/MessageRenderingUtil;->a(Ljava/lang/String;Lcom/facebook/orca/location/GeolocationInfo;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 182
    :cond_3
    invoke-direct {p0, p1}, Lcom/facebook/orca/common/ui/util/MessageRenderingUtil;->a(Lcom/facebook/orca/location/GeolocationInfo;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 189
    :cond_4
    iget-object v1, p0, Lcom/facebook/orca/common/ui/util/MessageRenderingUtil;->a:Landroid/content/res/Resources;

    sget v2, Lcom/facebook/R$string;->message_sent_x_y:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aget-object v4, v0, v5

    aput-object v4, v3, v5

    aget-object v0, v0, v6

    aput-object v0, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
