.class public Lcom/facebook/orca/threadview/RowMessageItem;
.super Lcom/facebook/orca/threadview/RowItem;
.source "RowMessageItem.java"


# instance fields
.field private final a:Lcom/facebook/orca/threads/Message;

.field private final b:Lcom/facebook/orca/threadview/RowReceiptItem;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/attachments/ImageAttachmentData;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z


# direct methods
.method public constructor <init>(Lcom/facebook/orca/threads/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 23
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/orca/threadview/RowMessageItem;-><init>(Lcom/facebook/orca/threads/Message;Ljava/util/List;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Lcom/facebook/orca/threads/Message;Ljava/util/List;)V
    .locals 1
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/orca/threads/Message;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/attachments/ImageAttachmentData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/orca/threadview/RowMessageItem;-><init>(Lcom/facebook/orca/threads/Message;Ljava/util/List;Lcom/facebook/orca/threadview/RowReceiptItem;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Lcom/facebook/orca/threads/Message;Ljava/util/List;Lcom/facebook/orca/threadview/RowReceiptItem;)V
    .locals 0
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/orca/threads/Message;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/attachments/ImageAttachmentData;",
            ">;",
            "Lcom/facebook/orca/threadview/RowReceiptItem;",
            ")V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/facebook/orca/threadview/RowItem;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/facebook/orca/threadview/RowMessageItem;->a:Lcom/facebook/orca/threads/Message;

    .line 37
    iput-object p2, p0, Lcom/facebook/orca/threadview/RowMessageItem;->c:Ljava/util/List;

    .line 38
    iput-object p3, p0, Lcom/facebook/orca/threadview/RowMessageItem;->b:Lcom/facebook/orca/threadview/RowReceiptItem;

    .line 39
    return-void
.end method


# virtual methods
.method public a()I
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 51
    iget-object v2, p0, Lcom/facebook/orca/threadview/RowMessageItem;->a:Lcom/facebook/orca/threads/Message;

    invoke-virtual {v2}, Lcom/facebook/orca/threads/Message;->q()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 76
    :goto_0
    return v0

    .line 54
    :cond_0
    iget-object v2, p0, Lcom/facebook/orca/threadview/RowMessageItem;->c:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/facebook/orca/threadview/RowMessageItem;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    move v0, v1

    .line 55
    goto :goto_0

    .line 57
    :cond_2
    iget-object v2, p0, Lcom/facebook/orca/threadview/RowMessageItem;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v0, :cond_5

    .line 58
    iget-object v0, p0, Lcom/facebook/orca/threadview/RowMessageItem;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/attachments/ImageAttachmentData;

    invoke-virtual {v0}, Lcom/facebook/orca/attachments/ImageAttachmentData;->f()Lcom/facebook/orca/attachments/ImageAttachmentData$Orientation;

    move-result-object v0

    .line 60
    sget-object v1, Lcom/facebook/orca/attachments/ImageAttachmentData$Orientation;->PORTRAIT:Lcom/facebook/orca/attachments/ImageAttachmentData$Orientation;

    if-eq v0, v1, :cond_3

    sget-object v1, Lcom/facebook/orca/attachments/ImageAttachmentData$Orientation;->SQUARE:Lcom/facebook/orca/attachments/ImageAttachmentData$Orientation;

    if-eq v0, v1, :cond_3

    sget-object v1, Lcom/facebook/orca/attachments/ImageAttachmentData$Orientation;->UNKNOWN:Lcom/facebook/orca/attachments/ImageAttachmentData$Orientation;

    if-ne v0, v1, :cond_4

    .line 63
    :cond_3
    const/4 v0, 0x7

    goto :goto_0

    .line 65
    :cond_4
    const/16 v0, 0x8

    goto :goto_0

    .line 67
    :cond_5
    iget-object v0, p0, Lcom/facebook/orca/threadview/RowMessageItem;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    .line 68
    const/16 v0, 0x9

    goto :goto_0

    .line 69
    :cond_6
    iget-object v0, p0, Lcom/facebook/orca/threadview/RowMessageItem;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    .line 70
    const/16 v0, 0xa

    goto :goto_0

    .line 71
    :cond_7
    iget-object v0, p0, Lcom/facebook/orca/threadview/RowMessageItem;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_8

    .line 72
    const/16 v0, 0xb

    goto :goto_0

    .line 73
    :cond_8
    iget-object v0, p0, Lcom/facebook/orca/threadview/RowMessageItem;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_9

    .line 74
    const/16 v0, 0xc

    goto :goto_0

    .line 76
    :cond_9
    const/16 v0, 0xd

    goto :goto_0
.end method

.method public a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 133
    iput-boolean p1, p0, Lcom/facebook/orca/threadview/RowMessageItem;->d:Z

    .line 134
    return-void
.end method

.method public b()Lcom/facebook/orca/threads/Message;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/facebook/orca/threadview/RowMessageItem;->a:Lcom/facebook/orca/threads/Message;

    return-object v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/facebook/orca/threadview/RowMessageItem;->d:Z

    return v0
.end method

.method public d()Lcom/facebook/orca/threadview/RowReceiptItem;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/facebook/orca/threadview/RowMessageItem;->b:Lcom/facebook/orca/threadview/RowReceiptItem;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 9
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 83
    instance-of v0, p1, Lcom/facebook/orca/threadview/RowMessageItem;

    if-nez v0, :cond_0

    .line 109
    :goto_0
    return v2

    .line 86
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/RowMessageItem;->b()Lcom/facebook/orca/threads/Message;

    move-result-object v5

    move-object v0, p1

    .line 87
    check-cast v0, Lcom/facebook/orca/threadview/RowMessageItem;

    invoke-virtual {v0}, Lcom/facebook/orca/threadview/RowMessageItem;->b()Lcom/facebook/orca/threads/Message;

    move-result-object v6

    .line 89
    invoke-virtual {v5}, Lcom/facebook/orca/threads/Message;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v6}, Lcom/facebook/orca/threads/Message;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v5}, Lcom/facebook/orca/threads/Message;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6}, Lcom/facebook/orca/threads/Message;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    .line 99
    :goto_1
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/RowMessageItem;->d()Lcom/facebook/orca/threadview/RowReceiptItem;

    move-result-object v3

    .line 100
    check-cast p1, Lcom/facebook/orca/threadview/RowMessageItem;

    invoke-virtual {p1}, Lcom/facebook/orca/threadview/RowMessageItem;->d()Lcom/facebook/orca/threadview/RowReceiptItem;

    move-result-object v4

    .line 101
    if-nez v3, :cond_1

    if-eqz v4, :cond_2

    :cond_1
    if-eqz v3, :cond_6

    if-eqz v4, :cond_6

    invoke-virtual {v3, v4}, Lcom/facebook/orca/threadview/RowReceiptItem;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_2
    move v3, v1

    .line 105
    :goto_2
    invoke-virtual {v5}, Lcom/facebook/orca/threads/Message;->m()Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    if-nez v4, :cond_3

    invoke-virtual {v6}, Lcom/facebook/orca/threads/Message;->m()Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    if-eqz v4, :cond_4

    :cond_3
    invoke-virtual {v5}, Lcom/facebook/orca/threads/Message;->m()Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {v6}, Lcom/facebook/orca/threads/Message;->m()Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {v5}, Lcom/facebook/orca/threads/Message;->m()Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v4

    invoke-virtual {v6}, Lcom/facebook/orca/threads/Message;->m()Lcom/google/common/collect/ImmutableList;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v7

    if-ne v4, v7, :cond_7

    :cond_4
    move v4, v1

    .line 109
    :goto_3
    if-eqz v0, :cond_8

    if-eqz v3, :cond_8

    if-eqz v4, :cond_8

    invoke-virtual {v5}, Lcom/facebook/orca/threads/Message;->c()J

    move-result-wide v3

    invoke-virtual {v6}, Lcom/facebook/orca/threads/Message;->c()J

    move-result-wide v7

    cmp-long v0, v3, v7

    if-nez v0, :cond_8

    invoke-virtual {v5}, Lcom/facebook/orca/threads/Message;->e()J

    move-result-wide v3

    invoke-virtual {v6}, Lcom/facebook/orca/threads/Message;->e()J

    move-result-wide v7

    cmp-long v0, v3, v7

    if-nez v0, :cond_8

    invoke-virtual {v5}, Lcom/facebook/orca/threads/Message;->r()I

    move-result v0

    invoke-virtual {v6}, Lcom/facebook/orca/threads/Message;->r()I

    move-result v3

    if-ne v0, v3, :cond_8

    invoke-virtual {v5}, Lcom/facebook/orca/threads/Message;->x()Lcom/facebook/orca/threads/Message$ChannelSource;

    move-result-object v0

    invoke-virtual {v6}, Lcom/facebook/orca/threads/Message;->x()Lcom/facebook/orca/threads/Message$ChannelSource;

    move-result-object v3

    if-ne v0, v3, :cond_8

    :goto_4
    move v2, v1

    goto/16 :goto_0

    .line 93
    :cond_5
    invoke-virtual {v5}, Lcom/facebook/orca/threads/Message;->t()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v6}, Lcom/facebook/orca/threads/Message;->t()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 95
    invoke-virtual {v5}, Lcom/facebook/orca/threads/Message;->t()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6}, Lcom/facebook/orca/threads/Message;->t()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto/16 :goto_1

    :cond_6
    move v3, v2

    .line 101
    goto :goto_2

    :cond_7
    move v4, v2

    .line 105
    goto :goto_3

    :cond_8
    move v1, v2

    .line 109
    goto :goto_4

    :cond_9
    move v0, v2

    goto/16 :goto_1
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 121
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/RowMessageItem;->b()Lcom/facebook/orca/threads/Message;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/threads/Message;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/facebook/orca/threadview/RowMessageItem;->b()Lcom/facebook/orca/threads/Message;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/threads/Message;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 122
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/facebook/orca/threadview/RowMessageItem;->b()Lcom/facebook/orca/threads/Message;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/orca/threads/Message;->t()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/facebook/orca/threadview/RowMessageItem;->b()Lcom/facebook/orca/threads/Message;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/orca/threads/Message;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 125
    return v0

    :cond_1
    move v0, v1

    .line 121
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RowMessageItem{message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/orca/threadview/RowMessageItem;->a:Lcom/facebook/orca/threads/Message;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rowReceiptItem="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/orca/threadview/RowMessageItem;->b:Lcom/facebook/orca/threadview/RowReceiptItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/threadview/RowMessageItem;->b:Lcom/facebook/orca/threadview/RowReceiptItem;

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method
