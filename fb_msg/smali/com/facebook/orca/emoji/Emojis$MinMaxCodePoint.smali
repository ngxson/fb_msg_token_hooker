.class Lcom/facebook/orca/emoji/Emojis$MinMaxCodePoint;
.super Ljava/lang/Object;
.source "Emojis.java"


# instance fields
.field private final a:I

.field private final b:I


# direct methods
.method private constructor <init>(II)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput p1, p0, Lcom/facebook/orca/emoji/Emojis$MinMaxCodePoint;->a:I

    .line 41
    iput p2, p0, Lcom/facebook/orca/emoji/Emojis$MinMaxCodePoint;->b:I

    .line 42
    return-void
.end method

.method synthetic constructor <init>(IILcom/facebook/orca/emoji/Emojis$1;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/emoji/Emojis$MinMaxCodePoint;-><init>(II)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/emoji/Emojis$MinMaxCodePoint;)I
    .locals 1
    .parameter

    .prologue
    .line 35
    iget v0, p0, Lcom/facebook/orca/emoji/Emojis$MinMaxCodePoint;->a:I

    return v0
.end method

.method static synthetic b(Lcom/facebook/orca/emoji/Emojis$MinMaxCodePoint;)I
    .locals 1
    .parameter

    .prologue
    .line 35
    iget v0, p0, Lcom/facebook/orca/emoji/Emojis$MinMaxCodePoint;->b:I

    return v0
.end method
