.class public Lcom/facebook/orca/emoji/Emoji;
.super Ljava/lang/Object;
.source "Emoji.java"


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I


# direct methods
.method public constructor <init>(III)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput p1, p0, Lcom/facebook/orca/emoji/Emoji;->a:I

    .line 26
    iput p2, p0, Lcom/facebook/orca/emoji/Emoji;->b:I

    .line 27
    iput p3, p0, Lcom/facebook/orca/emoji/Emoji;->c:I

    .line 28
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/facebook/orca/emoji/Emoji;->a:I

    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/facebook/orca/emoji/Emoji;->b:I

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/facebook/orca/emoji/Emoji;->c:I

    return v0
.end method
