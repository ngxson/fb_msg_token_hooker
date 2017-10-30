.class public Lcom/facebook/orca/emoji/Emojis;
.super Ljava/lang/Object;
.source "Emojis.java"


# static fields
.field public static final a:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/emoji/EmojiSet;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lcom/facebook/orca/emoji/EmojiSet;

.field public static c:I

.field public static d:I

.field public static final e:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/emoji/Emojis$MinMaxCodePoint;",
            ">;"
        }
    .end annotation
.end field

.field public static final f:Lcom/google/common/collect/ImmutableMultimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMultimap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final g:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final h:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/emoji/Emoji;",
            ">;"
        }
    .end annotation
.end field

.field public static final i:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static j:Ljava/util/regex/Pattern;

.field private static k:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/facebook/orca/emoji/Emoji;",
            ">;"
        }
    .end annotation
.end field

.field private static final l:Lcom/facebook/orca/emoji/Emoji;

.field private static final m:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 18

    .prologue
    .line 29
    new-instance v0, Lcom/facebook/orca/emoji/Emoji;

    sget v1, Lcom/facebook/R$drawable;->emoji_blank_32:I

    sget v2, Lcom/facebook/R$drawable;->emoji_blank_64:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    sput-object v0, Lcom/facebook/orca/emoji/Emojis;->l:Lcom/facebook/orca/emoji/Emoji;

    .line 46
    const/16 v0, 0x2600

    sput v0, Lcom/facebook/orca/emoji/Emojis;->c:I

    .line 47
    const v0, 0x1f64f

    sput v0, Lcom/facebook/orca/emoji/Emojis;->d:I

    .line 51
    new-instance v0, Lcom/facebook/orca/emoji/Emojis$MinMaxCodePoint;

    const/16 v1, 0x2600

    const/16 v2, 0x2764

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/orca/emoji/Emojis$MinMaxCodePoint;-><init>(IILcom/facebook/orca/emoji/Emojis$1;)V

    new-instance v1, Lcom/facebook/orca/emoji/Emojis$MinMaxCodePoint;

    const v2, 0xe001

    const v3, 0xe536

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/facebook/orca/emoji/Emojis$MinMaxCodePoint;-><init>(IILcom/facebook/orca/emoji/Emojis$1;)V

    new-instance v2, Lcom/facebook/orca/emoji/Emojis$MinMaxCodePoint;

    const v3, 0x1f300

    const v4, 0x1f64f

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/facebook/orca/emoji/Emojis$MinMaxCodePoint;-><init>(IILcom/facebook/orca/emoji/Emojis$1;)V

    invoke-static {v0, v1, v2}, Lcom/google/common/collect/ImmutableList;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    sput-object v0, Lcom/facebook/orca/emoji/Emojis;->e:Lcom/google/common/collect/ImmutableList;

    .line 57
    invoke-static {}, Lcom/google/common/collect/ImmutableMultimap;->j()Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe04a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x2600

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe049

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x2601

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe04b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x2614

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe048

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x26c4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe13d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x26a1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe443

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f300

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe43c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f302

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe43e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f30a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe335

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f31f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe110

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f340

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe304

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f337

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe110

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f331

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe118

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f341

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe030

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f338

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe032

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f339

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe119

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f342

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe447

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f343

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe303

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f33a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe305

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f33b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe307

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f334

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe308

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f335

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe444

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f33e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe345

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f34e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe346

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f34a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe347

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f353

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe419

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f440

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe41b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f442

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe41a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f443

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe41c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f444

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe409

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f445

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe31d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f485

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe001

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f466

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe002

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f467

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe004

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f468

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe005

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f469

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe428

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f46b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe152

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f46e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe429

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f46f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe515

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f471

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe516

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f472

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe517

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f473

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe518

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f474

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe519

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f475

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe51a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f476

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe51b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f477

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe51c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f478

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe11b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f47b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe04e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f47c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe10c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f47d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe12b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f47e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe11a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f47f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe11c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f480

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe51e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f482

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe51f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f483

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe52d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f40d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe134

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f40e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe52e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f414

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe52f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f417

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe530

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f42b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe526

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f418

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe527

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f428

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe528

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f412

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe529

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f411

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe10a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f419

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe441

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f41a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe525

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f41b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe522

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f420

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe019

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f421

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe523

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f425

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe521

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f426

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe055

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f427

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe052

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f429

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe019

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f41f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe520

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f42c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe053

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f42d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe050

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f42f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe04f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f431

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe054

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f433

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe01a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f434

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe109

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f435

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe10b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f437

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe051

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f43b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe524

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f439

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe52a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f43a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe52b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f42e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe52c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f430

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe531

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f438

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe536

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f43e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe059

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f620

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe403

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f629

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe410

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f632

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe058

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f61e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe406

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f635

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe40f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f630

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe40e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f612

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe106

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f60d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe404

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f624

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe105

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f61c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe409

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f61d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe056

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f60b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe418

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f618

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe417

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f61a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe40c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f637

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe40d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f633

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe057

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f603

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe40a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f606

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe404

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f601

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe412

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f602

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe414

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x263a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe415

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f604

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe413

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f622

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe411

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f62d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe40b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f628

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe406

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f623

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe416

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f621

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe40a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f60c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe407

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f616

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe403

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f614

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe107

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f631

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe408

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f62a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe402

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f60f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe108

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f613

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe401

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f625

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe406

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f62b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe405

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f609

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe057

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f63a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe404

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f638

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe412

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f639

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe418

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f63d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe106

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f63b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe413

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f63f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe404

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f63c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe403

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f640

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe012

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f64b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe427

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f64c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe403

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f64d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe41d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f64f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe112

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f381

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe033

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f384

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe448

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f385

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe310

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f388

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe312

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f389

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe436

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f38d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe438

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f38e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe439

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f393

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe43b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f38f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe442

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f390

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe445

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f383

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe009

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f4de

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe00a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f4f1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe104

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f4f2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe00b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f4e0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe00c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f4bb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe316

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f4bd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe316

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f4be

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe126

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f4bf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe127

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f4c0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe03e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f3b5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe326

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f3b6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe326

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f3bc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe12a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f4fa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe003

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f48b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe111

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f48f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe306

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f490

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe425

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f491

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe120

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f354

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe045

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x2615

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe044

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f378

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe047

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f37a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe022

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x2764

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe327

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f493

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe023

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f494

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe327

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f496

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe328

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f497

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe329

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f498

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe32a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f499

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe32b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f49a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe32c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f49b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe32d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f49c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe437

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f49d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe334

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f4a2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe13c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f4a4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe331

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f4a6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe330

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f4a8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe05a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f4a9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe14c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f4aa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe32e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x2728

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe325

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f514

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe010

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x270a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe012

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x270b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe011

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x270c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe00d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f44a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe00e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f44d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe00f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x261d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe22e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f446

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe22f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f447

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe230

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f448

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe231

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f449

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe41e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f44b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe41f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f44f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe420

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f44c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe421

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f44e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    const v1, 0xe422

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f450

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMultimap$Builder;->b()Lcom/google/common/collect/ImmutableMultimap;

    move-result-object v0

    sput-object v0, Lcom/facebook/orca/emoji/Emojis;->f:Lcom/google/common/collect/ImmutableMultimap;

    .line 264
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->k()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const v1, 0x1f49e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f493

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const v1, 0x1f495

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f493

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->b()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    sput-object v0, Lcom/facebook/orca/emoji/Emojis;->g:Lcom/google/common/collect/ImmutableMap;

    .line 271
    new-instance v0, Lcom/facebook/orca/emoji/Emoji;

    sget v1, Lcom/facebook/R$drawable;->emoji_1f604_32:I

    sget v2, Lcom/facebook/R$drawable;->emoji_1f604_64:I

    const v3, 0x1f604

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    new-instance v1, Lcom/facebook/orca/emoji/Emoji;

    sget v2, Lcom/facebook/R$drawable;->emoji_1f603_32:I

    sget v3, Lcom/facebook/R$drawable;->emoji_1f603_64:I

    const v4, 0x1f603

    invoke-direct {v1, v2, v3, v4}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    new-instance v2, Lcom/facebook/orca/emoji/Emoji;

    sget v3, Lcom/facebook/R$drawable;->emoji_263a_32:I

    sget v4, Lcom/facebook/R$drawable;->emoji_263a_64:I

    const/16 v5, 0x263a

    invoke-direct {v2, v3, v4, v5}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    new-instance v3, Lcom/facebook/orca/emoji/Emoji;

    sget v4, Lcom/facebook/R$drawable;->emoji_1f609_32:I

    sget v5, Lcom/facebook/R$drawable;->emoji_1f609_64:I

    const v6, 0x1f609

    invoke-direct {v3, v4, v5, v6}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    new-instance v4, Lcom/facebook/orca/emoji/Emoji;

    sget v5, Lcom/facebook/R$drawable;->emoji_1f60d_32:I

    sget v6, Lcom/facebook/R$drawable;->emoji_1f60d_64:I

    const v7, 0x1f60d

    invoke-direct {v4, v5, v6, v7}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    new-instance v5, Lcom/facebook/orca/emoji/Emoji;

    sget v6, Lcom/facebook/R$drawable;->emoji_1f618_32:I

    sget v7, Lcom/facebook/R$drawable;->emoji_1f618_64:I

    const v8, 0x1f618

    invoke-direct {v5, v6, v7, v8}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    new-instance v6, Lcom/facebook/orca/emoji/Emoji;

    sget v7, Lcom/facebook/R$drawable;->emoji_1f61a_32:I

    sget v8, Lcom/facebook/R$drawable;->emoji_1f61a_64:I

    const v9, 0x1f61a

    invoke-direct {v6, v7, v8, v9}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    new-instance v7, Lcom/facebook/orca/emoji/Emoji;

    sget v8, Lcom/facebook/R$drawable;->emoji_1f61c_32:I

    sget v9, Lcom/facebook/R$drawable;->emoji_1f61c_64:I

    const v10, 0x1f61c

    invoke-direct {v7, v8, v9, v10}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    new-instance v8, Lcom/facebook/orca/emoji/Emoji;

    sget v9, Lcom/facebook/R$drawable;->emoji_1f61d_32:I

    sget v10, Lcom/facebook/R$drawable;->emoji_1f61d_64:I

    const v11, 0x1f61d

    invoke-direct {v8, v9, v10, v11}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    new-instance v9, Lcom/facebook/orca/emoji/Emoji;

    sget v10, Lcom/facebook/R$drawable;->emoji_1f633_32:I

    sget v11, Lcom/facebook/R$drawable;->emoji_1f633_64:I

    const v12, 0x1f633

    invoke-direct {v9, v10, v11, v12}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    new-instance v10, Lcom/facebook/orca/emoji/Emoji;

    sget v11, Lcom/facebook/R$drawable;->emoji_1f601_32:I

    sget v12, Lcom/facebook/R$drawable;->emoji_1f601_64:I

    const v13, 0x1f601

    invoke-direct {v10, v11, v12, v13}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    new-instance v11, Lcom/facebook/orca/emoji/Emoji;

    sget v12, Lcom/facebook/R$drawable;->emoji_1f614_32:I

    sget v13, Lcom/facebook/R$drawable;->emoji_1f614_64:I

    const v14, 0x1f614

    invoke-direct {v11, v12, v13, v14}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    const/16 v12, 0xc2

    new-array v12, v12, [Lcom/facebook/orca/emoji/Emoji;

    const/4 v13, 0x0

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f60c_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f60c_64:I

    const v17, 0x1f60c

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/4 v13, 0x1

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f612_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f612_64:I

    const v17, 0x1f612

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/4 v13, 0x2

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f61e_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f61e_64:I

    const v17, 0x1f61e

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/4 v13, 0x3

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f623_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f623_64:I

    const v17, 0x1f623

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/4 v13, 0x4

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f622_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f622_64:I

    const v17, 0x1f622

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/4 v13, 0x5

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f602_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f602_64:I

    const v17, 0x1f602

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/4 v13, 0x6

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f62d_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f62d_64:I

    const v17, 0x1f62d

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/4 v13, 0x7

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f62a_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f62a_64:I

    const v17, 0x1f62a

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0x8

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f625_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f625_64:I

    const v17, 0x1f625

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0x9

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f630_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f630_64:I

    const v17, 0x1f630

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0xa

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f613_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f613_64:I

    const v17, 0x1f613

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0xb

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f629_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f629_64:I

    const v17, 0x1f629

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0xc

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f62b_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f62b_64:I

    const v17, 0x1f62b

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0xd

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f628_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f628_64:I

    const v17, 0x1f628

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0xe

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f631_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f631_64:I

    const v17, 0x1f631

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0xf

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f620_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f620_64:I

    const v17, 0x1f620

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0x10

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f621_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f621_64:I

    const v17, 0x1f621

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0x11

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f624_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f624_64:I

    const v17, 0x1f624

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0x12

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f616_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f616_64:I

    const v17, 0x1f616

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0x13

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f606_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f606_64:I

    const v17, 0x1f606

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0x14

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f60b_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f60b_64:I

    const v17, 0x1f60b

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0x15

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f637_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f637_64:I

    const v17, 0x1f637

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0x16

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f635_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f635_64:I

    const v17, 0x1f635

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0x17

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f632_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f632_64:I

    const v17, 0x1f632

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0x18

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f47f_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f47f_64:I

    const v17, 0x1f47f

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0x19

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f60f_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f60f_64:I

    const v17, 0x1f60f

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0x1a

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f472_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f472_64:I

    const v17, 0x1f472

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0x1b

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f473_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f473_64:I

    const v17, 0x1f473

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0x1c

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f46e_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f46e_64:I

    const v17, 0x1f46e

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0x1d

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f477_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f477_64:I

    const v17, 0x1f477

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0x1e

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f482_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f482_64:I

    const v17, 0x1f482

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0x1f

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f476_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f476_64:I

    const v17, 0x1f476

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0x20

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f466_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f466_64:I

    const v17, 0x1f466

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0x21

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f467_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f467_64:I

    const v17, 0x1f467

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0x22

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f468_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f468_64:I

    const v17, 0x1f468

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0x23

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f469_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f469_64:I

    const v17, 0x1f469

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0x24

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f474_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f474_64:I

    const v17, 0x1f474

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0x25

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f475_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f475_64:I

    const v17, 0x1f475

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0x26

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f471_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f471_64:I

    const v17, 0x1f471

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0x27

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f47c_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f47c_64:I

    const v17, 0x1f47c

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0x28

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f478_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f478_64:I

    const v17, 0x1f478

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0x29

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f63a_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f63a_64:I

    const v17, 0x1f63a

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0x2a

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f638_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f638_64:I

    const v17, 0x1f638

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0x2b

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f63b_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f63b_64:I

    const v17, 0x1f63b

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0x2c

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f63d_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f63d_64:I

    const v17, 0x1f63d

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0x2d

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f63c_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f63c_64:I

    const v17, 0x1f63c

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0x2e

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f640_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f640_64:I

    const v17, 0x1f640

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0x2f

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f63f_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f63f_64:I

    const v17, 0x1f63f

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0x30

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f639_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f639_64:I

    const v17, 0x1f639

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0x31

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f480_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f480_64:I

    const v17, 0x1f480

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0x32

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f47d_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f47d_64:I

    const v17, 0x1f47d

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0x33

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f525_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f525_64:I

    const v17, 0x1f525

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0x34

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f4a9_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f4a9_64:I

    const v17, 0x1f4a9

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0x35

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_2728_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_2728_64:I

    const/16 v17, 0x2728

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0x36

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f31f_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f31f_64:I

    const v17, 0x1f31f

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0x37

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f4a2_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f4a2_64:I

    const v17, 0x1f4a2

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0x38

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f4a6_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f4a6_64:I

    const v17, 0x1f4a6

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0x39

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f4a4_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f4a4_64:I

    const v17, 0x1f4a4

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0x3a

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f4a8_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f4a8_64:I

    const v17, 0x1f4a8

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0x3b

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f442_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f442_64:I

    const v17, 0x1f442

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0x3c

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f440_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f440_64:I

    const v17, 0x1f440

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0x3d

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f443_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f443_64:I

    const v17, 0x1f443

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0x3e

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f445_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f445_64:I

    const v17, 0x1f445

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0x3f

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f444_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f444_64:I

    const v17, 0x1f444

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0x40

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f44d_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f44d_64:I

    const v17, 0x1f44d

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0x41

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f44e_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f44e_64:I

    const v17, 0x1f44e

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0x42

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f44c_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f44c_64:I

    const v17, 0x1f44c

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0x43

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f44a_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f44a_64:I

    const v17, 0x1f44a

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0x44

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_270a_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_270a_64:I

    const/16 v17, 0x270a

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0x45

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_270c_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_270c_64:I

    const/16 v17, 0x270c

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0x46

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f44b_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f44b_64:I

    const v17, 0x1f44b

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0x47

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_270b_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_270b_64:I

    const/16 v17, 0x270b

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0x48

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f450_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f450_64:I

    const v17, 0x1f450

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0x49

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f446_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f446_64:I

    const v17, 0x1f446

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0x4a

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f447_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f447_64:I

    const v17, 0x1f447

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0x4b

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f449_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f449_64:I

    const v17, 0x1f449

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0x4c

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f448_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f448_64:I

    const v17, 0x1f448

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0x4d

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f64c_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f64c_64:I

    const v17, 0x1f64c

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0x4e

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f64f_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f64f_64:I

    const v17, 0x1f64f

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0x4f

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_261d_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_261d_64:I

    const/16 v17, 0x261d

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0x50

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f44f_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f44f_64:I

    const v17, 0x1f44f

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0x51

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f4aa_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f4aa_64:I

    const v17, 0x1f4aa

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0x52

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f483_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f483_64:I

    const v17, 0x1f483

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0x53

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f46b_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f46b_64:I

    const v17, 0x1f46b

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0x54

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f48f_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f48f_64:I

    const v17, 0x1f48f

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0x55

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f491_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f491_64:I

    const v17, 0x1f491

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0x56

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f46f_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f46f_64:I

    const v17, 0x1f46f

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0x57

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f64b_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f64b_64:I

    const v17, 0x1f64b

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0x58

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f485_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f485_64:I

    const v17, 0x1f485

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0x59

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f64d_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f64d_64:I

    const v17, 0x1f64d

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0x5a

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f302_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f302_64:I

    const v17, 0x1f302

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0x5b

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f49b_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f49b_64:I

    const v17, 0x1f49b

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0x5c

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f499_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f499_64:I

    const v17, 0x1f499

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0x5d

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f49c_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f49c_64:I

    const v17, 0x1f49c

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0x5e

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f49a_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f49a_64:I

    const v17, 0x1f49a

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0x5f

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_2764_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_2764_64:I

    const/16 v17, 0x2764

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0x60

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f494_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f494_64:I

    const v17, 0x1f494

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0x61

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f497_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f497_64:I

    const v17, 0x1f497

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0x62

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f493_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f493_64:I

    const v17, 0x1f493

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0x63

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f496_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f496_64:I

    const v17, 0x1f496

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0x64

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f498_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f498_64:I

    const v17, 0x1f498

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0x65

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f48b_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f48b_64:I

    const v17, 0x1f48b

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0x66

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f43a_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f43a_64:I

    const v17, 0x1f43a

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0x67

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f431_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f431_64:I

    const v17, 0x1f431

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0x68

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f436_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f436_64:I

    const v17, 0x1f436

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0x69

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f42d_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f42d_64:I

    const v17, 0x1f42d

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0x6a

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f439_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f439_64:I

    const v17, 0x1f439

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0x6b

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f430_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f430_64:I

    const v17, 0x1f430

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0x6c

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f438_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f438_64:I

    const v17, 0x1f438

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0x6d

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f42f_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f42f_64:I

    const v17, 0x1f42f

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0x6e

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f428_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f428_64:I

    const v17, 0x1f428

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0x6f

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f43b_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f43b_64:I

    const v17, 0x1f43b

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0x70

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f437_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f437_64:I

    const v17, 0x1f437

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0x71

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f42e_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f42e_64:I

    const v17, 0x1f42e

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0x72

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f417_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f417_64:I

    const v17, 0x1f417

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0x73

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f435_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f435_64:I

    const v17, 0x1f435

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0x74

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f412_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f412_64:I

    const v17, 0x1f412

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0x75

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f434_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f434_64:I

    const v17, 0x1f434

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0x76

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f411_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f411_64:I

    const v17, 0x1f411

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0x77

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f418_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f418_64:I

    const v17, 0x1f418

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0x78

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f427_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f427_64:I

    const v17, 0x1f427

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0x79

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f426_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f426_64:I

    const v17, 0x1f426

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0x7a

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f425_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f425_64:I

    const v17, 0x1f425

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0x7b

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f414_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f414_64:I

    const v17, 0x1f414

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0x7c

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f40d_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f40d_64:I

    const v17, 0x1f40d

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0x7d

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f41b_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f41b_64:I

    const v17, 0x1f41b

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0x7e

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f419_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f419_64:I

    const v17, 0x1f419

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0x7f

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f41a_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f41a_64:I

    const v17, 0x1f41a

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0x80

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f420_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f420_64:I

    const v17, 0x1f420

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0x81

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f41f_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f41f_64:I

    const v17, 0x1f41f

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0x82

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f42c_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f42c_64:I

    const v17, 0x1f42c

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0x83

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f433_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f433_64:I

    const v17, 0x1f433

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0x84

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f40e_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f40e_64:I

    const v17, 0x1f40e

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0x85

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f421_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f421_64:I

    const v17, 0x1f421

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0x86

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f42b_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f42b_64:I

    const v17, 0x1f42b

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0x87

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f429_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f429_64:I

    const v17, 0x1f429

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0x88

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f43e_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f43e_64:I

    const v17, 0x1f43e

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0x89

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f490_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f490_64:I

    const v17, 0x1f490

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0x8a

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f338_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f338_64:I

    const v17, 0x1f338

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0x8b

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f337_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f337_64:I

    const v17, 0x1f337

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0x8c

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f340_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f340_64:I

    const v17, 0x1f340

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0x8d

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f339_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f339_64:I

    const v17, 0x1f339

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0x8e

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f33b_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f33b_64:I

    const v17, 0x1f33b

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0x8f

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f33a_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f33a_64:I

    const v17, 0x1f33a

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0x90

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f341_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f341_64:I

    const v17, 0x1f341

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0x91

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f343_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f343_64:I

    const v17, 0x1f343

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0x92

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f342_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f342_64:I

    const v17, 0x1f342

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0x93

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f33e_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f33e_64:I

    const v17, 0x1f33e

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0x94

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f335_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f335_64:I

    const v17, 0x1f335

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0x95

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f334_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f334_64:I

    const v17, 0x1f334

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0x96

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f331_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f331_64:I

    const v17, 0x1f331

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0x97

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f319_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f319_64:I

    const v17, 0x1f319

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0x98

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_2600_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_2600_64:I

    const/16 v17, 0x2600

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0x99

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_2601_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_2601_64:I

    const/16 v17, 0x2601

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0x9a

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_26a1_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_26a1_64:I

    const/16 v17, 0x26a1

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0x9b

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_2614_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_2614_64:I

    const/16 v17, 0x2614

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0x9c

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_26c4_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_26c4_64:I

    const/16 v17, 0x26c4

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0x9d

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f300_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f300_64:I

    const v17, 0x1f300

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0x9e

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f30a_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f30a_64:I

    const v17, 0x1f30a

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0x9f

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f38d_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f38d_64:I

    const v17, 0x1f38d

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0xa0

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f49d_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f49d_64:I

    const v17, 0x1f49d

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0xa1

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f38e_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f38e_64:I

    const v17, 0x1f38e

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0xa2

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f393_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f393_64:I

    const v17, 0x1f393

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0xa3

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f38f_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f38f_64:I

    const v17, 0x1f38f

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0xa4

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f390_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f390_64:I

    const v17, 0x1f390

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0xa5

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f383_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f383_64:I

    const v17, 0x1f383

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0xa6

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f47b_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f47b_64:I

    const v17, 0x1f47b

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0xa7

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f385_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f385_64:I

    const v17, 0x1f385

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0xa8

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f384_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f384_64:I

    const v17, 0x1f384

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0xa9

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f381_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f381_64:I

    const v17, 0x1f381

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0xaa

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f389_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f389_64:I

    const v17, 0x1f389

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0xab

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f388_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f388_64:I

    const v17, 0x1f388

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0xac

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f4bf_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f4bf_64:I

    const v17, 0x1f4bf

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0xad

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f4c0_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f4c0_64:I

    const v17, 0x1f4c0

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0xae

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f4bd_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f4bd_64:I

    const v17, 0x1f4bd

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0xaf

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f4be_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f4be_64:I

    const v17, 0x1f4be

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0xb0

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f4bb_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f4bb_64:I

    const v17, 0x1f4bb

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0xb1

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f4f1_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f4f1_64:I

    const v17, 0x1f4f1

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0xb2

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f4de_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f4de_64:I

    const v17, 0x1f4de

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0xb3

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f4e0_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f4e0_64:I

    const v17, 0x1f4e0

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0xb4

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f4fa_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f4fa_64:I

    const v17, 0x1f4fa

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0xb5

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f514_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f514_64:I

    const v17, 0x1f514

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0xb6

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f4f2_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f4f2_64:I

    const v17, 0x1f4f2

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0xb7

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f3bc_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f3bc_64:I

    const v17, 0x1f3bc

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0xb8

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f3b5_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f3b5_64:I

    const v17, 0x1f3b5

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0xb9

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f3b6_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f3b6_64:I

    const v17, 0x1f3b6

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0xba

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f47e_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f47e_64:I

    const v17, 0x1f47e

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0xbb

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_2615_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_2615_64:I

    const/16 v17, 0x2615

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0xbc

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f37a_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f37a_64:I

    const v17, 0x1f37a

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0xbd

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f378_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f378_64:I

    const v17, 0x1f378

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0xbe

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f354_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f354_64:I

    const v17, 0x1f354

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0xbf

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f34e_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f34e_64:I

    const v17, 0x1f34e

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0xc0

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f34a_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f34a_64:I

    const v17, 0x1f34a

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    const/16 v13, 0xc1

    new-instance v14, Lcom/facebook/orca/emoji/Emoji;

    sget v15, Lcom/facebook/R$drawable;->emoji_1f353_32:I

    sget v16, Lcom/facebook/R$drawable;->emoji_1f353_64:I

    const v17, 0x1f353

    invoke-direct/range {v14 .. v17}, Lcom/facebook/orca/emoji/Emoji;-><init>(III)V

    aput-object v14, v12, v13

    invoke-static/range {v0 .. v12}, Lcom/google/common/collect/ImmutableList;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    sput-object v0, Lcom/facebook/orca/emoji/Emojis;->h:Lcom/google/common/collect/ImmutableList;

    .line 483
    const v0, 0x1f603

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v1, 0x1f609

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1f618

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x1f633

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const v4, 0x1f601

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const v5, 0x1f61c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const v6, 0x1f612

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const v7, 0x1f60f

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const v8, 0x1f622

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const v9, 0x1f602

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const v10, 0x1f621

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const v11, 0x1f47f

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/16 v12, 0x28

    new-array v12, v12, [Ljava/lang/Integer;

    const/4 v13, 0x0

    const v14, 0x1f47d

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const v14, 0x1f4a9

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x2

    const v14, 0x1f440

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x3

    const v14, 0x1f444

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x4

    const v14, 0x1f48b

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x5

    const/16 v14, 0x2764

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x6

    const v14, 0x1f494

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x7

    const v14, 0x1f498

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/16 v13, 0x8

    const v14, 0x1f44d

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/16 v13, 0x9

    const v14, 0x1f44e

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/16 v13, 0xa

    const v14, 0x1f449

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/16 v13, 0xb

    const v14, 0x1f448

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/16 v13, 0xc

    const v14, 0x1f31f

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/16 v13, 0xd

    const v14, 0x1f525

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/16 v13, 0xe

    const/16 v14, 0x2600

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/16 v13, 0xf

    const/16 v14, 0x2614

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/16 v13, 0x10

    const/16 v14, 0x2601

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/16 v13, 0x11

    const/16 v14, 0x26a1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/16 v13, 0x12

    const v14, 0x1f436

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/16 v13, 0x13

    const v14, 0x1f430

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/16 v13, 0x14

    const v14, 0x1f438

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/16 v13, 0x15

    const v14, 0x1f42f

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/16 v13, 0x16

    const v14, 0x1f43b

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/16 v13, 0x17

    const v14, 0x1f437

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/16 v13, 0x18

    const v14, 0x1f42e

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/16 v13, 0x19

    const v14, 0x1f412

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/16 v13, 0x1a

    const v14, 0x1f418

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/16 v13, 0x1b

    const v14, 0x1f40d

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/16 v13, 0x1c

    const v14, 0x1f414

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/16 v13, 0x1d

    const v14, 0x1f427

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/16 v13, 0x1e

    const v14, 0x1f41f

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/16 v13, 0x1f

    const v14, 0x1f433

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/16 v13, 0x20

    const v14, 0x1f490

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/16 v13, 0x21

    const v14, 0x1f339

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/16 v13, 0x22

    const v14, 0x1f340

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/16 v13, 0x23

    const/16 v14, 0x2615

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/16 v13, 0x24

    const v14, 0x1f37a

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/16 v13, 0x25

    const v14, 0x1f378

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/16 v13, 0x26

    const v14, 0x1f354

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/16 v13, 0x27

    const v14, 0x1f34e

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static/range {v0 .. v12}, Lcom/google/common/collect/ImmutableList;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    sput-object v0, Lcom/facebook/orca/emoji/Emojis;->m:Lcom/google/common/collect/ImmutableList;

    .line 538
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->k()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, ":-)"

    const v2, 0x1f60a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, ":)"

    const v2, 0x1f60a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, ":]"

    const v2, 0x1f60a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "=)"

    const v2, 0x1f60a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, ":-("

    const v2, 0x1f61e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, ":("

    const v2, 0x1f61e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, ":["

    const v2, 0x1f61e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "=("

    const v2, 0x1f61e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, ":-P"

    const v2, 0x1f61c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, ":P"

    const v2, 0x1f61c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, ":-p"

    const v2, 0x1f61c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, ":p"

    const v2, 0x1f61c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "=P"

    const v2, 0x1f61c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, ":-D"

    const v2, 0x1f603

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, ":D"

    const v2, 0x1f603

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "=D"

    const v2, 0x1f603

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, ":-O"

    const v2, 0x1f632

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, ":O"

    const v2, 0x1f632

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, ":-o"

    const v2, 0x1f632

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, ":o"

    const v2, 0x1f632

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, ";-)"

    const v2, 0x1f609

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, ";)"

    const v2, 0x1f609

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "8-)"

    const v2, 0x1f60e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "8)"

    const v2, 0x1f60e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "B-)"

    const v2, 0x1f60e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "B)"

    const v2, 0x1f60e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "8-|"

    const v2, 0x1f60e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "8|"

    const v2, 0x1f60e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "B-|"

    const v2, 0x1f60e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "B|"

    const v2, 0x1f60e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, ">:("

    const v2, 0x1f620

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, ">:-("

    const v2, 0x1f620

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, ":/"

    const v2, 0x1f60f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, ":-/"

    const v2, 0x1f60f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, ":\\"

    const v2, 0x1f60f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, ":-\\"

    const v2, 0x1f60f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, ":\'("

    const v2, 0x1f622

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "3:)"

    const v2, 0x1f608

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "3:-)"

    const v2, 0x1f608

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "O:)"

    const v2, 0x1f607

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "O:-)"

    const v2, 0x1f607

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "0:)"

    const v2, 0x1f607

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "0:-)"

    const v2, 0x1f607

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, ":-*"

    const v2, 0x1f618

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, ":*"

    const v2, 0x1f618

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "<3"

    const/16 v2, 0x2764

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "&lt;3"

    const/16 v2, 0x2764

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "^_^"

    const v2, 0x1f604

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "-_-"

    const v2, 0x1f610

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "o.O"

    const v2, 0x1f616

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "O.o"

    const v2, 0x1f616

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, ">:O"

    const v2, 0x1f620

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, ">:-O"

    const v2, 0x1f620

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, ">:o"

    const v2, 0x1f620

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, ">:-o"

    const v2, 0x1f620

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, ">_<"

    const v2, 0x1f620

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, ">.<"

    const v2, 0x1f620

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "<(\")"

    const v2, 0x1f427

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, ":-|"

    const v2, 0x1f610

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, ":|"

    const v2, 0x1f610

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, ":like:"

    const v2, 0x1f44d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "(y)"

    const v2, 0x1f44d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "(Y)"

    const v2, 0x1f44d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "(n)"

    const v2, 0x1f44e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "(N)"

    const v2, 0x1f44e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "(poo)"

    const v2, 0x1f4a9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->b()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    sput-object v0, Lcom/facebook/orca/emoji/Emojis;->i:Lcom/google/common/collect/ImmutableMap;

    .line 608
    const-string v0, "(?:^|\\s|\'|\"|\\.)((\\:\\-\\))|(\\:\\))|(\\:\\])|(=\\))|(\\:\\-\\()|(\\:\\()|(\\:\\[)|(=\\()|(\\:\\-P)|(\\:P)|(\\:\\-p)|(\\:p)|(=P)|(\\:\\-D)|(\\:D)|(=D)|(\\:\\-O)|(\\:O)|(\\:\\-o)|(\\:o)|(\\;\\-\\))|(\\;\\))|(8\\-\\))|(8\\))|(B\\-\\))|(B\\))|(8\\-\\|)|(8\\|)|(B\\-\\|)|(B\\|)|(>\\:\\()|(>\\:\\-\\()|(\\:/)|(\\:\\-/)|(\\:\\\\)|(\\:\\-\\\\)|(\\:\'\\()|(3\\:\\))|(3\\:\\-\\))|(O\\:\\))|(O\\:\\-\\))|(0\\:\\))|(0\\:-\\))|(\\:\\-\\*)|(\\:\\*)|(<3)|(&lt\\;3)|(\\^_\\^)|(\\-_\\-)|(o\\.O)|(O\\.o)|(>\\:O)|(>\\:\\-O)|(>\\:o)|(>\\:\\-o)|(>_<)|(>\\.<)|(<\\(\"\\))|(\\:\\-\\|)|(\\:\\|)|(\\:like\\:)|(\\(y\\))|(\\(Y\\))|(\\(n\\))|(\\(N\\))|(\\(poo\\)))(?:|\'|\"|\\.|,|!|\\?|$)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/facebook/orca/emoji/Emojis;->j:Ljava/util/regex/Pattern;

    .line 628
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->k()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v1

    .line 629
    sget-object v0, Lcom/facebook/orca/emoji/Emojis;->h:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/emoji/Emoji;

    .line 630
    invoke-virtual {v0}, Lcom/facebook/orca/emoji/Emoji;->c()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    goto :goto_0

    .line 632
    :cond_0
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableMap$Builder;->b()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    sput-object v0, Lcom/facebook/orca/emoji/Emojis;->k:Lcom/google/common/collect/ImmutableMap;

    .line 635
    sget-object v0, Lcom/facebook/orca/emoji/Emojis;->h:Lcom/google/common/collect/ImmutableList;

    const/4 v1, 0x0

    const/16 v2, 0x72

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableList;->a(II)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 637
    sget-object v1, Lcom/facebook/orca/emoji/Emojis;->h:Lcom/google/common/collect/ImmutableList;

    const/16 v2, 0x72

    const/16 v3, 0xab

    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/ImmutableList;->a(II)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    .line 639
    sget-object v2, Lcom/facebook/orca/emoji/Emojis;->h:Lcom/google/common/collect/ImmutableList;

    const/16 v3, 0xab

    const/16 v4, 0xce

    invoke-virtual {v2, v3, v4}, Lcom/google/common/collect/ImmutableList;->a(II)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    .line 640
    new-instance v3, Lcom/facebook/orca/emoji/EmojiSet;

    sget v4, Lcom/facebook/R$drawable;->orca_emoji_category_people:I

    invoke-direct {v3, v4, v0}, Lcom/facebook/orca/emoji/EmojiSet;-><init>(ILcom/google/common/collect/ImmutableList;)V

    new-instance v0, Lcom/facebook/orca/emoji/EmojiSet;

    sget v4, Lcom/facebook/R$drawable;->orca_emoji_category_nature:I

    invoke-direct {v0, v4, v1}, Lcom/facebook/orca/emoji/EmojiSet;-><init>(ILcom/google/common/collect/ImmutableList;)V

    new-instance v1, Lcom/facebook/orca/emoji/EmojiSet;

    sget v4, Lcom/facebook/R$drawable;->orca_emoji_category_objects:I

    invoke-direct {v1, v4, v2}, Lcom/facebook/orca/emoji/EmojiSet;-><init>(ILcom/google/common/collect/ImmutableList;)V

    invoke-static {v3, v0, v1}, Lcom/google/common/collect/ImmutableList;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    sput-object v0, Lcom/facebook/orca/emoji/Emojis;->a:Lcom/google/common/collect/ImmutableList;

    .line 647
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v1

    .line 648
    sget-object v0, Lcom/facebook/orca/emoji/Emojis;->m:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 649
    sget-object v3, Lcom/facebook/orca/emoji/Emojis;->k:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v3, v0}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 651
    :cond_1
    new-instance v0, Lcom/facebook/orca/emoji/EmojiSet;

    const/4 v2, 0x0

    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/facebook/orca/emoji/EmojiSet;-><init>(ILcom/google/common/collect/ImmutableList;)V

    sput-object v0, Lcom/facebook/orca/emoji/Emojis;->b:Lcom/facebook/orca/emoji/EmojiSet;

    .line 652
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method


# virtual methods
.method public a(I)Lcom/facebook/orca/emoji/Emoji;
    .locals 3
    .parameter

    .prologue
    .line 656
    invoke-virtual {p0, p1}, Lcom/facebook/orca/emoji/Emojis;->b(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 657
    const/4 v0, 0x0

    .line 678
    :cond_0
    :goto_0
    return-object v0

    .line 661
    :cond_1
    sget-object v0, Lcom/facebook/orca/emoji/Emojis;->f:Lcom/google/common/collect/ImmutableMultimap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableMultimap;->i(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection;

    move-result-object v0

    .line 662
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 663
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 666
    :cond_2
    sget-object v0, Lcom/facebook/orca/emoji/Emojis;->k:Lcom/google/common/collect/ImmutableMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/emoji/Emoji;

    .line 667
    if-nez v0, :cond_3

    .line 668
    sget-object v1, Lcom/facebook/orca/emoji/Emojis;->g:Lcom/google/common/collect/ImmutableMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 669
    if-eqz v1, :cond_3

    .line 670
    sget-object v0, Lcom/facebook/orca/emoji/Emojis;->k:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/emoji/Emoji;

    .line 675
    :cond_3
    if-nez v0, :cond_0

    .line 676
    sget-object v0, Lcom/facebook/orca/emoji/Emojis;->l:Lcom/facebook/orca/emoji/Emoji;

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Lcom/facebook/orca/emoji/Emoji;
    .locals 2
    .parameter

    .prologue
    .line 682
    sget-object v0, Lcom/facebook/orca/emoji/Emojis;->i:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 683
    const/4 v0, 0x0

    .line 685
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/facebook/orca/emoji/Emojis;->k:Lcom/google/common/collect/ImmutableMap;

    sget-object v1, Lcom/facebook/orca/emoji/Emojis;->i:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/emoji/Emoji;

    goto :goto_0
.end method

.method b(I)Z
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 690
    sget v0, Lcom/facebook/orca/emoji/Emojis;->c:I

    if-lt p1, v0, :cond_0

    sget v0, Lcom/facebook/orca/emoji/Emojis;->d:I

    if-le p1, v0, :cond_1

    :cond_0
    move v0, v1

    .line 703
    :goto_0
    return v0

    .line 695
    :cond_1
    sget-object v0, Lcom/facebook/orca/emoji/Emojis;->e:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/emoji/Emojis$MinMaxCodePoint;

    .line 696
    invoke-static {v0}, Lcom/facebook/orca/emoji/Emojis$MinMaxCodePoint;->a(Lcom/facebook/orca/emoji/Emojis$MinMaxCodePoint;)I

    move-result v3

    if-ge p1, v3, :cond_3

    move v0, v1

    .line 697
    goto :goto_0

    .line 699
    :cond_3
    invoke-static {v0}, Lcom/facebook/orca/emoji/Emojis$MinMaxCodePoint;->b(Lcom/facebook/orca/emoji/Emojis$MinMaxCodePoint;)I

    move-result v0

    if-gt p1, v0, :cond_2

    .line 700
    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    move v0, v1

    .line 703
    goto :goto_0
.end method
