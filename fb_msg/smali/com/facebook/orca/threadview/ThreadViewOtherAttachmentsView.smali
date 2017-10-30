.class public Lcom/facebook/orca/threadview/ThreadViewOtherAttachmentsView;
.super Landroid/widget/LinearLayout;
.source "ThreadViewOtherAttachmentsView.java"


# instance fields
.field private a:Lcom/facebook/orca/attachments/AttachmentDataFactory;

.field private b:Lcom/facebook/orca/threads/Message;

.field private c:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/attachments/OtherAttachmentData;",
            ">;"
        }
    .end annotation
.end field

.field private d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/orca/threadview/ThreadViewOtherAttachmentsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    invoke-static {p1}, Lcom/facebook/orca/inject/FbInjector;->a(Landroid/content/Context;)Lcom/facebook/orca/inject/FbInjector;

    move-result-object v0

    .line 35
    const-class v1, Lcom/facebook/orca/attachments/AttachmentDataFactory;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/attachments/AttachmentDataFactory;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewOtherAttachmentsView;->a:Lcom/facebook/orca/attachments/AttachmentDataFactory;

    .line 36
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewOtherAttachmentsView;->setOrientation(I)V

    .line 37
    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    .line 50
    :goto_0
    iget v0, p0, Lcom/facebook/orca/threadview/ThreadViewOtherAttachmentsView;->d:I

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewOtherAttachmentsView;->c:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 51
    new-instance v0, Lcom/facebook/orca/threadview/ThreadViewOtherAttachmentView;

    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewOtherAttachmentsView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/orca/threadview/ThreadViewOtherAttachmentView;-><init>(Landroid/content/Context;)V

    .line 52
    iget v1, p0, Lcom/facebook/orca/threadview/ThreadViewOtherAttachmentsView;->d:I

    invoke-virtual {p0, v0, v1}, Lcom/facebook/orca/threadview/ThreadViewOtherAttachmentsView;->addView(Landroid/view/View;I)V

    .line 53
    iget v0, p0, Lcom/facebook/orca/threadview/ThreadViewOtherAttachmentsView;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/orca/threadview/ThreadViewOtherAttachmentsView;->d:I

    goto :goto_0

    .line 56
    :cond_0
    const/4 v0, 0x0

    .line 57
    :goto_1
    iget v1, p0, Lcom/facebook/orca/threadview/ThreadViewOtherAttachmentsView;->d:I

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewOtherAttachmentsView;->c:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 58
    invoke-direct {p0, v0}, Lcom/facebook/orca/threadview/ThreadViewOtherAttachmentsView;->a(I)V

    .line 59
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 61
    :goto_2
    iget v0, p0, Lcom/facebook/orca/threadview/ThreadViewOtherAttachmentsView;->d:I

    if-ge v1, v0, :cond_1

    .line 62
    invoke-virtual {p0, v1}, Lcom/facebook/orca/threadview/ThreadViewOtherAttachmentsView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threadview/ThreadViewOtherAttachmentView;

    .line 63
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/facebook/orca/threadview/ThreadViewOtherAttachmentView;->setVisibility(I)V

    .line 64
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 65
    goto :goto_2

    .line 66
    :cond_1
    return-void

    :cond_2
    move v1, v0

    goto :goto_2
.end method

.method private a(I)V
    .locals 2
    .parameter

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Lcom/facebook/orca/threadview/ThreadViewOtherAttachmentsView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threadview/ThreadViewOtherAttachmentView;

    .line 70
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewOtherAttachmentsView;->c:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/attachments/OtherAttachmentData;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threadview/ThreadViewOtherAttachmentView;->setAttachmentInfo(Lcom/facebook/orca/attachments/OtherAttachmentData;)V

    .line 71
    return-void
.end method


# virtual methods
.method public getMessage()Lcom/facebook/orca/threads/Message;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewOtherAttachmentsView;->b:Lcom/facebook/orca/threads/Message;

    return-object v0
.end method

.method public setMessage(Lcom/facebook/orca/threads/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/facebook/orca/threadview/ThreadViewOtherAttachmentsView;->b:Lcom/facebook/orca/threads/Message;

    .line 45
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewOtherAttachmentsView;->a:Lcom/facebook/orca/attachments/AttachmentDataFactory;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/attachments/AttachmentDataFactory;->f(Lcom/facebook/orca/threads/Message;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewOtherAttachmentsView;->c:Lcom/google/common/collect/ImmutableList;

    .line 46
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewOtherAttachmentsView;->a()V

    .line 47
    return-void
.end method
