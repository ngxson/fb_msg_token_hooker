.class final Lcom/google/common/base/CharMatcher$10;
.super Lcom/google/common/base/CharMatcher;
.source "CharMatcher.java"


# instance fields
.field final synthetic val$match1:C

.field final synthetic val$match2:C


# direct methods
.method constructor <init>(CC)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 463
    iput-char p1, p0, Lcom/google/common/base/CharMatcher$10;->val$match1:C

    iput-char p2, p0, Lcom/google/common/base/CharMatcher$10;->val$match2:C

    invoke-direct {p0}, Lcom/google/common/base/CharMatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 463
    check-cast p1, Ljava/lang/Character;

    invoke-super {p0, p1}, Lcom/google/common/base/CharMatcher;->apply(Ljava/lang/Character;)Z

    move-result v0

    return v0
.end method

.method public matches(C)Z
    .locals 1
    .parameter

    .prologue
    .line 465
    iget-char v0, p0, Lcom/google/common/base/CharMatcher$10;->val$match1:C

    if-eq p1, v0, :cond_0

    iget-char v0, p0, Lcom/google/common/base/CharMatcher$10;->val$match2:C

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public precomputed()Lcom/google/common/base/CharMatcher;
    .locals 0

    .prologue
    .line 474
    return-object p0
.end method

.method setBits(Lcom/google/common/base/CharMatcher$LookupTable;)V
    .locals 1
    .parameter

    .prologue
    .line 469
    iget-char v0, p0, Lcom/google/common/base/CharMatcher$10;->val$match1:C

    invoke-virtual {p1, v0}, Lcom/google/common/base/CharMatcher$LookupTable;->set(C)V

    .line 470
    iget-char v0, p0, Lcom/google/common/base/CharMatcher$10;->val$match2:C

    invoke-virtual {p1, v0}, Lcom/google/common/base/CharMatcher$LookupTable;->set(C)V

    .line 471
    return-void
.end method
