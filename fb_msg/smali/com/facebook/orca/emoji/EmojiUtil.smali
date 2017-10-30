.class public Lcom/facebook/orca/emoji/EmojiUtil;
.super Ljava/lang/Object;
.source "EmojiUtil.java"


# instance fields
.field private final a:Lcom/facebook/orca/emoji/Emojis;

.field private final b:Landroid/content/res/Resources;


# direct methods
.method constructor <init>(Lcom/facebook/orca/emoji/Emojis;Landroid/content/res/Resources;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/facebook/orca/emoji/EmojiUtil;->a:Lcom/facebook/orca/emoji/Emojis;

    .line 28
    iput-object p2, p0, Lcom/facebook/orca/emoji/EmojiUtil;->b:Landroid/content/res/Resources;

    .line 29
    return-void
.end method

.method private a(Lcom/facebook/orca/emoji/Emoji;I)Lcom/facebook/orca/emoji/EmojiSpan;
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 84
    iget-object v0, p0, Lcom/facebook/orca/emoji/EmojiUtil;->b:Landroid/content/res/Resources;

    invoke-virtual {p1}, Lcom/facebook/orca/emoji/Emoji;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 87
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v1

    .line 88
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v2

    .line 90
    iget-object v3, p0, Lcom/facebook/orca/emoji/EmojiUtil;->b:Landroid/content/res/Resources;

    const/high16 v4, 0x4180

    invoke-static {v3, v4}, Lcom/facebook/orca/common/util/SizeUtil;->a(Landroid/content/res/Resources;F)I

    move-result v3

    .line 91
    mul-int/2addr v1, p2

    div-int/2addr v1, v3

    .line 92
    mul-int/2addr v2, p2

    div-int/2addr v2, v3

    .line 94
    invoke-virtual {v0, v5, v5, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 95
    new-instance v1, Lcom/facebook/orca/emoji/EmojiSpan;

    invoke-direct {v1, v0}, Lcom/facebook/orca/emoji/EmojiSpan;-><init>(Landroid/graphics/drawable/BitmapDrawable;)V

    return-object v1
.end method


# virtual methods
.method public a(Landroid/text/Spannable;I)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/16 v6, 0x21

    const/4 v5, 0x1

    .line 51
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 52
    invoke-static {p1, v0}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 53
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    .line 54
    iget-object v3, p0, Lcom/facebook/orca/emoji/EmojiUtil;->a:Lcom/facebook/orca/emoji/Emojis;

    invoke-virtual {v3, v1}, Lcom/facebook/orca/emoji/Emojis;->a(I)Lcom/facebook/orca/emoji/Emoji;

    move-result-object v3

    .line 55
    if-eqz v3, :cond_0

    .line 56
    invoke-direct {p0, v3, p2}, Lcom/facebook/orca/emoji/EmojiUtil;->a(Lcom/facebook/orca/emoji/Emoji;I)Lcom/facebook/orca/emoji/EmojiSpan;

    move-result-object v3

    .line 57
    add-int v4, v0, v2

    invoke-interface {p1, v3, v0, v4, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 64
    :cond_0
    add-int/2addr v1, v2

    .line 51
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 68
    :cond_1
    sget-object v0, Lcom/facebook/orca/emoji/Emojis;->j:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 69
    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 70
    iget-object v1, p0, Lcom/facebook/orca/emoji/EmojiUtil;->a:Lcom/facebook/orca/emoji/Emojis;

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/orca/emoji/Emojis;->a(Ljava/lang/String;)Lcom/facebook/orca/emoji/Emoji;

    move-result-object v1

    .line 71
    if-eqz v1, :cond_2

    .line 72
    invoke-direct {p0, v1, p2}, Lcom/facebook/orca/emoji/EmojiUtil;->a(Lcom/facebook/orca/emoji/Emoji;I)Lcom/facebook/orca/emoji/EmojiSpan;

    move-result-object v1

    .line 73
    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->start(I)I

    move-result v2

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->end(I)I

    move-result v3

    invoke-interface {p1, v1, v2, v3, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    .line 81
    :cond_3
    return-void
.end method

.method public a(Landroid/widget/EditText;Lcom/facebook/orca/emoji/Emoji;I)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-virtual {p1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    .line 33
    invoke-virtual {p1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v1

    .line 35
    invoke-virtual {p2}, Lcom/facebook/orca/emoji/Emoji;->c()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v2

    .line 36
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {p1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v4

    .line 39
    invoke-interface {v4, v0, v1, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 41
    invoke-direct {p0, p2, p3}, Lcom/facebook/orca/emoji/EmojiUtil;->a(Lcom/facebook/orca/emoji/Emoji;I)Lcom/facebook/orca/emoji/EmojiSpan;

    move-result-object v3

    .line 42
    array-length v2, v2

    add-int/2addr v1, v2

    const/16 v2, 0x21

    invoke-interface {v4, v3, v0, v1, v2}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 48
    return-void
.end method
