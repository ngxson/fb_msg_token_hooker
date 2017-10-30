.class public Lcom/facebook/orca/emoji/EmojiSizingCalculator;
.super Ljava/lang/Object;
.source "EmojiSizingCalculator.java"


# instance fields
.field private final a:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 0
    .parameter

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput-object p1, p0, Lcom/facebook/orca/emoji/EmojiSizingCalculator;->a:Landroid/content/res/Resources;

    .line 133
    return-void
.end method


# virtual methods
.method public a(IIZ)Lcom/facebook/orca/emoji/EmojiSizingCalculator$Sizes;
    .locals 13
    .parameter
    .parameter
    .parameter

    .prologue
    .line 144
    iget-object v0, p0, Lcom/facebook/orca/emoji/EmojiSizingCalculator;->a:Landroid/content/res/Resources;

    const/high16 v1, 0x4100

    invoke-static {v0, v1}, Lcom/facebook/orca/common/util/SizeUtil;->a(Landroid/content/res/Resources;F)I

    move-result v3

    .line 145
    iget-object v0, p0, Lcom/facebook/orca/emoji/EmojiSizingCalculator;->a:Landroid/content/res/Resources;

    const/high16 v1, 0x4110

    invoke-static {v0, v1}, Lcom/facebook/orca/common/util/SizeUtil;->a(Landroid/content/res/Resources;F)I

    move-result v4

    .line 146
    iget-object v0, p0, Lcom/facebook/orca/emoji/EmojiSizingCalculator;->a:Landroid/content/res/Resources;

    const/high16 v1, 0x4100

    invoke-static {v0, v1}, Lcom/facebook/orca/common/util/SizeUtil;->a(Landroid/content/res/Resources;F)I

    move-result v7

    .line 147
    iget-object v0, p0, Lcom/facebook/orca/emoji/EmojiSizingCalculator;->a:Landroid/content/res/Resources;

    const/high16 v1, 0x4110

    invoke-static {v0, v1}, Lcom/facebook/orca/common/util/SizeUtil;->a(Landroid/content/res/Resources;F)I

    move-result v8

    .line 148
    iget-object v0, p0, Lcom/facebook/orca/emoji/EmojiSizingCalculator;->a:Landroid/content/res/Resources;

    const/high16 v1, 0x4234

    invoke-static {v0, v1}, Lcom/facebook/orca/common/util/SizeUtil;->a(Landroid/content/res/Resources;F)I

    move-result v11

    .line 149
    iget-object v0, p0, Lcom/facebook/orca/emoji/EmojiSizingCalculator;->a:Landroid/content/res/Resources;

    const/high16 v1, 0x41a0

    invoke-static {v0, v1}, Lcom/facebook/orca/common/util/SizeUtil;->a(Landroid/content/res/Resources;F)I

    move-result v0

    .line 152
    sub-int v5, p2, v0

    .line 154
    div-int v1, p1, v11

    .line 156
    const/4 v2, 0x7

    if-le v1, v2, :cond_0

    .line 159
    const/4 v2, 0x7

    add-int/lit8 v1, v1, -0x2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 162
    :cond_0
    div-int v2, v5, v11

    .line 164
    if-nez p3, :cond_1

    const/4 v6, 0x4

    if-le v2, v6, :cond_1

    .line 167
    const/4 v2, 0x4

    .line 177
    :cond_1
    div-int v9, p1, v1

    .line 178
    if-le v9, v11, :cond_3

    .line 179
    sub-int v6, v9, v11

    .line 181
    div-int/lit8 v10, v6, 0x2

    rem-int/lit8 v12, v6, 0x2

    add-int/2addr v10, v12

    add-int/2addr v3, v10

    .line 182
    div-int/lit8 v6, v6, 0x2

    add-int/2addr v4, v6

    .line 184
    :goto_0
    div-int v10, v5, v2

    .line 185
    if-le v10, v11, :cond_2

    .line 186
    sub-int v6, v10, v11

    .line 188
    div-int/lit8 v5, v6, 0x2

    rem-int/lit8 v12, v6, 0x2

    add-int/2addr v5, v12

    add-int/2addr v5, v7

    .line 189
    div-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v8

    .line 193
    :goto_1
    mul-int v12, v2, v9

    add-int/2addr v12, v0

    .line 195
    new-instance v0, Lcom/facebook/orca/emoji/EmojiSizingCalculator$Sizes;

    invoke-direct/range {v0 .. v12}, Lcom/facebook/orca/emoji/EmojiSizingCalculator$Sizes;-><init>(IIIIIIIIIIII)V

    return-object v0

    :cond_2
    move v6, v8

    move v5, v7

    move v10, v11

    goto :goto_1

    :cond_3
    move v9, v11

    goto :goto_0
.end method
